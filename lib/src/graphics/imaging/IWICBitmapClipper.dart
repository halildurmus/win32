// IWICBitmapClipper.dart

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

import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICBitmapClipper = '{E4FBCF03-223D-4E81-9333-D635556DD1B5}';

/// {@category Interface}
/// {@category com}
class IWICBitmapClipper extends IWICBitmapSource {
  // vtable begins at 8, is 1 entries long.
  IWICBitmapClipper(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pISource,
    Pointer<WICRect> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pISource,
            Pointer<WICRect> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pISource,
            Pointer<WICRect> prc,
          )>()(
        ptr.ref.lpVtbl,
        pISource,
        prc,
      );
}
