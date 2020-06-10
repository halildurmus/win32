// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IUnknown.dart';

const IID_IWbemClassObject = '{dc12a681-737f-11cf-884d-00aa004b2e24}';

typedef GetQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppQualSet);
typedef GetQualifierSet_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppQualSet);

typedef Get_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);
typedef Get_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);

typedef Put_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName,
    Int32 lFlags, Pointer<VARIANT_POINTER> pVal, Int32 Type);
typedef Put_Dart = int Function(Pointer obj, Pointer<Utf16> wszName, int lFlags,
    Pointer<VARIANT_POINTER> pVal, int Type);

typedef Delete_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName);
typedef Delete_Dart = int Function(Pointer obj, Pointer<Utf16> wszName);

typedef GetNames_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszQualifierName,
    Int32 lFlags,
    Pointer<VARIANT_POINTER> pQualifierVal,
    Pointer<SAFEARRAY> pNames);
typedef GetNames_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszQualifierName,
    int lFlags,
    Pointer<VARIANT_POINTER> pQualifierVal,
    Pointer<SAFEARRAY> pNames);

typedef BeginEnumeration_Native = Int32 Function(Pointer obj, Int32 lEnumFlags);
typedef BeginEnumeration_Dart = int Function(Pointer obj, int lEnumFlags);

typedef Next_Native = Int32 Function(
    Pointer obj,
    Int32 lFlags,
    Pointer<Utf16> strName,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);
typedef Next_Dart = int Function(
    Pointer obj,
    int lFlags,
    Pointer<Utf16> strName,
    Pointer<VARIANT_POINTER> pVal,
    Pointer<Int32> pType,
    Pointer<Int32> plFlavor);

typedef EndEnumeration_Native = Int32 Function(Pointer obj);
typedef EndEnumeration_Dart = int Function(Pointer obj);

typedef GetPropertyQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszProperty, Pointer<IntPtr> ppQualSet);
typedef GetPropertyQualifierSet_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszProperty, Pointer<IntPtr> ppQualSet);

typedef Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppCopy);
typedef Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppCopy);

typedef GetObjectText_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Utf16> pstrObjectText);
typedef GetObjectText_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Utf16> pstrObjectText);

typedef SpawnDerivedClass_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<IntPtr> ppNewClass);
typedef SpawnDerivedClass_Dart = int Function(
    Pointer obj, int lFlags, Pointer<IntPtr> ppNewClass);

typedef SpawnInstance_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<IntPtr> ppNewInstance);
typedef SpawnInstance_Dart = int Function(
    Pointer obj, int lFlags, Pointer<IntPtr> ppNewInstance);

typedef CompareTo_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<COMObject> pCompareTo);
typedef CompareTo_Dart = int Function(
    Pointer obj, int lFlags, Pointer<COMObject> pCompareTo);

typedef GetPropertyOrigin_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName, Pointer<Utf16> pstrClassName);
typedef GetPropertyOrigin_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszName, Pointer<Utf16> pstrClassName);

typedef InheritsFrom_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> strAncestor);
typedef InheritsFrom_Dart = int Function(
    Pointer obj, Pointer<Utf16> strAncestor);

typedef GetMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<IntPtr> ppInSignature,
    Pointer<IntPtr> ppOutSignature);
typedef GetMethod_Dart = int Function(Pointer obj, Pointer<Utf16> wszName,
    int lFlags, Pointer<IntPtr> ppInSignature, Pointer<IntPtr> ppOutSignature);

typedef PutMethod_Native = Int32 Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    Int32 lFlags,
    Pointer<COMObject> pInSignature,
    Pointer<COMObject> pOutSignature);
typedef PutMethod_Dart = int Function(
    Pointer obj,
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<COMObject> pInSignature,
    Pointer<COMObject> pOutSignature);

typedef DeleteMethod_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName);
typedef DeleteMethod_Dart = int Function(Pointer obj, Pointer<Utf16> wszName);

typedef BeginMethodEnumeration_Native = Int32 Function(
    Pointer obj, Int32 lEnumFlags);
typedef BeginMethodEnumeration_Dart = int Function(Pointer obj, int lEnumFlags);

typedef NextMethod_Native = Int32 Function(
    Pointer obj,
    Int32 lFlags,
    Pointer<Utf16> pstrName,
    Pointer<IntPtr> ppInSignature,
    Pointer<IntPtr> ppOutSignature);
typedef NextMethod_Dart = int Function(
    Pointer obj,
    int lFlags,
    Pointer<Utf16> pstrName,
    Pointer<IntPtr> ppInSignature,
    Pointer<IntPtr> ppOutSignature);

typedef EndMethodEnumeration_Native = Int32 Function(Pointer obj);
typedef EndMethodEnumeration_Dart = int Function(Pointer obj);

typedef GetMethodQualifierSet_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszMethod, Pointer<IntPtr> ppQualSet);
typedef GetMethodQualifierSet_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszMethod, Pointer<IntPtr> ppQualSet);

typedef GetMethodOrigin_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszMethodName, Pointer<Utf16> pstrClassName);
typedef GetMethodOrigin_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszMethodName, Pointer<Utf16> pstrClassName);

class IWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 26

  @override
  Pointer<COMObject> ptr;

  IWbemClassObject(this.ptr) : super(ptr);

  int GetQualifierSet(Pointer<IntPtr> ppQualSet) =>
      Pointer<NativeFunction<GetQualifierSet_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<GetQualifierSet_Dart>()(ptr.ref.lpVtbl, ppQualSet);

  int Get(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT_POINTER> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      Pointer<NativeFunction<Get_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<Get_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pVal, pType, plFlavor);

  int Put(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT_POINTER> pVal,
          int Type) =>
      Pointer<NativeFunction<Put_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<Put_Dart>()(ptr.ref.lpVtbl, wszName, lFlags, pVal, Type);

  int Delete(Pointer<Utf16> wszName) =>
      Pointer<NativeFunction<Delete_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<Delete_Dart>()(ptr.ref.lpVtbl, wszName);

  int GetNames(Pointer<Utf16> wszQualifierName, int lFlags,
          Pointer<VARIANT_POINTER> pQualifierVal, Pointer<SAFEARRAY> pNames) =>
      Pointer<NativeFunction<GetNames_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<GetNames_Dart>()(
          ptr.ref.lpVtbl, wszQualifierName, lFlags, pQualifierVal, pNames);

  int BeginEnumeration(int lEnumFlags) =>
      Pointer<NativeFunction<BeginEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<BeginEnumeration_Dart>()(ptr.ref.lpVtbl, lEnumFlags);

  int Next(int lFlags, Pointer<Utf16> strName, Pointer<VARIANT_POINTER> pVal,
          Pointer<Int32> pType, Pointer<Int32> plFlavor) =>
      Pointer<NativeFunction<Next_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<Next_Dart>()(
          ptr.ref.lpVtbl, lFlags, strName, pVal, pType, plFlavor);

  int EndEnumeration() =>
      Pointer<NativeFunction<EndEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<EndEnumeration_Dart>()(ptr.ref.lpVtbl);

  int GetPropertyQualifierSet(
          Pointer<Utf16> wszProperty, Pointer<IntPtr> ppQualSet) =>
      Pointer<NativeFunction<GetPropertyQualifierSet_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<GetPropertyQualifierSet_Dart>()(
          ptr.ref.lpVtbl, wszProperty, ppQualSet);

  int Clone(Pointer<IntPtr> ppCopy) =>
      Pointer<NativeFunction<Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<Clone_Dart>()(ptr.ref.lpVtbl, ppCopy);

  int GetObjectText(int lFlags, Pointer<Utf16> pstrObjectText) =>
      Pointer<NativeFunction<GetObjectText_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<GetObjectText_Dart>()(
          ptr.ref.lpVtbl, lFlags, pstrObjectText);

  int SpawnDerivedClass(int lFlags, Pointer<IntPtr> ppNewClass) =>
      Pointer<NativeFunction<SpawnDerivedClass_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<SpawnDerivedClass_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppNewClass);

  int SpawnInstance(int lFlags, Pointer<IntPtr> ppNewInstance) =>
      Pointer<NativeFunction<SpawnInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<SpawnInstance_Dart>()(
          ptr.ref.lpVtbl, lFlags, ppNewInstance);

  int CompareTo(int lFlags, Pointer<COMObject> pCompareTo) =>
      Pointer<NativeFunction<CompareTo_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(16).value)
          .asFunction<CompareTo_Dart>()(ptr.ref.lpVtbl, lFlags, pCompareTo);

  int GetPropertyOrigin(Pointer<Utf16> wszName, Pointer<Utf16> pstrClassName) =>
      Pointer<NativeFunction<GetPropertyOrigin_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<GetPropertyOrigin_Dart>()(
          ptr.ref.lpVtbl, wszName, pstrClassName);

  int InheritsFrom(Pointer<Utf16> strAncestor) =>
      Pointer<NativeFunction<InheritsFrom_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(18).value)
          .asFunction<InheritsFrom_Dart>()(ptr.ref.lpVtbl, strAncestor);

  int GetMethod(Pointer<Utf16> wszName, int lFlags,
          Pointer<IntPtr> ppInSignature, Pointer<IntPtr> ppOutSignature) =>
      Pointer<NativeFunction<GetMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<GetMethod_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, ppInSignature, ppOutSignature);

  int PutMethod(Pointer<Utf16> wszName, int lFlags,
          Pointer<COMObject> pInSignature, Pointer<COMObject> pOutSignature) =>
      Pointer<NativeFunction<PutMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<PutMethod_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pInSignature, pOutSignature);

  int DeleteMethod(Pointer<Utf16> wszName) =>
      Pointer<NativeFunction<DeleteMethod_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<DeleteMethod_Dart>()(ptr.ref.lpVtbl, wszName);

  int BeginMethodEnumeration(int lEnumFlags) =>
      Pointer<NativeFunction<BeginMethodEnumeration_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(22).value)
              .asFunction<BeginMethodEnumeration_Dart>()(
          ptr.ref.lpVtbl, lEnumFlags);

  int NextMethod(int lFlags, Pointer<Utf16> pstrName,
          Pointer<IntPtr> ppInSignature, Pointer<IntPtr> ppOutSignature) =>
      Pointer<NativeFunction<NextMethod_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(23).value)
              .asFunction<NextMethod_Dart>()(
          ptr.ref.lpVtbl, lFlags, pstrName, ppInSignature, ppOutSignature);

  int EndMethodEnumeration() =>
      Pointer<NativeFunction<EndMethodEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(24).value)
          .asFunction<EndMethodEnumeration_Dart>()(ptr.ref.lpVtbl);

  int GetMethodQualifierSet(
          Pointer<Utf16> wszMethod, Pointer<IntPtr> ppQualSet) =>
      Pointer<NativeFunction<GetMethodQualifierSet_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(25).value)
              .asFunction<GetMethodQualifierSet_Dart>()(
          ptr.ref.lpVtbl, wszMethod, ppQualSet);

  int GetMethodOrigin(
          Pointer<Utf16> wszMethodName, Pointer<Utf16> pstrClassName) =>
      Pointer<NativeFunction<GetMethodOrigin_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(26).value)
              .asFunction<GetMethodOrigin_Dart>()(
          ptr.ref.lpVtbl, wszMethodName, pstrClassName);
}
