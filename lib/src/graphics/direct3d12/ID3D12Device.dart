// ID3D12Device.dart

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

import '../../graphics/direct3d12/ID3D12Object.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12CommandAllocator.dart';
import '../../graphics/direct3d12/ID3D12PipelineState.dart';
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../graphics/direct3d12/ID3D12Heap.dart';
import '../../graphics/direct3d12/ID3D12DeviceChild.dart';
import '../../security/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../graphics/direct3d12/ID3D12RootSignature.dart';

/// @nodoc
const IID_ID3D12Device = '{189819F1-1DB6-4B57-BE54-1821339B85F7}';

/// {@category Interface}
/// {@category com}
class ID3D12Device extends ID3D12Object {
  // vtable begins at 7, is 37 entries long.
  ID3D12Device(Pointer<COMObject> ptr) : super(ptr);

  int GetNodeCount() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CreateCommandQueue(
    Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppCommandQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_COMMAND_QUEUE_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandQueue,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppCommandQueue,
      );

  int CreateCommandAllocator(
    int type,
    Pointer<GUID> riid,
    Pointer<Pointer> ppCommandAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandAllocator,
          )>()(
        ptr.ref.lpVtbl,
        type,
        riid,
        ppCommandAllocator,
      );

  int CreateGraphicsPipelineState(
    Pointer<D3D12_GRAPHICS_PIPELINE_STATE_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppPipelineState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_GRAPHICS_PIPELINE_STATE_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_GRAPHICS_PIPELINE_STATE_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineState,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppPipelineState,
      );

  int CreateComputePipelineState(
    Pointer<D3D12_COMPUTE_PIPELINE_STATE_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppPipelineState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_COMPUTE_PIPELINE_STATE_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_COMPUTE_PIPELINE_STATE_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppPipelineState,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppPipelineState,
      );

  int CreateCommandList(
    int nodeMask,
    int type,
    Pointer<COMObject> pCommandAllocator,
    Pointer<COMObject> pInitialState,
    Pointer<GUID> riid,
    Pointer<Pointer> ppCommandList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nodeMask,
            Int32 type,
            Pointer<COMObject> pCommandAllocator,
            Pointer<COMObject> pInitialState,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nodeMask,
            int type,
            Pointer<COMObject> pCommandAllocator,
            Pointer<COMObject> pInitialState,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandList,
          )>()(
        ptr.ref.lpVtbl,
        nodeMask,
        type,
        pCommandAllocator,
        pInitialState,
        riid,
        ppCommandList,
      );

  int CheckFeatureSupport(
    int Feature,
    Pointer pFeatureSupportData,
    int FeatureSupportDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Feature,
            Pointer pFeatureSupportData,
            Uint32 FeatureSupportDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Feature,
            Pointer pFeatureSupportData,
            int FeatureSupportDataSize,
          )>()(
        ptr.ref.lpVtbl,
        Feature,
        pFeatureSupportData,
        FeatureSupportDataSize,
      );

