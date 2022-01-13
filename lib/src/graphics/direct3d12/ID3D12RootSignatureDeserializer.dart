// ID3D12RootSignatureDeserializer.dart

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

/// @nodoc
const IID_ID3D12RootSignatureDeserializer =
    '{34AB647B-3CC8-46AC-841B-C0965645C046}';

/// {@category Interface}
/// {@category com}
class ID3D12RootSignatureDeserializer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ID3D12RootSignatureDeserializer(Pointer<COMObject> ptr) : super(ptr);

  Pointer<D3D12_ROOT_SIGNATURE_DESC> GetRootSignatureDesc() =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<D3D12_ROOT_SIGNATURE_DESC> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<D3D12_ROOT_SIGNATURE_DESC> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
