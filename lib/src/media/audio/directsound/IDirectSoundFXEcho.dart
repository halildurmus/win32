// IDirectSoundFXEcho.dart

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
const IID_IDirectSoundFXEcho = '{8BD28EDF-50DB-4E92-A2BD-445488D1ED42}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXEcho extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectSoundFXEcho(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXEcho> pcDsFxEcho,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXEcho> pcDsFxEcho,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXEcho> pcDsFxEcho,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxEcho,
      );

  int GetAllParameters(
    Pointer<DSFXEcho> pDsFxEcho,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXEcho> pDsFxEcho,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXEcho> pDsFxEcho,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxEcho,
      );
}
