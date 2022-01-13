// ITfRangeBackup.dart

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
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfRangeBackup = '{463A506D-6992-49D2-9B88-93D55E70BB16}';

/// {@category Interface}
/// {@category com}
class ITfRangeBackup extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfRangeBackup(Pointer<COMObject> ptr) : super(ptr);

  int Restore(
    int ec,
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ec,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ec,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        ec,
        pRange,
      );
}
