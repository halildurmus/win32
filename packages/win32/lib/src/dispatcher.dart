import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/idispatch.g.dart';
import 'com/iunknown.g.dart';
import 'constants.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'exception.dart';
import 'extensions/arena.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'hresult.dart';
import 'structs.g.dart';
import 'utils.dart';
import 'variant.dart';
import 'win32/ole32.g.dart';
import 'win32/oleaut32.g.dart';

/// A wrapper around the [IDispatch] interface for interacting with COM objects
/// using late binding.
///
/// This class simplifies working with COM objects by providing Dart-friendly
/// methods for property retrieval, property assignment, and method invocation.
/// It is especially useful for automating COM servers that expose their
/// functionality through [IDispatch].
///
/// Before using this class, COM must be initialized by calling
/// [CoInitializeEx].
///
/// A [Dispatcher] **owns** the underlying [IDispatch] interface.
/// Call [dispose] when the dispatcher is no longer needed.
///
/// Failing to release the interface will leak the COM object.
///
/// Example:
/// ```dart
/// final dispatcher = Dispatcher.fromProgID('Shell.Application');
/// try {
///   dispatcher.invoke('Open', [r'C:\']);
/// } finally {
///   dispatcher.dispose();
/// }
/// ```
final class Dispatcher {
  /// Creates a [Dispatcher] from an existing [IDispatch] interface.
  ///
  /// The [Dispatcher] takes ownership of the interface and is responsible
  /// for releasing it.
  Dispatcher(this.dispatch);

  /// Creates a [Dispatcher] from a class identifier (CLSID).
  ///
  /// This constructor creates a COM object identified by the provided CLSID and
  /// queries for the [IDispatch] interface.
  ///
  /// Throws a [WindowsException] if the object cannot be created or if the
  /// interface is unavailable.
  ///
  /// Example:
  /// ```dart
  /// final dispatcher = Dispatcher.fromCLSID(WinHttpRequest);
  /// ```
  factory Dispatcher.fromCLSID(GUID rclsid) {
    final dispatch = createInstance<IDispatch>(rclsid);
    return Dispatcher(dispatch);
  }

  /// Creates a [Dispatcher] from a ProgID (e.g., `Shell.Application`).
  ///
  /// This constructor resolves the given [progID] to its CLSID, creates the
  /// COM object, and queries for the [IDispatch] interface.
  ///
  /// Throws a [WindowsException] if the [progID] is not registered or if the
  /// [IDispatch] interface cannot be retrieved.
  ///
  /// Example:
  /// ```dart
  /// final dispatcher = Dispatcher.fromProgID('Shell.Application');
  /// ```
  factory Dispatcher.fromProgID(String progID) => using((arena) {
    final lpszProgID = arena.pcwstr(progID);
    final rclsid = arena.using(CLSIDFromProgID(lpszProgID), free);
    final dispatch = CoCreateInstance<IDispatch>(rclsid, null, CLSCTX_ALL);
    return Dispatcher(dispatch);
  });

  /// The underlying [IDispatch] interface.
  final IDispatch dispatch;

  var _disposed = false;

  /// Releases the underlying [IDispatch] interface.
  ///
  /// After calling this method, the [Dispatcher] must not be used again.
  /// Calling this method more than once is safe.
  @pragma('vm:prefer-inline')
  void dispose() {
    if (_disposed) return;
    dispatch.release();
    _disposed = true;
  }

  /// Retrieves the value of a property with the specified [name].
  ///
  /// Specify the expected return type using the type argument [T].
  ///
  /// Supported types include:
  /// - [bool]
  /// - [double]
  /// - [int]
  /// - [String]
  /// - [IDispatch]
  /// - [IUnknown]
  ///
  /// Throws a [WindowsException] if the operation fails.
  Variant<T> get<T extends Object?>(String name) {
    if (_disposed) throw StateError('Dispatcher has been disposed.');
    return using((arena) {
      final dispIdMember = _getDispId(name);
      final riid = IID_NULL.toNative(allocator: arena);
      final pDispParams = arena<DISPPARAMS>();
      final pExcepInfo = arena<EXCEPINFO>();
      final result = Variant<T>();

      try {
        dispatch.invoke(
          dispIdMember,
          riid,
          LOCALE_SYSTEM_DEFAULT,
          DISPATCH_PROPERTYGET,
          pDispParams,
          result,
          pExcepInfo,
          nullptr,
        );
      } on WindowsException catch (e) {
        result.free();
        _throwIfFailed(e.hr, pExcepInfo.ref);
      }

      return result;
    });
  }

