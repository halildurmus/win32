// IMFSignedLibrary.dart

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
const IID_IMFSignedLibrary = '{4A724BCA-FF6A-4C07-8E0D-7A358421CF06}';

/// {@category Interface}
/// {@category com}
class IMFSignedLibrary extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFSignedLibrary(Pointer<COMObject> ptr) : super(ptr);

  int GetProcedureAddress(
    Pointer<Utf8> name,
    Pointer<Pointer> address,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> name,
            Pointer<Pointer> address,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> name,
            Pointer<Pointer> address,
          )>()(
        ptr.ref.lpVtbl,
        name,
        address,
      );
}
