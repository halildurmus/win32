// IBufferByteAccess.dart

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
const IID_IBufferByteAccess = '{905A0FEF-BC53-11DF-8C49-001E4FC686DA}';

/// {@category Interface}
/// {@category com}
class IBufferByteAccess extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBufferByteAccess(Pointer<COMObject> ptr) : super(ptr);

  int Buffer(
    Pointer<Pointer<Uint8>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
