// IWbemClassObject.dart

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
const CLSID_WbemClassObject = '{9A653086-174F-11D2-B5F9-00104B703EFD}';

/// @nodoc
const IID_IWbemClassObject = '{DC12A681-737F-11CF-884D-00AA004B2E24}';

typedef _GetQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppQualSet);
typedef _GetQualifierSet_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppQualSet);

typedef _Get_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<VARIANT> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);
typedef _Get_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<VARIANT> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);

typedef _Put_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName,
    Int32 lFlags, Pointer<VARIANT> pVal, Int32 Type);
typedef _Put_Dart = int Function(Pointer obj, Pointer<Utf16> wszName,
    int lFlags, Pointer<VARIANT> pVal, int Type);

typedef _Delete_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName);
typedef _Delete_Dart = int Function(Pointer obj, Pointer<Utf16> wszName);

typedef _GetNames_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszQualifierName,
    Int32 lFlags,
    Pointer<VARIANT> pQualifierVal,
    Pointer<Pointer<SAFEARRAY>> pNames);
typedef _GetNames_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszQualifierName,
    int lFlags,
    Pointer<VARIANT> pQualifierVal,
    Pointer<Pointer<SAFEARRAY>> pNames);

typedef _BeginEnumeration_Native = Int32 Function(
    Pointer obj, Int32 lEnumFlags);
typedef _BeginEnumeration_Dart = int Function(Pointer obj, int lEnumFlags);

typedef _Next_Native = Int32 Function(
    Pointer obj,
    Int32 lFlags,
    Pointer<Pointer<Utf16>> strName,
    Pointer<VARIANT> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);
typedef _Next_Dart = int Function(
    Pointer obj,
    int lFlags,
    Pointer<Pointer<Utf16>> strName,
    Pointer<VARIANT> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);

typedef _EndEnumeration_Native = Int32 Function(Pointer obj);
typedef _EndEnumeration_Dart = int Function(Pointer obj);

typedef _GetPropertyQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszProperty, Pointer<Pointer> ppQualSet);
typedef _GetPropertyQualifierSet_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszProperty, Pointer<Pointer> ppQualSet);

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppCopy);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<Pointer> ppCopy);

typedef _GetObjectText_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Pointer<Utf16>> pstrObjectText);
typedef _GetObjectText_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Pointer<Utf16>> pstrObjectText);

typedef _SpawnDerivedClass_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Pointer> ppNewClass);
typedef _SpawnDerivedClass_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Pointer> ppNewClass);

typedef _SpawnInstance_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Pointer> ppNewInstance);
typedef _SpawnInstance_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Pointer> ppNewInstance);

typedef _CompareTo_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer pCompareTo);
typedef _CompareTo_Dart = int Function(
    Pointer obj, int lFlags, Pointer pCompareTo);

typedef _GetPropertyOrigin_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName, Pointer<Pointer<Utf16>> pstrClassName);
typedef _GetPropertyOrigin_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszName, Pointer<Pointer<Utf16>> pstrClassName);

typedef _InheritsFrom_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> strAncestor);
typedef _InheritsFrom_Dart = int Function(
    Pointer obj, Pointer<Utf16> strAncestor);

typedef _GetMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<Pointer> ppInSignature,
    Pointer<Pointer> ppOutSignature);
typedef _GetMethod_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<Pointer> ppInSignature,
    Pointer<Pointer> ppOutSignature);

typedef _PutMethod_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName,
    Int32 lFlags, Pointer pInSignature, Pointer pOutSignature);
typedef _PutMethod_Dart = int Function(Pointer obj, Pointer<Utf16> wszName,
    int lFlags, Pointer pInSignature, Pointer pOutSignature);

typedef _DeleteMethod_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName);
typedef _DeleteMethod_Dart = int Function(Pointer obj, Pointer<Utf16> wszName);

typedef _BeginMethodEnumeration_Native = Int32 Function(
    Pointer obj, Int32 lEnumFlags);
typedef _BeginMethodEnumeration_Dart = int Function(
    Pointer obj, int lEnumFlags);

typedef _NextMethod_Native = Int32 Function(
    Pointer obj,
    Int32 lFlags,
    Pointer<Pointer<Utf16>> pstrName,
    Pointer<Pointer> ppInSignature,
    Pointer<Pointer> ppOutSignature);
