// ID3D11DeviceContext4.dart

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

import '../../graphics/direct3d11/ID3D11DeviceContext3.dart';
import '../../graphics/direct3d11/ID3D11Fence.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11DeviceContext4 = '{917600DA-F58C-4C33-98D8-3E15B390FA24}';

/// {@category Interface}
/// {@category com}
class ID3D11DeviceContext4 extends ID3D11DeviceContext3 {
  // vtable begins at 147, is 2 entries long.
  ID3D11DeviceContext4(Pointer<COMObject> ptr) : super(ptr);

  int Signal(
    Pointer<COMObject> pFence,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(147)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFence,
            Uint64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFence,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        pFence,
        Value,
      );

  int Wait(
    Pointer<COMObject> pFence,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(148)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFence,
            Uint64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFence,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        pFence,
        Value,
      );
}
