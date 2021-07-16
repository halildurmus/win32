// IDirectDrawVideoPortNotify.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directdraw/structs.g.dart';

/// @nodoc
const IID_IDirectDrawVideoPortNotify = '{A655FB94-0589-4E57-B333-567A89468C88}';

typedef _AcquireNotification_Native = Int32 Function(
    Pointer obj, Pointer<IntPtr> param0, Pointer<DDVIDEOPORTNOTIFY> param1);
typedef _AcquireNotification_Dart = int Function(
    Pointer obj, Pointer<IntPtr> param0, Pointer<DDVIDEOPORTNOTIFY> param1);

typedef _ReleaseNotification_Native = Int32 Function(
    Pointer obj, IntPtr param0);
typedef _ReleaseNotification_Dart = int Function(Pointer obj, int param0);

/// {@category Interface}
/// {@category com}
class IDirectDrawVideoPortNotify extends IUnknown {
  // vtable begins at 3, ends at 4

  IDirectDrawVideoPortNotify(Pointer<COMObject> ptr) : super(ptr);

  int AcquireNotification(
          Pointer<IntPtr> param0, Pointer<DDVIDEOPORTNOTIFY> param1) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_AcquireNotification_Native>>>()
              .value
              .asFunction<_AcquireNotification_Dart>()(
          ptr.ref.lpVtbl, param0, param1);

  int ReleaseNotification(int param0) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_ReleaseNotification_Native>>>()
      .value
      .asFunction<_ReleaseNotification_Dart>()(ptr.ref.lpVtbl, param0);
}
