// IDirectInputDevice8W.dart

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
import '../../devices/humaninterfacedevice/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/humaninterfacedevice/callbacks.g.dart';
import '../../devices/humaninterfacedevice/IDirectInputEffect.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDirectInputDevice8W = '{54D41081-DC15-4833-A41B-748F73A38179}';

/// {@category Interface}
/// {@category com}
class IDirectInputDevice8W extends IUnknown {
  // vtable begins at 3, is 29 entries long.
  IDirectInputDevice8W(Pointer<COMObject> ptr) : super(ptr);

  int GetCapabilities(
    Pointer<DIDEVCAPS> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIDEVCAPS> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIDEVCAPS> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int EnumObjects(
    Pointer<NativeFunction<LPDIENUMDEVICEOBJECTSCALLBACKW>> param0,
    Pointer param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPDIENUMDEVICEOBJECTSCALLBACKW>> param0,
            Pointer param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPDIENUMDEVICEOBJECTSCALLBACKW>> param0,
            Pointer param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int GetProperty(
    Pointer<GUID> param0,
    Pointer<DIPROPHEADER> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<DIPROPHEADER> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<DIPROPHEADER> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int SetProperty(
    Pointer<GUID> param0,
    Pointer<DIPROPHEADER> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<DIPROPHEADER> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<DIPROPHEADER> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int Acquire() => ptr.ref.lpVtbl.value
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

  int Unacquire() => ptr.ref.lpVtbl.value
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

  int GetDeviceState(
    int param0,
    Pointer param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetDeviceData(
    int param0,
    Pointer<DIDEVICEOBJECTDATA> param1,
    Pointer<Uint32> param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DIDEVICEOBJECTDATA> param1,
            Pointer<Uint32> param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DIDEVICEOBJECTDATA> param1,
            Pointer<Uint32> param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int SetDataFormat(
    Pointer<DIDATAFORMAT> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIDATAFORMAT> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIDATAFORMAT> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int SetEventNotification(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int SetCooperativeLevel(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
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

  int GetObjectInfo(
    Pointer<DIDEVICEOBJECTINSTANCE> param0,
    int param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIDEVICEOBJECTINSTANCE> param0,
            Uint32 param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIDEVICEOBJECTINSTANCE> param0,
            int param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int GetDeviceInfo(
    Pointer<DIDEVICEINSTANCE> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIDEVICEINSTANCE> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIDEVICEINSTANCE> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int RunControlPanel(
    int param0,
    int param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
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

  int Initialize(
    int param0,
    int param1,
    Pointer<GUID> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
            Uint32 param1,
            Pointer<GUID> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            int param1,
            Pointer<GUID> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int CreateEffect(
    Pointer<GUID> param0,
    Pointer<DIEFFECT> param1,
    Pointer<Pointer<COMObject>> param2,
    Pointer<COMObject> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<DIEFFECT> param1,
            Pointer<Pointer<COMObject>> param2,
            Pointer<COMObject> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<DIEFFECT> param1,
            Pointer<Pointer<COMObject>> param2,
            Pointer<COMObject> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int EnumEffects(
    Pointer<NativeFunction<LPDIENUMEFFECTSCALLBACKW>> param0,
    Pointer param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPDIENUMEFFECTSCALLBACKW>> param0,
            Pointer param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPDIENUMEFFECTSCALLBACKW>> param0,
            Pointer param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int GetEffectInfo(
    Pointer<DIEFFECTINFO> param0,
    Pointer<GUID> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIEFFECTINFO> param0,
            Pointer<GUID> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIEFFECTINFO> param0,
            Pointer<GUID> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int GetForceFeedbackState(
    Pointer<Uint32> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int SendForceFeedbackCommand(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int EnumCreatedEffectObjects(
    Pointer<NativeFunction<LPDIENUMCREATEDEFFECTOBJECTSCALLBACK>> param0,
    Pointer param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPDIENUMCREATEDEFFECTOBJECTSCALLBACK>>
                param0,
            Pointer param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPDIENUMCREATEDEFFECTOBJECTSCALLBACK>>
                param0,
            Pointer param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int Escape(
    Pointer<DIEFFESCAPE> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIEFFESCAPE> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIEFFESCAPE> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int Poll() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int SendDeviceData(
    int param0,
    Pointer<DIDEVICEOBJECTDATA> param1,
    Pointer<Uint32> param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<DIDEVICEOBJECTDATA> param1,
            Pointer<Uint32> param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<DIDEVICEOBJECTDATA> param1,
            Pointer<Uint32> param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int EnumEffectsInFile(
    Pointer<Utf16> param0,
    Pointer<NativeFunction<LPDIENUMEFFECTSINFILECALLBACK>> param1,
    Pointer param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<NativeFunction<LPDIENUMEFFECTSINFILECALLBACK>> param1,
            Pointer param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<NativeFunction<LPDIENUMEFFECTSINFILECALLBACK>> param1,
            Pointer param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int WriteEffectToFile(
    Pointer<Utf16> param0,
    int param1,
    Pointer<DIFILEEFFECT> param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Uint32 param1,
            Pointer<DIFILEEFFECT> param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            int param1,
            Pointer<DIFILEEFFECT> param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int BuildActionMap(
    Pointer<DIACTIONFORMAT> param0,
    Pointer<Utf16> param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIACTIONFORMAT> param0,
            Pointer<Utf16> param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIACTIONFORMAT> param0,
            Pointer<Utf16> param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int SetActionMap(
    Pointer<DIACTIONFORMAT> param0,
    Pointer<Utf16> param1,
    int param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIACTIONFORMAT> param0,
            Pointer<Utf16> param1,
            Uint32 param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIACTIONFORMAT> param0,
            Pointer<Utf16> param1,
            int param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int GetImageInfo(
    Pointer<DIDEVICEIMAGEINFOHEADER> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DIDEVICEIMAGEINFOHEADER> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DIDEVICEIMAGEINFOHEADER> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );
}
