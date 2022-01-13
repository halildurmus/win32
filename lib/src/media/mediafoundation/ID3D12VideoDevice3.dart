// ID3D12VideoDevice3.dart

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

import '../../media/mediafoundation/ID3D12VideoDevice2.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoDevice3 = '{4243ADB4-3A32-4666-973C-0CCC5625DC44}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoDevice3 extends ID3D12VideoDevice2 {
  // vtable begins at 14, is 2 entries long.
  ID3D12VideoDevice3(Pointer<COMObject> ptr) : super(ptr);

  int CreateVideoEncoder(
    Pointer<D3D12_VIDEO_ENCODER_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoEncoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_ENCODER_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoEncoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_ENCODER_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoEncoder,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppVideoEncoder,
      );

  int CreateVideoEncoderHeap(
    Pointer<D3D12_VIDEO_ENCODER_HEAP_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoEncoderHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_ENCODER_HEAP_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoEncoderHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_ENCODER_HEAP_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoEncoderHeap,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppVideoEncoderHeap,
      );
}
