// IAdvancedMediaCapture.dart

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
import '../../media/mediafoundation/IAdvancedMediaCaptureSettings.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAdvancedMediaCapture = '{D0751585-D216-4344-B5BF-463B68F977BB}';

/// {@category Interface}
/// {@category com}
class IAdvancedMediaCapture extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAdvancedMediaCapture(Pointer<COMObject> ptr) : super(ptr);

  int GetAdvancedMediaCaptureSettings(
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
