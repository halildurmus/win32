// ID2D1ImageSourceFromWic.dart

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

import '../../graphics/direct2d/ID2D1ImageSource.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';

/// @nodoc
const IID_ID2D1ImageSourceFromWic = '{77395441-1C8F-4555-8683-F50DAB0FE792}';

/// {@category Interface}
/// {@category com}
class ID2D1ImageSourceFromWic extends ID2D1ImageSource {
  // vtable begins at 6, is 3 entries long.
  ID2D1ImageSourceFromWic(Pointer<COMObject> ptr) : super(ptr);

  int EnsureCached(
    Pointer<D2D_RECT_U> rectangleToFill,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_U> rectangleToFill,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_U> rectangleToFill,
          )>()(
        ptr.ref.lpVtbl,
        rectangleToFill,
      );

  int TrimCache(
    Pointer<D2D_RECT_U> rectangleToPreserve,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_U> rectangleToPreserve,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_U> rectangleToPreserve,
          )>()(
        ptr.ref.lpVtbl,
        rectangleToPreserve,
      );

  void GetSource(
    Pointer<Pointer<COMObject>> wicBitmapSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> wicBitmapSource,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> wicBitmapSource,
          )>()(
        ptr.ref.lpVtbl,
        wicBitmapSource,
      );
}
