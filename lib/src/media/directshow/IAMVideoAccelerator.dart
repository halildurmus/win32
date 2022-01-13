// IAMVideoAccelerator.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IMediaSample.dart';

/// @nodoc
const IID_IAMVideoAccelerator = '{256A6A22-FBAD-11D1-82BF-00A0C9696C8F}';

/// {@category Interface}
/// {@category com}
class IAMVideoAccelerator extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IAMVideoAccelerator(Pointer<COMObject> ptr) : super(ptr);

  int GetVideoAcceleratorGUIDs(
    Pointer<Uint32> pdwNumGuidsSupported,
    Pointer<GUID> pGuidsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumGuidsSupported,
            Pointer<GUID> pGuidsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumGuidsSupported,
            Pointer<GUID> pGuidsSupported,
          )>()(
        ptr.ref.lpVtbl,
        pdwNumGuidsSupported,
        pGuidsSupported,
      );

  int GetUncompFormatsSupported(
    Pointer<GUID> pGuid,
    Pointer<Uint32> pdwNumFormatsSupported,
    Pointer<DDPIXELFORMAT> pFormatsSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<Uint32> pdwNumFormatsSupported,
            Pointer<DDPIXELFORMAT> pFormatsSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<Uint32> pdwNumFormatsSupported,
            Pointer<DDPIXELFORMAT> pFormatsSupported,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
        pdwNumFormatsSupported,
        pFormatsSupported,
      );

  int GetInternalMemInfo(
    Pointer<GUID> pGuid,
    Pointer<AMVAUncompDataInfo> pamvaUncompDataInfo,
    Pointer<AMVAInternalMemInfo> pamvaInternalMemInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<AMVAUncompDataInfo> pamvaUncompDataInfo,
            Pointer<AMVAInternalMemInfo> pamvaInternalMemInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<AMVAUncompDataInfo> pamvaUncompDataInfo,
            Pointer<AMVAInternalMemInfo> pamvaInternalMemInfo,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
        pamvaUncompDataInfo,
        pamvaInternalMemInfo,
      );

  int GetCompBufferInfo(
    Pointer<GUID> pGuid,
    Pointer<AMVAUncompDataInfo> pamvaUncompDataInfo,
    Pointer<Uint32> pdwNumTypesCompBuffers,
    Pointer<AMVACompBufferInfo> pamvaCompBufferInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<AMVAUncompDataInfo> pamvaUncompDataInfo,
            Pointer<Uint32> pdwNumTypesCompBuffers,
            Pointer<AMVACompBufferInfo> pamvaCompBufferInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuid,
            Pointer<AMVAUncompDataInfo> pamvaUncompDataInfo,
            Pointer<Uint32> pdwNumTypesCompBuffers,
            Pointer<AMVACompBufferInfo> pamvaCompBufferInfo,
          )>()(
        ptr.ref.lpVtbl,
        pGuid,
        pamvaUncompDataInfo,
        pdwNumTypesCompBuffers,
        pamvaCompBufferInfo,
      );

  int GetInternalCompBufferInfo(
    Pointer<Uint32> pdwNumTypesCompBuffers,
    Pointer<AMVACompBufferInfo> pamvaCompBufferInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumTypesCompBuffers,
            Pointer<AMVACompBufferInfo> pamvaCompBufferInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumTypesCompBuffers,
            Pointer<AMVACompBufferInfo> pamvaCompBufferInfo,
          )>()(
        ptr.ref.lpVtbl,
        pdwNumTypesCompBuffers,
        pamvaCompBufferInfo,
      );

  int BeginFrame(
    Pointer<AMVABeginFrameInfo> amvaBeginFrameInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMVABeginFrameInfo> amvaBeginFrameInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMVABeginFrameInfo> amvaBeginFrameInfo,
          )>()(
        ptr.ref.lpVtbl,
        amvaBeginFrameInfo,
      );

  int EndFrame(
    Pointer<AMVAEndFrameInfo> pEndFrameInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AMVAEndFrameInfo> pEndFrameInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AMVAEndFrameInfo> pEndFrameInfo,
          )>()(
        ptr.ref.lpVtbl,
        pEndFrameInfo,
      );

  int GetBuffer(
    int dwTypeIndex,
    int dwBufferIndex,
    int bReadOnly,
    Pointer<Pointer> ppBuffer,
    Pointer<Int32> lpStride,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTypeIndex,
            Uint32 dwBufferIndex,
            Int32 bReadOnly,
            Pointer<Pointer> ppBuffer,
            Pointer<Int32> lpStride,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTypeIndex,
            int dwBufferIndex,
            int bReadOnly,
            Pointer<Pointer> ppBuffer,
            Pointer<Int32> lpStride,
          )>()(
        ptr.ref.lpVtbl,
        dwTypeIndex,
        dwBufferIndex,
        bReadOnly,
        ppBuffer,
        lpStride,
      );

  int ReleaseBuffer(
    int dwTypeIndex,
    int dwBufferIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTypeIndex,
            Uint32 dwBufferIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTypeIndex,
            int dwBufferIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwTypeIndex,
        dwBufferIndex,
      );

  int Execute(
    int dwFunction,
    Pointer lpPrivateInputData,
    int cbPrivateInputData,
    Pointer lpPrivateOutputDat,
    int cbPrivateOutputData,
    int dwNumBuffers,
    Pointer<AMVABUFFERINFO> pamvaBufferInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFunction,
            Pointer lpPrivateInputData,
            Uint32 cbPrivateInputData,
            Pointer lpPrivateOutputDat,
            Uint32 cbPrivateOutputData,
            Uint32 dwNumBuffers,
            Pointer<AMVABUFFERINFO> pamvaBufferInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFunction,
            Pointer lpPrivateInputData,
            int cbPrivateInputData,
            Pointer lpPrivateOutputDat,
            int cbPrivateOutputData,
            int dwNumBuffers,
            Pointer<AMVABUFFERINFO> pamvaBufferInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwFunction,
        lpPrivateInputData,
        cbPrivateInputData,
        lpPrivateOutputDat,
        cbPrivateOutputData,
        dwNumBuffers,
        pamvaBufferInfo,
      );

  int QueryRenderStatus(
    int dwTypeIndex,
    int dwBufferIndex,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTypeIndex,
            Uint32 dwBufferIndex,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTypeIndex,
            int dwBufferIndex,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwTypeIndex,
        dwBufferIndex,
        dwFlags,
      );

  int DisplayFrame(
    int dwFlipToIndex,
    Pointer<COMObject> pMediaSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlipToIndex,
            Pointer<COMObject> pMediaSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlipToIndex,
            Pointer<COMObject> pMediaSample,
          )>()(
        ptr.ref.lpVtbl,
        dwFlipToIndex,
        pMediaSample,
      );
}
