// IMFExtendedCameraIntrinsicsDistortionModelArcTan.dart

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
const IID_IMFExtendedCameraIntrinsicsDistortionModelArcTan =
    '{812D5F95-B572-45DC-BAFC-AE24199DDDA8}';

/// {@category Interface}
/// {@category com}
class IMFExtendedCameraIntrinsicsDistortionModelArcTan extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFExtendedCameraIntrinsicsDistortionModelArcTan(Pointer<COMObject> ptr)
      : super(ptr);

  int GetDistortionModel(
    Pointer<MFCameraIntrinsic_DistortionModelArcTan> pDistortionModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModelArcTan> pDistortionModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModelArcTan> pDistortionModel,
          )>()(
        ptr.ref.lpVtbl,
        pDistortionModel,
      );

  int SetDistortionModel(
    Pointer<MFCameraIntrinsic_DistortionModelArcTan> pDistortionModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModelArcTan> pDistortionModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFCameraIntrinsic_DistortionModelArcTan> pDistortionModel,
          )>()(
        ptr.ref.lpVtbl,
        pDistortionModel,
      );
}
