// IRunningObjectTable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../calloc.dart';
import '../constants.dart';
import '../constants_nodoc.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IRunningObjectTable = '{00000010-0000-0000-C000-000000000046}';

typedef _Register_Native = Int32 Function(
    Pointer obj,
    Uint32 grfFlags,
    Pointer<COMObject> punkObject,
    Pointer<COMObject> pmkObjectName,
    Pointer<Uint32> pdwRegister);
typedef _Register_Dart = int Function(
    Pointer obj,
    int grfFlags,
    Pointer<COMObject> punkObject,
    Pointer<COMObject> pmkObjectName,
    Pointer<Uint32> pdwRegister);

typedef _Revoke_Native = Int32 Function(Pointer obj, Uint32 dwRegister);
typedef _Revoke_Dart = int Function(Pointer obj, int dwRegister);

typedef _IsRunning_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pmkObjectName);
typedef _IsRunning_Dart = int Function(
    Pointer obj, Pointer<COMObject> pmkObjectName);

typedef _GetObject_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pmkObjectName, Pointer<IntPtr> ppunkObject);
typedef _GetObject_Dart = int Function(
    Pointer obj, Pointer<COMObject> pmkObjectName, Pointer<IntPtr> ppunkObject);

typedef _NoteChangeTime_Native = Int32 Function(
    Pointer obj, Uint32 dwRegister, Pointer<FILETIME> pfiletime);
typedef _NoteChangeTime_Dart = int Function(
    Pointer obj, int dwRegister, Pointer<FILETIME> pfiletime);

typedef _GetTimeOfLastChange_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pmkObjectName, Pointer<FILETIME> pfiletime);
typedef _GetTimeOfLastChange_Dart = int Function(
    Pointer obj, Pointer<COMObject> pmkObjectName, Pointer<FILETIME> pfiletime);

typedef _EnumRunning_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> ppenumMoniker);
typedef _EnumRunning_Dart = int Function(
    Pointer obj, Pointer<IntPtr> ppenumMoniker);

/// {@category Interface}
/// {@category com}
class IRunningObjectTable extends IUnknown {
  // vtable begins at 3, ends at 9

  IRunningObjectTable(Pointer<COMObject> ptr) : super(ptr);

  int Register(int grfFlags, Pointer<COMObject> punkObject,
          Pointer<COMObject> pmkObjectName, Pointer<Uint32> pdwRegister) =>
      Pointer<NativeFunction<_Register_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_Register_Dart>()(
          ptr.ref.lpVtbl, grfFlags, punkObject, pmkObjectName, pdwRegister);

  int Revoke(int dwRegister) =>
      Pointer<NativeFunction<_Revoke_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_Revoke_Dart>()(ptr.ref.lpVtbl, dwRegister);

  int IsRunning(Pointer<COMObject> pmkObjectName) =>
      Pointer<NativeFunction<_IsRunning_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_IsRunning_Dart>()(ptr.ref.lpVtbl, pmkObjectName);

  int GetObject(
          Pointer<COMObject> pmkObjectName, Pointer<IntPtr> ppunkObject) =>
      Pointer<NativeFunction<_GetObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_GetObject_Dart>()(
          ptr.ref.lpVtbl, pmkObjectName, ppunkObject);

  int NoteChangeTime(int dwRegister, Pointer<FILETIME> pfiletime) =>
      Pointer<NativeFunction<_NoteChangeTime_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_NoteChangeTime_Dart>()(
          ptr.ref.lpVtbl, dwRegister, pfiletime);

  int GetTimeOfLastChange(
          Pointer<COMObject> pmkObjectName, Pointer<FILETIME> pfiletime) =>
      Pointer<NativeFunction<_GetTimeOfLastChange_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_GetTimeOfLastChange_Dart>()(
          ptr.ref.lpVtbl, pmkObjectName, pfiletime);

  int EnumRunning(Pointer<IntPtr> ppenumMoniker) =>
      Pointer<NativeFunction<_EnumRunning_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_EnumRunning_Dart>()(ptr.ref.lpVtbl, ppenumMoniker);
}
