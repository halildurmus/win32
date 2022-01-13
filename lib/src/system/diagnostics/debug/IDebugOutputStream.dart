// IDebugOutputStream.dart

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
const IID_IDebugOutputStream = '{7782D8F2-2B85-4059-AB88-28CEDDCA1C80}';

/// {@category Interface}
/// {@category com}
class IDebugOutputStream extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugOutputStream(Pointer<COMObject> ptr) : super(ptr);

  int Write(
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        psz,
      );
}
