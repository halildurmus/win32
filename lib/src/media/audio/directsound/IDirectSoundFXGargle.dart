// IDirectSoundFXGargle.dart

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
const IID_IDirectSoundFXGargle = '{D616F352-D622-11CE-AAC5-0020AF0B99A3}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXGargle extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectSoundFXGargle(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXGargle> pcDsFxGargle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXGargle> pcDsFxGargle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXGargle> pcDsFxGargle,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxGargle,
      );

  int GetAllParameters(
    Pointer<DSFXGargle> pDsFxGargle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXGargle> pDsFxGargle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXGargle> pDsFxGargle,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxGargle,
      );
}
