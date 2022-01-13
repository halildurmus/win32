// IDirectSoundFXChorus.dart

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
const IID_IDirectSoundFXChorus = '{880842E3-145F-43E6-A934-A71806E50547}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXChorus extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectSoundFXChorus(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXChorus> pcDsFxChorus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXChorus> pcDsFxChorus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXChorus> pcDsFxChorus,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxChorus,
      );

  int GetAllParameters(
    Pointer<DSFXChorus> pDsFxChorus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXChorus> pDsFxChorus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXChorus> pDsFxChorus,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxChorus,
      );
}
