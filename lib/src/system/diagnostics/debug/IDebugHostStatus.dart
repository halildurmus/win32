// IDebugHostStatus.dart

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
const IID_IDebugHostStatus = '{4F3E1CE2-86B2-4C7A-9C65-D0A9D0EECF44}';

/// {@category Interface}
/// {@category com}
class IDebugHostStatus extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDebugHostStatus(Pointer<COMObject> ptr) : super(ptr);

  int PollUserInterrupt(
    Pointer<Bool> interruptRequested,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> interruptRequested,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> interruptRequested,
          )>()(
        ptr.ref.lpVtbl,
        interruptRequested,
      );
}
