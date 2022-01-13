// IDirectInputW.dart

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
import '../../devices/humaninterfacedevice/IDirectInputDevice.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/humaninterfacedevice/callbacks.g.dart';

/// @nodoc
const IID_IDirectInputW = '{89521361-AA8A-11CF-BFC7-444553540000}';

/// {@category Interface}
/// {@category com}
class IDirectInputW extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDirectInputW(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice(
    Pointer<GUID> param0,
    Pointer<Pointer<COMObject>> param1,
    Pointer<COMObject> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<Pointer<COMObject>> param1,
            Pointer<COMObject> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<Pointer<COMObject>> param1,
            Pointer<COMObject> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int EnumDevices(
    int param0,
    Pointer<NativeFunction<LPDIENUMDEVICESCALLBACKW>> param1,
    Pointer param2,
    int param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 param0,
            Pointer<NativeFunction<LPDIENUMDEVICESCALLBACKW>> param1,
            Pointer param2,
            Uint32 param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
            Pointer<NativeFunction<LPDIENUMDEVICESCALLBACKW>> param1,
            Pointer param2,
            int param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );

  int GetDeviceStatus(
    Pointer<GUID> param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );

  int RunControlPanel(
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
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
