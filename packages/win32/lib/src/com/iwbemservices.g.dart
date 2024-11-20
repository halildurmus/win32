// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'ienumwbemclassobject.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';
import 'iwbemcallresult.g.dart';
import 'iwbemclassobject.g.dart';
import 'iwbemcontext.g.dart';
import 'iwbemobjectsink.g.dart';
import 'iwbemservices.g.dart';

/// @nodoc
final IID_IWbemServices = Guid.fromComponents(
  0x9556dc99,
  0x828c,
  0x11cf,
  Uint8List.fromList(const [0xa3, 0x7e, 0x0, 0xaa, 0x0, 0x32, 0x40, 0xc7]),
);

/// Used by clients and providers to access WMI services.
///
/// The interface is implemented by WMI and WMI providers, and is the primary
/// WMI interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemservices>.
///
/// {@category com}
class IWbemServices extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemServices] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemServices]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemServices(super.ptr) : _vtable = ptr.value.cast<IWbemServicesVtbl>().ref;

  /// Creates a new instance of [IWbemServices] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemServices] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemServices.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemServicesVtbl _vtable;
  late final _OpenNamespaceFn =
      _vtable.OpenNamespace.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _CancelAsyncCallFn = _vtable
      .CancelAsyncCall.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _QueryObjectSinkFn =
      _vtable.QueryObjectSink.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetObjectFn =
      _vtable.GetObject.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetObjectAsyncFn =
      _vtable.GetObjectAsync.asFunction<
        int Function(VTablePointer, BSTR, int, VTablePointer, VTablePointer)
      >();
  late final _PutClassFn =
      _vtable.PutClass.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _PutClassAsyncFn =
      _vtable.PutClassAsync.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _DeleteClassFn =
      _vtable.DeleteClass.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _DeleteClassAsyncFn =
      _vtable.DeleteClassAsync.asFunction<
        int Function(VTablePointer, BSTR, int, VTablePointer, VTablePointer)
      >();
  late final _CreateClassEnumFn =
      _vtable.CreateClassEnum.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateClassEnumAsyncFn =
      _vtable.CreateClassEnumAsync.asFunction<
        int Function(VTablePointer, BSTR, int, VTablePointer, VTablePointer)
      >();
  late final _PutInstanceFn =
      _vtable.PutInstance.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _PutInstanceAsyncFn =
      _vtable.PutInstanceAsync.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _DeleteInstanceFn =
      _vtable.DeleteInstance.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _DeleteInstanceAsyncFn =
      _vtable.DeleteInstanceAsync.asFunction<
        int Function(VTablePointer, BSTR, int, VTablePointer, VTablePointer)
      >();
  late final _CreateInstanceEnumFn =
      _vtable.CreateInstanceEnum.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _CreateInstanceEnumAsyncFn =
      _vtable.CreateInstanceEnumAsync.asFunction<
        int Function(VTablePointer, BSTR, int, VTablePointer, VTablePointer)
      >();
  late final _ExecQueryFn =
      _vtable.ExecQuery.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _ExecQueryAsyncFn =
      _vtable.ExecQueryAsync.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          BSTR,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _ExecNotificationQueryFn =
      _vtable.ExecNotificationQuery.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          BSTR,
          int,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();
  late final _ExecNotificationQueryAsyncFn =
      _vtable.ExecNotificationQueryAsync.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          BSTR,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _ExecMethodFn =
      _vtable.ExecMethod.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          BSTR,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<VTablePointer>,
          Pointer<VTablePointer>,
        )
      >();
  late final _ExecMethodAsyncFn =
      _vtable.ExecMethodAsync.asFunction<
        int Function(
          VTablePointer,
          BSTR,
          BSTR,
          int,
          VTablePointer,
          VTablePointer,
          VTablePointer,
        )
      >();

  /// Provides the caller with a new IWbemServices pointer that has the
  /// specified child namespace as its operating context.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-opennamespace>.
  @pragma('vm:prefer-inline')
  void openNamespace(
    BSTR strNamespace,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    Pointer<VTablePointer>? ppWorkingNamespace,
    Pointer<VTablePointer>? ppResult,
  ) {
    final hr$ = HRESULT(
      _OpenNamespaceFn(
        ptr,
        strNamespace,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppWorkingNamespace ?? nullptr,
        ppResult ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Cancels any currently pending asynchronous calls based on the
  /// IWbemObjectSink pointer, which was originally passed to the asynchronous
  /// method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-cancelasynccall>.
  @pragma('vm:prefer-inline')
  void cancelAsyncCall(IWbemObjectSink? pSink) {
    final hr$ = HRESULT(_CancelAsyncCallFn(ptr, pSink?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Allows the caller to obtain a notification handler that is exported by
  /// Windows Management.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-queryobjectsink>.
  IWbemObjectSink? queryObjectSink(WBEM_GENERIC_FLAG_TYPE lFlags) {
    final ppResponseHandler = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_QueryObjectSinkFn(ptr, lFlags, ppResponseHandler));
    if (hr$.isError) {
      free(ppResponseHandler);
      throw WindowsException(hr$);
    }
    final result$ = ppResponseHandler.value;
    free(ppResponseHandler);
    if (result$.isNull) return null;
    return IWbemObjectSink(result$);
  }

  /// Retrieves a class or instance.
  ///
  /// This method only retrieves objects from the namespace associated with the
  /// current IWbemServices object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-getobject>.
  @pragma('vm:prefer-inline')
  void getObject(
    BSTR strObjectPath,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    Pointer<VTablePointer>? ppObject,
    Pointer<VTablePointer>? ppCallResult,
  ) {
    final hr$ = HRESULT(
      _GetObjectFn(
        ptr,
        strObjectPath,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppObject ?? nullptr,
        ppCallResult ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves an object, either a class definition or instance, based on its
  /// path.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-getobjectasync>.
  @pragma('vm:prefer-inline')
  void getObjectAsync(
    BSTR strObjectPath,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _GetObjectAsyncFn(
        ptr,
        strObjectPath,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new class or updates an existing one.
  ///
  /// The class specified by the pObject parameter must have been correctly
  /// initialized with all of the required property values.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putclass>.
  @pragma('vm:prefer-inline')
  void putClass(
    IWbemClassObject? pObject,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    Pointer<VTablePointer>? ppCallResult,
  ) {
    final hr$ = HRESULT(
      _PutClassFn(
        ptr,
        pObject?.ptr ?? nullptr,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppCallResult ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates a new class, or updates an existing one.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putclassasync>.
  @pragma('vm:prefer-inline')
  void putClassAsync(
    IWbemClassObject? pObject,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _PutClassAsyncFn(
        ptr,
        pObject?.ptr ?? nullptr,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes the specified class from the current namespace.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteclass>.
  @pragma('vm:prefer-inline')
  void deleteClass(
    BSTR strClass,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    Pointer<VTablePointer>? ppCallResult,
  ) {
    final hr$ = HRESULT(
      _DeleteClassFn(
        ptr,
        strClass,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppCallResult ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes the specified class from the current namespace.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteclassasync>.
  @pragma('vm:prefer-inline')
  void deleteClassAsync(
    BSTR strClass,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _DeleteClassAsyncFn(
        ptr,
        strClass,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns an enumerator for all classes that satisfy selection criteria.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createclassenum>.
  IEnumWbemClassObject? createClassEnum(
    BSTR strSuperclass,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
  ) {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateClassEnumFn(
        ptr,
        strSuperclass,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppEnum,
      ),
    );
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumWbemClassObject(result$);
  }

  /// Returns an enumeration of all classes that the class provider supports.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createclassenumasync>.
  @pragma('vm:prefer-inline')
  void createClassEnumAsync(
    BSTR strSuperclass,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _CreateClassEnumAsyncFn(
        ptr,
        strSuperclass,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates or updates an instance of an existing class.
  ///
  /// The instance is written to the WMI repository.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putinstance>.
  @pragma('vm:prefer-inline')
  void putInstance(
    IWbemClassObject? pInst,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    Pointer<VTablePointer>? ppCallResult,
  ) {
    final hr$ = HRESULT(
      _PutInstanceFn(
        ptr,
        pInst?.ptr ?? nullptr,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppCallResult ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Asynchronously creates or updates an instance of an existing class.
  ///
  /// Update confirmation or error reporting is provided through the
  /// IWbemObjectSink interface implemented by the caller.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-putinstanceasync>.
  @pragma('vm:prefer-inline')
  void putInstanceAsync(
    IWbemClassObject? pInst,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _PutInstanceAsyncFn(
        ptr,
        pInst?.ptr ?? nullptr,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes an instance of an existing class in the current namespace.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteinstance>.
  @pragma('vm:prefer-inline')
  void deleteInstance(
    BSTR strObjectPath,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    Pointer<VTablePointer>? ppCallResult,
  ) {
    final hr$ = HRESULT(
      _DeleteInstanceFn(
        ptr,
        strObjectPath,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppCallResult ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Asynchronously deletes an instance of an existing class in the current
  /// namespace.
  ///
  /// The confirmation or failure of the operation is reported through the
  /// IWbemObjectSink interface implemented by the caller.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-deleteinstanceasync>.
  @pragma('vm:prefer-inline')
  void deleteInstanceAsync(
    BSTR strObjectPath,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _DeleteInstanceAsyncFn(
        ptr,
        strObjectPath,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Creates an enumerator that returns the instances of a specified class
  /// according to user-specified selection criteria.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createinstanceenum>.
  IEnumWbemClassObject? createInstanceEnum(
    BSTR strFilter,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
  ) {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateInstanceEnumFn(
        ptr,
        strFilter,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppEnum,
      ),
    );
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumWbemClassObject(result$);
  }

  /// Creates an enumerator that asynchronously returns the instances of a
  /// specified class according to user-specified selection criteria.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-createinstanceenumasync>.
  @pragma('vm:prefer-inline')
  void createInstanceEnumAsync(
    BSTR strFilter,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _CreateInstanceEnumAsyncFn(
        ptr,
        strFilter,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Executes a query to retrieve objects.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execquery>.
  IEnumWbemClassObject? execQuery(
    BSTR strQueryLanguage,
    BSTR strQuery,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
  ) {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ExecQueryFn(
        ptr,
        strQueryLanguage,
        strQuery,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppEnum,
      ),
    );
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumWbemClassObject(result$);
  }

  /// Executes a query to retrieve objects asynchronously.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execqueryasync>.
  @pragma('vm:prefer-inline')
  void execQueryAsync(
    BSTR strQueryLanguage,
    BSTR strQuery,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _ExecQueryAsyncFn(
        ptr,
        strQueryLanguage,
        strQuery,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Executes a query to receive events.
  ///
  /// The call returns immediately, and the user can poll the returned
  /// enumerator for events as they arrive. Releasing the returned enumerator
  /// cancels the query.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execnotificationquery>.
  IEnumWbemClassObject? execNotificationQuery(
    BSTR strQueryLanguage,
    BSTR strQuery,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
  ) {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ExecNotificationQueryFn(
        ptr,
        strQueryLanguage,
        strQuery,
        lFlags,
        pCtx?.ptr ?? nullptr,
        ppEnum,
      ),
    );
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumWbemClassObject(result$);
  }

  /// Performs the same task as `IWbemServices.execNotificationQuery` except
  /// that events are supplied to the specified response handler until
  /// CancelAsyncCall is called to stop the event notification.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execnotificationqueryasync>.
  @pragma('vm:prefer-inline')
  void execNotificationQueryAsync(
    BSTR strQueryLanguage,
    BSTR strQuery,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _ExecNotificationQueryAsyncFn(
        ptr,
        strQueryLanguage,
        strQuery,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Executes a method exported by a CIM object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execmethod>.
  @pragma('vm:prefer-inline')
  void execMethod(
    BSTR strObjectPath,
    BSTR strMethodName,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemClassObject? pInParams,
    Pointer<VTablePointer>? ppOutParams,
    Pointer<VTablePointer>? ppCallResult,
  ) {
    final hr$ = HRESULT(
      _ExecMethodFn(
        ptr,
        strObjectPath,
        strMethodName,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pInParams?.ptr ?? nullptr,
        ppOutParams ?? nullptr,
        ppCallResult ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Asynchronously executes a method exported by a CIM object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemservices-execmethodasync>.
  @pragma('vm:prefer-inline')
  void execMethodAsync(
    BSTR strObjectPath,
    BSTR strMethodName,
    WBEM_GENERIC_FLAG_TYPE lFlags,
    IWbemContext? pCtx,
    IWbemClassObject? pInParams,
    IWbemObjectSink? pResponseHandler,
  ) {
    final hr$ = HRESULT(
      _ExecMethodAsyncFn(
        ptr,
        strObjectPath,
        strMethodName,
        lFlags,
        pCtx?.ptr ?? nullptr,
        pInParams?.ptr ?? nullptr,
        pResponseHandler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemServices(ptr: $ptr)';
}

/// @nodoc
base class IWbemServicesVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strNamespace,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppWorkingNamespace,
        Pointer<VTablePointer> ppResult,
      )
    >
  >
  OpenNamespace;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pSink)>
  >
  CancelAsyncCall;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Pointer<VTablePointer> ppResponseHandler,
      )
    >
  >
  QueryObjectSink;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strObjectPath,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppObject,
        Pointer<VTablePointer> ppCallResult,
      )
    >
  >
  GetObject;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strObjectPath,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  GetObjectAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pObject,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppCallResult,
      )
    >
  >
  PutClass;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pObject,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  PutClassAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strClass,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppCallResult,
      )
    >
  >
  DeleteClass;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strClass,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  DeleteClassAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strSuperclass,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppEnum,
      )
    >
  >
  CreateClassEnum;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strSuperclass,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  CreateClassEnumAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pInst,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppCallResult,
      )
    >
  >
  PutInstance;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pInst,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  PutInstanceAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strObjectPath,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppCallResult,
      )
    >
  >
  DeleteInstance;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strObjectPath,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  DeleteInstanceAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strFilter,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppEnum,
      )
    >
  >
  CreateInstanceEnum;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strFilter,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  CreateInstanceEnumAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strQueryLanguage,
        BSTR strQuery,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppEnum,
      )
    >
  >
  ExecQuery;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strQueryLanguage,
        BSTR strQuery,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  ExecQueryAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strQueryLanguage,
        BSTR strQuery,
        Int32 lFlags,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppEnum,
      )
    >
  >
  ExecNotificationQuery;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strQueryLanguage,
        BSTR strQuery,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pResponseHandler,
      )
    >
  >
  ExecNotificationQueryAsync;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strObjectPath,
        BSTR strMethodName,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pInParams,
        Pointer<VTablePointer> ppOutParams,
        Pointer<VTablePointer> ppCallResult,
      )
    >
  >
  ExecMethod;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR strObjectPath,
        BSTR strMethodName,
        Int32 lFlags,
        VTablePointer pCtx,
        VTablePointer pInParams,
        VTablePointer pResponseHandler,
      )
    >
  >
  ExecMethodAsync;
}

@internal
final class IWbemServicesCompanion extends ComCompanion<IWbemServices> {
  const IWbemServicesCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemServices Function(VTablePointer) get fromPointer => IWbemServices.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemServices;
}
