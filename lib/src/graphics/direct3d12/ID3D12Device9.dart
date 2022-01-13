// ID3D12Device9.dart

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

import '../../graphics/direct3d12/ID3D12Device8.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Device9 = '{4C80E962-F032-4F60-BC9E-EBC2CFA1D83C}';

/// {@category Interface}
/// {@category com}
class ID3D12Device9 extends ID3D12Device8 {
  // vtable begins at 73, is 3 entries long.
  ID3D12Device9(Pointer<COMObject> ptr) : super(ptr);

  int CreateShaderCacheSession(
    Pointer<D3D12_SHADER_CACHE_SESSION_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_SHADER_CACHE_SESSION_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_SHADER_CACHE_SESSION_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvSession,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppvSession,
      );

  int ShaderCacheControl(
    int Kinds,
    int Control,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Kinds,
            Uint32 Control,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Kinds,
            int Control,
          )>()(
        ptr.ref.lpVtbl,
        Kinds,
        Control,
      );

  int CreateCommandQueue1(
    Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc,
    Pointer<GUID> CreatorID,
    Pointer<GUID> riid,
    Pointer<Pointer> ppCommandQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc,
            Pointer<GUID> CreatorID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc,
            Pointer<GUID> CreatorID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandQueue,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        CreatorID,
        riid,
        ppCommandQueue,
      );
}
