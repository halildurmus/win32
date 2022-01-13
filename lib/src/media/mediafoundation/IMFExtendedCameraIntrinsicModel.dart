// IMFExtendedCameraIntrinsicModel.dart

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
const IID_IMFExtendedCameraIntrinsicModel =
    '{5C595E64-4630-4231-855A-12842F733245}';

/// {@category Interface}
/// {@category com}
class IMFExtendedCameraIntrinsicModel extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFExtendedCameraIntrinsicModel(Pointer<COMObject> ptr) : super(ptr);

  int GetModel(
    Pointer<MFExtendedCameraIntrinsic_IntrinsicModel> pIntrinsicModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFExtendedCameraIntrinsic_IntrinsicModel> pIntrinsicModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFExtendedCameraIntrinsic_IntrinsicModel> pIntrinsicModel,
          )>()(
        ptr.ref.lpVtbl,
        pIntrinsicModel,
      );

  int SetModel(
    Pointer<MFExtendedCameraIntrinsic_IntrinsicModel> pIntrinsicModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFExtendedCameraIntrinsic_IntrinsicModel> pIntrinsicModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFExtendedCameraIntrinsic_IntrinsicModel> pIntrinsicModel,
          )>()(
        ptr.ref.lpVtbl,
        pIntrinsicModel,
      );

  int GetDistortionModelType(
    Pointer<Int32> pDistortionModelType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pDistortionModelType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pDistortionModelType,
          )>()(
        ptr.ref.lpVtbl,
        pDistortionModelType,
      );
}
