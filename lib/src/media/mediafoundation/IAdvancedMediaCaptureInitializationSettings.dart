// IAdvancedMediaCaptureInitializationSettings.dart

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
import '../../media/mediafoundation/IMFDXGIDeviceManager.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAdvancedMediaCaptureInitializationSettings =
    '{3DE21209-8BA6-4F2A-A577-2819B56FF14D}';

/// {@category Interface}
/// {@category com}
class IAdvancedMediaCaptureInitializationSettings extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAdvancedMediaCaptureInitializationSettings(Pointer<COMObject> ptr)
      : super(ptr);

  int SetDirectxDeviceManager(
    Pointer<COMObject> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
