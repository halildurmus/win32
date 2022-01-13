// IActiveScriptProfilerControl.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveScriptProfilerControl =
    '{784B5FF0-69B0-47D1-A7DC-2518F4230E90}';

/// {@category Interface}
/// {@category com}
class IActiveScriptProfilerControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IActiveScriptProfilerControl(Pointer<COMObject> ptr) : super(ptr);

  int StartProfiling(
    Pointer<GUID> clsidProfilerObject,
    int dwEventMask,
    int dwContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidProfilerObject,
            Uint32 dwEventMask,
            Uint32 dwContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidProfilerObject,
            int dwEventMask,
            int dwContext,
          )>()(
        ptr.ref.lpVtbl,
        clsidProfilerObject,
        dwEventMask,
        dwContext,
      );

  int SetProfilerEventMask(
    int dwEventMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEventMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEventMask,
          )>()(
        ptr.ref.lpVtbl,
        dwEventMask,
      );

  int StopProfiling(
    int hrShutdownReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrShutdownReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrShutdownReason,
          )>()(
        ptr.ref.lpVtbl,
        hrShutdownReason,
      );
}
