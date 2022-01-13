// IDirectInputDevice2W.dart

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

import '../../devices/humaninterfacedevice/IDirectInputDevice.dart';
import '../../devices/humaninterfacedevice/structs.g.dart';
import '../../devices/humaninterfacedevice/IDirectInputEffect.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/humaninterfacedevice/callbacks.g.dart';

/// @nodoc
const IID_IDirectInputDevice2W = '{5944E683-C92E-11CF-BFC7-444553540000}';

/// {@category Interface}
/// {@category com}
class IDirectInputDevice2W extends IDirectInputDeviceW {
  // vtable begins at 18, is 9 entries long.
  IDirectInputDevice2W(Pointer<COMObject> ptr) : super(ptr);

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
}
