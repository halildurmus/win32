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
    Pointer pCtx,
    Pointer<Pointer> ppWorkingNamespace,
    Pointer<Pointer> ppResult);
typedef _OpenNamespace_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strNamespace,
    int lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppWorkingNamespace,
    Pointer<Pointer> ppResult);

typedef _CancelAsyncCall_Native = Int32 Function(Pointer obj, Pointer pSink);
typedef _CancelAsyncCall_Dart = int Function(Pointer obj, Pointer pSink);

typedef _QueryObjectSink_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Pointer> ppResponseHandler);
typedef _QueryObjectSink_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Pointer> ppResponseHandler);

typedef _GetObject_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppObject,
    Pointer<Pointer> ppCallResult);
typedef _GetObject_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppObject,
    Pointer<Pointer> ppCallResult);

typedef _GetObjectAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);
typedef _GetObjectAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);

typedef _PutClass_Native = Int32 Function(Pointer obj, Pointer pObject,
    Int32 lFlags, Pointer pCtx, Pointer<Pointer> ppCallResult);
typedef _PutClass_Dart = int Function(Pointer obj, Pointer pObject, int lFlags,
    Pointer pCtx, Pointer<Pointer> ppCallResult);

typedef _PutClassAsync_Native = Int32 Function(Pointer obj, Pointer pObject,
    Int32 lFlags, Pointer pCtx, Pointer pResponseHandler);
typedef _PutClassAsync_Dart = int Function(Pointer obj, Pointer pObject,
    int lFlags, Pointer pCtx, Pointer pResponseHandler);

typedef _DeleteClass_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppCallResult);
typedef _DeleteClass_Dart = int Function(Pointer obj, Pointer<Utf16> strClass,
    int lFlags, Pointer pCtx, Pointer<Pointer> ppCallResult);

typedef _DeleteClassAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);
typedef _DeleteClassAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    int lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);

typedef _CreateClassEnum_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);
typedef _CreateClassEnum_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);

typedef _CreateClassEnumAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);
typedef _CreateClassEnumAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);

typedef _PutInstance_Native = Int32 Function(Pointer obj, Pointer pInst,
    Int32 lFlags, Pointer pCtx, Pointer<Pointer> ppCallResult);
typedef _PutInstance_Dart = int Function(Pointer obj, Pointer pInst, int lFlags,
    Pointer pCtx, Pointer<Pointer> ppCallResult);

typedef _PutInstanceAsync_Native = Int32 Function(Pointer obj, Pointer pInst,
    Int32 lFlags, Pointer pCtx, Pointer pResponseHandler);
typedef _PutInstanceAsync_Dart = int Function(Pointer obj, Pointer pInst,
    int lFlags, Pointer pCtx, Pointer pResponseHandler);

typedef _DeleteInstance_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppCallResult);
typedef _DeleteInstance_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppCallResult);

typedef _DeleteInstanceAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);
typedef _DeleteInstanceAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);

typedef _CreateInstanceEnum_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);
typedef _CreateInstanceEnum_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);

typedef _CreateInstanceEnumAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);
typedef _CreateInstanceEnumAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);

typedef _ExecQuery_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);
typedef _ExecQuery_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);

typedef _ExecQueryAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);
typedef _ExecQueryAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);

typedef _ExecNotificationQuery_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);
typedef _ExecNotificationQuery_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer pCtx,
    Pointer<Pointer> ppEnum);

typedef _ExecNotificationQueryAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);
typedef _ExecNotificationQueryAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer pCtx,
    Pointer pResponseHandler);

typedef _ExecMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pInParams,
    Pointer<Pointer> ppOutParams,
    Pointer<Pointer> ppCallResult);
typedef _ExecMethod_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer pCtx,
    Pointer pInParams,
    Pointer<Pointer> ppOutParams,
    Pointer<Pointer> ppCallResult);

typedef _ExecMethodAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Int32 lFlags,
    Pointer pCtx,
    Pointer pInParams,
    Pointer pResponseHandler);
typedef _ExecMethodAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer pCtx,
    Pointer pInParams,
    Pointer pResponseHandler);

/// {@category Interface}
/// {@category com}
class IWbemServices extends IUnknown {
  // vtable begins at 3, ends at 25

  IWbemServices(Pointer<COMObject> ptr) : super(ptr);

  int OpenNamespace(Pointer<Utf16> strNamespace, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppWorkingNamespace, Pointer<Pointer> ppResult) =>
      Pointer<NativeFunction<_OpenNamespace_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_OpenNamespace_Dart>()(ptr.ref.lpVtbl, strNamespace,
          lFlags, pCtx, ppWorkingNamespace, ppResult);

  int CancelAsyncCall(Pointer pSink) =>
      Pointer<NativeFunction<_CancelAsyncCall_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_CancelAsyncCall_Dart>()(ptr.ref.lpVtbl, pSink);

