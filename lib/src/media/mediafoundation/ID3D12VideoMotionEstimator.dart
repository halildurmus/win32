// ID3D12VideoMotionEstimator.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12VideoMotionEstimator = '{33FDAE0E-098B-428F-87BB-34B695DE08F8}';

/// {@category Interface}
/// {@category com}
class ID3D12VideoMotionEstimator extends ID3D12Pageable {
  // vtable begins at 8, is 2 entries long.
  ID3D12VideoMotionEstimator(Pointer<COMObject> ptr) : super(ptr);

  D3D12_VIDEO_MOTION_ESTIMATOR_DESC GetDesc() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_VIDEO_MOTION_ESTIMATOR_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_VIDEO_MOTION_ESTIMATOR_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetProtectedResourceSession(
    Pointer<GUID> riid,
    Pointer<Pointer> ppProtectedSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppProtectedSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppProtectedSession,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppProtectedSession,
      );
}
