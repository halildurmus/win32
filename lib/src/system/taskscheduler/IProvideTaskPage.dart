// IProvideTaskPage.dart

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
import '../../system/taskscheduler/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/controls/structs.g.dart';

/// @nodoc
const IID_IProvideTaskPage = '{4086658A-CBBB-11CF-B604-00C04FD8D565}';

/// {@category Interface}
/// {@category com}
class IProvideTaskPage extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IProvideTaskPage(Pointer<COMObject> ptr) : super(ptr);

  int GetPage(
    int tpType,
    int fPersistChanges,
    Pointer<IntPtr> phPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 tpType,
            Int32 fPersistChanges,
            Pointer<IntPtr> phPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tpType,
            int fPersistChanges,
            Pointer<IntPtr> phPage,
          )>()(
        ptr.ref.lpVtbl,
        tpType,
        fPersistChanges,
        phPage,
      );
}
