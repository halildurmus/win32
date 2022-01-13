// ISWbemObject.dart

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
import '../../system/wmi/ISWbemObjectPath.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/ISWbemObjectSet.dart';
import '../../system/wmi/ISWbemObject.dart';
import '../../system/wmi/ISWbemQualifierSet.dart';
import '../../system/wmi/ISWbemPropertySet.dart';
import '../../system/wmi/ISWbemMethodSet.dart';
import '../../specialTypes.dart';
import '../../system/wmi/ISWbemSecurity.dart';

/// @nodoc
const IID_ISWbemObject = '{76A6415A-CB41-11D1-8B02-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemObject extends IDispatch {
  // vtable begins at 7, is 25 entries long.
  ISWbemObject(Pointer<COMObject> ptr) : super(ptr);

  int Put_(
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemObjectPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectPath,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectPath,
      );

  int PutAsync_(
    Pointer<COMObject> objWbemSink,
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
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int Delete_(
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
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        objWbemNamedValueSet,
      );

  int DeleteAsync_(
    Pointer<COMObject> objWbemSink,
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
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int Instances_(
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
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int InstancesAsync_(
    Pointer<COMObject> objWbemSink,
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
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int Subclasses_(
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
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemObjectSet,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int SubclassesAsync_(
    Pointer<COMObject> objWbemSink,
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
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int Associators_(
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
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
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

  int AssociatorsAsync_(
    Pointer<COMObject> objWbemSink,
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
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
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

  int References_(
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
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
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
        strResultClass,
        strRole,
        bClassesOnly,
        bSchemaOnly,
        strRequiredQualifier,
        iFlags,
        objWbemNamedValueSet,
        objWbemObjectSet,
      );

  int ReferencesAsync_(
    Pointer<COMObject> objWbemSink,
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
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemSink,
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
        strResultClass,
        strRole,
        bClassesOnly,
        bSchemaOnly,
        strRequiredQualifier,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int ExecMethod_(
    Pointer<Utf16> strMethodName,
    Pointer<COMObject> objWbemInParameters,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemOutParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
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
            Pointer<Utf16> strMethodName,
            Pointer<COMObject> objWbemInParameters,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemOutParameters,
          )>()(
        ptr.ref.lpVtbl,
        strMethodName,
        objWbemInParameters,
        iFlags,
        objWbemNamedValueSet,
        objWbemOutParameters,
      );

  int ExecMethodAsync_(
    Pointer<COMObject> objWbemSink,
    Pointer<Utf16> strMethodName,
    Pointer<COMObject> objWbemInParameters,
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
            Pointer<Utf16> strMethodName,
            Pointer<COMObject> objWbemInParameters,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<COMObject> objWbemAsyncContext,
          )>()(
        ptr.ref.lpVtbl,
        objWbemSink,
        strMethodName,
        objWbemInParameters,
        iFlags,
        objWbemNamedValueSet,
        objWbemAsyncContext,
      );

  int Clone_(
    Pointer<Pointer<COMObject>> objWbemObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>()(
        ptr.ref.lpVtbl,
        objWbemObject,
      );

  int GetObjectText_(
    int iFlags,
    Pointer<Pointer<Utf16>> strObjectText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iFlags,
            Pointer<Pointer<Utf16>> strObjectText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<Pointer<Utf16>> strObjectText,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        strObjectText,
      );

  int SpawnDerivedClass_(
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        objWbemObject,
      );

  int SpawnInstance_(
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
        objWbemObject,
      );

  int CompareTo_(
    Pointer<COMObject> objWbemObject,
    int iFlags,
    Pointer<Int16> bResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemObject,
            Int32 iFlags,
            Pointer<Int16> bResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemObject,
            int iFlags,
            Pointer<Int16> bResult,
          )>()(
        ptr.ref.lpVtbl,
        objWbemObject,
        iFlags,
        bResult,
      );

  Pointer<COMObject> get Qualifiers_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemQualifierSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemQualifierSet,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Properties_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemPropertySet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemPropertySet,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Methods_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemMethodSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemMethodSet,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get Derivation_ {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> strClassNameArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> strClassNameArray,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Path_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemObjectPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemObjectPath,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get Security_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(31)
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
const CLSID_SWbemObject = '{04B83D62-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemObject extends ISWbemObject {
  SWbemObject(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemObject.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemObject);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemObject);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemObject(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
