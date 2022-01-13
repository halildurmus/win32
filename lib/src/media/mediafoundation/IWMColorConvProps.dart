// IWMColorConvProps.dart

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

/// @nodoc
const IID_IWMColorConvProps = '{E6A49E22-C099-421D-AAD3-C061FB4AE85B}';

/// {@category Interface}
/// {@category com}
class IWMColorConvProps extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMColorConvProps(Pointer<COMObject> ptr) : super(ptr);

  int SetMode(
    int lMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMode,
          )>()(
        ptr.ref.lpVtbl,
        lMode,
      );

  int SetFullCroppingParam(
    int lSrcCropLeft,
    int lSrcCropTop,
    int lDstCropLeft,
    int lDstCropTop,
    int lCropWidth,
    int lCropHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSrcCropLeft,
            Int32 lSrcCropTop,
            Int32 lDstCropLeft,
            Int32 lDstCropTop,
            Int32 lCropWidth,
            Int32 lCropHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSrcCropLeft,
            int lSrcCropTop,
            int lDstCropLeft,
            int lDstCropTop,
            int lCropWidth,
            int lCropHeight,
          )>()(
        ptr.ref.lpVtbl,
        lSrcCropLeft,
        lSrcCropTop,
        lDstCropLeft,
        lDstCropTop,
        lCropWidth,
        lCropHeight,
      );
}
