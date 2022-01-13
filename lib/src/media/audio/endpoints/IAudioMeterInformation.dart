// IAudioMeterInformation.dart

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

/// @nodoc
const IID_IAudioMeterInformation = '{C02216F6-8C67-4B5B-9D00-D008E73E0064}';

/// {@category Interface}
/// {@category com}
class IAudioMeterInformation extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAudioMeterInformation(Pointer<COMObject> ptr) : super(ptr);

  int GetPeakValue(
    Pointer<Float> pfPeak,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> pfPeak,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> pfPeak,
          )>()(
        ptr.ref.lpVtbl,
        pfPeak,
      );

  int GetMeteringChannelCount(
    Pointer<Uint32> pnChannelCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnChannelCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnChannelCount,
          )>()(
        ptr.ref.lpVtbl,
        pnChannelCount,
      );

  int GetChannelsPeakValues(
    int u32ChannelCount,
    Pointer<Float> afPeakValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32ChannelCount,
            Pointer<Float> afPeakValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32ChannelCount,
            Pointer<Float> afPeakValues,
          )>()(
        ptr.ref.lpVtbl,
        u32ChannelCount,
        afPeakValues,
      );

  int QueryHardwareSupport(
    Pointer<Uint32> pdwHardwareSupportMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwHardwareSupportMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwHardwareSupportMask,
          )>()(
        ptr.ref.lpVtbl,
        pdwHardwareSupportMask,
      );
}
