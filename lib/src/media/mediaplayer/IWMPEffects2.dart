// IWMPEffects2.dart

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

import '../../media/mediaplayer/IWMPEffects.dart';
import '../../media/mediaplayer/IWMPCore.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPMedia.dart';
import '../../media/mediaplayer/structs.g.dart';

/// @nodoc
const IID_IWMPEffects2 = '{695386EC-AA3C-4618-A5E1-DD9A8B987632}';

/// {@category Interface}
/// {@category com}
class IWMPEffects2 extends IWMPEffects {
  // vtable begins at 14, is 6 entries long.
  IWMPEffects2(Pointer<COMObject> ptr) : super(ptr);

  int SetCore(
    Pointer<COMObject> pPlayer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPlayer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPlayer,
          )>()(
        ptr.ref.lpVtbl,
        pPlayer,
      );

  int Create(
    int hwndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
      );

  int Destroy() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int NotifyNewMedia(
    Pointer<COMObject> pMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMedia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMedia,
          )>()(
        ptr.ref.lpVtbl,
        pMedia,
      );

  int OnWindowMessage(
    int msg,
    int WParam,
    int LParam,
    Pointer<IntPtr> plResultParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 msg,
            IntPtr WParam,
            IntPtr LParam,
            Pointer<IntPtr> plResultParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int msg,
            int WParam,
            int LParam,
            Pointer<IntPtr> plResultParam,
          )>()(
        ptr.ref.lpVtbl,
        msg,
        WParam,
        LParam,
        plResultParam,
      );

  int RenderWindowed(
    Pointer<TimedLevel> pData,
    int fRequiredRender,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TimedLevel> pData,
            Int32 fRequiredRender,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TimedLevel> pData,
            int fRequiredRender,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        fRequiredRender,
      );
}
