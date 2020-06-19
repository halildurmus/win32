// IWbemClassObject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../prototypes.dart';
import '../com/combase.dart';

import 'IUnknown.dart';

const IID_IWbemClassObject = '{dc12a681-737f-11cf-884d-00aa004b2e24}';

typedef _GetQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppQualSet);
typedef _GetQualifierSet_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppQualSet);

typedef _Get_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);
typedef _Get_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);

typedef _Put_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName,
    Int32 lFlags, Pointer<VARIANT_POINTER> pVal, Int32 Type);
typedef _Put_Dart = int Function(Pointer obj, Pointer<Utf16> wszName,
    int lFlags, Pointer<VARIANT_POINTER> pVal, int Type);

typedef _Delete_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName);
typedef _Delete_Dart = int Function(Pointer obj, Pointer<Utf16> wszName);

typedef _GetNames_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszQualifierName,
    Int32 lFlags,
    Pointer<VARIANT_POINTER> pQualifierVal,
    Pointer<SAFEARRAY> pNames);
typedef _GetNames_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszQualifierName,
    int lFlags,
    Pointer<VARIANT_POINTER> pQualifierVal,
    Pointer<SAFEARRAY> pNames);

typedef _BeginEnumeration_Native = Int32 Function(
    Pointer obj, Int32 lEnumFlags);
typedef _BeginEnumeration_Dart = int Function(Pointer obj, int lEnumFlags);

typedef _Next_Native = Int32 Function(
    Pointer obj,
    Int32 lFlags,
    Pointer<Utf16> strName,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);
typedef _Next_Dart = int Function(
    Pointer obj,
    int lFlags,
    Pointer<Utf16> strName,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);

typedef _EndEnumeration_Native = Int32 Function(Pointer obj);
typedef _EndEnumeration_Dart = int Function(Pointer obj);

typedef _GetPropertyQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszProperty, Pointer<IntPtr> ppQualSet);
typedef _GetPropertyQualifierSet_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszProperty, Pointer<IntPtr> ppQualSet);

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppCopy);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppCopy);

typedef _GetObjectText_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Utf16> pstrObjectText);
typedef _GetObjectText_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Utf16> pstrObjectText);

typedef _SpawnDerivedClass_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<IntPtr> ppNewClass);
typedef _SpawnDerivedClass_Dart = int Function(
    Pointer obj, int lFlags, Pointer<IntPtr> ppNewClass);

typedef _SpawnInstance_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<IntPtr> ppNewInstance);
typedef _SpawnInstance_Dart = int Function(
    Pointer obj, int lFlags, Pointer<IntPtr> ppNewInstance);

typedef _CompareTo_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<COMObject> pCompareTo);
typedef _CompareTo_Dart = int Function(
    Pointer obj, int lFlags, Pointer<COMObject> pCompareTo);

typedef _GetPropertyOrigin_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName, Pointer<Utf16> pstrClassName);
typedef _GetPropertyOrigin_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszName, Pointer<Utf16> pstrClassName);

typedef _InheritsFrom_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> strAncestor);
typedef _InheritsFrom_Dart = int Function(
    Pointer obj, Pointer<Utf16> strAncestor);

typedef _GetMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<IntPtr> ppInSignature,
    Pointer<IntPtr> ppOutSignature);
typedef _GetMethod_Dart = int Function(Pointer obj, Pointer<Utf16> wszName,
    int lFlags, Pointer<IntPtr> ppInSignature, Pointer<IntPtr> ppOutSignature);

typedef _PutMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<COMObject> pInSignature,
    Pointer<COMObject> pOutSignature);
typedef _PutMethod_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<COMObject> pInSignature,
    Pointer<COMObject> pOutSignature);

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
    Pointer<Utf16> pstrName,
    Pointer<IntPtr> ppInSignature,
    Pointer<IntPtr> ppOutSignature);
typedef _NextMethod_Dart = int Function(
    Pointer obj,
    int lFlags,
    Pointer<Utf16> pstrName,
    Pointer<IntPtr> ppInSignature,
    Pointer<IntPtr> ppOutSignature);

typedef _EndMethodEnumeration_Native = Int32 Function(Pointer obj);
typedef _EndMethodEnumeration_Dart = int Function(Pointer obj);

typedef _GetMethodQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszMethod, Pointer<IntPtr> ppQualSet);
typedef _GetMethodQualifierSet_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszMethod, Pointer<IntPtr> ppQualSet);

typedef _GetMethodOrigin_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszMethodName, Pointer<Utf16> pstrClassName);
typedef _GetMethodOrigin_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszMethodName, Pointer<Utf16> pstrClassName);

class IWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 26

  @override
  Pointer<COMObject> ptr;

  IWbemClassObject(this.ptr) : super(ptr);

  int GetQualifierSet(Pointer<IntPtr> ppQualSet) =>
      Pointer<NativeFunction<_GetQualifierSet_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetQualifierSet_Dart>()(ptr.ref.lpVtbl, ppQualSet);

  int Get(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT_POINTER> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      Pointer<NativeFunction<_Get_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_Get_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pVal, pType, plFlavor);

  int Put(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT_POINTER> pVal,
          int Type) =>
      Pointer<NativeFunction<_Put_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_Put_Dart>()(ptr.ref.lpVtbl, wszName, lFlags, pVal, Type);

  int Delete(Pointer<Utf16> wszName) =>
      Pointer<NativeFunction<_Delete_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Delete_Dart>()(ptr.ref.lpVtbl, wszName);

  int GetNames(Pointer<Utf16> wszQualifierName, int lFlags,
          Pointer<VARIANT_POINTER> pQualifierVal, Pointer<SAFEARRAY> pNames) =>
      Pointer<NativeFunction<_GetNames_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetNames_Dart>()(
          ptr.ref.lpVtbl, wszQualifierName, lFlags, pQualifierVal, pNames);

  int BeginEnumeration(int lEnumFlags) =>
      Pointer<NativeFunction<_BeginEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_BeginEnumeration_Dart>()(ptr.ref.lpVtbl, lEnumFlags);

  int Next(int lFlags, Pointer<Utf16> strName, Pointer<VARIANT_POINTER> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      Pointer<NativeFunction<_Next_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_Next_Dart>()(
          ptr.ref.lpVtbl, lFlags, strName, pVal, pType, plFlavor);

  int EndEnumeration() =>
      Pointer<NativeFunction<_EndEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_EndEnumeration_Dart>()(ptr.ref.lpVtbl);

  int GetPropertyQualifierSet(
          Pointer<Utf16> wszProperty, Pointer<IntPtr> ppQualSet) =>
      Pointer<NativeFunction<_GetPropertyQualifierSet_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_GetPropertyQualifierSet_Dart>()(
          ptr.ref.lpVtbl, wszProperty, ppQualSet);

  int Clone(Pointer<IntPtr> ppCopy) =>
      Pointer<NativeFunction<_Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppCopy);

  int GetObjectText(int lFlags, Pointer<Utf16> pstrObjectText) =>
      Pointer<NativeFunction<_GetObjectText_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_GetObjectText_Dart>()(
          ptr.ref.lpVtbl, lFlags, pstrObjectText);

  int SpawnDerivedClass(int lFlags, Pointer<IntPtr> ppNewClass) =>
      Pointer<NativeFunction<_SpawnDerivedClass_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_SpawnDerivedClass_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppNewClass);

  int SpawnInstance(int lFlags, Pointer<IntPtr> ppNewInstance) =>
      Pointer<NativeFunction<_SpawnInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_SpawnInstance_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppNewInstance);

  int CompareTo(int lFlags, Pointer<COMObject> pCompareTo) =>
      Pointer<NativeFunction<_CompareTo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<_CompareTo_Dart>()(ptr.ref.lpVtbl, lFlags, pCompareTo);

  int GetPropertyOrigin(Pointer<Utf16> wszName, Pointer<Utf16> pstrClassName) =>
      Pointer<NativeFunction<_GetPropertyOrigin_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<_GetPropertyOrigin_Dart>()(
          ptr.ref.lpVtbl, wszName, pstrClassName);

  int InheritsFrom(Pointer<Utf16> strAncestor) =>
      Pointer<NativeFunction<_InheritsFrom_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<_InheritsFrom_Dart>()(ptr.ref.lpVtbl, strAncestor);

  int GetMethod(Pointer<Utf16> wszName, int lFlags,
          Pointer<IntPtr> ppInSignature, Pointer<IntPtr> ppOutSignature) =>
      Pointer<NativeFunction<_GetMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<_GetMethod_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, ppInSignature, ppOutSignature);

  int PutMethod(Pointer<Utf16> wszName, int lFlags,
          Pointer<COMObject> pInSignature, Pointer<COMObject> pOutSignature) =>
      Pointer<NativeFunction<_PutMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<_PutMethod_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pInSignature, pOutSignature);

  int DeleteMethod(Pointer<Utf16> wszName) =>
      Pointer<NativeFunction<_DeleteMethod_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<_DeleteMethod_Dart>()(ptr.ref.lpVtbl, wszName);

  int BeginMethodEnumeration(int lEnumFlags) =>
      Pointer<NativeFunction<_BeginMethodEnumeration_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<_BeginMethodEnumeration_Dart>()(
          ptr.ref.lpVtbl, lEnumFlags);

  int NextMethod(int lFlags, Pointer<Utf16> pstrName,
          Pointer<IntPtr> ppInSignature, Pointer<IntPtr> ppOutSignature) =>
      Pointer<NativeFunction<_NextMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(23).value)
              .asFunction<_NextMethod_Dart>()(
          ptr.ref.lpVtbl, lFlags, pstrName, ppInSignature, ppOutSignature);

  int EndMethodEnumeration() =>
      Pointer<NativeFunction<_EndMethodEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(24).value)
          .asFunction<_EndMethodEnumeration_Dart>()(ptr.ref.lpVtbl);

  int GetMethodQualifierSet(
          Pointer<Utf16> wszMethod, Pointer<IntPtr> ppQualSet) =>
      Pointer<NativeFunction<_GetMethodQualifierSet_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(25).value)
              .asFunction<_GetMethodQualifierSet_Dart>()(
          ptr.ref.lpVtbl, wszMethod, ppQualSet);

  int GetMethodOrigin(
          Pointer<Utf16> wszMethodName, Pointer<Utf16> pstrClassName) =>
      Pointer<NativeFunction<_GetMethodOrigin_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(26).value)
              .asFunction<_GetMethodOrigin_Dart>()(
          ptr.ref.lpVtbl, wszMethodName, pstrClassName);
}
