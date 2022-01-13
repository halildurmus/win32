// IAudioPeakMeter.dart

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

/// @nodoc
const IID_IAudioPeakMeter = '{DD79923C-0599-45E0-B8B6-C8DF7DB6E796}';

/// {@category Interface}
/// {@category com}
class IAudioPeakMeter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioPeakMeter(Pointer<COMObject> ptr) : super(ptr);

  int GetChannelCount(
    Pointer<Uint32> pcChannels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcChannels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcChannels,
          )>()(
        ptr.ref.lpVtbl,
        pcChannels,
      );

  int GetLevel(
    int nChannel,
    Pointer<Float> pfLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nChannel,
            Pointer<Float> pfLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nChannel,
            Pointer<Float> pfLevel,
          )>()(
        ptr.ref.lpVtbl,
        nChannel,
        pfLevel,
      );
}
