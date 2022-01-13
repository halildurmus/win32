// ID3D12VideoDevice1.dart

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

import '../../media/mediafoundation/ID3D12VideoDevice.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12ProtectedResourceSession.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoDevice1 = '{981611AD-A144-4C83-9890-F30E26D658AB}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoDevice1 extends ID3D12VideoDevice {
  // vtable begins at 7, is 2 entries long.
  ID3D12VideoDevice1(Pointer<COMObject> ptr) : super(ptr);

  int CreateVideoMotionEstimator(
    Pointer<D3D12_VIDEO_MOTION_ESTIMATOR_DESC> pDesc,
    Pointer<COMObject> pProtectedResourceSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoMotionEstimator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_MOTION_ESTIMATOR_DESC> pDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoMotionEstimator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_MOTION_ESTIMATOR_DESC> pDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoMotionEstimator,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pProtectedResourceSession,
        riid,
        ppVideoMotionEstimator,
      );

  int CreateVideoMotionVectorHeap(
    Pointer<D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC> pDesc,
    Pointer<COMObject> pProtectedResourceSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppVideoMotionVectorHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC> pDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoMotionVectorHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC> pDesc,
            Pointer<COMObject> pProtectedResourceSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppVideoMotionVectorHeap,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pProtectedResourceSession,
        riid,
        ppVideoMotionVectorHeap,
      );
}
