import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';
import 'comerrors.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const IID_IWbemServices = '{9556dc99-828c-11cf-a37e-00aa003240c7}';

typedef OpenNamespace_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strNamespace,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppWorkingNamespace,
    Pointer<IntPtr> ppResult);
typedef OpenNamespace_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strNamespace,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppWorkingNamespace,
    Pointer<IntPtr> ppResult);

typedef CancelAsyncCall_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pSink);
typedef CancelAsyncCall_Dart = int Function(
    Pointer obj, Pointer<COMObject> pSink);

typedef QueryObjectSink_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<IntPtr> ppResponseHandler);
typedef QueryObjectSink_Dart = int Function(
    Pointer obj, int lFlags, Pointer<IntPtr> ppResponseHandler);

typedef GetObject_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppObject,
    Pointer<IntPtr> ppCallResult);
typedef GetObject_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppObject,
    Pointer<IntPtr> ppCallResult);

typedef GetObjectAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef GetObjectAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef PutClass_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pObject,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppCallResult);
typedef PutClass_Dart = int Function(Pointer obj, Pointer<COMObject> pObject,
    int lFlags, Pointer<COMObject> pCtx, Pointer<IntPtr> ppCallResult);

typedef PutClassAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pObject,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef PutClassAsync_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pObject,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef DeleteClass_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppCallResult);
typedef DeleteClass_Dart = int Function(Pointer obj, Pointer<Utf16> strClass,
    int lFlags, Pointer<COMObject> pCtx, Pointer<IntPtr> ppCallResult);

typedef DeleteClassAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef DeleteClassAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strClass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef CreateClassEnum_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);
typedef CreateClassEnum_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);

typedef CreateClassEnumAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef CreateClassEnumAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strSuperclass,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef PutInstance_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pInst,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppCallResult);
typedef PutInstance_Dart = int Function(Pointer obj, Pointer<COMObject> pInst,
    int lFlags, Pointer<COMObject> pCtx, Pointer<IntPtr> ppCallResult);

typedef PutInstanceAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pInst,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef PutInstanceAsync_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pInst,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef DeleteInstance_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppCallResult);
typedef DeleteInstance_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppCallResult);

typedef DeleteInstanceAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef DeleteInstanceAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef CreateInstanceEnum_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);
typedef CreateInstanceEnum_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);

typedef CreateInstanceEnumAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef CreateInstanceEnumAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strFilter,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef ExecQuery_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);
typedef ExecQuery_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);

typedef ExecQueryAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef ExecQueryAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef ExecNotificationQuery_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);
typedef ExecNotificationQuery_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<IntPtr> ppEnum);

typedef ExecNotificationQueryAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);
typedef ExecNotificationQueryAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strQueryLanguage,
    Pointer<Utf16> strQuery,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pResponseHandler);

typedef ExecMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<IntPtr> ppOutParams,
    Pointer<IntPtr> ppCallResult);
typedef ExecMethod_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<IntPtr> ppOutParams,
    Pointer<IntPtr> ppCallResult);

typedef ExecMethodAsync_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Int32 lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<COMObject> pResponseHandler);
typedef ExecMethodAsync_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    int lFlags,
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pInParams,
    Pointer<COMObject> pResponseHandler);

class IWbemServices extends IUnknown {
  // vtable begins at 3, ends at 25

  @override
  Pointer<COMObject> ptr;

  IWbemServices(this.ptr) : super(ptr);

  int OpenNamespace(
          Pointer<Utf16> strNamespace,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<IntPtr> ppWorkingNamespace,
          Pointer<IntPtr> ppResult) =>
      Pointer<NativeFunction<OpenNamespace_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<OpenNamespace_Dart>()(ptr.ref.lpVtbl, strNamespace,
          lFlags, pCtx, ppWorkingNamespace, ppResult);

  int CancelAsyncCall(Pointer<COMObject> pSink) =>
      Pointer<NativeFunction<CancelAsyncCall_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<CancelAsyncCall_Dart>()(ptr.ref.lpVtbl, pSink);

