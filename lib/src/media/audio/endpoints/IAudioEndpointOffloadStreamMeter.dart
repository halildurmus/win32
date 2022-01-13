// IAudioEndpointOffloadStreamMeter.dart

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
const IID_IAudioEndpointOffloadStreamMeter =
    '{E1546DCE-9DD1-418B-9AB2-348CED161C86}';

/// {@category Interface}
/// {@category com}
class IAudioEndpointOffloadStreamMeter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioEndpointOffloadStreamMeter(Pointer<COMObject> ptr) : super(ptr);

  int GetMeterChannelCount(
    Pointer<Uint32> pu32ChannelCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pu32ChannelCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pu32ChannelCount,
          )>()(
        ptr.ref.lpVtbl,
        pu32ChannelCount,
      );

  int GetMeteringData(
    int u32ChannelCount,
    Pointer<Float> pf32PeakValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32ChannelCount,
            Pointer<Float> pf32PeakValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32ChannelCount,
            Pointer<Float> pf32PeakValues,
          )>()(
        ptr.ref.lpVtbl,
        u32ChannelCount,
        pf32PeakValues,
      );
}
