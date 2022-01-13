// ISpatialAudioObjectRenderStreamNotify.dart

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

import '../../system/com/IUnknown.dart';
import '../../media/audio/ISpatialAudioObjectRenderStreamBase.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpatialAudioObjectRenderStreamNotify =
    '{DDDF83E6-68D7-4C70-883F-A1836AFB4A50}';

/// {@category Interface}
/// {@category com}
class ISpatialAudioObjectRenderStreamNotify extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISpatialAudioObjectRenderStreamNotify(Pointer<COMObject> ptr) : super(ptr);

  int OnAvailableDynamicObjectCountChange(
    Pointer<COMObject> sender,
    int hnsComplianceDeadlineTime,
    int availableDynamicObjectCountChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sender,
            Int64 hnsComplianceDeadlineTime,
            Uint32 availableDynamicObjectCountChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sender,
            int hnsComplianceDeadlineTime,
            int availableDynamicObjectCountChange,
          )>()(
        ptr.ref.lpVtbl,
        sender,
        hnsComplianceDeadlineTime,
        availableDynamicObjectCountChange,
      );
}
