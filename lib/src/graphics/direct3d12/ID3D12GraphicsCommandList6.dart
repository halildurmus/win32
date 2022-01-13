// ID3D12GraphicsCommandList6.dart

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

import '../../graphics/direct3d12/ID3D12GraphicsCommandList5.dart';

/// @nodoc
const IID_ID3D12GraphicsCommandList6 = '{C3827890-E548-4CFA-96CF-5689A9370F80}';

/// {@category Interface}
/// {@category com}
class ID3D12GraphicsCommandList6 extends ID3D12GraphicsCommandList5 {
  // vtable begins at 79, is 1 entries long.
  ID3D12GraphicsCommandList6(Pointer<COMObject> ptr) : super(ptr);

  void DispatchMesh(
    int ThreadGroupCountX,
    int ThreadGroupCountY,
    int ThreadGroupCountZ,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 ThreadGroupCountX,
            Uint32 ThreadGroupCountY,
            Uint32 ThreadGroupCountZ,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int ThreadGroupCountX,
            int ThreadGroupCountY,
            int ThreadGroupCountZ,
          )>()(
        ptr.ref.lpVtbl,
        ThreadGroupCountX,
        ThreadGroupCountY,
        ThreadGroupCountZ,
      );
}
