// ID2D1GdiMetafile.dart

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

import '../../graphics/direct2d/ID2D1Resource.dart';
import '../../graphics/direct2d/ID2D1GdiMetafileSink.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';

/// @nodoc
const IID_ID2D1GdiMetafile = '{2F543DC3-CFC1-4211-864F-CFD91C6F3395}';

/// {@category Interface}
/// {@category com}
class ID2D1GdiMetafile extends ID2D1Resource {
  // vtable begins at 4, is 2 entries long.
  ID2D1GdiMetafile(Pointer<COMObject> ptr) : super(ptr);

  int Stream(
    Pointer<COMObject> sink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sink,
          )>()(
        ptr.ref.lpVtbl,
        sink,
      );

  int GetBounds(
    Pointer<D2D_RECT_F> bounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D2D_RECT_F> bounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D2D_RECT_F> bounds,
          )>()(
        ptr.ref.lpVtbl,
        bounds,
      );
}
