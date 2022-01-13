// IDirectSoundCaptureFXNoiseSuppress.dart

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
import '../../../media/audio/directsound/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSoundCaptureFXNoiseSuppress =
    '{ED311E41-FBAE-4175-9625-CD0854F693CA}';

/// {@category Interface}
/// {@category com}
class IDirectSoundCaptureFXNoiseSuppress extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirectSoundCaptureFXNoiseSuppress(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSCFXNoiseSuppress> pcDscFxNoiseSuppress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCFXNoiseSuppress> pcDscFxNoiseSuppress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCFXNoiseSuppress> pcDscFxNoiseSuppress,
          )>()(
        ptr.ref.lpVtbl,
        pcDscFxNoiseSuppress,
      );

  int GetAllParameters(
    Pointer<DSCFXNoiseSuppress> pDscFxNoiseSuppress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCFXNoiseSuppress> pDscFxNoiseSuppress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCFXNoiseSuppress> pDscFxNoiseSuppress,
          )>()(
        ptr.ref.lpVtbl,
        pDscFxNoiseSuppress,
      );

  int Reset() => ptr.ref.lpVtbl.value
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
}
