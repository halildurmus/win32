// IAudioStreamSample.dart

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

import '../../media/directshow/IStreamSample.dart';
import '../../media/directshow/IAudioData.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioStreamSample = '{345FEE00-ABA5-11D0-8212-00C04FC32C45}';

/// {@category Interface}
/// {@category com}
class IAudioStreamSample extends IStreamSample {
  // vtable begins at 8, is 1 entries long.
  IAudioStreamSample(Pointer<COMObject> ptr) : super(ptr);

  int GetAudioData(
    Pointer<Pointer<COMObject>> ppAudio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAudio,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAudio,
          )>()(
        ptr.ref.lpVtbl,
        ppAudio,
      );
}
