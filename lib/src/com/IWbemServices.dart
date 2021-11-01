// IWbemServices.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IWbemServices = '{9556DC99-828C-11CF-A37E-00AA003240C7}';

typedef _OpenNamespace_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strNamespace,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppWorkingNamespace,
    Pointer<Pointer<COMObject>> ppResult);
typedef _OpenNamespace_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strNamespace,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppWorkingNamespace,
    Pointer<Pointer<COMObject>> ppResult);

typedef _CancelAsyncCall_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pSink);
typedef _CancelAsyncCall_Dart = int Function(
    Pointer obj, Pointer<COMObject> pSink);

typedef _QueryObjectSink_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Pointer<COMObject>> ppResponseHandler);
typedef _QueryObjectSink_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Pointer<COMObject>> ppResponseHandler);

typedef _GetObject_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppObject,
    Pointer<Pointer<COMObject>> ppCallResult);
typedef _GetObject_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppObject,
    Pointer<Pointer<COMObject>> ppCallResult);

typedef _GetObjectAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _GetObjectAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _PutClass_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pObject,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);
typedef _PutClass_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pObject,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);

typedef _PutClassAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pObject,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _PutClassAsync_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pObject,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _DeleteClass_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);
typedef _DeleteClass_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);

typedef _DeleteClassAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _DeleteClassAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _CreateClassEnum_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);
typedef _CreateClassEnum_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);

typedef _CreateClassEnumAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _CreateClassEnumAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _PutInstance_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pInst,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);
typedef _PutInstance_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pInst,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);

typedef _PutInstanceAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pInst,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _PutInstanceAsync_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pInst,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _DeleteInstance_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);
typedef _DeleteInstance_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppCallResult);

typedef _DeleteInstanceAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _DeleteInstanceAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _CreateInstanceEnum_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);
typedef _CreateInstanceEnum_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);

typedef _CreateInstanceEnumAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _CreateInstanceEnumAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _ExecQuery_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);
typedef _ExecQuery_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);

typedef _ExecQueryAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _ExecQueryAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _ExecNotificationQuery_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);
typedef _ExecNotificationQuery_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<Pointer<COMObject>> ppEnum);

typedef _ExecNotificationQueryAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef _ExecNotificationQueryAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef _ExecMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<Pointer<COMObject>> ppOutParams,
    Pointer<Pointer<COMObject>> ppCallResult);
typedef _ExecMethod_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<Pointer<COMObject>> ppOutParams,
    Pointer<Pointer<COMObject>> ppCallResult);

typedef _ExecMethodAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<COMObject> pResponseHandler);
typedef _ExecMethodAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<COMObject> pResponseHandler);

/// {@category Interface}
/// {@category com}
class IWbemServices extends IUnknown {
  // vtable begins at 3, ends at 25

  IWbemServices(Pointer<COMObject> ptr) : super(ptr);

