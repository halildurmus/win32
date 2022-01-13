// IDirectInputDeviceW.dart

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

/// @nodoc
const IID_IDirectInputDeviceW = '{5944E681-C92E-11CF-BFC7-444553540000}';

/// {@category Interface}
/// {@category com}
class IDirectInputDeviceW extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IDirectInputDeviceW(Pointer<COMObject> ptr) : super(ptr);

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
}
