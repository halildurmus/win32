// IXpsOMBrush.dart

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

import '../../storage/xps/IXpsOMShareable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsOMBrush = '{56A3F80C-EA4C-4187-A57B-A2A473B2B42B}';

/// {@category Interface}
/// {@category com}
class IXpsOMBrush extends IXpsOMShareable {
  // vtable begins at 5, is 2 entries long.
  IXpsOMBrush(Pointer<COMObject> ptr) : super(ptr);

  int GetOpacity(
    Pointer<Float> opacity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> opacity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> opacity,
          )>()(
        ptr.ref.lpVtbl,
        opacity,
      );

  int SetOpacity(
    double opacity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float opacity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double opacity,
          )>()(
        ptr.ref.lpVtbl,
        opacity,
      );
}
