// IDirectSoundFXCompressor.dart

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
const IID_IDirectSoundFXCompressor = '{4BBD1154-62F6-4E2C-A15C-D3B6C417F7A0}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXCompressor extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectSoundFXCompressor(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXCompressor> pcDsFxCompressor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXCompressor> pcDsFxCompressor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXCompressor> pcDsFxCompressor,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxCompressor,
      );

  int GetAllParameters(
    Pointer<DSFXCompressor> pDsFxCompressor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXCompressor> pDsFxCompressor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXCompressor> pDsFxCompressor,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxCompressor,
      );
}
