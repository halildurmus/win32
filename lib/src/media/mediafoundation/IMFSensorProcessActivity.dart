// IMFSensorProcessActivity.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFSensorProcessActivity = '{39DC7F4A-B141-4719-813C-A7F46162A2B8}';

/// {@category Interface}
/// {@category com}
class IMFSensorProcessActivity extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFSensorProcessActivity(Pointer<COMObject> ptr) : super(ptr);

  int GetProcessId(
    Pointer<Uint32> pPID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pPID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pPID,
          )>()(
        ptr.ref.lpVtbl,
        pPID,
      );

  int GetStreamingState(
    Pointer<Int32> pfStreaming,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfStreaming,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfStreaming,
          )>()(
        ptr.ref.lpVtbl,
        pfStreaming,
      );

  int GetStreamingMode(
    Pointer<Int32> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMode,
          )>()(
        ptr.ref.lpVtbl,
        pMode,
      );

  int GetReportTime(
    Pointer<FILETIME> pft,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pft,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pft,
          )>()(
        ptr.ref.lpVtbl,
        pft,
      );
}
