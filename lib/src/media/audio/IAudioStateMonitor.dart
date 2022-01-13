// IAudioStateMonitor.dart

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
import '../../media/audio/callbacks.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_IAudioStateMonitor = '{63BD8738-E30D-4C77-BF5C-834E87C657E2}';

/// {@category Interface}
/// {@category com}
class IAudioStateMonitor extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioStateMonitor(Pointer<COMObject> ptr) : super(ptr);

  int RegisterCallback(
    Pointer<NativeFunction<PAudioStateMonitorCallback>> callback,
    Pointer context,
    Pointer<Int64> registration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<PAudioStateMonitorCallback>> callback,
            Pointer context,
            Pointer<Int64> registration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<PAudioStateMonitorCallback>> callback,
            Pointer context,
            Pointer<Int64> registration,
          )>()(
        ptr.ref.lpVtbl,
        callback,
        context,
        registration,
      );

  void UnregisterCallback(
    int registration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int64 registration,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int registration,
          )>()(
        ptr.ref.lpVtbl,
        registration,
      );

  int GetSoundLevel() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
