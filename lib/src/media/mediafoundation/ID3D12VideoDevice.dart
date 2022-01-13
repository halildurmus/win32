// ID3D12VideoDevice.dart

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

import '../../system/com/IUnknown.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoDevice = '{1F052807-0B46-4ACC-8A89-364F793718A4}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoDevice extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ID3D12VideoDevice(Pointer<COMObject> ptr) : super(ptr);

  int CheckFeatureSupport(
    int FeatureVideo,
    Pointer pFeatureSupportData,
    int FeatureSupportDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 FeatureVideo,
            Pointer pFeatureSupportData,
            Uint32 FeatureSupportDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FeatureVideo,
            Pointer pFeatureSupportData,
            int FeatureSupportDataSize,
          )>()(
        ptr.ref.lpVtbl,
        FeatureVideo,
        pFeatureSupportData,
        FeatureSupportDataSize,
      );

  int CreateVideoDecoder(
    Pointer<D3D12_VIDEO_DECODER_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoder,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppVideoDecoder,
      );

  int CreateVideoDecoderHeap(
    Pointer<D3D12_VIDEO_DECODER_HEAP_DESC> pVideoDecoderHeapDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoDecoderHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_HEAP_DESC> pVideoDecoderHeapDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoderHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_HEAP_DESC> pVideoDecoderHeapDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoderHeap,
          )>()(
        ptr.ref.lpVtbl,
        pVideoDecoderHeapDesc,
        riid,
        ppVideoDecoderHeap,
      );

  int CreateVideoProcessor(
    int NodeMask,
    Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc,
    int NumInputStreamDescs,
    Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoProcessor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NodeMask,
            Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc,
            Uint32 NumInputStreamDescs,
            Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoProcessor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NodeMask,
            Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc,
            int NumInputStreamDescs,
            Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoProcessor,
          )>()(
        ptr.ref.lpVtbl,
        NodeMask,
        pOutputStreamDesc,
        NumInputStreamDescs,
        pInputStreamDescs,
        riid,
        ppVideoProcessor,
      );
}
