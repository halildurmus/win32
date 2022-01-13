// IDirectSoundCaptureFXAec.dart

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
const IID_IDirectSoundCaptureFXAec = '{AD74143D-903D-4AB7-8066-28D363036D65}';

/// {@category Interface}
/// {@category com}
class IDirectSoundCaptureFXAec extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDirectSoundCaptureFXAec(Pointer<COMObject> ptr) : super(ptr);

  int SetAllParameters(
    Pointer<DSCFXAec> pDscFxAec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCFXAec> pDscFxAec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCFXAec> pDscFxAec,
          )>()(
        ptr.ref.lpVtbl,
        pDscFxAec,
      );

  int GetAllParameters(
    Pointer<DSCFXAec> pDscFxAec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DSCFXAec> pDscFxAec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DSCFXAec> pDscFxAec,
          )>()(
        ptr.ref.lpVtbl,
        pDscFxAec,
      );

  int GetStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
