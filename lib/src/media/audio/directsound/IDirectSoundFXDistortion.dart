// IDirectSoundFXDistortion.dart

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
const IID_IDirectSoundFXDistortion = '{8ECF4326-455F-4D8B-BDA9-8D5D3E9E3E0B}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXDistortion extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectSoundFXDistortion(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXDistortion> pcDsFxDistortion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXDistortion> pcDsFxDistortion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXDistortion> pcDsFxDistortion,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxDistortion,
      );

  int GetAllParameters(
    Pointer<DSFXDistortion> pDsFxDistortion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXDistortion> pDsFxDistortion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXDistortion> pDsFxDistortion,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxDistortion,
      );
}
