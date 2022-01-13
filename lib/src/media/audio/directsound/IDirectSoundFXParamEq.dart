// IDirectSoundFXParamEq.dart

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
const IID_IDirectSoundFXParamEq = '{C03CA9FE-FE90-4204-8078-82334CD177DA}';

/// {@category Interface}
/// {@category com}
class IDirectSoundFXParamEq extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectSoundFXParamEq(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSFXParamEq> pcDsFxParamEq,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXParamEq> pcDsFxParamEq,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXParamEq> pcDsFxParamEq,
          )>()(
        ptr.ref.lpVtbl,
        pcDsFxParamEq,
      );

  int GetAllParameters(
    Pointer<DSFXParamEq> pDsFxParamEq,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSFXParamEq> pDsFxParamEq,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSFXParamEq> pDsFxParamEq,
          )>()(
        ptr.ref.lpVtbl,
        pDsFxParamEq,
      );
}
