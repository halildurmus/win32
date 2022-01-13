// IMFExtendedCameraIntrinsicsDistortionModel6KT.dart

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
const IID_IMFExtendedCameraIntrinsicsDistortionModel6KT =
    '{74C2653B-5F55-4EB1-9F0F-18B8F68B7D3D}';

/// {@category Interface}
/// {@category com}
class IMFExtendedCameraIntrinsicsDistortionModel6KT extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFExtendedCameraIntrinsicsDistortionModel6KT(Pointer<COMObject> ptr)
      : super(ptr);

  int GetDistortionModel(
    Pointer<MFCameraIntrinsic_DistortionModel6KT> pDistortionModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModel6KT> pDistortionModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModel6KT> pDistortionModel,
          )>()(
        ptr.ref.lpVtbl,
        pDistortionModel,
      );

  int SetDistortionModel(
    Pointer<MFCameraIntrinsic_DistortionModel6KT> pDistortionModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModel6KT> pDistortionModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModel6KT> pDistortionModel,
          )>()(
        ptr.ref.lpVtbl,
        pDistortionModel,
      );
}
