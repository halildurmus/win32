// ID3D12DebugCommandList1.dart

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
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12DebugCommandList1 = '{102CA951-311B-4B01-B11F-ECB83E061B37}';

/// {@category Interface}
/// {@category com}
class ID3D12DebugCommandList1 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3D12DebugCommandList1(Pointer<COMObject> ptr) : super(ptr);

  int AssertResourceState(
    Pointer<COMObject> pResource,
    int Subresource,
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResource,
            Uint32 Subresource,
            Uint32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResource,
            int Subresource,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        Subresource,
        State,
      );

  int SetDebugParameter(
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

  int GetDebugParameter(
    int Type,
    Pointer pData,
    int DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
