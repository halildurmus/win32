import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/idispatch.dart';
import 'combase.dart';
import 'constants.dart';
import 'enums.g.dart';
import 'exceptions.dart';
import 'guid.dart';
import 'macros.dart';
import 'structs.g.dart';
import 'utils.dart';
import 'variant.dart';
import 'win32/ole32.g.dart';

/// A thin wrapper around the [IDispatch] interface, used for invoking methods
/// and properties on COM automation objects.
///
/// COM must be initialized before using any instance of this class by calling
/// [CoInitializeEx].
///
/// Ensure that you properly release resources by calling [dispose] when the
/// instance is no longer needed.
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
          CLSCTX.CLSCTX_INPROC_SERVER,
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

        var hr = CLSIDFromProgID(lpszProgID, lpclsid);
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
  /// Throws a [WindowsException] if the invocation fails.
  Pointer<VARIANT> get(String name) {
    final dispid = calloc<Int32>();
    final pName = name.toNativeUtf16();
    final names = calloc<Pointer<Utf16>>()..value = pName;
    dispatch.getIDsOfNames(nullptr, names, 1, 0, dispid);

    final result = calloc<VARIANT>();
    final dispParams = calloc<DISPPARAMS>();
    final excepInfo = calloc<EXCEPINFO>();
    final argErr = calloc<Uint32>();

    dispatch.invoke(
      dispid.value,
      nullptr,
      0,
      DISPATCH_FLAGS.DISPATCH_PROPERTYGET,
      dispParams,
      result,
      excepInfo,
      argErr,
    );

    free(dispid);
    free(pName);
    free(names);
    free(dispParams);
    free(excepInfo);
    free(argErr);

    return result;
  }

  /// Sets the value of the property with the given [name] to [value].
  ///
  /// Throws a [WindowsException] if the invocation fails.
  void set(String name, VARIANT value) {
    final dispid = calloc<Int32>();
    final pName = name.toNativeUtf16();
    final names = calloc<Pointer<Utf16>>()..value = pName;
    dispatch.getIDsOfNames(nullptr, names, 1, 0, dispid);

    final dispParams = calloc<DISPPARAMS>();
    dispParams.ref.rgvarg = calloc<VARIANT>()..ref = value;
    dispParams.ref.cArgs = 1;

    final excepInfo = calloc<EXCEPINFO>();
    final argErr = calloc<Uint32>();

    dispatch.invoke(
      dispid.value,
      nullptr,
      0,
      DISPATCH_FLAGS.DISPATCH_PROPERTYPUT,
      dispParams,
      nullptr,
      excepInfo,
      argErr,
    );

    free(dispid);
    free(pName);
    free(names);
    free(dispParams.ref.rgvarg);
    free(dispParams);
    free(excepInfo);
    free(argErr);
  }

  /// Invokes a method on the COM object.
  ///
  /// The [method] parameter specifies the name of the method to be invoked.
  /// The optional [args] parameter provides the arguments to pass to the
  /// method, if any. The optional [result] parameter is used to store the
  /// result of the method invocation, if any.
  ///
  /// Throws a [WindowsException] if the invocation fails.
  void invoke(
    String method, [
    Pointer<DISPPARAMS>? args,
    Pointer<VARIANT>? result,
  ]) {
    if (_isDisposed) throw StateError('Dispatcher has been disposed.');

    final pDispParams = args ?? calloc<DISPPARAMS>();
    final dispIdMember = _getDispId(method);

    final hr = dispatch.invoke(
      dispIdMember,
      _nilGuid,
      LOCALE_SYSTEM_DEFAULT,
      DISPATCH_FLAGS.DISPATCH_METHOD,
      pDispParams,
      result ?? nullptr,
      nullptr,
      nullptr,
    );

    if (args == null) free(pDispParams);
    if (FAILED(hr)) throw WindowsException(hr);
  }

  /// Retrieves the dispatch identifier (DISPID) for the given [member] of the
  /// object.
  int _getDispId(String member) => using((arena) {
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

  /// Releases the resources associated with the object.
  ///
  /// It is important to call this method when the [Dispatcher] instance is no
  /// longer needed to ensure that memory is properly released.
  ///
  /// Once [dispose] is called, the [Dispatcher] instance is considered disposed
  /// and should not be used further.
  void dispose() {
    assert(!_isDisposed, 'Dispatcher is already disposed.');
    if (_isDisposed) return;

    free(_nilGuid);
    _isDisposed = true;
  }
}
