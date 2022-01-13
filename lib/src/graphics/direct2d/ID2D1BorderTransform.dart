// ID2D1BorderTransform.dart

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
const IID_ID2D1BorderTransform = '{4998735C-3A19-473C-9781-656847E3A347}';

/// {@category Interface}
/// {@category com}
class ID2D1BorderTransform extends ID2D1ConcreteTransform {
  // vtable begins at 6, is 4 entries long.
  ID2D1BorderTransform(Pointer<COMObject> ptr) : super(ptr);

  void SetExtendModeX(
    int extendMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 extendMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int extendMode,
          )>()(
        ptr.ref.lpVtbl,
        extendMode,
      );

  void SetExtendModeY(
    int extendMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 extendMode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int extendMode,
          )>()(
        ptr.ref.lpVtbl,
        extendMode,
      );

  int GetExtendModeX() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetExtendModeY() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
