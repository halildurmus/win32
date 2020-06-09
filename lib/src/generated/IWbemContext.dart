// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import '../combase.dart';
import '../comerrors.dart';
import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const IID_IWbemContext = '{44aca674-e8fc-11d0-a07c-00c04fb68820}';

typedef Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppNewCopy);
typedef Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppNewCopy);

typedef GetNames_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<SAFEARRAY> pNames);
typedef GetNames_Dart = int Function(
    Pointer obj, int lFlags, Pointer<SAFEARRAY> pNames);

typedef BeginEnumeration_Native = Int32 Function(Pointer obj, Int32 lFlags);
typedef BeginEnumeration_Dart = int Function(Pointer obj, int lFlags);

typedef Next_Native = Int32 Function(Pointer obj, Int32 lFlags,
    Pointer<Utf16> pstrName, Pointer<VARIANT_POINTER> pValue);
typedef Next_Dart = int Function(Pointer obj, int lFlags,
    Pointer<Utf16> pstrName, Pointer<VARIANT_POINTER> pValue);

typedef EndEnumeration_Native = Int32 Function(Pointer obj);
typedef EndEnumeration_Dart = int Function(Pointer obj);

typedef SetValue_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName,
    Int32 lFlags, Pointer<VARIANT_POINTER> pValue);
typedef SetValue_Dart = int Function(Pointer obj, Pointer<Utf16> wszName,
    int lFlags, Pointer<VARIANT_POINTER> pValue);

typedef GetValue_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName,
    Int32 lFlags, Pointer<VARIANT_POINTER> pValue);
typedef GetValue_Dart = int Function(Pointer obj, Pointer<Utf16> wszName,
    int lFlags, Pointer<VARIANT_POINTER> pValue);

typedef DeleteValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName, Int32 lFlags);
typedef DeleteValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszName, int lFlags);

typedef DeleteAll_Native = Int32 Function(Pointer obj);
typedef DeleteAll_Dart = int Function(Pointer obj);

class IWbemContext extends IUnknown {
  // vtable begins at 3, ends at 11

  @override
  Pointer<COMObject> ptr;

  IWbemContext(this.ptr) : super(ptr);

  int Clone(Pointer<IntPtr> ppNewCopy) =>
      Pointer<NativeFunction<Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<Clone_Dart>()(ptr.ref.lpVtbl, ppNewCopy);

  int GetNames(int lFlags, Pointer<SAFEARRAY> pNames) =>
      Pointer<NativeFunction<GetNames_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<GetNames_Dart>()(ptr.ref.lpVtbl, lFlags, pNames);

  int BeginEnumeration(int lFlags) =>
      Pointer<NativeFunction<BeginEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<BeginEnumeration_Dart>()(ptr.ref.lpVtbl, lFlags);

  int Next(int lFlags, Pointer<Utf16> pstrName,
          Pointer<VARIANT_POINTER> pValue) =>
      Pointer<NativeFunction<Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<Next_Dart>()(ptr.ref.lpVtbl, lFlags, pstrName, pValue);

  int EndEnumeration() =>
      Pointer<NativeFunction<EndEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<EndEnumeration_Dart>()(ptr.ref.lpVtbl);

  int SetValue(Pointer<Utf16> wszName, int lFlags,
          Pointer<VARIANT_POINTER> pValue) =>
      Pointer<NativeFunction<SetValue_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<SetValue_Dart>()(ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int GetValue(Pointer<Utf16> wszName, int lFlags,
          Pointer<VARIANT_POINTER> pValue) =>
      Pointer<NativeFunction<GetValue_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<GetValue_Dart>()(ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int DeleteValue(Pointer<Utf16> wszName, int lFlags) =>
      Pointer<NativeFunction<DeleteValue_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<DeleteValue_Dart>()(ptr.ref.lpVtbl, wszName, lFlags);

  int DeleteAll() => Pointer<NativeFunction<DeleteAll_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(11).value)
      .asFunction<DeleteAll_Dart>()(ptr.ref.lpVtbl);
}