  int QueryObjectSink(int lFlags, Pointer<Pointer> ppResponseHandler) =>
      Pointer<NativeFunction<_QueryObjectSink_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_QueryObjectSink_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppResponseHandler);

  int GetObject(Pointer<Utf16> strObjectPath, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppObject, Pointer<Pointer> ppCallResult) =>
      Pointer<NativeFunction<_GetObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_GetObject_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);

  int GetObjectAsync(Pointer<Utf16> strObjectPath, int lFlags, Pointer pCtx,
          Pointer pResponseHandler) =>
      Pointer<NativeFunction<_GetObjectAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetObjectAsync_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int PutClass(Pointer pObject, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppCallResult) =>
      Pointer<NativeFunction<_PutClass_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_PutClass_Dart>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, ppCallResult);

  int PutClassAsync(Pointer pObject, int lFlags, Pointer pCtx,
          Pointer pResponseHandler) =>
      Pointer<NativeFunction<_PutClassAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_PutClassAsync_Dart>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, pResponseHandler);

  int DeleteClass(Pointer<Utf16> strClass, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppCallResult) =>
      Pointer<NativeFunction<_DeleteClass_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_DeleteClass_Dart>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, ppCallResult);

  int DeleteClassAsync(Pointer<Utf16> strClass, int lFlags, Pointer pCtx,
          Pointer pResponseHandler) =>
      Pointer<NativeFunction<_DeleteClassAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_DeleteClassAsync_Dart>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, pResponseHandler);

  int CreateClassEnum(Pointer<Utf16> strSuperclass, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppEnum) =>
      Pointer<NativeFunction<_CreateClassEnum_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<_CreateClassEnum_Dart>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, ppEnum);

  int CreateClassEnumAsync(Pointer<Utf16> strSuperclass, int lFlags,
          Pointer pCtx, Pointer pResponseHandler) =>
      Pointer<NativeFunction<_CreateClassEnumAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_CreateClassEnumAsync_Dart>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, pResponseHandler);

  int PutInstance(Pointer pInst, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppCallResult) =>
      Pointer<NativeFunction<_PutInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_PutInstance_Dart>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, ppCallResult);

  int PutInstanceAsync(
          Pointer pInst, int lFlags, Pointer pCtx, Pointer pResponseHandler) =>
      Pointer<NativeFunction<_PutInstanceAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_PutInstanceAsync_Dart>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, pResponseHandler);

  int DeleteInstance(Pointer<Utf16> strObjectPath, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppCallResult) =>
      Pointer<NativeFunction<_DeleteInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_DeleteInstance_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppCallResult);

  int DeleteInstanceAsync(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer pCtx, Pointer pResponseHandler) =>
      Pointer<NativeFunction<_DeleteInstanceAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<_DeleteInstanceAsync_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int CreateInstanceEnum(Pointer<Utf16> strFilter, int lFlags, Pointer pCtx,
          Pointer<Pointer> ppEnum) =>
      Pointer<NativeFunction<_CreateInstanceEnum_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<_CreateInstanceEnum_Dart>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, ppEnum);

  int CreateInstanceEnumAsync(Pointer<Utf16> strFilter, int lFlags,
          Pointer pCtx, Pointer pResponseHandler) =>
      Pointer<NativeFunction<_CreateInstanceEnumAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<_CreateInstanceEnumAsync_Dart>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, pResponseHandler);

  int ExecQuery(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, Pointer pCtx, Pointer<Pointer> ppEnum) =>
      Pointer<NativeFunction<_ExecQuery_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<_ExecQuery_Dart>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int ExecQueryAsync(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, Pointer pCtx, Pointer pResponseHandler) =>
      Pointer<NativeFunction<_ExecQueryAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(21).value)
              .asFunction<_ExecQueryAsync_Dart>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int ExecNotificationQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer pCtx,
          Pointer<Pointer> ppEnum) =>
      Pointer<NativeFunction<_ExecNotificationQuery_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<_ExecNotificationQuery_Dart>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int ExecNotificationQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer pCtx,
          Pointer pResponseHandler) =>
      Pointer<NativeFunction<_ExecNotificationQueryAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(23).value)
              .asFunction<_ExecNotificationQueryAsync_Dart>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int ExecMethod(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer pCtx,
          Pointer pInParams,
          Pointer<Pointer> ppOutParams,
          Pointer<Pointer> ppCallResult) =>
      Pointer<NativeFunction<_ExecMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(24).value)
              .asFunction<_ExecMethod_Dart>()(ptr.ref.lpVtbl, strObjectPath,
          strMethodName, lFlags, pCtx, pInParams, ppOutParams, ppCallResult);

  int ExecMethodAsync(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer pCtx,
          Pointer pInParams,
          Pointer pResponseHandler) =>
      Pointer<NativeFunction<_ExecMethodAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(25).value)
              .asFunction<_ExecMethodAsync_Dart>()(
          ptr.ref.lpVtbl,
          strObjectPath,
          strMethodName,
          lFlags,
          pCtx,
          pInParams,
          pResponseHandler);
}
