// IShellLinkDataList.dart

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
const IID_IShellLinkDataList = '{45E2B4AE-B1C3-11D0-B92F-00A0C90312E1}';

typedef _AddDataBlock_Native = Int32 Function(Pointer obj, Pointer pDataBlock);
typedef _AddDataBlock_Dart = int Function(Pointer obj, Pointer pDataBlock);

typedef _CopyDataBlock_Native = Int32 Function(
    Pointer obj, Uint32 dwSig, Pointer<Pointer> ppDataBlock);
typedef _CopyDataBlock_Dart = int Function(
    Pointer obj, int dwSig, Pointer<Pointer> ppDataBlock);

typedef _RemoveDataBlock_Native = Int32 Function(Pointer obj, Uint32 dwSig);
typedef _RemoveDataBlock_Dart = int Function(Pointer obj, int dwSig);

typedef _GetFlags_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwFlags);
typedef _GetFlags_Dart = int Function(Pointer obj, Pointer<Uint32> pdwFlags);

typedef _SetFlags_Native = Int32 Function(Pointer obj, Uint32 dwFlags);
typedef _SetFlags_Dart = int Function(Pointer obj, int dwFlags);

/// {@category Interface}
/// {@category com}
class IShellLinkDataList extends IUnknown {
  // vtable begins at 3, ends at 7

  IShellLinkDataList(Pointer<COMObject> ptr) : super(ptr);

  int AddDataBlock(Pointer pDataBlock) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_AddDataBlock_Native>>>()
      .value
      .asFunction<_AddDataBlock_Dart>()(ptr.ref.lpVtbl, pDataBlock);

  int CopyDataBlock(int dwSig, Pointer<Pointer> ppDataBlock) => ptr
      .ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_CopyDataBlock_Native>>>()
      .value
      .asFunction<_CopyDataBlock_Dart>()(ptr.ref.lpVtbl, dwSig, ppDataBlock);

  int RemoveDataBlock(int dwSig) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_RemoveDataBlock_Native>>>()
      .value
      .asFunction<_RemoveDataBlock_Dart>()(ptr.ref.lpVtbl, dwSig);

  int GetFlags(Pointer<Uint32> pdwFlags) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_GetFlags_Native>>>()
      .value
      .asFunction<_GetFlags_Dart>()(ptr.ref.lpVtbl, pdwFlags);

  int SetFlags(int dwFlags) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetFlags_Native>>>()
      .value
      .asFunction<_SetFlags_Dart>()(ptr.ref.lpVtbl, dwFlags);
}
