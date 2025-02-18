// iwbemservices.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemServices = '{9556dc99-828c-11cf-a37e-00aa003240c7}';

/// The IWbemServices interface is used by clients and providers to access
/// WMI services. The interface is implemented by WMI and WMI providers, and
/// is the primary WMI interface.
///
/// {@category com}
class IWbemServices extends IUnknown {
  // vtable begins at 3, is 23 entries long.
  IWbemServices(super.ptr);

  factory IWbemServices.from(IUnknown interface) =>
      IWbemServices(interface.toInterface(IID_IWbemServices));

  int openNamespace(
    Pointer<Utf16> strNamespace,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppWorkingNamespace,
    Pointer<Pointer<COMObject>> ppResult,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strNamespace,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppWorkingNamespace,
              Pointer<Pointer<COMObject>> ppResult,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strNamespace,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppWorkingNamespace,
          Pointer<Pointer<COMObject>> ppResult,
        )
      >()(
    ptr.ref.lpVtbl,
    strNamespace,
    lFlags,
    pCtx,
    ppWorkingNamespace,
    ppResult,
  );

  int cancelAsyncCall(Pointer<COMObject> pSink) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pSink)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pSink)>()(
    ptr.ref.lpVtbl,
    pSink,
  );

  int queryObjectSink(
    int lFlags,
    Pointer<Pointer<COMObject>> ppResponseHandler,
  ) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lFlags,
              Pointer<Pointer<COMObject>> ppResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lFlags,
          Pointer<Pointer<COMObject>> ppResponseHandler,
        )
      >()(ptr.ref.lpVtbl, lFlags, ppResponseHandler);

  int getObject(
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppObject,
    Pointer<Pointer<COMObject>> ppCallResult,
  ) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppObject,
              Pointer<Pointer<COMObject>> ppCallResult,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppObject,
          Pointer<Pointer<COMObject>> ppCallResult,
        )
      >()(ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);

  int getObjectAsync(
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int putClass(
    Pointer<COMObject> pObject,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult,
  ) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pObject,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pObject,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult,
        )
      >()(ptr.ref.lpVtbl, pObject, lFlags, pCtx, ppCallResult);

  int putClassAsync(
    Pointer<COMObject> pObject,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pObject,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pObject,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(ptr.ref.lpVtbl, pObject, lFlags, pCtx, pResponseHandler);

  int deleteClass(
    Pointer<Utf16> strClass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult,
  ) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strClass,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult,
        )
      >()(ptr.ref.lpVtbl, strClass, lFlags, pCtx, ppCallResult);

  int deleteClassAsync(
    Pointer<Utf16> strClass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strClass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strClass,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(ptr.ref.lpVtbl, strClass, lFlags, pCtx, pResponseHandler);

  int createClassEnum(
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum,
  ) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strSuperclass,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum,
        )
      >()(ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, ppEnum);

  int createClassEnumAsync(
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 13)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strSuperclass,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strSuperclass,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, pResponseHandler);

  int putInstance(
    Pointer<COMObject> pInst,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult,
  ) => (ptr.ref.vtable + 14)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pInst,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pInst,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult,
        )
      >()(ptr.ref.lpVtbl, pInst, lFlags, pCtx, ppCallResult);

  int putInstanceAsync(
    Pointer<COMObject> pInst,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 15)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pInst,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pInst,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(ptr.ref.lpVtbl, pInst, lFlags, pCtx, pResponseHandler);

  int deleteInstance(
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult,
  ) => (ptr.ref.vtable + 16)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppCallResult,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult,
        )
      >()(ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppCallResult);

  int deleteInstanceAsync(
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 17)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int createInstanceEnum(
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum,
  ) => (ptr.ref.vtable + 18)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strFilter,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum,
        )
      >()(ptr.ref.lpVtbl, strFilter, lFlags, pCtx, ppEnum);

  int createInstanceEnumAsync(
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 19)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strFilter,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strFilter,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(ptr.ref.lpVtbl, strFilter, lFlags, pCtx, pResponseHandler);

  int execQuery(
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum,
  ) => (ptr.ref.vtable + 20)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum,
        )
      >()(ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execQueryAsync(
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 21)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(
    ptr.ref.lpVtbl,
    strQueryLanguage,
    strQuery,
    lFlags,
    pCtx,
    pResponseHandler,
  );

  int execNotificationQuery(
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum,
  ) => (ptr.ref.vtable + 22)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<Pointer<COMObject>> ppEnum,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum,
        )
      >()(ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int execNotificationQueryAsync(
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 23)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strQueryLanguage,
              Pointer<Utf16> strQuery,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler,
        )
      >()(
    ptr.ref.lpVtbl,
    strQueryLanguage,
    strQuery,
    lFlags,
    pCtx,
    pResponseHandler,
  );

  int execMethod(
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<Pointer<COMObject>> ppOutParams,
    Pointer<Pointer<COMObject>> ppCallResult,
  ) => (ptr.ref.vtable + 24)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pInParams,
              Pointer<Pointer<COMObject>> ppOutParams,
              Pointer<Pointer<COMObject>> ppCallResult,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<Pointer<COMObject>> ppOutParams,
          Pointer<Pointer<COMObject>> ppCallResult,
        )
      >()(
    ptr.ref.lpVtbl,
    strObjectPath,
    strMethodName,
    lFlags,
    pCtx,
    pInParams,
    ppOutParams,
    ppCallResult,
  );

  int execMethodAsync(
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<COMObject> pResponseHandler,
  ) => (ptr.ref.vtable + 25)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> strObjectPath,
              Pointer<Utf16> strMethodName,
              Int32 lFlags,
              Pointer<COMObject> pCtx,
              Pointer<COMObject> pInParams,
              Pointer<COMObject> pResponseHandler,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<COMObject> pResponseHandler,
        )
      >()(
    ptr.ref.lpVtbl,
    strObjectPath,
    strMethodName,
    lFlags,
    pCtx,
    pInParams,
    pResponseHandler,
  );
}
