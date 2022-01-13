// IBasicVideo2.dart

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

import '../../media/directshow/IBasicVideo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBasicVideo2 = '{329BB360-F6EA-11D1-9038-00A0C9697298}';

/// {@category Interface}
/// {@category com}
class IBasicVideo2 extends IBasicVideo {
  // vtable begins at 39, is 1 entries long.
  IBasicVideo2(Pointer<COMObject> ptr) : super(ptr);

  int GetPreferredAspectRatio(
    Pointer<Int32> plAspectX,
    Pointer<Int32> plAspectY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plAspectX,
            Pointer<Int32> plAspectY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plAspectX,
            Pointer<Int32> plAspectY,
          )>()(
        ptr.ref.lpVtbl,
        plAspectX,
        plAspectY,
      );
}
