// IWMDMDeviceControl.dart

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
import '../../specialTypes.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMDeviceControl = '{1DCB3A04-33ED-11D3-8470-00C04F79DBC0}';

/// {@category Interface}
/// {@category com}
class IWMDMDeviceControl extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IWMDMDeviceControl(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int GetCapabilities(
    Pointer<Uint32> pdwCapabilitiesMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCapabilitiesMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCapabilitiesMask,
          )>()(
        ptr.ref.lpVtbl,
        pdwCapabilitiesMask,
      );

  int Play() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Record(
    Pointer<WAVEFORMATEX> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int Pause() => ptr.ref.lpVtbl.value
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

  int Resume() => ptr.ref.lpVtbl.value
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

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Seek(
    int fuMode,
    int nOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fuMode,
            Int32 nOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fuMode,
            int nOffset,
          )>()(
        ptr.ref.lpVtbl,
        fuMode,
        nOffset,
      );
}
