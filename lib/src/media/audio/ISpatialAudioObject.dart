// ISpatialAudioObject.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../media/audio/ISpatialAudioObjectBase.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioObject = '{DDE28967-521B-46E5-8F00-BD6F2BC8AB1D}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObject extends ISpatialAudioObjectBase {
  // vtable begins at 7, is 2 entries long.
  ISpatialAudioObject(Pointer<COMObject> ptr) : super(ptr);

  int SetPosition(
    double x,
    double y,
    double z,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float x,
            Float y,
            Float z,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double x,
            double y,
            double z,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
        z,
      );

  int SetVolume(
    double volume,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float volume,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double volume,
          )>()(
        ptr.ref.lpVtbl,
        volume,
      );
}
