// ID2D1TransformedImageSource.dart

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

import '../../graphics/direct2d/ID2D1Image.dart';
import '../../graphics/direct2d/ID2D1ImageSource.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1TransformedImageSource =
    '{7F1F79E5-2796-416C-8F55-700F911445E5}';

/// {@category Interface}
/// {@category com}
class ID2D1TransformedImageSource extends ID2D1Image {
  // vtable begins at 4, is 2 entries long.
  ID2D1TransformedImageSource(Pointer<COMObject> ptr) : super(ptr);

  void GetSource(
    Pointer<Pointer<COMObject>> imageSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageSource,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> imageSource,
          )>()(
        ptr.ref.lpVtbl,
        imageSource,
      );

  void GetProperties(
    Pointer<D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES> properties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES> properties,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES> properties,
          )>()(
        ptr.ref.lpVtbl,
        properties,
      );
}
