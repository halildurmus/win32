// ID2D1BlendTransform.dart

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

import '../../graphics/direct2d/ID2D1ConcreteTransform.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1BlendTransform = '{63AC0B32-BA44-450F-8806-7F4CA1FF2F1B}';

/// {@category Interface}
/// {@category com}
class ID2D1BlendTransform extends ID2D1ConcreteTransform {
  // vtable begins at 6, is 2 entries long.
  ID2D1BlendTransform(Pointer<COMObject> ptr) : super(ptr);

  void SetDescription(
    Pointer<D2D1_BLEND_DESCRIPTION> description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_BLEND_DESCRIPTION> description,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_BLEND_DESCRIPTION> description,
          )>()(
        ptr.ref.lpVtbl,
        description,
      );

  void GetDescription(
    Pointer<D2D1_BLEND_DESCRIPTION> description,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_BLEND_DESCRIPTION> description,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_BLEND_DESCRIPTION> description,
          )>()(
        ptr.ref.lpVtbl,
        description,
      );
}
