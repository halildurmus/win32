// IRDPSRAPIClipboardUseEvents.dart

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
import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRDPSRAPIClipboardUseEvents =
    '{D559F59A-7A27-4138-8763-247CE5F659A8}';

/// {@category Interface}
/// {@category com}
class IRDPSRAPIClipboardUseEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRDPSRAPIClipboardUseEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnPasteFromClipboard(
    int clipboardFormat,
    Pointer<COMObject> pAttendee,
    Pointer<Int16> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 clipboardFormat,
            Pointer<COMObject> pAttendee,
            Pointer<Int16> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int clipboardFormat,
            Pointer<COMObject> pAttendee,
            Pointer<Int16> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        clipboardFormat,
        pAttendee,
        pRetVal,
      );
}
