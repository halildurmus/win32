// IXAPOHrtfParameters.dart

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
import '../../../media/audio/xaudio2/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXAPOHrtfParameters = '{15B3CD66-E9DE-4464-B6E6-2BC3CF63D455}';

/// {@category Interface}
/// {@category com}
class IXAPOHrtfParameters extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IXAPOHrtfParameters(Pointer<COMObject> ptr) : super(ptr);

  int SetSourcePosition(
    Pointer<HrtfPosition> position,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<HrtfPosition> position,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<HrtfPosition> position,
          )>()(
        ptr.ref.lpVtbl,
        position,
      );

  int SetSourceOrientation(
    Pointer<HrtfOrientation> orientation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<HrtfOrientation> orientation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<HrtfOrientation> orientation,
          )>()(
        ptr.ref.lpVtbl,
        orientation,
      );

  int SetSourceGain(
    double gain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float gain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double gain,
          )>()(
        ptr.ref.lpVtbl,
        gain,
      );

  int SetEnvironment(
    int environment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 environment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int environment,
          )>()(
        ptr.ref.lpVtbl,
        environment,
      );
}