  int QueryObjectSink(int lFlags, Pointer<IntPtr> ppResponseHandler) =>
      Pointer<NativeFunction<QueryObjectSink_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<QueryObjectSink_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppResponseHandler);

  int GetObject(
          Pointer<Utf16> strObjectPath,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<IntPtr> ppObject,
          Pointer<IntPtr> ppCallResult) =>
      Pointer<NativeFunction<GetObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<GetObject_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppObject, ppCallResult);

  int GetObjectAsync(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<GetObjectAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<GetObjectAsync_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int PutClass(Pointer<COMObject> pObject, int lFlags, Pointer<COMObject> pCtx,
          Pointer<IntPtr> ppCallResult) =>
      Pointer<NativeFunction<PutClass_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<PutClass_Dart>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, ppCallResult);

  int PutClassAsync(Pointer<COMObject> pObject, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<PutClassAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<PutClassAsync_Dart>()(
          ptr.ref.lpVtbl, pObject, lFlags, pCtx, pResponseHandler);

  int DeleteClass(Pointer<Utf16> strClass, int lFlags, Pointer<COMObject> pCtx,
          Pointer<IntPtr> ppCallResult) =>
      Pointer<NativeFunction<DeleteClass_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<DeleteClass_Dart>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, ppCallResult);

  int DeleteClassAsync(Pointer<Utf16> strClass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<DeleteClassAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<DeleteClassAsync_Dart>()(
          ptr.ref.lpVtbl, strClass, lFlags, pCtx, pResponseHandler);

  int CreateClassEnum(Pointer<Utf16> strSuperclass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<CreateClassEnum_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<CreateClassEnum_Dart>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, ppEnum);

  int CreateClassEnumAsync(Pointer<Utf16> strSuperclass, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<CreateClassEnumAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<CreateClassEnumAsync_Dart>()(
          ptr.ref.lpVtbl, strSuperclass, lFlags, pCtx, pResponseHandler);

  int PutInstance(Pointer<COMObject> pInst, int lFlags, Pointer<COMObject> pCtx,
          Pointer<IntPtr> ppCallResult) =>
      Pointer<NativeFunction<PutInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<PutInstance_Dart>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, ppCallResult);

  int PutInstanceAsync(Pointer<COMObject> pInst, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<PutInstanceAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<PutInstanceAsync_Dart>()(
          ptr.ref.lpVtbl, pInst, lFlags, pCtx, pResponseHandler);

  int DeleteInstance(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<IntPtr> ppCallResult) =>
      Pointer<NativeFunction<DeleteInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<DeleteInstance_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, ppCallResult);

  int DeleteInstanceAsync(Pointer<Utf16> strObjectPath, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<DeleteInstanceAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<DeleteInstanceAsync_Dart>()(
          ptr.ref.lpVtbl, strObjectPath, lFlags, pCtx, pResponseHandler);

  int CreateInstanceEnum(Pointer<Utf16> strFilter, int lFlags,
          Pointer<COMObject> pCtx, Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<CreateInstanceEnum_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<CreateInstanceEnum_Dart>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, ppEnum);

  int CreateInstanceEnumAsync(Pointer<Utf16> strFilter, int lFlags,
          Pointer<COMObject> pCtx, Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<CreateInstanceEnumAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<CreateInstanceEnumAsync_Dart>()(
          ptr.ref.lpVtbl, strFilter, lFlags, pCtx, pResponseHandler);

  int ExecQuery(Pointer<Utf16> strQueryLanguage, Pointer<Utf16> strQuery,
          int lFlags, Pointer<COMObject> pCtx, Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<ExecQuery_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<ExecQuery_Dart>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int ExecQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<ExecQueryAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(21).value)
              .asFunction<ExecQueryAsync_Dart>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int ExecNotificationQuery(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<ExecNotificationQuery_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<ExecNotificationQuery_Dart>()(
          ptr.ref.lpVtbl, strQueryLanguage, strQuery, lFlags, pCtx, ppEnum);

  int ExecNotificationQueryAsync(
          Pointer<Utf16> strQueryLanguage,
          Pointer<Utf16> strQuery,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<ExecNotificationQueryAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(23).value)
              .asFunction<ExecNotificationQueryAsync_Dart>()(ptr.ref.lpVtbl,
          strQueryLanguage, strQuery, lFlags, pCtx, pResponseHandler);

  int ExecMethod(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<IntPtr> ppOutParams,
          Pointer<IntPtr> ppCallResult) =>
      Pointer<NativeFunction<ExecMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(24).value)
              .asFunction<ExecMethod_Dart>()(ptr.ref.lpVtbl, strObjectPath,
          strMethodName, lFlags, pCtx, pInParams, ppOutParams, ppCallResult);

  int ExecMethodAsync(
          Pointer<Utf16> strObjectPath,
          Pointer<Utf16> strMethodName,
          int lFlags,
          Pointer<COMObject> pCtx,
          Pointer<COMObject> pInParams,
          Pointer<COMObject> pResponseHandler) =>
      Pointer<NativeFunction<ExecMethodAsync_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(25).value)
              .asFunction<ExecMethodAsync_Dart>()(ptr.ref.lpVtbl, strObjectPath,
          strMethodName, lFlags, pCtx, pInParams, pResponseHandler);
}