typedef _NextMethod_Dart = int Function(
    Pointer obj,
    int lFlags,
    Pointer<Pointer<Utf16>> pstrName,
    Pointer<Pointer> ppInSignature,
    Pointer<Pointer> ppOutSignature);

typedef _EndMethodEnumeration_Native = Int32 Function(Pointer obj);
typedef _EndMethodEnumeration_Dart = int Function(Pointer obj);

typedef _GetMethodQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszMethod, Pointer<Pointer> ppQualSet);
typedef _GetMethodQualifierSet_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszMethod, Pointer<Pointer> ppQualSet);

typedef _GetMethodOrigin_Native = Int32 Function(Pointer obj,
    Pointer<Utf16> wszMethodName, Pointer<Pointer<Utf16>> pstrClassName);
typedef _GetMethodOrigin_Dart = int Function(Pointer obj,
    Pointer<Utf16> wszMethodName, Pointer<Pointer<Utf16>> pstrClassName);

/// {@category Interface}
/// {@category com}
class IWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 26

  IWbemClassObject(Pointer<COMObject> ptr) : super(ptr);

  int GetQualifierSet(Pointer<Pointer> ppQualSet) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetQualifierSet_Native>>>()
      .value
      .asFunction<_GetQualifierSet_Dart>()(ptr.ref.lpVtbl, ppQualSet);

  int Get(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_Get_Native>>>()
              .value
              .asFunction<_Get_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pVal, pType, plFlavor);

  int Put(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pVal,
          int Type) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_Put_Native>>>()
          .value
          .asFunction<_Put_Dart>()(ptr.ref.lpVtbl, wszName, lFlags, pVal, Type);

  int Delete(Pointer<Utf16> wszName) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Delete_Native>>>()
      .value
      .asFunction<_Delete_Dart>()(ptr.ref.lpVtbl, wszName);

  int GetNames(Pointer<Utf16> wszQualifierName, int lFlags,
          Pointer<VARIANT> pQualifierVal, Pointer<Pointer<SAFEARRAY>> pNames) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_GetNames_Native>>>()
              .value
              .asFunction<_GetNames_Dart>()(
          ptr.ref.lpVtbl, wszQualifierName, lFlags, pQualifierVal, pNames);

  int BeginEnumeration(int lEnumFlags) => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_BeginEnumeration_Native>>>()
      .value
      .asFunction<_BeginEnumeration_Dart>()(ptr.ref.lpVtbl, lEnumFlags);

  int Next(int lFlags, Pointer<Pointer<Utf16>> strName, Pointer<VARIANT> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_Next_Native>>>()
              .value
              .asFunction<_Next_Dart>()(
          ptr.ref.lpVtbl, lFlags, strName, pVal, pType, plFlavor);

  int EndEnumeration() => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_EndEnumeration_Native>>>()
      .value
      .asFunction<_EndEnumeration_Dart>()(ptr.ref.lpVtbl);

  int GetPropertyQualifierSet(
          Pointer<Utf16> wszProperty, Pointer<Pointer> ppQualSet) =>
      ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_GetPropertyQualifierSet_Native>>>()
              .value
              .asFunction<_GetPropertyQualifierSet_Dart>()(
          ptr.ref.lpVtbl, wszProperty, ppQualSet);

  int Clone(Pointer<Pointer> ppCopy) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_Clone_Native>>>()
      .value
      .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppCopy);

  int GetObjectText(int lFlags, Pointer<Pointer<Utf16>> pstrObjectText) =>
      ptr.ref.lpVtbl.value
              .elementAt(13)
              .cast<Pointer<NativeFunction<_GetObjectText_Native>>>()
              .value
              .asFunction<_GetObjectText_Dart>()(
          ptr.ref.lpVtbl, lFlags, pstrObjectText);

  int SpawnDerivedClass(int lFlags, Pointer<Pointer> ppNewClass) =>
      ptr.ref.lpVtbl.value
              .elementAt(14)
              .cast<Pointer<NativeFunction<_SpawnDerivedClass_Native>>>()
              .value
              .asFunction<_SpawnDerivedClass_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppNewClass);

  int SpawnInstance(int lFlags, Pointer<Pointer> ppNewInstance) => ptr
      .ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_SpawnInstance_Native>>>()
      .value
      .asFunction<_SpawnInstance_Dart>()(ptr.ref.lpVtbl, lFlags, ppNewInstance);

  int CompareTo(int lFlags, Pointer pCompareTo) => ptr.ref.lpVtbl.value
      .elementAt(16)
      .cast<Pointer<NativeFunction<_CompareTo_Native>>>()
      .value
      .asFunction<_CompareTo_Dart>()(ptr.ref.lpVtbl, lFlags, pCompareTo);

  int GetPropertyOrigin(
          Pointer<Utf16> wszName, Pointer<Pointer<Utf16>> pstrClassName) =>
      ptr.ref.lpVtbl.value
              .elementAt(17)
              .cast<Pointer<NativeFunction<_GetPropertyOrigin_Native>>>()
              .value
              .asFunction<_GetPropertyOrigin_Dart>()(
          ptr.ref.lpVtbl, wszName, pstrClassName);

  int InheritsFrom(Pointer<Utf16> strAncestor) => ptr.ref.lpVtbl.value
      .elementAt(18)
      .cast<Pointer<NativeFunction<_InheritsFrom_Native>>>()
      .value
      .asFunction<_InheritsFrom_Dart>()(ptr.ref.lpVtbl, strAncestor);

  int GetMethod(Pointer<Utf16> wszName, int lFlags,
          Pointer<Pointer> ppInSignature, Pointer<Pointer> ppOutSignature) =>
      ptr.ref.lpVtbl.value
              .elementAt(19)
              .cast<Pointer<NativeFunction<_GetMethod_Native>>>()
              .value
              .asFunction<_GetMethod_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, ppInSignature, ppOutSignature);

  int PutMethod(Pointer<Utf16> wszName, int lFlags, Pointer pInSignature,
          Pointer pOutSignature) =>
      ptr.ref.lpVtbl.value
              .elementAt(20)
              .cast<Pointer<NativeFunction<_PutMethod_Native>>>()
              .value
              .asFunction<_PutMethod_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pInSignature, pOutSignature);

  int DeleteMethod(Pointer<Utf16> wszName) => ptr.ref.lpVtbl.value
      .elementAt(21)
      .cast<Pointer<NativeFunction<_DeleteMethod_Native>>>()
      .value
      .asFunction<_DeleteMethod_Dart>()(ptr.ref.lpVtbl, wszName);

  int BeginMethodEnumeration(int lEnumFlags) => ptr.ref.lpVtbl.value
      .elementAt(22)
      .cast<Pointer<NativeFunction<_BeginMethodEnumeration_Native>>>()
      .value
      .asFunction<_BeginMethodEnumeration_Dart>()(ptr.ref.lpVtbl, lEnumFlags);

  int NextMethod(int lFlags, Pointer<Pointer<Utf16>> pstrName,
          Pointer<Pointer> ppInSignature, Pointer<Pointer> ppOutSignature) =>
      ptr.ref.lpVtbl.value
              .elementAt(23)
              .cast<Pointer<NativeFunction<_NextMethod_Native>>>()
              .value
              .asFunction<_NextMethod_Dart>()(
          ptr.ref.lpVtbl, lFlags, pstrName, ppInSignature, ppOutSignature);

  int EndMethodEnumeration() => ptr.ref.lpVtbl.value
      .elementAt(24)
      .cast<Pointer<NativeFunction<_EndMethodEnumeration_Native>>>()
      .value
      .asFunction<_EndMethodEnumeration_Dart>()(ptr.ref.lpVtbl);

  int GetMethodQualifierSet(
          Pointer<Utf16> wszMethod, Pointer<Pointer> ppQualSet) =>
      ptr.ref.lpVtbl.value
              .elementAt(25)
              .cast<Pointer<NativeFunction<_GetMethodQualifierSet_Native>>>()
              .value
              .asFunction<_GetMethodQualifierSet_Dart>()(
          ptr.ref.lpVtbl, wszMethod, ppQualSet);

  int GetMethodOrigin(Pointer<Utf16> wszMethodName,
          Pointer<Pointer<Utf16>> pstrClassName) =>
      ptr.ref.lpVtbl.value
              .elementAt(26)
              .cast<Pointer<NativeFunction<_GetMethodOrigin_Native>>>()
              .value
              .asFunction<_GetMethodOrigin_Dart>()(
          ptr.ref.lpVtbl, wszMethodName, pstrClassName);
}

/// {@category com}
class WbemClassObject extends IWbemClassObject {
  WbemClassObject(Pointer<COMObject> ptr) : super(ptr);

  factory WbemClassObject.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemClassObject);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemClassObject);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemClassObject(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
