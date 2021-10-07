// IPersistMemory.dart

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

import 'IPersist.dart';

/// @nodoc
const IID_IPersistMemory = '{BD1AE5E0-A6AE-11CE-BD37-504200C10000}';

typedef _IsDirty_Native = Int32 Function(Pointer obj);
typedef _IsDirty_Dart = int Function(Pointer obj);

typedef _Load_Native = Int32 Function(Pointer obj, Pointer pMem, Uint32 cbSize);
typedef _Load_Dart = int Function(Pointer obj, Pointer pMem, int cbSize);

typedef _Save_Native = Int32 Function(
    Pointer obj, Pointer pMem, Int32 fClearDirty, Uint32 cbSize);
typedef _Save_Dart = int Function(
    Pointer obj, Pointer pMem, int fClearDirty, int cbSize);

typedef _GetSizeMax_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pCbSize);
typedef _GetSizeMax_Dart = int Function(Pointer obj, Pointer<Uint32> pCbSize);

typedef _InitNew_Native = Int32 Function(Pointer obj);
typedef _InitNew_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IPersistMemory extends IPersist {
  // vtable begins at 4, ends at 8

  IPersistMemory(Pointer<COMObject> ptr) : super(ptr);

  int IsDirty() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_IsDirty_Native>>>()
      .value
      .asFunction<_IsDirty_Dart>()(ptr.ref.lpVtbl);

  int Load(Pointer pMem, int cbSize) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_Load_Native>>>()
      .value
      .asFunction<_Load_Dart>()(ptr.ref.lpVtbl, pMem, cbSize);

  int Save(Pointer pMem, int fClearDirty, int cbSize) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_Save_Native>>>()
      .value
      .asFunction<_Save_Dart>()(ptr.ref.lpVtbl, pMem, fClearDirty, cbSize);

  int GetSizeMax(Pointer<Uint32> pCbSize) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_GetSizeMax_Native>>>()
      .value
      .asFunction<_GetSizeMax_Dart>()(ptr.ref.lpVtbl, pCbSize);

  int InitNew() => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_InitNew_Native>>>()
      .value
      .asFunction<_InitNew_Dart>()(ptr.ref.lpVtbl);
}
