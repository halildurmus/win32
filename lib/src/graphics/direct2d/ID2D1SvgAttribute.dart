// ID2D1SvgAttribute.dart

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
import '../../graphics/direct2d/ID2D1SvgElement.dart';
import '../../graphics/direct2d/ID2D1SvgAttribute.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1SvgAttribute = '{C9CDB0DD-F8C9-4E70-B7C2-301C80292C5E}';

/// {@category Interface}
/// {@category com}
class ID2D1SvgAttribute extends ID2D1Resource {
  // vtable begins at 4, is 2 entries long.
  ID2D1SvgAttribute(Pointer<COMObject> ptr) : super(ptr);

  void GetElement(
    Pointer<Pointer<COMObject>> element,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> element,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> element,
          )>()(
        ptr.ref.lpVtbl,
        element,
      );

  int Clone(
    Pointer<Pointer<COMObject>> attribute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> attribute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> attribute,
          )>()(
        ptr.ref.lpVtbl,
        attribute,
      );
}
