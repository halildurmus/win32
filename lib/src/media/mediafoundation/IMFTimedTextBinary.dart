// IMFTimedTextBinary.dart

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
const IID_IMFTimedTextBinary = '{4AE3A412-0545-43C4-BF6F-6B97A5C6C432}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextBinary extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFTimedTextBinary(Pointer<COMObject> ptr) : super(ptr);

  int GetData(
    Pointer<Pointer<Uint8>> data,
    Pointer<Uint32> length,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> length,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> length,
          )>()(
        ptr.ref.lpVtbl,
        data,
        length,
      );
}