  /// Sets the value of a property with the specified [name].
  ///
  /// Supported types for [value] include:
  /// `null`, [Variant], `Pointer<VARIANT>`, [bool], [double], [int], [String],
  /// [IDispatch], and [IUnknown].
  ///
  /// If [value] is an [IUnknown] or [IDispatch] and [byReference] is `true`,
  /// the property is set by reference.
  ///
  /// Throws a [WindowsException] if the operation fails.
  void set(String name, Object? value, {bool byReference = false}) {
    if (_disposed) throw StateError('Dispatcher has been disposed.');
    using((arena) {
      final dispIdMember = _getDispId(name);
      final riid = IID_NULL.toNative(allocator: arena);
      final pDispParams = arena<DISPPARAMS>();
      Variant? variantArg;
      Pointer<VARIANT>? rgvarg;

      if (value is Variant) {
        rgvarg = value;
      } else if (value is Pointer<VARIANT>) {
        rgvarg = value;
      } else {
        variantArg = Variant.from(value);
        rgvarg = variantArg;
      }

      pDispParams.ref
        ..rgvarg = rgvarg
        ..rgdispidNamedArgs = (arena<Int32>()..value = DISPID_PROPERTYPUT)
        ..cArgs = 1
        ..cNamedArgs = 1;

      final pExcepInfo = arena<EXCEPINFO>();

      try {
        dispatch.invoke(
          dispIdMember,
          riid,
          LOCALE_SYSTEM_DEFAULT,
          byReference && value is IUnknown
              ? DISPATCH_PROPERTYPUTREF
              : DISPATCH_PROPERTYPUT,
          pDispParams,
          nullptr,
          pExcepInfo,
          nullptr,
        );
      } on WindowsException catch (e) {
        _throwIfFailed(e.hr, pExcepInfo.ref);
      } finally {
        if (variantArg != null) variantArg.free();
      }
    });
  }

  /// Invokes a method by [name] with optional [args] and returns the result.
  ///
  /// Specify the expected return type using the type argument [T].
  ///
  /// Supported types include:
  /// `null`, [Variant], `Pointer<VARIANT>`, [bool], [double], [int], [String],
  /// [IDispatch], and [IUnknown].
  ///
  /// Example:
  /// ```dart
  /// final folder = dispatcher.invoke<IDispatch>('CreateFolder', [
  ///   r'C:\ExampleFolder',
  /// ]);
  /// ```
  /// Throws a [WindowsException] if the invocation fails.
  Variant<T> invoke<T extends Object?>(String name, [List<Object?>? args]) {
    if (_disposed) throw StateError('Dispatcher has been disposed.');
    return using((arena) {
      final dispIdMember = _getDispId(name);
      final riid = IID_NULL.toNative(allocator: arena);
      final (pDispParams, variants) = _createDispParams(args, arena);
      final result = Variant<T>();
      final pExcepInfo = arena<EXCEPINFO>();

      try {
        dispatch.invoke(
          dispIdMember,
          riid,
          LOCALE_SYSTEM_DEFAULT,
          DISPATCH_METHOD,
          pDispParams,
          result,
          pExcepInfo,
          nullptr,
        );
      } on WindowsException catch (e) {
        result.free();
        _throwIfFailed(e.hr, pExcepInfo.ref);
      } finally {
        for (final variant in variants) {
          variant.free();
        }
      }

      return result;
    });
  }

  /// Constructs a [DISPPARAMS] pointer from a list of arguments.
  ///
  /// The [args] parameter specifies the arguments to include in the
  /// [DISPPARAMS]. The [allocator] parameter specifies the memory allocator
  /// to use for constructing the parameters.
  ///
  /// Returns a tuple containing the pointer to the [DISPPARAMS] and a list of
  /// [Variant] objects created for the arguments. The [Variant] objects must
  /// be freed after the method invocation.
  (Pointer<DISPPARAMS>, List<Variant>) _createDispParams(
    List<Object?>? args,
    Allocator allocator,
  ) {
    final params = allocator<DISPPARAMS>();
    if (args == null || args.isEmpty) return (params, const []);

    final length = args.length;
    final rgvarg = allocator<VARIANT>(length);
    final variants = <Variant>[];

    for (var i = 0; i < length; i++) {
      // Arguments are passed in reverse order.
      final element = args[length - 1 - i];
      if (element is Variant) {
        rgvarg[i] = element.ref;
      } else if (element is Pointer<VARIANT>) {
        rgvarg[i] = element.ref;
      } else if (element is VARIANT) {
        rgvarg[i] = element;
      } else {
        final variant = Variant.from(element);
        variants.add(variant);
        rgvarg[i] = variant.ref;
      }
    }

    params.ref
      ..cArgs = length
      ..rgvarg = rgvarg;
    return (params, variants);
  }

  /// Retrieves the dispatch identifier (DISPID) for a given [member] name.
  ///
  /// Throws a [WindowsException] if the lookup fails.
  int _getDispId(String member) => using((arena) {
    final riid = IID_NULL.toNative(allocator: arena);
    final lpMember = arena.pcwstr(member);
    final rgszNames = arena<Pointer<Utf16>>()..value = lpMember;
    final rgDispId = arena<Int32>();
    dispatch.getIDsOfNames(riid, rgszNames, 1, LOCALE_USER_DEFAULT, rgDispId);
    return rgDispId.value;
  });

  void _throwIfFailed(HRESULT hr, EXCEPINFO excepInfo) {
    if (!hr.isError) return;

    if (hr == DISP_E_EXCEPTION) {
      final EXCEPINFO(:bstrDescription, :scode, :wCode) = excepInfo;
      final errorCode = scode != 0 ? scode : wCode;
      if (bstrDescription.isNull) throw WindowsException(HRESULT(errorCode));

      final description = bstrDescription.toDartString();
      SysFreeString(bstrDescription);
      throw WindowsException(HRESULT(errorCode), message: description);
    }

    throw WindowsException(hr);
  }
}
