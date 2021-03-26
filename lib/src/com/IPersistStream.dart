// IPersistStream.dart

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
const IID_IPersistStream = '{00000109-0000-0000-C000-000000000046}';

typedef _IsDirty_Native = Int32 Function(Pointer obj);
typedef _IsDirty_Dart = int Function(Pointer obj);

typedef _Load_Native = Int32 Function(Pointer obj, Pointer pStm);
typedef _Load_Dart = int Function(Pointer obj, Pointer pStm);

typedef _Save_Native = Int32 Function(
    Pointer obj, Pointer pStm, Int32 fClearDirty);
typedef _Save_Dart = int Function(Pointer obj, Pointer pStm, int fClearDirty);

typedef _GetSizeMax_Native = Int32 Function(
    Pointer obj, Pointer<Uint64> pcbSize);
typedef _GetSizeMax_Dart = int Function(Pointer obj, Pointer<Uint64> pcbSize);

/// {@category Interface}
/// {@category com}
class IPersistStream extends IPersist {
  // vtable begins at 4, ends at 7

  IPersistStream(Pointer<COMObject> ptr) : super(ptr);

  int IsDirty() => Pointer<NativeFunction<_IsDirty_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(4).value)
      .asFunction<_IsDirty_Dart>()(ptr.ref.lpVtbl);

  int Load(Pointer pStm) => Pointer<NativeFunction<_Load_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(5).value)
      .asFunction<_Load_Dart>()(ptr.ref.lpVtbl, pStm);

  int Save(Pointer pStm, int fClearDirty) =>
      Pointer<NativeFunction<_Save_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Save_Dart>()(ptr.ref.lpVtbl, pStm, fClearDirty);

  int GetSizeMax(Pointer<Uint64> pcbSize) =>
      Pointer<NativeFunction<_GetSizeMax_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetSizeMax_Dart>()(ptr.ref.lpVtbl, pcbSize);
}
