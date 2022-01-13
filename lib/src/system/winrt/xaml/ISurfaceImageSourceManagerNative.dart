// ISurfaceImageSourceManagerNative.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ISurfaceImageSourceManagerNative =
    '{4C8798B7-1D88-4A0F-B59B-B93F600DE8C8}';

/// {@category Interface}
/// {@category com}
class ISurfaceImageSourceManagerNative extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISurfaceImageSourceManagerNative(Pointer<COMObject> ptr) : super(ptr);

  int FlushAllSurfacesWithDevice(
    Pointer<COMObject> device,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> device,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> device,
          )>()(
        ptr.ref.lpVtbl,
        device,
      );
}
