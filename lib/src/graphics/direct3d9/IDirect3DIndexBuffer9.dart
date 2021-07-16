// IDirect3DIndexBuffer9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../graphics/direct3d9/IDirect3DResource9.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DIndexBuffer9 = '{7C9DD65E-D3F7-4529-ACEE-785830ACDE35}';

typedef _Lock_Native = Int32 Function(Pointer obj, Uint32 OffsetToLock,
    Uint32 SizeToLock, Pointer<Pointer> ppbData, Uint32 Flags);
typedef _Lock_Dart = int Function(Pointer obj, int OffsetToLock, int SizeToLock,
    Pointer<Pointer> ppbData, int Flags);

typedef _Unlock_Native = Int32 Function(Pointer obj);
typedef _Unlock_Dart = int Function(Pointer obj);

typedef _GetDesc_Native = Int32 Function(
    Pointer obj, Pointer<D3DINDEXBUFFER_DESC> pDesc);
typedef _GetDesc_Dart = int Function(
    Pointer obj, Pointer<D3DINDEXBUFFER_DESC> pDesc);

/// {@category Interface}
/// {@category com}
class IDirect3DIndexBuffer9 extends IDirect3DResource9 {
  // vtable begins at 11, ends at 13

  IDirect3DIndexBuffer9(Pointer<COMObject> ptr) : super(ptr);

  int Lock(int OffsetToLock, int SizeToLock, Pointer<Pointer> ppbData,
          int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_Lock_Native>>>()
              .value
              .asFunction<_Lock_Dart>()(
          ptr.ref.lpVtbl, OffsetToLock, SizeToLock, ppbData, Flags);

  int Unlock() => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_Unlock_Native>>>()
      .value
      .asFunction<_Unlock_Dart>()(ptr.ref.lpVtbl);

  int GetDesc(Pointer<D3DINDEXBUFFER_DESC> pDesc) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_GetDesc_Native>>>()
      .value
      .asFunction<_GetDesc_Dart>()(ptr.ref.lpVtbl, pDesc);
}
