// ID3D12Resource2.dart

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

import '../../graphics/direct3d12/ID3D12Resource1.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12Resource2 = '{BE36EC3B-EA85-4AEB-A45A-E9D76404A495}';

/// {@category Interface}
/// {@category com}
class ID3D12Resource2 extends ID3D12Resource1 {
  // vtable begins at 16, is 1 entries long.
  ID3D12Resource2(Pointer<COMObject> ptr) : super(ptr);

  D3D12_RESOURCE_DESC1 GetDesc1() => ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_RESOURCE_DESC1 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_RESOURCE_DESC1 Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
