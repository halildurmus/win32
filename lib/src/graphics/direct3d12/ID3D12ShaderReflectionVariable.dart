// ID3D12ShaderReflectionVariable.dart

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

import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12ShaderReflectionType.dart';
import '../../graphics/direct3d12/ID3D12ShaderReflectionConstantBuffer.dart';

/// @nodoc
const IID_ID3D12ShaderReflectionVariable =
    '{8337A8A6-A216-444A-B2F4-314733A73AEA}';

/// {@category Interface}
/// {@category com}
class ID3D12ShaderReflectionVariable {
  // vtable begins at 0, is 4 entries long.
  Pointer<COMObject> ptr;

  ID3D12ShaderReflectionVariable(this.ptr);

  int GetDesc(
    Pointer<D3D12_SHADER_VARIABLE_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_SHADER_VARIABLE_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_SHADER_VARIABLE_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  Pointer<COMObject> GetType() => ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> GetBuffer() => ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetInterfaceSlot(
    int uArrayIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 uArrayIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uArrayIndex,
          )>()(
        ptr.ref.lpVtbl,
        uArrayIndex,
      );
}
