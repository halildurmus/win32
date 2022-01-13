// IDirectInputEffectDriver.dart

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
import '../../devices/humaninterfacedevice/structs.g.dart';

/// @nodoc
const IID_IDirectInputEffectDriver = '{02538130-898F-11D0-9AD0-00A0C9A06E35}';

/// {@category Interface}
/// {@category com}
class IDirectInputEffectDriver extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IDirectInputEffectDriver(Pointer<COMObject> ptr) : super(ptr);

  int DeviceID(
    int param0,
    int param1,
    int param2,
    int param3,
    Pointer param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Uint32 param2,
            Uint32 param3,
            Pointer param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            int param2,
            int param3,
            Pointer param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int GetVersions(
    Pointer<DIDRIVERVERSIONS> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIDRIVERVERSIONS> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIDRIVERVERSIONS> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Escape(
    int param0,
    int param1,
    Pointer<DIEFFESCAPE> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Pointer<DIEFFESCAPE> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            Pointer<DIEFFESCAPE> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int SetGain(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SendForceFeedbackCommand(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetForceFeedbackState(
    int param0,
    Pointer<DIDEVICESTATE> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DIDEVICESTATE> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DIDEVICESTATE> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int DownloadEffect(
    int param0,
    int param1,
    Pointer<Uint32> param2,
    Pointer<DIEFFECT> param3,
    int param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Pointer<Uint32> param2,
            Pointer<DIEFFECT> param3,
            Uint32 param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            Pointer<Uint32> param2,
            Pointer<DIEFFECT> param3,
            int param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int DestroyEffect(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int StartEffect(
    int param0,
    int param1,
    int param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Uint32 param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            int param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int StopEffect(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetEffectStatus(
    int param0,
    int param1,
    Pointer<Uint32> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Uint32 param1,
            Pointer<Uint32> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            Pointer<Uint32> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );
}
