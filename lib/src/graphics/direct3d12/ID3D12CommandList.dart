// ID3D12CommandList.dart

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

import '../../graphics/direct3d12/ID3D12DeviceChild.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12CommandList = '{7116D91C-E7E4-47CE-B8C6-EC8168F437E5}';

/// {@category Interface}
/// {@category com}
class ID3D12CommandList extends ID3D12DeviceChild {
  // vtable begins at 8, is 1 entries long.
  ID3D12CommandList(Pointer<COMObject> ptr) : super(ptr);

  int GetType() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