  int OpenNamespace(
          Pointer<Utf16> strNamespace,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppWorkingNamespace,
          Pointer<Pointer<COMObject>> ppResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_OpenNamespace_Native>>>()
              .value
              .asFunction<_OpenNamespace_Dart>()(ptr.ref.lpVtbl, strNamespace,
          lFlags, pCtx, ppWorkingNamespace, ppResult);

  int CancelAsyncCall(Pointer<COMObject> pSink) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_CancelAsyncCall_Native>>>()
      .value
      .asFunction<_CancelAsyncCall_Dart>()(ptr.ref.lpVtbl, pSink);

  int QueryObjectSink(
          int lFlags, Pointer<Pointer<COMObject>> ppResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_QueryObjectSink_Native>>>()
              .value
              .asFunction<_QueryObjectSink_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppResponseHandler);

  int GetObject(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppObject,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_GetObject_Native>>>()
              .value
              .asFunction<_GetObject_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);

  int GetObjectAsync(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_GetObjectAsync_Native>>>()
              .value
              .asFunction<_GetObjectAsync_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int PutClass(Pointer<COMObject> pObject, int lFlags, Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_PutClass_Native>>>()
              .value
              .asFunction<_PutClass_Dart>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, ppCallResult);

  int PutClassAsync(Pointer<COMObject> pObject, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_PutClassAsync_Native>>>()
              .value
              .asFunction<_PutClassAsync_Dart>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, pResponseHandler);

  int DeleteClass(Pointer<Utf16> strClass, int lFlags, Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_DeleteClass_Native>>>()
              .value
              .asFunction<_DeleteClass_Dart>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, ppCallResult);

  int DeleteClassAsync(Pointer<Utf16> strClass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_DeleteClassAsync_Native>>>()
              .value
              .asFunction<_DeleteClassAsync_Dart>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, pResponseHandler);

  int CreateClassEnum(Pointer<Utf16> strSuperclass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<Pointer<COMObject>> ppEnum) =>
      ptr.ref.lpVtbl.value
              .elementAt(12)
              .cast<Pointer<NativeFunction<_CreateClassEnum_Native>>>()
              .value
              .asFunction<_CreateClassEnum_Dart>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, ppEnum);

  int CreateClassEnumAsync(Pointer<Utf16> strSuperclass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(13)
              .cast<Pointer<NativeFunction<_CreateClassEnumAsync_Native>>>()
              .value
              .asFunction<_CreateClassEnumAsync_Dart>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, pResponseHandler);

  int PutInstance(Pointer<COMObject> pInst, int lFlags, Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(14)
              .cast<Pointer<NativeFunction<_PutInstance_Native>>>()
              .value
              .asFunction<_PutInstance_Dart>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, ppCallResult);

  int PutInstanceAsync(Pointer<COMObject> pInst, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(15)
              .cast<Pointer<NativeFunction<_PutInstanceAsync_Native>>>()
              .value
              .asFunction<_PutInstanceAsync_Dart>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, pResponseHandler);

  int DeleteInstance(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<Pointer<COMObject>> ppCallResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(16)
              .cast<Pointer<NativeFunction<_DeleteInstance_Native>>>()
              .value
              .asFunction<_DeleteInstance_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppCallResult);

  int DeleteInstanceAsync(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(17)
              .cast<Pointer<NativeFunction<_DeleteInstanceAsync_Native>>>()
              .value
              .asFunction<_DeleteInstanceAsync_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int CreateInstanceEnum(Pointer<Utf16> strFilter, int lFlags,
          Pointer<COMObject> pCtx, Pointer<Pointer<COMObject>> ppEnum) =>
      ptr.ref.lpVtbl.value
              .elementAt(18)
              .cast<Pointer<NativeFunction<_CreateInstanceEnum_Native>>>()
              .value
              .asFunction<_CreateInstanceEnum_Dart>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, ppEnum);

  int CreateInstanceEnumAsync(Pointer<Utf16> strFilter, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(19)
              .cast<Pointer<NativeFunction<_CreateInstanceEnumAsync_Native>>>()
              .value
              .asFunction<_CreateInstanceEnumAsync_Dart>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, pResponseHandler);

  int ExecQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum) =>
      ptr.ref.lpVtbl.value
              .elementAt(20)
              .cast<Pointer<NativeFunction<_ExecQuery_Native>>>()
              .value
              .asFunction<_ExecQuery_Dart>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int ExecQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(21)
              .cast<Pointer<NativeFunction<_ExecQueryAsync_Native>>>()
              .value
              .asFunction<_ExecQueryAsync_Dart>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int ExecNotificationQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<Pointer<COMObject>> ppEnum) =>
      ptr.ref.lpVtbl.value
              .elementAt(22)
              .cast<Pointer<NativeFunction<_ExecNotificationQuery_Native>>>()
              .value
              .asFunction<_ExecNotificationQuery_Dart>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int ExecNotificationQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(23)
              .cast<Pointer<NativeFunction<_ExecNotificationQueryAsync_Native>>>()
              .value
              .asFunction<_ExecNotificationQueryAsync_Dart>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int ExecMethod(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<Pointer<COMObject>> ppOutParams,
          Pointer<Pointer<COMObject>> ppCallResult) =>
      ptr.ref.lpVtbl.value
              .elementAt(24)
              .cast<Pointer<NativeFunction<_ExecMethod_Native>>>()
              .value
              .asFunction<_ExecMethod_Dart>()(ptr.ref.lpVtbl, strObjectPath,
          strMethodName, lFlags, pCtx, pInParams, ppOutParams, ppCallResult);

  int ExecMethodAsync(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<COMObject> pResponseHandler) =>
      ptr.ref.lpVtbl.value
              .elementAt(25)
              .cast<Pointer<NativeFunction<_ExecMethodAsync_Native>>>()
              .value
              .asFunction<_ExecMethodAsync_Dart>()(
          ptr.ref.lpVtbl,
          strObjectPath,
          strMethodName,
          lFlags,
          pCtx,
          pInParams,
          pResponseHandler);
}
