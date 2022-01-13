// IUIManagerEventSink.dart

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
const IID_IUIManagerEventSink = '{CD91D690-A7E8-4265-9B38-8BB3BBABA7DE}';

/// {@category Interface}
/// {@category com}
class IUIManagerEventSink extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IUIManagerEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnWindowOpening(
    Pointer<RECT> prcBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcBounds,
          )>()(
        ptr.ref.lpVtbl,
        prcBounds,
      );

  int OnWindowOpened(
    Pointer<RECT> prcBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcBounds,
          )>()(
        ptr.ref.lpVtbl,
        prcBounds,
      );

  int OnWindowUpdating(
    Pointer<RECT> prcUpdatedBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcUpdatedBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcUpdatedBounds,
          )>()(
        ptr.ref.lpVtbl,
        prcUpdatedBounds,
      );

  int OnWindowUpdated(
    Pointer<RECT> prcUpdatedBounds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prcUpdatedBounds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prcUpdatedBounds,
          )>()(
        ptr.ref.lpVtbl,
        prcUpdatedBounds,
      );

  int OnWindowClosing() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int OnWindowClosed() => ptr.ref.lpVtbl.value
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
}
