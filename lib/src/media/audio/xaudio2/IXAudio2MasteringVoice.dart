// IXAudio2MasteringVoice.dart

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

import '../../../media/audio/xaudio2/IXAudio2Voice.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXAudio2MasteringVoice = 'null';

/// {@category Interface}
/// {@category com}
class IXAudio2MasteringVoice extends IXAudio2Voice {
  // vtable begins at 19, is 1 entries long.
  IXAudio2MasteringVoice(Pointer<COMObject> ptr) : super(ptr);

  int GetChannelMask(
    Pointer<Uint32> pChannelmask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pChannelmask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pChannelmask,
          )>()(
        ptr.ref.lpVtbl,
        pChannelmask,
      );
}
