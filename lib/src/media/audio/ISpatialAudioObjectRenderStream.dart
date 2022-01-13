// ISpatialAudioObjectRenderStream.dart

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
import '../../media/audio/ISpatialAudioObject.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioObjectRenderStream =
    '{BAB5F473-B423-477B-85F5-B5A332A04153}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectRenderStream
    extends ISpatialAudioObjectRenderStreamBase {
  // vtable begins at 10, is 1 entries long.
  ISpatialAudioObjectRenderStream(Pointer<COMObject> ptr) : super(ptr);

  int ActivateSpatialAudioObject(
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
