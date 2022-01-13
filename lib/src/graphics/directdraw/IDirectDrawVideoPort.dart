// IDirectDrawVideoPort.dart

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
import '../../graphics/directdraw/IDirectDrawSurface.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';

/// @nodoc
const IID_IDirectDrawVideoPort = '{B36D93E0-2B43-11CF-A2DE-00AA00B93356}';

/// {@category Interface}
/// {@category com}
class IDirectDrawVideoPort extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IDirectDrawVideoPort(Pointer<COMObject> ptr) : super(ptr);

  int Flip(
    Pointer<COMObject> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetBandwidthInfo(
    Pointer<DDPIXELFORMAT> param0,
    int param1,
    int param2,
    int param3,
    Pointer<DDVIDEOPORTBANDWIDTH> param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDPIXELFORMAT> param0,
            Uint32 param1,
            Uint32 param2,
            Uint32 param3,
            Pointer<DDVIDEOPORTBANDWIDTH> param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDPIXELFORMAT> param0,
            int param1,
            int param2,
            int param3,
            Pointer<DDVIDEOPORTBANDWIDTH> param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int GetColorControls(
    Pointer<DDCOLORCONTROL> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetInputFormats(
    Pointer<Uint32> lpNumFormats,
    Pointer<DDPIXELFORMAT> param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpNumFormats,
            Pointer<DDPIXELFORMAT> param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpNumFormats,
            Pointer<DDPIXELFORMAT> param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        lpNumFormats,
        param1,
        param2,
      );

  int GetOutputFormats(
    Pointer<DDPIXELFORMAT> param0,
    Pointer<Uint32> lpNumFormats,
    Pointer<DDPIXELFORMAT> param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDPIXELFORMAT> param0,
            Pointer<Uint32> lpNumFormats,
            Pointer<DDPIXELFORMAT> param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDPIXELFORMAT> param0,
            Pointer<Uint32> lpNumFormats,
            Pointer<DDPIXELFORMAT> param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        lpNumFormats,
        param2,
        param3,
      );

  int GetFieldPolarity(
    Pointer<Int32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetVideoLine(
    Pointer<Uint32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int GetVideoSignalStatus(
    Pointer<Uint32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int SetColorControls(
    Pointer<DDCOLORCONTROL> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDCOLORCONTROL> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int SetTargetSurface(
    Pointer<COMObject> param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int StartVideo(
    Pointer<DDVIDEOPORTINFO> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDVIDEOPORTINFO> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDVIDEOPORTINFO> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int StopVideo() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int UpdateVideo(
    Pointer<DDVIDEOPORTINFO> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DDVIDEOPORTINFO> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DDVIDEOPORTINFO> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int WaitForSync(
    int param0,
    int param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );
}
