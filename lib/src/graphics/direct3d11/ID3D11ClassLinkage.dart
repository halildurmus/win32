// ID3D11ClassLinkage.dart

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

import '../../graphics/direct3d11/ID3D11DeviceChild.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11ClassInstance.dart';

/// @nodoc
const IID_ID3D11ClassLinkage = '{DDF57CBA-9543-46E4-A12B-F207A0FE7FED}';

/// {@category Interface}
/// {@category com}
class ID3D11ClassLinkage extends ID3D11DeviceChild {
  // vtable begins at 7, is 2 entries long.
  ID3D11ClassLinkage(Pointer<COMObject> ptr) : super(ptr);

  int GetClassInstance(
    Pointer<Utf8> pClassInstanceName,
    int InstanceIndex,
    Pointer<Pointer<COMObject>> ppInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pClassInstanceName,
            Uint32 InstanceIndex,
            Pointer<Pointer<COMObject>> ppInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pClassInstanceName,
            int InstanceIndex,
            Pointer<Pointer<COMObject>> ppInstance,
          )>()(
        ptr.ref.lpVtbl,
        pClassInstanceName,
        InstanceIndex,
        ppInstance,
      );

  int CreateClassInstance(
    Pointer<Utf8> pClassTypeName,
    int ConstantBufferOffset,
    int ConstantVectorOffset,
    int TextureOffset,
    int SamplerOffset,
    Pointer<Pointer<COMObject>> ppInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pClassTypeName,
            Uint32 ConstantBufferOffset,
            Uint32 ConstantVectorOffset,
            Uint32 TextureOffset,
            Uint32 SamplerOffset,
            Pointer<Pointer<COMObject>> ppInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pClassTypeName,
            int ConstantBufferOffset,
            int ConstantVectorOffset,
            int TextureOffset,
            int SamplerOffset,
            Pointer<Pointer<COMObject>> ppInstance,
          )>()(
        ptr.ref.lpVtbl,
        pClassTypeName,
        ConstantBufferOffset,
        ConstantVectorOffset,
        TextureOffset,
        SamplerOffset,
        ppInstance,
      );
}
