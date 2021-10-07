// IRunningObjectTable.dart

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
const IID_IRunningObjectTable = '{00000010-0000-0000-C000-000000000046}';

typedef _Register_Native = Int32 Function(Pointer obj, Uint32 grfFlags,
    Pointer punkObject, Pointer pmkObjectName, Pointer<Uint32> pdwRegister);
typedef _Register_Dart = int Function(Pointer obj, int grfFlags,
    Pointer punkObject, Pointer pmkObjectName, Pointer<Uint32> pdwRegister);

typedef _Revoke_Native = Int32 Function(Pointer obj, Uint32 dwRegister);
typedef _Revoke_Dart = int Function(Pointer obj, int dwRegister);

typedef _IsRunning_Native = Int32 Function(Pointer obj, Pointer pmkObjectName);
typedef _IsRunning_Dart = int Function(Pointer obj, Pointer pmkObjectName);

typedef _GetObject_Native = Int32 Function(
    Pointer obj, Pointer pmkObjectName, Pointer<Pointer> ppunkObject);
typedef _GetObject_Dart = int Function(
    Pointer obj, Pointer pmkObjectName, Pointer<Pointer> ppunkObject);

typedef _NoteChangeTime_Native = Int32 Function(
    Pointer obj, Uint32 dwRegister, Pointer<FILETIME> pfiletime);
typedef _NoteChangeTime_Dart = int Function(
    Pointer obj, int dwRegister, Pointer<FILETIME> pfiletime);

typedef _GetTimeOfLastChange_Native = Int32 Function(
    Pointer obj, Pointer pmkObjectName, Pointer<FILETIME> pfiletime);
typedef _GetTimeOfLastChange_Dart = int Function(
    Pointer obj, Pointer pmkObjectName, Pointer<FILETIME> pfiletime);

typedef _EnumRunning_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppenumMoniker);
typedef _EnumRunning_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppenumMoniker);

/// {@category Interface}
/// {@category com}
class IRunningObjectTable extends IUnknown {
  // vtable begins at 3, ends at 9

  IRunningObjectTable(Pointer<COMObject> ptr) : super(ptr);

  int Register(int grfFlags, Pointer punkObject, Pointer pmkObjectName,
          Pointer<Uint32> pdwRegister) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_Register_Native>>>()
              .value
              .asFunction<_Register_Dart>()(
          ptr.ref.lpVtbl, grfFlags, punkObject, pmkObjectName, pdwRegister);

  int Revoke(int dwRegister) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_Revoke_Native>>>()
      .value
      .asFunction<_Revoke_Dart>()(ptr.ref.lpVtbl, dwRegister);

  int IsRunning(Pointer pmkObjectName) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_IsRunning_Native>>>()
      .value
      .asFunction<_IsRunning_Dart>()(ptr.ref.lpVtbl, pmkObjectName);

  int GetObject(Pointer pmkObjectName, Pointer<Pointer> ppunkObject) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<Pointer<NativeFunction<_GetObject_Native>>>()
              .value
              .asFunction<_GetObject_Dart>()(
          ptr.ref.lpVtbl, pmkObjectName, ppunkObject);

  int NoteChangeTime(int dwRegister, Pointer<FILETIME> pfiletime) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_NoteChangeTime_Native>>>()
              .value
              .asFunction<_NoteChangeTime_Dart>()(
          ptr.ref.lpVtbl, dwRegister, pfiletime);

  int GetTimeOfLastChange(Pointer pmkObjectName, Pointer<FILETIME> pfiletime) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_GetTimeOfLastChange_Native>>>()
              .value
              .asFunction<_GetTimeOfLastChange_Dart>()(
          ptr.ref.lpVtbl, pmkObjectName, pfiletime);

  int EnumRunning(Pointer<Pointer> ppenumMoniker) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_EnumRunning_Native>>>()
      .value
      .asFunction<_EnumRunning_Dart>()(ptr.ref.lpVtbl, ppenumMoniker);
}
