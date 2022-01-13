// ILaunchTargetViewSizePreference.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ILaunchTargetViewSizePreference =
    '{2F0666C6-12F7-4360-B511-A394A0553725}';

/// {@category Interface}
/// {@category com}
class ILaunchTargetViewSizePreference extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ILaunchTargetViewSizePreference(Pointer<COMObject> ptr) : super(ptr);

  int GetTargetViewSizePreference(
    Pointer<Int32> targetSizeOnLaunch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> targetSizeOnLaunch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> targetSizeOnLaunch,
          )>()(
        ptr.ref.lpVtbl,
        targetSizeOnLaunch,
      );
}
