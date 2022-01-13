// IDirectInput8W.dart

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
import '../../devices/humaninterfacedevice/IDirectInputDevice8.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/humaninterfacedevice/callbacks.g.dart';
import '../../devices/humaninterfacedevice/structs.g.dart';

/// @nodoc
const IID_IDirectInput8W = '{BF798031-483A-4DA2-AA99-5D64ED369700}';

/// {@category Interface}
/// {@category com}
class IDirectInput8W extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IDirectInput8W(Pointer<COMObject> ptr) : super(ptr);

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

  int FindDevice(
    Pointer<GUID> param0,
    Pointer<Utf16> param1,
    Pointer<GUID> param2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<Utf16> param1,
            Pointer<GUID> param2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<Utf16> param1,
            Pointer<GUID> param2,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
      );

  int EnumDevicesBySemantics(
    Pointer<Utf16> param0,
    Pointer<DIACTIONFORMAT> param1,
    Pointer<NativeFunction<LPDIENUMDEVICESBYSEMANTICSCBW>> param2,
    Pointer param3,
    int param4,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<DIACTIONFORMAT> param1,
            Pointer<NativeFunction<LPDIENUMDEVICESBYSEMANTICSCBW>> param2,
            Pointer param3,
            Uint32 param4,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> param0,
            Pointer<DIACTIONFORMAT> param1,
            Pointer<NativeFunction<LPDIENUMDEVICESBYSEMANTICSCBW>> param2,
            Pointer param3,
            int param4,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
        param4,
      );

  int ConfigureDevices(
    Pointer<NativeFunction<LPDICONFIGUREDEVICESCALLBACK>> param0,
    Pointer<DICONFIGUREDEVICESPARAMS> param1,
    int param2,
    Pointer param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPDICONFIGUREDEVICESCALLBACK>> param0,
            Pointer<DICONFIGUREDEVICESPARAMS> param1,
            Uint32 param2,
            Pointer param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPDICONFIGUREDEVICESCALLBACK>> param0,
            Pointer<DICONFIGUREDEVICESPARAMS> param1,
            int param2,
            Pointer param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );
}
