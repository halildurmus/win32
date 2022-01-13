// ICallFrameEvents.dart

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
import '../../../system/com/callobj/ICallFrame.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICallFrameEvents = '{FD5E0843-FC91-11D0-97D7-00C04FB9618A}';

/// {@category Interface}
/// {@category com}
class ICallFrameEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICallFrameEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnCall(
    Pointer<COMObject> pFrame,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFrame,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFrame,
          )>()(
        ptr.ref.lpVtbl,
        pFrame,
      );
}
