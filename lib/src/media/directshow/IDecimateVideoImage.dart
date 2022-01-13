// IDecimateVideoImage.dart

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
const IID_IDecimateVideoImage = '{2E5EA3E0-E924-11D2-B6DA-00A0C995E8DF}';

/// {@category Interface}
/// {@category com}
class IDecimateVideoImage extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDecimateVideoImage(Pointer<COMObject> ptr) : super(ptr);

  int SetDecimationImageSize(
    int lWidth,
    int lHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lWidth,
            Int32 lHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lWidth,
            int lHeight,
          )>()(
        ptr.ref.lpVtbl,
        lWidth,
        lHeight,
      );

  int ResetDecimationImageSize() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
