// IDirectSoundFXFlanger.dart

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
const IID_IDirectSoundFXFlanger = '{903E9878-2C92-4072-9B2C-EA68F5396783}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXFlanger extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectSoundFXFlanger(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXFlanger> pcDsFxFlanger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXFlanger> pcDsFxFlanger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXFlanger> pcDsFxFlanger,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxFlanger,
      );

  int GetAllParameters(
    Pointer<DSFXFlanger> pDsFxFlanger,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXFlanger> pDsFxFlanger,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXFlanger> pDsFxFlanger,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxFlanger,
      );
}