  int CreateDescriptorHeap(
    Pointer<D3D12_DESCRIPTOR_HEAP_DESC> pDescriptorHeapDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_DESCRIPTOR_HEAP_DESC> pDescriptorHeapDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_DESCRIPTOR_HEAP_DESC> pDescriptorHeapDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>()(
        ptr.ref.lpVtbl,
        pDescriptorHeapDesc,
        riid,
        ppvHeap,
      );

  int GetDescriptorHandleIncrementSize(
    int DescriptorHeapType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Int32 DescriptorHeapType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DescriptorHeapType,
          )>()(
        ptr.ref.lpVtbl,
        DescriptorHeapType,
      );

  int CreateRootSignature(
    int nodeMask,
    Pointer pBlobWithRootSignature,
    int blobLengthInBytes,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvRootSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nodeMask,
            Pointer pBlobWithRootSignature,
            IntPtr blobLengthInBytes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvRootSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nodeMask,
            Pointer pBlobWithRootSignature,
            int blobLengthInBytes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvRootSignature,
          )>()(
        ptr.ref.lpVtbl,
        nodeMask,
        pBlobWithRootSignature,
        blobLengthInBytes,
        riid,
        ppvRootSignature,
      );

  void CreateConstantBufferView(
    Pointer<D3D12_CONSTANT_BUFFER_VIEW_DESC> pDesc,
    D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_CONSTANT_BUFFER_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_CONSTANT_BUFFER_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        DestDescriptor,
      );

  void CreateShaderResourceView(
    Pointer<COMObject> pResource,
    Pointer<D3D12_SHADER_RESOURCE_VIEW_DESC> pDesc,
    D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_SHADER_RESOURCE_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_SHADER_RESOURCE_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        DestDescriptor,
      );

  void CreateUnorderedAccessView(
    Pointer<COMObject> pResource,
    Pointer<COMObject> pCounterResource,
    Pointer<D3D12_UNORDERED_ACCESS_VIEW_DESC> pDesc,
    D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pCounterResource,
            Pointer<D3D12_UNORDERED_ACCESS_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<COMObject> pCounterResource,
            Pointer<D3D12_UNORDERED_ACCESS_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pCounterResource,
        pDesc,
        DestDescriptor,
      );

  void CreateRenderTargetView(
    Pointer<COMObject> pResource,
    Pointer<D3D12_RENDER_TARGET_VIEW_DESC> pDesc,
    D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_RENDER_TARGET_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_RENDER_TARGET_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        DestDescriptor,
      );

  void CreateDepthStencilView(
    Pointer<COMObject> pResource,
    Pointer<D3D12_DEPTH_STENCIL_VIEW_DESC> pDesc,
    D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_DEPTH_STENCIL_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pResource,
            Pointer<D3D12_DEPTH_STENCIL_VIEW_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pResource,
        pDesc,
        DestDescriptor,
      );

  void CreateSampler(
    Pointer<D3D12_SAMPLER_DESC> pDesc,
    D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_SAMPLER_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_SAMPLER_DESC> pDesc,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        DestDescriptor,
      );

  void CopyDescriptors(
    int NumDestDescriptorRanges,
    Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pDestDescriptorRangeStarts,
    Pointer<Uint32> pDestDescriptorRangeSizes,
    int NumSrcDescriptorRanges,
    Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pSrcDescriptorRangeStarts,
    Pointer<Uint32> pSrcDescriptorRangeSizes,
    int DescriptorHeapsType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumDestDescriptorRanges,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pDestDescriptorRangeStarts,
            Pointer<Uint32> pDestDescriptorRangeSizes,
            Uint32 NumSrcDescriptorRanges,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pSrcDescriptorRangeStarts,
            Pointer<Uint32> pSrcDescriptorRangeSizes,
            Int32 DescriptorHeapsType,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumDestDescriptorRanges,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pDestDescriptorRangeStarts,
            Pointer<Uint32> pDestDescriptorRangeSizes,
            int NumSrcDescriptorRanges,
            Pointer<D3D12_CPU_DESCRIPTOR_HANDLE> pSrcDescriptorRangeStarts,
            Pointer<Uint32> pSrcDescriptorRangeSizes,
            int DescriptorHeapsType,
          )>()(
        ptr.ref.lpVtbl,
        NumDestDescriptorRanges,
        pDestDescriptorRangeStarts,
        pDestDescriptorRangeSizes,
        NumSrcDescriptorRanges,
        pSrcDescriptorRangeStarts,
        pSrcDescriptorRangeSizes,
        DescriptorHeapsType,
      );

  void CopyDescriptorsSimple(
    int NumDescriptors,
    D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptorRangeStart,
    D3D12_CPU_DESCRIPTOR_HANDLE SrcDescriptorRangeStart,
    int DescriptorHeapsType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumDescriptors,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptorRangeStart,
            D3D12_CPU_DESCRIPTOR_HANDLE SrcDescriptorRangeStart,
            Int32 DescriptorHeapsType,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumDescriptors,
            D3D12_CPU_DESCRIPTOR_HANDLE DestDescriptorRangeStart,
            D3D12_CPU_DESCRIPTOR_HANDLE SrcDescriptorRangeStart,
            int DescriptorHeapsType,
          )>()(
        ptr.ref.lpVtbl,
        NumDescriptors,
        DestDescriptorRangeStart,
        SrcDescriptorRangeStart,
        DescriptorHeapsType,
      );

  D3D12_RESOURCE_ALLOCATION_INFO GetResourceAllocationInfo(
    int visibleMask,
    int numResourceDescs,
    Pointer<D3D12_RESOURCE_DESC> pResourceDescs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_RESOURCE_ALLOCATION_INFO Function(
            Pointer,
            Uint32 visibleMask,
            Uint32 numResourceDescs,
            Pointer<D3D12_RESOURCE_DESC> pResourceDescs,
          )>>>()
          .value
          .asFunction<
              D3D12_RESOURCE_ALLOCATION_INFO Function(
            Pointer,
            int visibleMask,
            int numResourceDescs,
            Pointer<D3D12_RESOURCE_DESC> pResourceDescs,
          )>()(
        ptr.ref.lpVtbl,
        visibleMask,
        numResourceDescs,
        pResourceDescs,
      );

  D3D12_HEAP_PROPERTIES GetCustomHeapProperties(
    int nodeMask,
    int heapType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_HEAP_PROPERTIES Function(
            Pointer,
            Uint32 nodeMask,
            Int32 heapType,
          )>>>()
          .value
          .asFunction<
              D3D12_HEAP_PROPERTIES Function(
            Pointer,
            int nodeMask,
            int heapType,
          )>()(
        ptr.ref.lpVtbl,
        nodeMask,
        heapType,
      );

  int CreateCommittedResource(
    Pointer<D3D12_HEAP_PROPERTIES> pHeapProperties,
    int HeapFlags,
    Pointer<D3D12_RESOURCE_DESC> pDesc,
    int InitialResourceState,
    Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
    Pointer<GUID> riidResource,
    Pointer<Pointer> ppvResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_HEAP_PROPERTIES> pHeapProperties,
            Uint32 HeapFlags,
            Pointer<D3D12_RESOURCE_DESC> pDesc,
            Uint32 InitialResourceState,
            Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
            Pointer<GUID> riidResource,
            Pointer<Pointer> ppvResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_HEAP_PROPERTIES> pHeapProperties,
            int HeapFlags,
            Pointer<D3D12_RESOURCE_DESC> pDesc,
            int InitialResourceState,
            Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
            Pointer<GUID> riidResource,
            Pointer<Pointer> ppvResource,
          )>()(
        ptr.ref.lpVtbl,
        pHeapProperties,
        HeapFlags,
        pDesc,
        InitialResourceState,
        pOptimizedClearValue,
        riidResource,
        ppvResource,
      );

  int CreateHeap(
    Pointer<D3D12_HEAP_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_HEAP_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_HEAP_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppvHeap,
      );

  int CreatePlacedResource(
    Pointer<COMObject> pHeap,
    int HeapOffset,
    Pointer<D3D12_RESOURCE_DESC> pDesc,
    int InitialState,
    Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pHeap,
            Uint64 HeapOffset,
            Pointer<D3D12_RESOURCE_DESC> pDesc,
            Uint32 InitialState,
            Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pHeap,
            int HeapOffset,
            Pointer<D3D12_RESOURCE_DESC> pDesc,
            int InitialState,
            Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource,
          )>()(
        ptr.ref.lpVtbl,
        pHeap,
        HeapOffset,
        pDesc,
        InitialState,
        pOptimizedClearValue,
        riid,
        ppvResource,
      );

  int CreateReservedResource(
    Pointer<D3D12_RESOURCE_DESC> pDesc,
    int InitialState,
    Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_RESOURCE_DESC> pDesc,
            Uint32 InitialState,
            Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_RESOURCE_DESC> pDesc,
            int InitialState,
            Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        InitialState,
        pOptimizedClearValue,
        riid,
        ppvResource,
      );

  int CreateSharedHandle(
    Pointer<COMObject> pObject,
    Pointer<SECURITY_ATTRIBUTES> pAttributes,
    int Access,
    Pointer<Utf16> Name,
    Pointer<IntPtr> pHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<SECURITY_ATTRIBUTES> pAttributes,
            Uint32 Access,
            Pointer<Utf16> Name,
            Pointer<IntPtr> pHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<SECURITY_ATTRIBUTES> pAttributes,
            int Access,
            Pointer<Utf16> Name,
            Pointer<IntPtr> pHandle,
          )>()(
        ptr.ref.lpVtbl,
        pObject,
        pAttributes,
        Access,
        Name,
        pHandle,
      );

  int OpenSharedHandle(
    int NTHandle,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr NTHandle,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NTHandle,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>()(
        ptr.ref.lpVtbl,
        NTHandle,
        riid,
        ppvObj,
      );

  int OpenSharedHandleByName(
    Pointer<Utf16> Name,
    int Access,
    Pointer<IntPtr> pNTHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Uint32 Access,
            Pointer<IntPtr> pNTHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            int Access,
            Pointer<IntPtr> pNTHandle,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Access,
        pNTHandle,
      );

  int MakeResident(
    int NumObjects,
    Pointer<Pointer<COMObject>> ppObjects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
          )>()(
        ptr.ref.lpVtbl,
        NumObjects,
        ppObjects,
      );

  int Evict(
    int NumObjects,
    Pointer<Pointer<COMObject>> ppObjects,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NumObjects,
            Pointer<Pointer<COMObject>> ppObjects,
          )>()(
        ptr.ref.lpVtbl,
        NumObjects,
        ppObjects,
      );

  int CreateFence(
    int InitialValue,
    int Flags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppFence,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 InitialValue,
            Uint32 Flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppFence,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InitialValue,
            int Flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppFence,
          )>()(
        ptr.ref.lpVtbl,
        InitialValue,
        Flags,
        riid,
        ppFence,
      );

  int GetDeviceRemovedReason() => ptr.ref.lpVtbl.value
          .elementAt(37)
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

  void GetCopyableFootprints(
    Pointer<D3D12_RESOURCE_DESC> pResourceDesc,
    int FirstSubresource,
    int NumSubresources,
    int BaseOffset,
    Pointer<D3D12_PLACED_SUBRESOURCE_FOOTPRINT> pLayouts,
    Pointer<Uint32> pNumRows,
    Pointer<Uint64> pRowSizeInBytes,
    Pointer<Uint64> pTotalBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_RESOURCE_DESC> pResourceDesc,
            Uint32 FirstSubresource,
            Uint32 NumSubresources,
            Uint64 BaseOffset,
            Pointer<D3D12_PLACED_SUBRESOURCE_FOOTPRINT> pLayouts,
            Pointer<Uint32> pNumRows,
            Pointer<Uint64> pRowSizeInBytes,
            Pointer<Uint64> pTotalBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_RESOURCE_DESC> pResourceDesc,
            int FirstSubresource,
            int NumSubresources,
            int BaseOffset,
            Pointer<D3D12_PLACED_SUBRESOURCE_FOOTPRINT> pLayouts,
            Pointer<Uint32> pNumRows,
            Pointer<Uint64> pRowSizeInBytes,
            Pointer<Uint64> pTotalBytes,
          )>()(
        ptr.ref.lpVtbl,
        pResourceDesc,
        FirstSubresource,
        NumSubresources,
        BaseOffset,
        pLayouts,
        pNumRows,
        pRowSizeInBytes,
        pTotalBytes,
      );

  int CreateQueryHeap(
    Pointer<D3D12_QUERY_HEAP_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_QUERY_HEAP_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_QUERY_HEAP_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppvHeap,
      );

  int SetStablePowerState(
    int Enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Enable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Enable,
          )>()(
        ptr.ref.lpVtbl,
        Enable,
      );

  int CreateCommandSignature(
    Pointer<D3D12_COMMAND_SIGNATURE_DESC> pDesc,
    Pointer<COMObject> pRootSignature,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvCommandSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_COMMAND_SIGNATURE_DESC> pDesc,
            Pointer<COMObject> pRootSignature,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvCommandSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_COMMAND_SIGNATURE_DESC> pDesc,
            Pointer<COMObject> pRootSignature,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvCommandSignature,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pRootSignature,
        riid,
        ppvCommandSignature,
      );

  void GetResourceTiling(
    Pointer<COMObject> pTiledResource,
    Pointer<Uint32> pNumTilesForEntireResource,
    Pointer<D3D12_PACKED_MIP_INFO> pPackedMipDesc,
    Pointer<D3D12_TILE_SHAPE> pStandardTileShapeForNonPackedMips,
    Pointer<Uint32> pNumSubresourceTilings,
    int FirstSubresourceTilingToGet,
    Pointer<D3D12_SUBRESOURCE_TILING> pSubresourceTilingsForNonPackedMips,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<Uint32> pNumTilesForEntireResource,
            Pointer<D3D12_PACKED_MIP_INFO> pPackedMipDesc,
            Pointer<D3D12_TILE_SHAPE> pStandardTileShapeForNonPackedMips,
            Pointer<Uint32> pNumSubresourceTilings,
            Uint32 FirstSubresourceTilingToGet,
            Pointer<D3D12_SUBRESOURCE_TILING>
                pSubresourceTilingsForNonPackedMips,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pTiledResource,
            Pointer<Uint32> pNumTilesForEntireResource,
            Pointer<D3D12_PACKED_MIP_INFO> pPackedMipDesc,
            Pointer<D3D12_TILE_SHAPE> pStandardTileShapeForNonPackedMips,
            Pointer<Uint32> pNumSubresourceTilings,
            int FirstSubresourceTilingToGet,
            Pointer<D3D12_SUBRESOURCE_TILING>
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

  LUID GetAdapterLuid() => ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      LUID Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              LUID Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
