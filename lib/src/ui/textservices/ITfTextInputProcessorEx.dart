// ITfTextInputProcessorEx.dart

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

import '../../ui/textservices/ITfTextInputProcessor.dart';
import '../../ui/textservices/ITfThreadMgr.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfTextInputProcessorEx = '{6E4E2102-F9CD-433D-B496-303CE03A6507}';

/// {@category Interface}
/// {@category com}
class ITfTextInputProcessorEx extends ITfTextInputProcessor {
  // vtable begins at 5, is 1 entries long.
  ITfTextInputProcessorEx(Pointer<COMObject> ptr) : super(ptr);

  int ActivateEx(
    Pointer<COMObject> ptim,
    int tid,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ptim,
            Uint32 tid,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ptim,
            int tid,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        ptim,
        tid,
        dwFlags,
      );
}
