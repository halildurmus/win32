// ID3D12DebugDevice1.dart

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
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12DebugDevice1 = '{A9B71770-D099-4A65-A698-3DEE10020F88}';

/// {@category Interface}
/// {@category com}
class ID3D12DebugDevice1 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3D12DebugDevice1(Pointer<COMObject> ptr) : super(ptr);

  int SetDebugParameter(
    int Type,
    Pointer pData,
    int DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer pData,
            Uint32 DataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer pData,
            int DataSize,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        pData,
        DataSize,
      );

  int GetDebugParameter(
    int Type,
    Pointer pData,
    int DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Pointer pData,
            Uint32 DataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            Pointer pData,
            int DataSize,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        pData,
        DataSize,
      );

  int ReportLiveDeviceObjects(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );
}
