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

const IID_IEnumWbemClassObject = '{027947e1-d731-11ce-a357-000000000001}';

typedef Reset_Native = Int32 Function(Pointer obj);
typedef Reset_Dart = int Function(Pointer obj);

typedef Next_Native = Int32 Function(Pointer obj, Int32 lTimeout, Uint32 uCount,
    Pointer<IntPtr> apObjects, Pointer<Uint32> puReturned);
typedef Next_Dart = int Function(Pointer obj, int lTimeout, int uCount,
    Pointer<IntPtr> apObjects, Pointer<Uint32> puReturned);

typedef NextAsync_Native = Int32 Function(
    Pointer obj, Uint32 uCount, Pointer<COMObject> pSink);
typedef NextAsync_Dart = int Function(
    Pointer obj, int uCount, Pointer<COMObject> pSink);

typedef Clone_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppEnum);
typedef Clone_Dart = int Function(Pointer obj, Pointer<IntPtr> ppEnum);

typedef Skip_Native = Int32 Function(
    Pointer obj, Int32 lTimeout, Uint32 nCount);
typedef Skip_Dart = int Function(Pointer obj, int lTimeout, int nCount);

class IEnumWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 7

  @override
  Pointer<COMObject> ptr;

  IEnumWbemClassObject(this.ptr) : super(ptr);

  int Reset() => Pointer<NativeFunction<Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<Reset_Dart>()(ptr.ref.lpVtbl);

  int Next(int lTimeout, int uCount, Pointer<IntPtr> apObjects,
          Pointer<Uint32> puReturned) =>
      Pointer<NativeFunction<Next_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<Next_Dart>()(
          ptr.ref.lpVtbl, lTimeout, uCount, apObjects, puReturned);

  int NextAsync(int uCount, Pointer<COMObject> pSink) =>
      Pointer<NativeFunction<NextAsync_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<NextAsync_Dart>()(ptr.ref.lpVtbl, uCount, pSink);

  int Clone(Pointer<IntPtr> ppEnum) =>
      Pointer<NativeFunction<Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<Clone_Dart>()(ptr.ref.lpVtbl, ppEnum);

  int Skip(int lTimeout, int nCount) =>
      Pointer<NativeFunction<Skip_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<Skip_Dart>()(ptr.ref.lpVtbl, lTimeout, nCount);
}
