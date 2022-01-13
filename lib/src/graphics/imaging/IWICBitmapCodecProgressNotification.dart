// IWICBitmapCodecProgressNotification.dart

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
import '../../graphics/imaging/callbacks.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICBitmapCodecProgressNotification =
    '{64C1024E-C3CF-4462-8078-88C2B11C46D9}';

/// {@category Interface}
/// {@category com}
class IWICBitmapCodecProgressNotification extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWICBitmapCodecProgressNotification(Pointer<COMObject> ptr) : super(ptr);

  int RegisterProgressNotification(
    Pointer<NativeFunction<PFNProgressNotification>> pfnProgressNotification,
    Pointer pvData,
    int dwProgressFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<PFNProgressNotification>>
                pfnProgressNotification,
            Pointer pvData,
            Uint32 dwProgressFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<PFNProgressNotification>>
                pfnProgressNotification,
            Pointer pvData,
            int dwProgressFlags,
          )>()(
        ptr.ref.lpVtbl,
        pfnProgressNotification,
        pvData,
        dwProgressFlags,
      );
}
