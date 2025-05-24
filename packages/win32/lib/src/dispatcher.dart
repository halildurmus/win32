import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/idispatch.dart';
import 'combase.dart';
import 'constants.dart';
import 'constants_nodoc.dart';
import 'exceptions.dart';
import 'guid.dart';
import 'macros.dart';
import 'structs.g.dart';
import 'utils.dart';
import 'variant.dart';
import 'win32/ole32.g.dart';
import 'win32/oleaut32.g.dart';

/// A lightweight wrapper for the [IDispatch] interface, enabling method and
/// property invocation on COM objects that support late binding.
///
/// Before using this class, make sure that COM has been initialized by calling
/// [CoInitializeEx].
///
/// When finished with an instance of this class, call [dispose] to release the
/// associated resources.
final class Dispatcher {
  Dispatcher(this.dispatch) : _nilGuid = calloc<GUID>();

  /// Creates a [Dispatcher] instance from a given class identifier (CLSID).
  ///
  /// Throws a [WindowsException] if the COM object cannot be created or if an
  /// error occurs during initialization.
  factory Dispatcher.fromCLSID(String clsid) => using((arena) {
    final lpclsid = GUIDFromString(clsid, allocator: arena);
    final riid = GUIDFromString(IID_IDispatch, allocator: arena);
    final ppv = calloc<COMObject>();
    final hr = CoCreateInstance(
      lpclsid,
      nullptr,
      CLSCTX_INPROC_SERVER,
      riid,
      ppv.cast(),
    );
    if (FAILED(hr)) throw WindowsException(hr);
    return Dispatcher(IDispatch(ppv));
  });

  /// Creates a [Dispatcher] instance from a given programmatic identifier
  /// (ProgID).
  ///
  /// Throws a [WindowsException] if the COM object cannot be created or if an
  /// error occurs during initialization.
  factory Dispatcher.fromProgID(String progID) => using((arena) {
    final lpszProgID = progID.toNativeUtf16(allocator: arena);
    final lpclsid = arena<GUID>();
    final hr = CLSIDFromProgID(lpszProgID, lpclsid);
    if (FAILED(hr)) throw WindowsException(hr);
    return Dispatcher.fromCLSID(lpclsid.ref.toString());
  });

  /// Instance of [IDispatch] interface associated with the object.
  final IDispatch dispatch;

  /// A pointer to the 'nil' GUID `{00000000-0000-0000-0000-000000000000}`.
  final Pointer<GUID> _nilGuid;

  /// Whether the object has already been disposed.
  var _isDisposed = false;

  /// Retrieves the value of the property with the given [name].
  ///
  /// It's the caller's responsibility to free the memory allocated for the
  /// returned [Pointer<VARIANT>] when it is no longer needed by calling
  /// [free] on it.
  ///
  /// Throws a [WindowsException] if the invocation fails.
  Pointer<VARIANT> get(String name) =>
      _invokeProperty(name, DISPATCH_PROPERTYGET, returnResult: true);

  /// Sets the value of the property with the given [name] to [value].
  ///
  /// If [byReference] is set to `true`, the property is set by reference.
  ///
  /// Throws a [WindowsException] if the invocation fails.
  void set(String name, Pointer<VARIANT> value, {bool byReference = false}) =>
      _invokeProperty(
        name,
        argument: value,
        byReference ? DISPATCH_PROPERTYPUTREF : DISPATCH_PROPERTYPUT,
      );

  /// Invokes a method on the COM object.
  ///
  /// - The [method] parameter specifies the name of the method to be invoked.
  /// - The [args] parameter specifies the arguments to pass to the method, if
  ///   any.
  /// - The [result] parameter is used to store the result of the method
  ///   invocation, if any.
  /// - The [argError] parameter is used to store the index of the first
  ///   parameter within `rgvarg` that has an error, if any.
  ///
  /// Throws a [WindowsException] if the invocation fails.
  void invoke(
    String method, [
    Pointer<DISPPARAMS>? args,
    Pointer<VARIANT>? result,
    Pointer<Uint32>? argError,
  ]) => using((arena) {
    final dispIdMember = _getDispId(method);
    final pExcepInfo = arena<EXCEPINFO>();
    final hr = dispatch.invoke(
      dispIdMember,
      _nilGuid,
      LOCALE_SYSTEM_DEFAULT,
      DISPATCH_METHOD,
      args ?? arena<DISPPARAMS>(),
      result ?? nullptr,
      pExcepInfo,
      argError ?? nullptr,
    );
    _throwIfFailed(hr, pExcepInfo.ref);
  });

  /// Retrieves the dispatch identifier (DISPID) for the given [member] of the
  /// object.
  int _getDispId(String member) {
    _validateNotDisposed();
    return using((arena) {
      final lpMember = member.toNativeUtf16(allocator: arena);
      final rgszNames = arena<Pointer<Utf16>>()..value = lpMember;
      final rgDispId = arena<Int32>();
      final hr = dispatch.getIDsOfNames(
        _nilGuid,
        rgszNames,
        1,
        LOCALE_USER_DEFAULT,
        rgDispId,
      );
      if (FAILED(hr)) throw WindowsException(hr);
      return rgDispId.value;
    });
  }

  /// Common logic for property invocations.
  Pointer<VARIANT> _invokeProperty(
    String name,
    int dispatchFlag, {
    Pointer<VARIANT>? argument,
    bool returnResult = false,
  }) => using((arena) {
    final dispIdMember = _getDispId(name);
    final pDispParams = arena<DISPPARAMS>();
    if (argument != null) {
      pDispParams.ref
        ..cArgs = 1
        ..rgvarg = argument
        ..cNamedArgs = 1
        ..rgdispidNamedArgs = (arena<Int32>()..value = DISPID_PROPERTYPUT);
    }
    final pExcepInfo = arena<EXCEPINFO>();
    final result = returnResult ? calloc<VARIANT>() : nullptr;
    if (returnResult) VariantInit(result);
    final hr = dispatch.invoke(
      dispIdMember,
      _nilGuid,
      LOCALE_SYSTEM_DEFAULT,
      dispatchFlag,
      pDispParams,
      result,
      pExcepInfo,
      nullptr,
    );
    _throwIfFailed(hr, pExcepInfo.ref);
    return result;
  });

  void _throwIfFailed(int hr, EXCEPINFO excepInfo) {
    if (FAILED(hr)) {
      if (hr == DISP_E_EXCEPTION) {
        final EXCEPINFO(:bstrDescription, :scode, :wCode) = excepInfo;
        final errorCode = scode != 0 ? scode : wCode;

        if (bstrDescription != nullptr) {
          final description = bstrDescription.toDartString();
          SysFreeString(bstrDescription);
          throw WindowsException(errorCode, message: description);
        }

        throw WindowsException(errorCode);
      }

      throw WindowsException(hr);
    }
  }

  void _validateNotDisposed() {
    if (_isDisposed) throw StateError('Dispatcher has been disposed.');
  }

  /// Releases the resources associated with the object.
  ///
  /// It is important to call this method when the [Dispatcher] instance is no
  /// longer needed to ensure that memory is properly released.
  ///
  /// Once [dispose] is called, the [Dispatcher] instance is considered disposed
  /// and should not be used further.
  ///
  /// If the object has already been disposed, further calls to this method will
  /// have no effect.
  void dispose() {
    assert(!_isDisposed, 'Dispatcher is already disposed.');
    if (_isDisposed) return;

    free(_nilGuid);
    _isDisposed = true;
  }
}
