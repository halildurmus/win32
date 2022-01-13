// ISWbemServices.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/ISWbemObject.dart';
import '../../system/wmi/ISWbemObjectSet.dart';
import '../../system/wmi/ISWbemEventSource.dart';
import '../../system/wmi/ISWbemSecurity.dart';

/// @nodoc
const IID_ISWbemServices = '{76A6415C-CB41-11D1-8B02-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemServices extends IDispatch {
  // vtable begins at 7, is 19 entries long.
  ISWbemServices(Pointer<COMObject> ptr) : super(ptr);

  int Get(
    Pointer<Utf16> strObjectPath,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>()(
        ptr.ref.lpVtbl,
        strObjectPath,
        iFlags,
        objWbemNamedValueSet,
        objWbemObject,
      );

  int GetAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strObjectPath,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strObjectPath,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int Delete(
    Pointer<Utf16> strObjectPath,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>()(
        ptr.ref.lpVtbl,
        strObjectPath,
        iFlags,
        objWbemNamedValueSet,
      );

  int DeleteAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strObjectPath,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strObjectPath,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int InstancesOf(
    Pointer<Utf16> strClass,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObjectSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strClass,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strClass,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        strClass,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int InstancesOfAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strClass,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strClass,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strClass,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strClass,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int SubclassesOf(
    Pointer<Utf16> strSuperclass,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObjectSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strSuperclass,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strSuperclass,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        strSuperclass,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int SubclassesOfAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strSuperclass,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strSuperclass,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strSuperclass,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strSuperclass,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int ExecQuery(
    Pointer<Utf16> strQuery,
    Pointer<Utf16> strQueryLanguage,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObjectSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        strQuery,
        strQueryLanguage,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int ExecQueryAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strQuery,
    Pointer<Utf16> strQueryLanguage,
    int lFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            Int32 lFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            int lFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strQuery,
        strQueryLanguage,
        lFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int AssociatorsOf(
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strAssocClass,
    Pointer<Utf16> strResultClass,
    Pointer<Utf16> strResultRole,
    Pointer<Utf16> strRole,
    int bClassesOnly,
    int bSchemaOnly,
    Pointer<Utf16> strRequiredAssocQualifier,
    Pointer<Utf16> strRequiredQualifier,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObjectSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strAssocClass,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strResultRole,
            Pointer<Utf16> strRole,
            Int16 bClassesOnly,
            Int16 bSchemaOnly,
            Pointer<Utf16> strRequiredAssocQualifier,
            Pointer<Utf16> strRequiredQualifier,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strAssocClass,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strResultRole,
            Pointer<Utf16> strRole,
            int bClassesOnly,
            int bSchemaOnly,
            Pointer<Utf16> strRequiredAssocQualifier,
            Pointer<Utf16> strRequiredQualifier,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        strObjectPath,
        strAssocClass,
        strResultClass,
        strResultRole,
        strRole,
        bClassesOnly,
        bSchemaOnly,
        strRequiredAssocQualifier,
        strRequiredQualifier,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int AssociatorsOfAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strAssocClass,
    Pointer<Utf16> strResultClass,
    Pointer<Utf16> strResultRole,
    Pointer<Utf16> strRole,
    int bClassesOnly,
    int bSchemaOnly,
    Pointer<Utf16> strRequiredAssocQualifier,
    Pointer<Utf16> strRequiredQualifier,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strAssocClass,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strResultRole,
            Pointer<Utf16> strRole,
            Int16 bClassesOnly,
            Int16 bSchemaOnly,
            Pointer<Utf16> strRequiredAssocQualifier,
            Pointer<Utf16> strRequiredQualifier,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strAssocClass,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strResultRole,
            Pointer<Utf16> strRole,
            int bClassesOnly,
            int bSchemaOnly,
            Pointer<Utf16> strRequiredAssocQualifier,
            Pointer<Utf16> strRequiredQualifier,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strObjectPath,
        strAssocClass,
        strResultClass,
        strResultRole,
        strRole,
        bClassesOnly,
        bSchemaOnly,
        strRequiredAssocQualifier,
        strRequiredQualifier,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int ReferencesTo(
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strResultClass,
    Pointer<Utf16> strRole,
    int bClassesOnly,
    int bSchemaOnly,
    Pointer<Utf16> strRequiredQualifier,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObjectSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strRole,
            Int16 bClassesOnly,
            Int16 bSchemaOnly,
            Pointer<Utf16> strRequiredQualifier,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strRole,
            int bClassesOnly,
            int bSchemaOnly,
            Pointer<Utf16> strRequiredQualifier,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        strObjectPath,
        strResultClass,
        strRole,
        bClassesOnly,
        bSchemaOnly,
        strRequiredQualifier,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int ReferencesToAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strResultClass,
    Pointer<Utf16> strRole,
    int bClassesOnly,
    int bSchemaOnly,
    Pointer<Utf16> strRequiredQualifier,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strRole,
            Int16 bClassesOnly,
            Int16 bSchemaOnly,
            Pointer<Utf16> strRequiredQualifier,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strResultClass,
            Pointer<Utf16> strRole,
            int bClassesOnly,
            int bSchemaOnly,
            Pointer<Utf16> strRequiredQualifier,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strObjectPath,
        strResultClass,
        strRole,
        bClassesOnly,
        bSchemaOnly,
        strRequiredQualifier,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int ExecNotificationQuery(
    Pointer<Utf16> strQuery,
    Pointer<Utf16> strQueryLanguage,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemEventSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemEventSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemEventSource,
          )>()(
        ptr.ref.lpVtbl,
        strQuery,
        strQueryLanguage,
        iFlags,
        objWbemNamedValueSet,
        objWbemEventSource,
      );

  int ExecNotificationQueryAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strQuery,
    Pointer<Utf16> strQueryLanguage,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strQuery,
            Pointer<Utf16> strQueryLanguage,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strQuery,
        strQueryLanguage,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int ExecMethod(
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Pointer<COMObject> objWbemInParameters,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemOutParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strMethodName,
            Pointer<COMObject> objWbemInParameters,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemOutParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strMethodName,
            Pointer<COMObject> objWbemInParameters,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemOutParameters,
          )>()(
        ptr.ref.lpVtbl,
        strObjectPath,
        strMethodName,
        objWbemInParameters,
        iFlags,
        objWbemNamedValueSet,
        objWbemOutParameters,
      );

  int ExecMethodAsync(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strObjectPath,
    Pointer<Utf16> strMethodName,
    Pointer<COMObject> objWbemInParameters,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<COMObject> objWbemAsyncContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strMethodName,
            Pointer<COMObject> objWbemInParameters,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            Pointer<Utf16> strObjectPath,
            Pointer<Utf16> strMethodName,
            Pointer<COMObject> objWbemInParameters,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strObjectPath,
        strMethodName,
        objWbemInParameters,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  Pointer<COMObject> get Security_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemSecurity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemSecurity,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_SWbemServices = '{04B83D63-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemServices extends ISWbemServices {
  SWbemServices(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemServices.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemServices);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemServices);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemServices(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
