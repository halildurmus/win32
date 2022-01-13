// IDebugApplicationThread.dart

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

import '../../../system/diagnostics/debug/IRemoteDebugApplicationThread.dart';
import '../../../system/diagnostics/debug/IDebugThreadCall32.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDebugApplicationThread = '{51973C38-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugApplicationThread extends IRemoteDebugApplicationThread {
  // vtable begins at 12, is 5 entries long.
  IDebugApplicationThread(Pointer<COMObject> ptr) : super(ptr);

  int SynchronousCallIntoThread32(
    Pointer<COMObject> pstcb,
    int dwParam1,
    int dwParam2,
    int dwParam3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pstcb,
            Uint32 dwParam1,
            Uint32 dwParam2,
            Uint32 dwParam3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pstcb,
            int dwParam1,
            int dwParam2,
            int dwParam3,
          )>()(
        ptr.ref.lpVtbl,
        pstcb,
        dwParam1,
        dwParam2,
        dwParam3,
      );

  int QueryIsCurrentThread() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int QueryIsDebuggerThread() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int SetDescription(
    Pointer<Utf16> pstrDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrDescription,
          )>()(
        ptr.ref.lpVtbl,
        pstrDescription,
      );

  int SetStateString(
    Pointer<Utf16> pstrState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrState,
          )>()(
        ptr.ref.lpVtbl,
        pstrState,
      );
}
