// ID3D12DebugDevice2.dart

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

import '../../graphics/direct3d12/ID3D12DebugDevice.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12DebugDevice2 = '{60ECCBC1-378D-4DF1-894C-F8AC5CE4D7DD}';

/// {@category Interface}
/// {@category com}
class ID3D12DebugDevice2 extends ID3D12DebugDevice {
  // vtable begins at 6, is 2 entries long.
  ID3D12DebugDevice2(Pointer<COMObject> ptr) : super(ptr);

  int SetDebugParameter(
    int Type,
    Pointer pData,
    int DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
          .elementAt(7)
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
}
