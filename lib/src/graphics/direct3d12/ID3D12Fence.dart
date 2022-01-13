// ID3D12Fence.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Fence = '{0A753DCF-C4D8-4B91-ADF6-BE5A60D95A76}';

/// {@category Interface}
/// {@category com}
class ID3D12Fence extends ID3D12Pageable {
  // vtable begins at 8, is 3 entries long.
  ID3D12Fence(Pointer<COMObject> ptr) : super(ptr);

  int GetCompletedValue() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SetEventOnCompletion(
    int Value,
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Value,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        Value,
        hEvent,
      );

  int Signal(
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );
}
