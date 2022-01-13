// IDxcResult.dart

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

import '../../../graphics/direct3d/dxc/IDxcOperationResult.dart';
import '../../../graphics/direct3d/dxc/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/dxc/IDxcBlobUtf16.dart';

/// @nodoc
const IID_IDxcResult = '{58346CDA-DDE7-4497-9461-6F87AF5E0659}';

/// {@category Interface}
/// {@category com}
class IDxcResult extends IDxcOperationResult {
  // vtable begins at 6, is 5 entries long.
  IDxcResult(Pointer<COMObject> ptr) : super(ptr);

  int HasOutput(
    int dxcOutKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dxcOutKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dxcOutKind,
          )>()(
        ptr.ref.lpVtbl,
        dxcOutKind,
      );

  int GetOutput(
    int dxcOutKind,
    Pointer<GUID> iid,
    Pointer<Pointer> ppvObject,
    Pointer<Pointer<COMObject>> ppOutputName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dxcOutKind,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
            Pointer<Pointer<COMObject>> ppOutputName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dxcOutKind,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
            Pointer<Pointer<COMObject>> ppOutputName,
          )>()(
        ptr.ref.lpVtbl,
        dxcOutKind,
        iid,
        ppvObject,
        ppOutputName,
      );

  int GetNumOutputs() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetOutputByIndex(
    int Index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
          )>()(
        ptr.ref.lpVtbl,
        Index,
      );

  int PrimaryOutput() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
