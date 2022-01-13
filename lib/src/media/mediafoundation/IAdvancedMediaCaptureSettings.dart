// IAdvancedMediaCaptureSettings.dart

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
const IID_IAdvancedMediaCaptureSettings =
    '{24E0485F-A33E-4AA1-B564-6019B1D14F65}';

/// {@category Interface}
/// {@category com}
class IAdvancedMediaCaptureSettings extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAdvancedMediaCaptureSettings(Pointer<COMObject> ptr) : super(ptr);

  int GetDirectxDeviceManager(
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
