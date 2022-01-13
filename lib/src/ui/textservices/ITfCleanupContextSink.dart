// ITfCleanupContextSink.dart

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
import '../../ui/textservices/ITfContext.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfCleanupContextSink = '{01689689-7ACB-4E9B-AB7C-7EA46B12B522}';

/// {@category Interface}
/// {@category com}
class ITfCleanupContextSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfCleanupContextSink(Pointer<COMObject> ptr) : super(ptr);

  int OnCleanupContext(
    int ecWrite,
    Pointer<COMObject> pic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ecWrite,
            Pointer<COMObject> pic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ecWrite,
            Pointer<COMObject> pic,
          )>()(
        ptr.ref.lpVtbl,
        ecWrite,
        pic,
      );
}
