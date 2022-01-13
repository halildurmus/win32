// IDirectDrawMediaSampleAllocator.dart

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
import '../../graphics/directdraw/IDirectDraw.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectDrawMediaSampleAllocator =
    '{AB6B4AFC-F6E4-11D0-900D-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IDirectDrawMediaSampleAllocator extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectDrawMediaSampleAllocator(Pointer<COMObject> ptr) : super(ptr);

  int GetDirectDraw(
    Pointer<Pointer<COMObject>> ppDirectDraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirectDraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppDirectDraw,
          )>()(
        ptr.ref.lpVtbl,
        ppDirectDraw,
      );
}
