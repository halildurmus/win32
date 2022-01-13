// IProxyProviderWinEventHandler.dart

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
import '../../ui/accessibility/IProxyProviderWinEventSink.dart';

/// @nodoc
const IID_IProxyProviderWinEventHandler =
    '{89592AD4-F4E0-43D5-A3B6-BAD7E111B435}';

/// {@category Interface}
/// {@category com}
class IProxyProviderWinEventHandler extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProxyProviderWinEventHandler(Pointer<COMObject> ptr) : super(ptr);

  int RespondToWinEvent(
    int idWinEvent,
    int hwnd,
    int idObject,
    int idChild,
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 idWinEvent,
            IntPtr hwnd,
            Int32 idObject,
            Int32 idChild,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int idWinEvent,
            int hwnd,
            int idObject,
            int idChild,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        idWinEvent,
        hwnd,
        idObject,
        idChild,
        pSink,
      );
}
