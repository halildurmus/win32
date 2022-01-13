// ISpatialAudioObjectRenderStreamForHrtf.dart

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

import '../../media/audio/ISpatialAudioObjectRenderStreamBase.dart';
import '../../media/audio/structs.g.dart';
import '../../media/audio/ISpatialAudioObjectForHrtf.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioObjectRenderStreamForHrtf =
    '{E08DEEF9-5363-406E-9FDC-080EE247BBE0}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectRenderStreamForHrtf
    extends ISpatialAudioObjectRenderStreamBase {
  // vtable begins at 10, is 1 entries long.
  ISpatialAudioObjectRenderStreamForHrtf(Pointer<COMObject> ptr) : super(ptr);

  int ActivateSpatialAudioObjectForHrtf(
    int type,
    Pointer<Pointer<COMObject>> audioObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 type,
            Pointer<Pointer<COMObject>> audioObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<Pointer<COMObject>> audioObject,
          )>()(
        ptr.ref.lpVtbl,
        type,
        audioObject,
      );
}
