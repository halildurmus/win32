// IAppVisibilityEvents.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppVisibilityEvents = '{6584CE6B-7D82-49C2-89C9-C6BC02BA8C38}';

/// {@category Interface}
/// {@category com}
class IAppVisibilityEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppVisibilityEvents(Pointer<COMObject> ptr) : super(ptr);

  int AppVisibilityOnMonitorChanged(
    int hMonitor,
    int previousMode,
    int currentMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hMonitor,
            Int32 previousMode,
            Int32 currentMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hMonitor,
            int previousMode,
            int currentMode,
          )>()(
        ptr.ref.lpVtbl,
        hMonitor,
        previousMode,
        currentMode,
      );

  int LauncherVisibilityChange(
    int currentVisibleState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 currentVisibleState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentVisibleState,
          )>()(
        ptr.ref.lpVtbl,
        currentVisibleState,
      );
}
