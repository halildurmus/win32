// IDirect3DIndexBuffer9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../graphics/direct3d9/IDirect3DResource9.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DIndexBuffer9 = '{7C9DD65E-D3F7-4529-ACEE-785830ACDE35}';

/// {@category Interface}
/// {@category com}
class IDirect3DIndexBuffer9 extends IDirect3DResource9 {
  // vtable begins at 11, is 3 entries long.
  IDirect3DIndexBuffer9(Pointer<COMObject> ptr) : super(ptr);

  int Lock(
    int OffsetToLock,
    int SizeToLock,
    Pointer<Pointer> ppbData,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 OffsetToLock,
            Uint32 SizeToLock,
            Pointer<Pointer> ppbData,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OffsetToLock,
            int SizeToLock,
            Pointer<Pointer> ppbData,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        OffsetToLock,
        SizeToLock,
        ppbData,
        Flags,
      );

  int Unlock() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetDesc(
    Pointer<D3DINDEXBUFFER_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3DINDEXBUFFER_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3DINDEXBUFFER_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
