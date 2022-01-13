// ID3D12ShaderCacheSession.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12ShaderCacheSession = '{28E2495D-0F64-4AE4-A6EC-129255DC49A8}';

/// {@category Interface}
/// {@category com}
class ID3D12ShaderCacheSession extends ID3D12DeviceChild {
  // vtable begins at 8, is 4 entries long.
  ID3D12ShaderCacheSession(Pointer<COMObject> ptr) : super(ptr);

  int FindValue(
    Pointer pKey,
    int KeySize,
    Pointer pValue,
    Pointer<Uint32> pValueSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pKey,
            Uint32 KeySize,
            Pointer pValue,
            Pointer<Uint32> pValueSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pKey,
            int KeySize,
            Pointer pValue,
            Pointer<Uint32> pValueSize,
          )>()(
        ptr.ref.lpVtbl,
        pKey,
        KeySize,
        pValue,
        pValueSize,
      );

  int StoreValue(
    Pointer pKey,
    int KeySize,
    Pointer pValue,
    int ValueSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pKey,
            Uint32 KeySize,
            Pointer pValue,
            Uint32 ValueSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pKey,
            int KeySize,
            Pointer pValue,
            int ValueSize,
          )>()(
        ptr.ref.lpVtbl,
        pKey,
        KeySize,
        pValue,
        ValueSize,
      );

  void SetDeleteOnDestroy() => ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  D3D12_SHADER_CACHE_SESSION_DESC GetDesc() => ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_SHADER_CACHE_SESSION_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_SHADER_CACHE_SESSION_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
