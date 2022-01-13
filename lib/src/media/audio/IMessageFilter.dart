// IMessageFilter.dart

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
import '../../media/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IMessageFilter = '{00000016-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IMessageFilter extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMessageFilter(Pointer<COMObject> ptr) : super(ptr);

  int HandleInComingCall(
    int dwCallType,
    int htaskCaller,
    int dwTickCount,
    Pointer<INTERFACEINFO> lpInterfaceInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 dwCallType,
            IntPtr htaskCaller,
            Uint32 dwTickCount,
            Pointer<INTERFACEINFO> lpInterfaceInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCallType,
            int htaskCaller,
            int dwTickCount,
            Pointer<INTERFACEINFO> lpInterfaceInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwCallType,
        htaskCaller,
        dwTickCount,
        lpInterfaceInfo,
      );

  int RetryRejectedCall(
    int htaskCallee,
    int dwTickCount,
    int dwRejectType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            IntPtr htaskCallee,
            Uint32 dwTickCount,
            Uint32 dwRejectType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int htaskCallee,
            int dwTickCount,
            int dwRejectType,
          )>()(
        ptr.ref.lpVtbl,
        htaskCallee,
        dwTickCount,
        dwRejectType,
      );

  int MessagePending(
    int htaskCallee,
    int dwTickCount,
    int dwPendingType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            IntPtr htaskCallee,
            Uint32 dwTickCount,
            Uint32 dwPendingType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int htaskCallee,
            int dwTickCount,
            int dwPendingType,
          )>()(
        ptr.ref.lpVtbl,
        htaskCallee,
        dwTickCount,
        dwPendingType,
      );
}
