// ID3D11Device2.dart

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

import '../../graphics/direct3d11/ID3D11Device1.dart';
import '../../graphics/direct3d11/ID3D11DeviceContext2.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';

/// @nodoc
const IID_ID3D11Device2 = '{9D06DFFA-D1E5-4D07-83A8-1BB123F2F841}';

/// {@category Interface}
/// {@category com}
class ID3D11Device2 extends ID3D11Device1 {
  // vtable begins at 50, is 4 entries long.
  ID3D11Device2(Pointer<COMObject> ptr) : super(ptr);

  void GetImmediateContext2(
    Pointer<Pointer<COMObject>> ppImmediateContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppImmediateContext,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppImmediateContext,
          )>()(
        ptr.ref.lpVtbl,
        ppImmediateContext,
      );

  int CreateDeferredContext2(
    int ContextFlags,
    Pointer<Pointer<COMObject>> ppDeferredContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ContextFlags,
            Pointer<Pointer<COMObject>> ppDeferredContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ContextFlags,
            Pointer<Pointer<COMObject>> ppDeferredContext,
          )>()(
        ptr.ref.lpVtbl,
        ContextFlags,
        ppDeferredContext,
      );

  void GetResourceTiling(
    Pointer<COMObject> pTiledResource,
    Pointer<Uint32> pNumTilesForEntireResource,
    Pointer<D3D11_PACKED_MIP_DESC> pPackedMipDesc,
    Pointer<D3D11_TILE_SHAPE> pStandardTileShapeForNonPackedMips,
    Pointer<Uint32> pNumSubresourceTilings,
    int FirstSubresourceTilingToGet,
    Pointer<D3D11_SUBRESOURCE_TILING> pSubresourceTilingsForNonPackedMips,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<Uint32> pNumTilesForEntireResource,
            Pointer<D3D11_PACKED_MIP_DESC> pPackedMipDesc,
            Pointer<D3D11_TILE_SHAPE> pStandardTileShapeForNonPackedMips,
            Pointer<Uint32> pNumSubresourceTilings,
            Uint32 FirstSubresourceTilingToGet,
            Pointer<D3D11_SUBRESOURCE_TILING>
                pSubresourceTilingsForNonPackedMips,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<Uint32> pNumTilesForEntireResource,
            Pointer<D3D11_PACKED_MIP_DESC> pPackedMipDesc,
            Pointer<D3D11_TILE_SHAPE> pStandardTileShapeForNonPackedMips,
            Pointer<Uint32> pNumSubresourceTilings,
            int FirstSubresourceTilingToGet,
            Pointer<D3D11_SUBRESOURCE_TILING>
                pSubresourceTilingsForNonPackedMips,
          )>()(
        ptr.ref.lpVtbl,
        pTiledResource,
        pNumTilesForEntireResource,
        pPackedMipDesc,
        pStandardTileShapeForNonPackedMips,
        pNumSubresourceTilings,
        FirstSubresourceTilingToGet,
        pSubresourceTilingsForNonPackedMips,
      );

  int CheckMultisampleQualityLevels1(
    int Format,
    int SampleCount,
    int Flags,
    Pointer<Uint32> pNumQualityLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Format,
            Uint32 SampleCount,
            Uint32 Flags,
            Pointer<Uint32> pNumQualityLevels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Format,
            int SampleCount,
            int Flags,
            Pointer<Uint32> pNumQualityLevels,
          )>()(
        ptr.ref.lpVtbl,
        Format,
        SampleCount,
        Flags,
        pNumQualityLevels,
      );
}
