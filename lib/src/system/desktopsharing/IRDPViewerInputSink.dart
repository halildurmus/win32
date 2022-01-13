// IRDPViewerInputSink.dart

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
import '../../system/desktopsharing/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRDPViewerInputSink = '{BB590853-A6C5-4A7B-8DD4-76B69EEA12D5}';

/// {@category Interface}
/// {@category com}
class IRDPViewerInputSink extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IRDPViewerInputSink(Pointer<COMObject> ptr) : super(ptr);

  int SendMouseButtonEvent(
    int buttonType,
    int vbButtonDown,
    int xPos,
    int yPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 buttonType,
            Int16 vbButtonDown,
            Uint32 xPos,
            Uint32 yPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int buttonType,
            int vbButtonDown,
            int xPos,
            int yPos,
          )>()(
        ptr.ref.lpVtbl,
        buttonType,
        vbButtonDown,
        xPos,
        yPos,
      );

  int SendMouseMoveEvent(
    int xPos,
    int yPos,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 xPos,
            Uint32 yPos,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int xPos,
            int yPos,
          )>()(
        ptr.ref.lpVtbl,
        xPos,
        yPos,
      );

  int SendMouseWheelEvent(
    int wheelRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wheelRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wheelRotation,
          )>()(
        ptr.ref.lpVtbl,
        wheelRotation,
      );

  int SendKeyboardEvent(
    int codeType,
    int keycode,
    int vbKeyUp,
    int vbRepeat,
    int vbExtended,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 codeType,
            Uint16 keycode,
            Int16 vbKeyUp,
            Int16 vbRepeat,
            Int16 vbExtended,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int codeType,
            int keycode,
            int vbKeyUp,
            int vbRepeat,
            int vbExtended,
          )>()(
        ptr.ref.lpVtbl,
        codeType,
        keycode,
        vbKeyUp,
        vbRepeat,
        vbExtended,
      );

  int SendSyncEvent(
    int syncFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 syncFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int syncFlags,
          )>()(
        ptr.ref.lpVtbl,
        syncFlags,
      );

  int BeginTouchFrame() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int AddTouchInput(
    int contactId,
    int event,
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 contactId,
            Uint32 event,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int contactId,
            int event,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        contactId,
        event,
        x,
        y,
      );

  int EndTouchFrame() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
