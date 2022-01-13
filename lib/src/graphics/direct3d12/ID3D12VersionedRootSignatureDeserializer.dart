// ID3D12VersionedRootSignatureDeserializer.dart

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
const IID_ID3D12VersionedRootSignatureDeserializer =
    '{7F91CE67-090C-4BB7-B78E-ED8FF2E31DA0}';

/// {@category Interface}
/// {@category com}
class ID3D12VersionedRootSignatureDeserializer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID3D12VersionedRootSignatureDeserializer(Pointer<COMObject> ptr) : super(ptr);

  int GetRootSignatureDescAtVersion(
    int convertToVersion,
    Pointer<Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC>> ppDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 convertToVersion,
            Pointer<Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC>> ppDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int convertToVersion,
            Pointer<Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC>> ppDesc,
          )>()(
        ptr.ref.lpVtbl,
        convertToVersion,
        ppDesc,
      );

  Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC>
      GetUnconvertedRootSignatureDesc() => ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC> Function(
                Pointer,
              )>>>()
              .value
              .asFunction<
                  Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC> Function(
                Pointer,
              )>()(
            ptr.ref.lpVtbl,
          );
}
