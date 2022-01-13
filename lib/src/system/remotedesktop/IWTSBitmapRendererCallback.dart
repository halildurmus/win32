// IWTSBitmapRendererCallback.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSBitmapRendererCallback = '{D782928E-FE4E-4E77-AE90-9CD0B3E3B353}';

/// {@category Interface}
/// {@category com}
class IWTSBitmapRendererCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWTSBitmapRendererCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnTargetSizeChanged(
    RECT rcNewSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            RECT rcNewSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            RECT rcNewSize,
          )>()(
        ptr.ref.lpVtbl,
        rcNewSize,
      );
}
