// IRandomAccessStreamFileAccessMode.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IRandomAccessStreamFileAccessMode =
    '{332E5848-2E15-458E-85C4-C911C0C3D6F4}';

/// {@category Interface}
/// {@category com}
class IRandomAccessStreamFileAccessMode extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRandomAccessStreamFileAccessMode(Pointer<COMObject> ptr) : super(ptr);

  int GetMode(
    Pointer<Uint32> fileAccessMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> fileAccessMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> fileAccessMode,
          )>()(
        ptr.ref.lpVtbl,
        fileAccessMode,
      );
}
