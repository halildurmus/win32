// IWMResizerProps.dart

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
const IID_IWMResizerProps = '{57665D4C-0414-4FAA-905B-10E546F81C33}';

/// {@category Interface}
/// {@category com}
class IWMResizerProps extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWMResizerProps(Pointer<COMObject> ptr) : super(ptr);

  int SetResizerQuality(
    int lquality,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lquality,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lquality,
          )>()(
        ptr.ref.lpVtbl,
        lquality,
      );

  int SetInterlaceMode(
    int lmode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lmode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lmode,
          )>()(
        ptr.ref.lpVtbl,
        lmode,
      );

  int SetClipRegion(
    int lClipOriXSrc,
    int lClipOriYSrc,
    int lClipWidthSrc,
    int lClipHeightSrc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lClipOriXSrc,
            Int32 lClipOriYSrc,
            Int32 lClipWidthSrc,
            Int32 lClipHeightSrc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lClipOriXSrc,
            int lClipOriYSrc,
            int lClipWidthSrc,
            int lClipHeightSrc,
          )>()(
        ptr.ref.lpVtbl,
        lClipOriXSrc,
        lClipOriYSrc,
        lClipWidthSrc,
        lClipHeightSrc,
      );

  int SetFullCropRegion(
    int lClipOriXSrc,
    int lClipOriYSrc,
    int lClipWidthSrc,
    int lClipHeightSrc,
    int lClipOriXDst,
    int lClipOriYDst,
    int lClipWidthDst,
    int lClipHeightDst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lClipOriXSrc,
            Int32 lClipOriYSrc,
            Int32 lClipWidthSrc,
            Int32 lClipHeightSrc,
            Int32 lClipOriXDst,
            Int32 lClipOriYDst,
            Int32 lClipWidthDst,
            Int32 lClipHeightDst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lClipOriXSrc,
            int lClipOriYSrc,
            int lClipWidthSrc,
            int lClipHeightSrc,
            int lClipOriXDst,
            int lClipOriYDst,
            int lClipWidthDst,
            int lClipHeightDst,
          )>()(
        ptr.ref.lpVtbl,
        lClipOriXSrc,
        lClipOriYSrc,
        lClipWidthSrc,
        lClipHeightSrc,
        lClipOriXDst,
        lClipOriYDst,
        lClipWidthDst,
        lClipHeightDst,
      );

  int GetFullCropRegion(
    Pointer<Int32> lClipOriXSrc,
    Pointer<Int32> lClipOriYSrc,
    Pointer<Int32> lClipWidthSrc,
    Pointer<Int32> lClipHeightSrc,
    Pointer<Int32> lClipOriXDst,
    Pointer<Int32> lClipOriYDst,
    Pointer<Int32> lClipWidthDst,
    Pointer<Int32> lClipHeightDst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lClipOriXSrc,
            Pointer<Int32> lClipOriYSrc,
            Pointer<Int32> lClipWidthSrc,
            Pointer<Int32> lClipHeightSrc,
            Pointer<Int32> lClipOriXDst,
            Pointer<Int32> lClipOriYDst,
            Pointer<Int32> lClipWidthDst,
            Pointer<Int32> lClipHeightDst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lClipOriXSrc,
            Pointer<Int32> lClipOriYSrc,
            Pointer<Int32> lClipWidthSrc,
            Pointer<Int32> lClipHeightSrc,
            Pointer<Int32> lClipOriXDst,
            Pointer<Int32> lClipOriYDst,
            Pointer<Int32> lClipWidthDst,
            Pointer<Int32> lClipHeightDst,
          )>()(
        ptr.ref.lpVtbl,
        lClipOriXSrc,
        lClipOriYSrc,
        lClipWidthSrc,
        lClipHeightSrc,
        lClipOriXDst,
        lClipOriYDst,
        lClipWidthDst,
        lClipHeightDst,
      );
}
