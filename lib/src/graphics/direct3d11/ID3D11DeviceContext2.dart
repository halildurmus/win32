// ID3D11DeviceContext2.dart

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

import '../../graphics/direct3d11/ID3D11DeviceContext1.dart';
import '../../graphics/direct3d11/ID3D11Resource.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../graphics/direct3d11/ID3D11Buffer.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11DeviceChild.dart';

/// @nodoc
const IID_ID3D11DeviceContext2 = '{420D5B32-B90C-4DA4-BEF0-359F6A24A83A}';

/// {@category Interface}
/// {@category com}
class ID3D11DeviceContext2 extends ID3D11DeviceContext1 {
  // vtable begins at 134, is 10 entries long.
  ID3D11DeviceContext2(Pointer<COMObject> ptr) : super(ptr);

  int UpdateTileMappings(
    Pointer<COMObject> pTiledResource,
    int NumTiledResourceRegions,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE>
        pTiledResourceRegionStartCoordinates,
    Pointer<D3D11_TILE_REGION_SIZE> pTiledResourceRegionSizes,
    Pointer<COMObject> pTilePool,
    int NumRanges,
    Pointer<Uint32> pRangeFlags,
    Pointer<Uint32> pTilePoolStartOffsets,
    Pointer<Uint32> pRangeTileCounts,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(134)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Uint32 NumTiledResourceRegions,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE>
                pTiledResourceRegionStartCoordinates,
            Pointer<D3D11_TILE_REGION_SIZE> pTiledResourceRegionSizes,
            Pointer<COMObject> pTilePool,
            Uint32 NumRanges,
            Pointer<Uint32> pRangeFlags,
            Pointer<Uint32> pTilePoolStartOffsets,
            Pointer<Uint32> pRangeTileCounts,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            int NumTiledResourceRegions,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE>
                pTiledResourceRegionStartCoordinates,
            Pointer<D3D11_TILE_REGION_SIZE> pTiledResourceRegionSizes,
            Pointer<COMObject> pTilePool,
            int NumRanges,
            Pointer<Uint32> pRangeFlags,
            Pointer<Uint32> pTilePoolStartOffsets,
            Pointer<Uint32> pRangeTileCounts,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pTiledResource,
        NumTiledResourceRegions,
        pTiledResourceRegionStartCoordinates,
        pTiledResourceRegionSizes,
        pTilePool,
        NumRanges,
        pRangeFlags,
        pTilePoolStartOffsets,
        pRangeTileCounts,
        Flags,
      );

  int CopyTileMappings(
    Pointer<COMObject> pDestTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestRegionStartCoordinate,
    Pointer<COMObject> pSourceTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pSourceRegionStartCoordinate,
    Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(135)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestRegionStartCoordinate,
            Pointer<COMObject> pSourceTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE>
                pSourceRegionStartCoordinate,
            Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestRegionStartCoordinate,
            Pointer<COMObject> pSourceTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE>
                pSourceRegionStartCoordinate,
            Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pDestTiledResource,
        pDestRegionStartCoordinate,
        pSourceTiledResource,
        pSourceRegionStartCoordinate,
        pTileRegionSize,
        Flags,
      );

  void CopyTiles(
    Pointer<COMObject> pTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
    Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
    Pointer<COMObject> pBuffer,
    int BufferStartOffsetInBytes,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(136)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
            Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
            Pointer<COMObject> pBuffer,
            Uint64 BufferStartOffsetInBytes,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE> pTileRegionStartCoordinate,
            Pointer<D3D11_TILE_REGION_SIZE> pTileRegionSize,
            Pointer<COMObject> pBuffer,
            int BufferStartOffsetInBytes,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pTiledResource,
        pTileRegionStartCoordinate,
        pTileRegionSize,
        pBuffer,
        BufferStartOffsetInBytes,
        Flags,
      );

  void UpdateTiles(
    Pointer<COMObject> pDestTiledResource,
    Pointer<D3D11_TILED_RESOURCE_COORDINATE> pDestTileRegionStartCoordinate,
    Pointer<D3D11_TILE_REGION_SIZE> pDestTileRegionSize,
    Pointer pSourceTileData,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(137)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDestTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE>
                pDestTileRegionStartCoordinate,
            Pointer<D3D11_TILE_REGION_SIZE> pDestTileRegionSize,
            Pointer pSourceTileData,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDestTiledResource,
            Pointer<D3D11_TILED_RESOURCE_COORDINATE>
                pDestTileRegionStartCoordinate,
            Pointer<D3D11_TILE_REGION_SIZE> pDestTileRegionSize,
            Pointer pSourceTileData,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pDestTiledResource,
        pDestTileRegionStartCoordinate,
        pDestTileRegionSize,
        pSourceTileData,
        Flags,
      );

  int ResizeTilePool(
    Pointer<COMObject> pTilePool,
    int NewSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(138)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTilePool,
            Uint64 NewSizeInBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTilePool,
            int NewSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        pTilePool,
        NewSizeInBytes,
      );

  void TiledResourceBarrier(
    Pointer<COMObject> pTiledResourceOrViewAccessBeforeBarrier,
    Pointer<COMObject> pTiledResourceOrViewAccessAfterBarrier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(139)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pTiledResourceOrViewAccessBeforeBarrier,
            Pointer<COMObject> pTiledResourceOrViewAccessAfterBarrier,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pTiledResourceOrViewAccessBeforeBarrier,
            Pointer<COMObject> pTiledResourceOrViewAccessAfterBarrier,
          )>()(
        ptr.ref.lpVtbl,
        pTiledResourceOrViewAccessBeforeBarrier,
        pTiledResourceOrViewAccessAfterBarrier,
      );

  int IsAnnotationEnabled() => ptr.ref.lpVtbl.value
          .elementAt(140)
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

  void SetMarkerInt(
    Pointer<Utf16> pLabel,
    int Data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(141)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> pLabel,
            Int32 Data,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> pLabel,
            int Data,
          )>()(
        ptr.ref.lpVtbl,
        pLabel,
        Data,
      );

  void BeginEventInt(
    Pointer<Utf16> pLabel,
    int Data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(142)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> pLabel,
            Int32 Data,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> pLabel,
            int Data,
          )>()(
        ptr.ref.lpVtbl,
        pLabel,
        Data,
      );

  void EndEvent() => ptr.ref.lpVtbl.value
          .elementAt(143)
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
}
