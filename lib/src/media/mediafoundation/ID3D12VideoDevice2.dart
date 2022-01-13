// ID3D12VideoDevice2.dart

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

import '../../media/mediafoundation/ID3D12VideoDevice1.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12ProtectedResourceSession.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/ID3D12VideoExtensionCommand.dart';

/// @nodoc
const IID_ID3D12VideoDevice2 = '{F019AC49-F838-4A95-9B17-579437C8F513}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoDevice2 extends ID3D12VideoDevice1 {
  // vtable begins at 9, is 5 entries long.
  ID3D12VideoDevice2(Pointer<COMObject> ptr) : super(ptr);

  int CreateVideoDecoder1(
    Pointer<D3D12_VIDEO_DECODER_DESC> pDesc,
    Pointer<COMObject> pProtectedResourceSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_DESC> pDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_DESC> pDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoder,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pProtectedResourceSession,
        riid,
        ppVideoDecoder,
      );

  int CreateVideoDecoderHeap1(
    Pointer<D3D12_VIDEO_DECODER_HEAP_DESC> pVideoDecoderHeapDesc,
    Pointer<COMObject> pProtectedResourceSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoDecoderHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_HEAP_DESC> pVideoDecoderHeapDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoderHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_DECODER_HEAP_DESC> pVideoDecoderHeapDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoDecoderHeap,
          )>()(
        ptr.ref.lpVtbl,
        pVideoDecoderHeapDesc,
        pProtectedResourceSession,
        riid,
        ppVideoDecoderHeap,
      );

  int CreateVideoProcessor1(
    int NodeMask,
    Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc,
    int NumInputStreamDescs,
    Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
    Pointer<COMObject> pProtectedResourceSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoProcessor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NodeMask,
            Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc,
            Uint32 NumInputStreamDescs,
            Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs,
            Pointer<COMObject> pProtectedResourceSession,
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
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoProcessor,
          )>()(
        ptr.ref.lpVtbl,
        NodeMask,
        pOutputStreamDesc,
        NumInputStreamDescs,
        pInputStreamDescs,
        pProtectedResourceSession,
        riid,
        ppVideoProcessor,
      );

  int CreateVideoExtensionCommand(
    Pointer<D3D12_VIDEO_EXTENSION_COMMAND_DESC> pDesc,
    Pointer pCreationParameters,
    int CreationParametersDataSizeInBytes,
    Pointer<COMObject> pProtectedResourceSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoExtensionCommand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_EXTENSION_COMMAND_DESC> pDesc,
            Pointer pCreationParameters,
            IntPtr CreationParametersDataSizeInBytes,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoExtensionCommand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_EXTENSION_COMMAND_DESC> pDesc,
            Pointer pCreationParameters,
            int CreationParametersDataSizeInBytes,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoExtensionCommand,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pCreationParameters,
        CreationParametersDataSizeInBytes,
        pProtectedResourceSession,
        riid,
        ppVideoExtensionCommand,
      );

  int ExecuteExtensionCommand(
    Pointer<COMObject> pExtensionCommand,
    Pointer pExecutionParameters,
    int ExecutionParametersSizeInBytes,
    Pointer pOutputData,
    int OutputDataSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pExtensionCommand,
            Pointer pExecutionParameters,
            IntPtr ExecutionParametersSizeInBytes,
            Pointer pOutputData,
            IntPtr OutputDataSizeInBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pExtensionCommand,
            Pointer pExecutionParameters,
            int ExecutionParametersSizeInBytes,
            Pointer pOutputData,
            int OutputDataSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        pExtensionCommand,
        pExecutionParameters,
        ExecutionParametersSizeInBytes,
        pOutputData,
        OutputDataSizeInBytes,
      );
}
