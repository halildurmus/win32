// ITfDisplayAttributeNotifySink.dart

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
const IID_ITfDisplayAttributeNotifySink =
    '{AD56F402-E162-4F25-908F-7D577CF9BDA9}';

/// {@category Interface}
/// {@category com}
class ITfDisplayAttributeNotifySink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfDisplayAttributeNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnUpdateInfo() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
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
