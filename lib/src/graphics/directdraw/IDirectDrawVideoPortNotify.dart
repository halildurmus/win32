// IDirectDrawVideoPortNotify.dart

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
import '../../graphics/directdraw/structs.g.dart';

/// @nodoc
const IID_IDirectDrawVideoPortNotify = '{A655FB94-0589-4E57-B333-567A89468C88}';

/// {@category Interface}
/// {@category com}
class IDirectDrawVideoPortNotify extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectDrawVideoPortNotify(Pointer<COMObject> ptr) : super(ptr);

  int AcquireNotification(
    Pointer<IntPtr> param0,
    Pointer<DDVIDEOPORTNOTIFY> param1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> param0,
            Pointer<DDVIDEOPORTNOTIFY> param1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> param0,
            Pointer<DDVIDEOPORTNOTIFY> param1,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
      );

  int ReleaseNotification(
    int param0,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr param0,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int param0,
          )>()(
        ptr.ref.lpVtbl,
        param0,
      );
}
