// ID3D12Device2.dart

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

import '../../graphics/direct3d12/ID3D12Device1.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Device2 = '{30BAA41E-B15B-475C-A0BB-1AF5C5B64328}';

/// {@category Interface}
/// {@category com}
class ID3D12Device2 extends ID3D12Device1 {
  // vtable begins at 47, is 1 entries long.
  ID3D12Device2(Pointer<COMObject> ptr) : super(ptr);

  int CreatePipelineState(
    Pointer<D3D12_PIPELINE_STATE_STREAM_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppPipelineState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_PIPELINE_STATE_STREAM_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_PIPELINE_STATE_STREAM_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineState,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppPipelineState,
      );
}
