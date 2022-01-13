// IDebugAsyncOperation.dart

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
import '../../../system/diagnostics/debug/IDebugSyncOperation.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugAsyncOperationCallBack.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IDebugAsyncOperation = '{51973C1B-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugAsyncOperation extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDebugAsyncOperation(Pointer<COMObject> ptr) : super(ptr);

  int GetSyncDebugOperation(
    Pointer<Pointer<COMObject>> ppsdo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsdo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsdo,
          )>()(
        ptr.ref.lpVtbl,
        ppsdo,
      );

  int Start(
    Pointer<COMObject> padocb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> padocb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> padocb,
          )>()(
        ptr.ref.lpVtbl,
        padocb,
      );

  int Abort() => ptr.ref.lpVtbl.value
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

  int QueryIsComplete() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetResult(
    Pointer<Int32> phrResult,
    Pointer<Pointer<COMObject>> ppunkResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrResult,
            Pointer<Pointer<COMObject>> ppunkResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrResult,
            Pointer<Pointer<COMObject>> ppunkResult,
          )>()(
        ptr.ref.lpVtbl,
        phrResult,
        ppunkResult,
      );
}
