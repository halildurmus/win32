// IDxcExtraOutputs.dart

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
import '../../../graphics/direct3d/dxc/IDxcBlobUtf16.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDxcExtraOutputs = '{319B37A2-A5C2-494A-A5DE-4801B2FAF989}';

/// {@category Interface}
/// {@category com}
class IDxcExtraOutputs extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDxcExtraOutputs(Pointer<COMObject> ptr) : super(ptr);

  int GetOutputCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetOutput(
    int uIndex,
    Pointer<GUID> iid,
    Pointer<Pointer> ppvObject,
    Pointer<Pointer<COMObject>> ppOutputType,
    Pointer<Pointer<COMObject>> ppOutputName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uIndex,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
            Pointer<Pointer<COMObject>> ppOutputType,
            Pointer<Pointer<COMObject>> ppOutputName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uIndex,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
            Pointer<Pointer<COMObject>> ppOutputType,
            Pointer<Pointer<COMObject>> ppOutputName,
          )>()(
        ptr.ref.lpVtbl,
        uIndex,
        iid,
        ppvObject,
        ppOutputType,
        ppOutputName,
      );
}
