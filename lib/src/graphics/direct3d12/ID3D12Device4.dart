// ID3D12Device4.dart

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

import '../../graphics/direct3d12/ID3D12Device3.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/ID3D12ProtectedResourceSession.dart';

/// @nodoc
const IID_ID3D12Device4 = '{E865DF17-A9EE-46F9-A463-3098315AA2E5}';

/// {@category Interface}
/// {@category com}
class ID3D12Device4 extends ID3D12Device3 {
  // vtable begins at 51, is 6 entries long.
  ID3D12Device4(Pointer<COMObject> ptr) : super(ptr);

  int CreateCommandList1(
    int nodeMask,
    int type,
    int flags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppCommandList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nodeMask,
            Int32 type,
            Uint32 flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nodeMask,
            int type,
            int flags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppCommandList,
          )>()(
        ptr.ref.lpVtbl,
        nodeMask,
        type,
        flags,
        riid,
        ppCommandList,
      );

  int CreateProtectedResourceSession(
    Pointer<D3D12_PROTECTED_RESOURCE_SESSION_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_PROTECTED_RESOURCE_SESSION_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_PROTECTED_RESOURCE_SESSION_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppSession,
      );

  int CreateCommittedResource1(
    Pointer<D3D12_HEAP_PROPERTIES> pHeapProperties,
    int HeapFlags,
    Pointer<D3D12_RESOURCE_DESC> pDesc,
    int InitialResourceState,
    Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
    Pointer<COMObject> pProtectedSession,
    Pointer<GUID> riidResource,
    Pointer<Pointer> ppvResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
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
            Pointer<COMObject> pProtectedSession,
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
            Pointer<COMObject> pProtectedSession,
            Pointer<GUID> riidResource,
            Pointer<Pointer> ppvResource,
          )>()(
        ptr.ref.lpVtbl,
        pHeapProperties,
        HeapFlags,
        pDesc,
        InitialResourceState,
        pOptimizedClearValue,
        pProtectedSession,
        riidResource,
        ppvResource,
      );

  int CreateHeap1(
    Pointer<D3D12_HEAP_DESC> pDesc,
    Pointer<COMObject> pProtectedSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvHeap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_HEAP_DESC> pDesc,
            Pointer<COMObject> pProtectedSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_HEAP_DESC> pDesc,
            Pointer<COMObject> pProtectedSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvHeap,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pProtectedSession,
        riid,
        ppvHeap,
      );

  int CreateReservedResource1(
    Pointer<D3D12_RESOURCE_DESC> pDesc,
    int InitialState,
    Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
    Pointer<COMObject> pProtectedSession,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_RESOURCE_DESC> pDesc,
            Uint32 InitialState,
            Pointer<D3D12_CLEAR_VALUE> pOptimizedClearValue,
            Pointer<COMObject> pProtectedSession,
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
            Pointer<COMObject> pProtectedSession,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvResource,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        InitialState,
        pOptimizedClearValue,
        pProtectedSession,
        riid,
        ppvResource,
      );

  D3D12_RESOURCE_ALLOCATION_INFO GetResourceAllocationInfo1(
    int visibleMask,
    int numResourceDescs,
    Pointer<D3D12_RESOURCE_DESC> pResourceDescs,
    Pointer<D3D12_RESOURCE_ALLOCATION_INFO1> pResourceAllocationInfo1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_RESOURCE_ALLOCATION_INFO Function(
            Pointer,
            Uint32 visibleMask,
            Uint32 numResourceDescs,
            Pointer<D3D12_RESOURCE_DESC> pResourceDescs,
            Pointer<D3D12_RESOURCE_ALLOCATION_INFO1> pResourceAllocationInfo1,
          )>>>()
          .value
          .asFunction<
              D3D12_RESOURCE_ALLOCATION_INFO Function(
            Pointer,
            int visibleMask,
            int numResourceDescs,
            Pointer<D3D12_RESOURCE_DESC> pResourceDescs,
            Pointer<D3D12_RESOURCE_ALLOCATION_INFO1> pResourceAllocationInfo1,
          )>()(
        ptr.ref.lpVtbl,
        visibleMask,
        numResourceDescs,
        pResourceDescs,
        pResourceAllocationInfo1,
      );
}
