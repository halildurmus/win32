// IAudioSystemEffects2.dart

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

import '../../../media/audio/apo/IAudioSystemEffects.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioSystemEffects2 = '{BAFE99D2-7436-44CE-9E0E-4D89AFBFFF56}';

/// {@category Interface}
/// {@category com}
class IAudioSystemEffects2 extends IAudioSystemEffects {
  // vtable begins at 3, is 1 entries long.
  IAudioSystemEffects2(Pointer<COMObject> ptr) : super(ptr);

  int GetEffectsList(
    Pointer<Pointer<GUID>> ppEffectsIds,
    Pointer<Uint32> pcEffects,
    int Event,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<GUID>> ppEffectsIds,
            Pointer<Uint32> pcEffects,
            IntPtr Event,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<GUID>> ppEffectsIds,
            Pointer<Uint32> pcEffects,
            int Event,
          )>()(
        ptr.ref.lpVtbl,
        ppEffectsIds,
        pcEffects,
        Event,
      );
}
