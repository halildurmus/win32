// ID3D12CommandQueue.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Heap.dart';
import '../../graphics/direct3d12/ID3D12CommandList.dart';
import '../../graphics/direct3d12/ID3D12Fence.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12CommandQueue = '{0EC870A6-5D7E-4C22-8CFC-5BAAE07616ED}';

/// {@category Interface}
/// {@category com}
class ID3D12CommandQueue extends ID3D12Pageable {
  // vtable begins at 8, is 11 entries long.
  ID3D12CommandQueue(Pointer<COMObject> ptr) : super(ptr);

  void UpdateTileMappings(
    Pointer<COMObject> pResource,
    int NumResourceRegions,
    Pointer<D3D12_TILED_RESOURCE_COORDINATE> pResourceRegionStartCoordinates,
    Pointer<D3D12_TILE_REGION_SIZE> pResourceRegionSizes,
    Pointer<COMObject> pHeap,
    int NumRanges,
    Pointer<Int32> pRangeFlags,
    Pointer<Uint32> pHeapRangeStartOffsets,
    Pointer<Uint32> pRangeTileCounts,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Uint32 NumResourceRegions,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE>
                pResourceRegionStartCoordinates,
            Pointer<D3D12_TILE_REGION_SIZE> pResourceRegionSizes,
            Pointer<COMObject> pHeap,
            Uint32 NumRanges,
            Pointer<Int32> pRangeFlags,
            Pointer<Uint32> pHeapRangeStartOffsets,
            Pointer<Uint32> pRangeTileCounts,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            int NumResourceRegions,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE>
                pResourceRegionStartCoordinates,
            Pointer<D3D12_TILE_REGION_SIZE> pResourceRegionSizes,
            Pointer<COMObject> pHeap,
            int NumRanges,
            Pointer<Int32> pRangeFlags,
            Pointer<Uint32> pHeapRangeStartOffsets,
            Pointer<Uint32> pRangeTileCounts,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        NumResourceRegions,
        pResourceRegionStartCoordinates,
        pResourceRegionSizes,
        pHeap,
        NumRanges,
        pRangeFlags,
        pHeapRangeStartOffsets,
        pRangeTileCounts,
        Flags,
      );

  void CopyTileMappings(
    Pointer<COMObject> pDstResource,
    Pointer<D3D12_TILED_RESOURCE_COORDINATE> pDstRegionStartCoordinate,
    Pointer<COMObject> pSrcResource,
    Pointer<D3D12_TILED_RESOURCE_COORDINATE> pSrcRegionStartCoordinate,
    Pointer<D3D12_TILE_REGION_SIZE> pRegionSize,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE> pDstRegionStartCoordinate,
            Pointer<COMObject> pSrcResource,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE> pSrcRegionStartCoordinate,
            Pointer<D3D12_TILE_REGION_SIZE> pRegionSize,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDstResource,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE> pDstRegionStartCoordinate,
            Pointer<COMObject> pSrcResource,
            Pointer<D3D12_TILED_RESOURCE_COORDINATE> pSrcRegionStartCoordinate,
            Pointer<D3D12_TILE_REGION_SIZE> pRegionSize,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        pDstResource,
        pDstRegionStartCoordinate,
        pSrcResource,
        pSrcRegionStartCoordinate,
        pRegionSize,
        Flags,
      );

  void ExecuteCommandLists(
    int NumCommandLists,
    Pointer<Pointer<COMObject>> ppCommandLists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumCommandLists,
            Pointer<Pointer<COMObject>> ppCommandLists,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumCommandLists,
            Pointer<Pointer<COMObject>> ppCommandLists,
          )>()(
        ptr.ref.lpVtbl,
        NumCommandLists,
        ppCommandLists,
      );

  void SetMarker(
    int Metadata,
    Pointer pData,
    int Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Metadata,
            Pointer pData,
            Uint32 Size,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Metadata,
            Pointer pData,
            int Size,
          )>()(
        ptr.ref.lpVtbl,
        Metadata,
        pData,
        Size,
      );

  void BeginEvent(
    int Metadata,
    Pointer pData,
    int Size,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 Metadata,
            Pointer pData,
            Uint32 Size,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Metadata,
            Pointer pData,
            int Size,
          )>()(
        ptr.ref.lpVtbl,
        Metadata,
        pData,
        Size,
      );

  void EndEvent() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int Signal(
    Pointer<COMObject> pFence,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFence,
            Uint64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFence,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        pFence,
        Value,
      );

  int Wait(
    Pointer<COMObject> pFence,
    int Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFence,
            Uint64 Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFence,
            int Value,
          )>()(
        ptr.ref.lpVtbl,
        pFence,
        Value,
      );

  int GetTimestampFrequency(
    Pointer<Uint64> pFrequency,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pFrequency,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pFrequency,
          )>()(
        ptr.ref.lpVtbl,
        pFrequency,
      );

  int GetClockCalibration(
    Pointer<Uint64> pGpuTimestamp,
    Pointer<Uint64> pCpuTimestamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pGpuTimestamp,
            Pointer<Uint64> pCpuTimestamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pGpuTimestamp,
            Pointer<Uint64> pCpuTimestamp,
          )>()(
        ptr.ref.lpVtbl,
        pGpuTimestamp,
        pCpuTimestamp,
      );

  D3D12_COMMAND_QUEUE_DESC GetDesc() => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_COMMAND_QUEUE_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_COMMAND_QUEUE_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
