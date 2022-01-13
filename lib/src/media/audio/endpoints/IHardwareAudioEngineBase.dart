// IHardwareAudioEngineBase.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/IMMDevice.dart';
import '../../../media/audio/structs.g.dart';

/// @nodoc
const IID_IHardwareAudioEngineBase = '{EDDCE3E4-F3C1-453A-B461-223563CBD886}';

/// {@category Interface}
/// {@category com}
class IHardwareAudioEngineBase extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IHardwareAudioEngineBase(Pointer<COMObject> ptr) : super(ptr);

  int GetAvailableOffloadConnectorCount(
    Pointer<Utf16> pwstrDeviceId,
    int uConnectorId,
    Pointer<Uint32> pAvailableConnectorInstanceCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
            Uint32 uConnectorId,
            Pointer<Uint32> pAvailableConnectorInstanceCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwstrDeviceId,
            int uConnectorId,
            Pointer<Uint32> pAvailableConnectorInstanceCount,
          )>()(
        ptr.ref.lpVtbl,
        pwstrDeviceId,
        uConnectorId,
        pAvailableConnectorInstanceCount,
      );

  int GetEngineFormat(
    Pointer<COMObject> pDevice,
    int bRequestDeviceFormat,
    Pointer<Pointer<WAVEFORMATEX>> ppwfxFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Int32 bRequestDeviceFormat,
            Pointer<Pointer<WAVEFORMATEX>> ppwfxFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int bRequestDeviceFormat,
            Pointer<Pointer<WAVEFORMATEX>> ppwfxFormat,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        bRequestDeviceFormat,
        ppwfxFormat,
      );

  int SetEngineDeviceFormat(
    Pointer<COMObject> pDevice,
    Pointer<WAVEFORMATEX> pwfxFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<WAVEFORMATEX> pwfxFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<WAVEFORMATEX> pwfxFormat,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pwfxFormat,
      );

  int SetGfxState(
    Pointer<COMObject> pDevice,
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        bEnable,
      );

  int GetGfxState(
    Pointer<COMObject> pDevice,
    Pointer<Int32> pbEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Int32> pbEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<Int32> pbEnable,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pbEnable,
      );
}
