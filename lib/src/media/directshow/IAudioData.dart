// IAudioData.dart

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

import '../../media/directshow/IMemoryData.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioData = '{54C719C0-AF60-11D0-8212-00C04FC32C45}';

/// {@category Interface}
/// {@category com}
class IAudioData extends IMemoryData {
  // vtable begins at 6, is 2 entries long.
  IAudioData(Pointer<COMObject> ptr) : super(ptr);

  int GetFormat(
    Pointer<WAVEFORMATEX> pWaveFormatCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pWaveFormatCurrent,
          )>()(
        ptr.ref.lpVtbl,
        pWaveFormatCurrent,
      );

  int SetFormat(
    Pointer<WAVEFORMATEX> lpWaveFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> lpWaveFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> lpWaveFormat,
          )>()(
        ptr.ref.lpVtbl,
        lpWaveFormat,
      );
}
