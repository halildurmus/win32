import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/idispatch.g.dart';
import 'com/iunknown.g.dart';
import 'constants.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'exception.dart';
import 'extensions/pointer.dart';
import 'guid.dart';
import 'hresult.dart';
import 'pcwstr.dart';
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
/// It’s especially useful for working with COM objects that expose their
/// functionality through the [IDispatch] interface.
///
/// Before using this class, ensure that COM has been initialized by calling
/// [CoInitializeEx].
///
/// Example:
/// ```dart
/// final dispatcher = Dispatcher.fromProgID('Shell.Application');
/// dispatcher.invoke('open', [r'C:\']); // Opens the C:\ directory in Explorer.
/// ```
final class Dispatcher {
  /// Creates a [Dispatcher] from an existing [IDispatch] object.
  const Dispatcher(this.dispatch);

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
  factory Dispatcher.fromCLSID(Guid rclsid) {
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
  factory Dispatcher.fromProgID(String progID) {
    final rclsid = Guid.fromProgID(progID);
    final dispatcher = Dispatcher.fromCLSID(rclsid);
    rclsid.free();
    return dispatcher;
  }

  /// The [IDispatch] interface associated with this instance.
  ///
  /// This can be used to access low-level [IDispatch] methods if needed.
  final IDispatch dispatch;

  /// Retrieves the value of a property with the specified [name].
  ///
  /// Throws a [WindowsException] if the operation fails.
  ///
  /// Example:
  /// ```dart
  /// final result = dispatcher.get<String>('Path');
  /// ```
  ///
  /// Specify the expected type as a type argument for type-safe retrieval.
  /// If the return value is incompatible with the specified type, a runtime
  /// error will occur. Supported types include [bool], [double], [int],
  /// [String], [IDispatch], and [IUnknown].
  T get<T extends Object?>(String name) => using((arena) {
    final dispIdMember = _getDispId(name);
    final pDispParams = arena<DISPPARAMS>();
    final pExcepInfo = arena<EXCEPINFO>();
    final result = Variant<T>();

    try {
      dispatch.invoke(
        dispIdMember,
        IID_NULL.ptr,
        LOCALE_SYSTEM_DEFAULT,
        DISPATCH_PROPERTYGET,
        pDispParams,
        result.ptr,
        pExcepInfo,
        nullptr,
      );
    } on WindowsException catch (e) {
      result.free();
      _throwIfFailed(e.hr, pExcepInfo.ref);
    }

    return result.value;
  });

  /// Sets the value of a property with the specified [name] to [value].
  ///
  /// Supported types for [value] include `null`, [Variant], `Pointer<VARIANT>`,
  /// [bool], [double], [int], [String], [IDispatch], and [IUnknown].
  ///
  /// If [value] is a subtype of [IUnknown] or [IDispatch] and [byReference] is
  /// `true`, the property is set by reference.
  ///
  /// Throws a [WindowsException] if the operation fails.
  ///
  /// Example:
  /// ```dart
  /// dispatcher.set('Name', 'New Name');
  /// ```
  void set(String name, Object? value, {bool byReference = false}) {
    using((arena) {
      final dispIdMember = _getDispId(name);
      final pDispParams = arena<DISPPARAMS>();
      Variant? variantArg;
      Pointer<VARIANT>? rgvarg;
      if (value is Variant) {
        rgvarg = value.ptr;
      } else if (value is Pointer<VARIANT>) {
        rgvarg = value;
      } else {
        variantArg = Variant.from(value);
        rgvarg = variantArg.ptr;
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
          IID_NULL.ptr,
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
  /// Throws a [WindowsException] if the method invocation fails.
  ///
  /// Example:
  /// ```dart
  /// final folder = dispatcher.invoke<IDispatch>('CreateFolder', [
  ///   r'C:\ExampleFolder',
  /// ]);
  /// ```
  ///
  /// Specify the expected type as a type argument for type-safe retrieval.
  /// If the return value is incompatible with the specified type, a runtime
  /// error will occur. Supported types include `null`, [Variant],
  /// `Pointer<VARIANT>`, [bool], [double], [int], [String], [IDispatch], and
  /// [IUnknown].
  T invoke<T extends Object?>(String name, [List<Object?>? args]) =>
      using((arena) {
        final dispIdMember = _getDispId(name);
        final (pDispParams, variants) = _createDispParams(args, arena);
        final result = Variant<T>();
        final pExcepInfo = arena<EXCEPINFO>();

        try {
          dispatch.invoke(
            dispIdMember,
            IID_NULL.ptr,
            LOCALE_SYSTEM_DEFAULT,
            DISPATCH_METHOD,
            pDispParams,
            result.ptr,
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

        return result.value;
      });

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
        rgvarg[i] = element.ptr.ref;
      } else if (element is Pointer<VARIANT>) {
        rgvarg[i] = element.ref;
      } else if (element is VARIANT) {
        rgvarg[i] = element;
      } else {
        final variant = Variant.from(element);
        variants.add(variant);
        rgvarg[i] = variant.ptr.ref;
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
    final lpMember = w(member);
    final rgszNames = arena<PWSTR>()..value = lpMember.ptr;
    final rgDispId = arena<Int32>();
    try {
      dispatch.getIDsOfNames(
        IID_NULL.ptr,
        rgszNames,
        1,
        LOCALE_USER_DEFAULT,
        rgDispId,
      );
    } finally {
      lpMember.free();
    }
    return rgDispId.value;
  });

  void _throwIfFailed(HRESULT hr, EXCEPINFO excepInfo) {
    if (hr.isError) {
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
}
