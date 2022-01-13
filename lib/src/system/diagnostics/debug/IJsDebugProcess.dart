// IJsDebugProcess.dart

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
import '../../../system/diagnostics/debug/IJsDebugStackWalker.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IJsDebugBreakPoint.dart';

/// @nodoc
const IID_IJsDebugProcess = '{3D587168-6A2D-4041-BD3B-0DE674502862}';

/// {@category Interface}
/// {@category com}
class IJsDebugProcess extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IJsDebugProcess(Pointer<COMObject> ptr) : super(ptr);

  int CreateStackWalker(
    int threadId,
    Pointer<Pointer<COMObject>> ppStackWalker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 threadId,
            Pointer<Pointer<COMObject>> ppStackWalker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threadId,
            Pointer<Pointer<COMObject>> ppStackWalker,
          )>()(
        ptr.ref.lpVtbl,
        threadId,
        ppStackWalker,
      );

  int CreateBreakPoint(
    int documentId,
    int characterOffset,
    int characterCount,
    int isEnabled,
    Pointer<Pointer<COMObject>> ppDebugBreakPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 documentId,
            Uint32 characterOffset,
            Uint32 characterCount,
            Int32 isEnabled,
            Pointer<Pointer<COMObject>> ppDebugBreakPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int documentId,
            int characterOffset,
            int characterCount,
            int isEnabled,
            Pointer<Pointer<COMObject>> ppDebugBreakPoint,
          )>()(
        ptr.ref.lpVtbl,
        documentId,
        characterOffset,
        characterCount,
        isEnabled,
        ppDebugBreakPoint,
      );

  int PerformAsyncBreak(
    int threadId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 threadId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int threadId,
          )>()(
        ptr.ref.lpVtbl,
        threadId,
      );

  int GetExternalStepAddress(
    Pointer<Uint64> pCodeAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pCodeAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pCodeAddress,
          )>()(
        ptr.ref.lpVtbl,
        pCodeAddress,
      );
}
