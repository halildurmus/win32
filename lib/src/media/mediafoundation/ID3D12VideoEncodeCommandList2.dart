// ID3D12VideoEncodeCommandList2.dart

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

import '../../media/mediafoundation/ID3D12VideoEncodeCommandList1.dart';
import '../../media/mediafoundation/ID3D12VideoEncoder.dart';
import '../../media/mediafoundation/ID3D12VideoEncoderHeap.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoEncodeCommandList2 =
    '{895491E2-E701-46A9-9A1F-8D3480ED867A}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoEncodeCommandList2 extends ID3D12VideoEncodeCommandList1 {
  // vtable begins at 27, is 2 entries long.
  ID3D12VideoEncodeCommandList2(Pointer<COMObject> ptr) : super(ptr);

  void EncodeFrame(
    Pointer<COMObject> pEncoder,
    Pointer<COMObject> pHeap,
    Pointer<D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS> pInputArguments,
    Pointer<D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS> pOutputArguments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pEncoder,
            Pointer<COMObject> pHeap,
            Pointer<D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS>
                pInputArguments,
            Pointer<D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS>
                pOutputArguments,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pEncoder,
            Pointer<COMObject> pHeap,
            Pointer<D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS>
                pInputArguments,
            Pointer<D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS>
                pOutputArguments,
          )>()(
        ptr.ref.lpVtbl,
        pEncoder,
        pHeap,
        pInputArguments,
        pOutputArguments,
      );

  void ResolveEncoderOutputMetadata(
    Pointer<D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS>
        pInputArguments,
    Pointer<D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS>
        pOutputArguments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS>
                pInputArguments,
            Pointer<D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS>
                pOutputArguments,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS>
                pInputArguments,
            Pointer<D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS>
                pOutputArguments,
          )>()(
        ptr.ref.lpVtbl,
        pInputArguments,
        pOutputArguments,
      );
}
