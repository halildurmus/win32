// ID3D12GraphicsCommandList4.dart

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

import '../../graphics/direct3d12/ID3D12GraphicsCommandList3.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d12/ID3D12MetaCommand.dart';
import '../../graphics/direct3d12/ID3D12StateObject.dart';

/// @nodoc
const IID_ID3D12GraphicsCommandList4 = '{8754318E-D3A9-4541-98CF-645B50DC4874}';

/// {@category Interface}
/// {@category com}
class ID3D12GraphicsCommandList4 extends ID3D12GraphicsCommandList3 {
  // vtable begins at 68, is 9 entries long.
  ID3D12GraphicsCommandList4(Pointer<COMObject> ptr) : super(ptr);

  void BeginRenderPass(
    int NumRenderTargets,
    Pointer<D3D12_RENDER_PASS_RENDER_TARGET_DESC> pRenderTargets,
    Pointer<D3D12_RENDER_PASS_DEPTH_STENCIL_DESC> pDepthStencil,
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 NumRenderTargets,
            Pointer<D3D12_RENDER_PASS_RENDER_TARGET_DESC> pRenderTargets,
            Pointer<D3D12_RENDER_PASS_DEPTH_STENCIL_DESC> pDepthStencil,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int NumRenderTargets,
            Pointer<D3D12_RENDER_PASS_RENDER_TARGET_DESC> pRenderTargets,
            Pointer<D3D12_RENDER_PASS_DEPTH_STENCIL_DESC> pDepthStencil,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        NumRenderTargets,
        pRenderTargets,
        pDepthStencil,
        Flags,
      );

  void EndRenderPass() => ptr.ref.lpVtbl.value
          .elementAt(69)
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

  void InitializeMetaCommand(
    Pointer<COMObject> pMetaCommand,
    Pointer pInitializationParametersData,
    int InitializationParametersDataSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pMetaCommand,
            Pointer pInitializationParametersData,
            IntPtr InitializationParametersDataSizeInBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pMetaCommand,
            Pointer pInitializationParametersData,
            int InitializationParametersDataSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        pMetaCommand,
        pInitializationParametersData,
        InitializationParametersDataSizeInBytes,
      );

  void ExecuteMetaCommand(
    Pointer<COMObject> pMetaCommand,
    Pointer pExecutionParametersData,
    int ExecutionParametersDataSizeInBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pMetaCommand,
            Pointer pExecutionParametersData,
            IntPtr ExecutionParametersDataSizeInBytes,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pMetaCommand,
            Pointer pExecutionParametersData,
            int ExecutionParametersDataSizeInBytes,
          )>()(
        ptr.ref.lpVtbl,
        pMetaCommand,
        pExecutionParametersData,
        ExecutionParametersDataSizeInBytes,
      );

  void BuildRaytracingAccelerationStructure(
    Pointer<D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_DESC> pDesc,
    int NumPostbuildInfoDescs,
    Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC>
        pPostbuildInfoDescs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(72)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_DESC> pDesc,
            Uint32 NumPostbuildInfoDescs,
            Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC>
                pPostbuildInfoDescs,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_DESC> pDesc,
            int NumPostbuildInfoDescs,
            Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC>
                pPostbuildInfoDescs,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        NumPostbuildInfoDescs,
        pPostbuildInfoDescs,
      );

  void EmitRaytracingAccelerationStructurePostbuildInfo(
    Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC> pDesc,
    int NumSourceAccelerationStructures,
    Pointer<Uint64> pSourceAccelerationStructureData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC>
                pDesc,
            Uint32 NumSourceAccelerationStructures,
            Pointer<Uint64> pSourceAccelerationStructureData,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_DESC>
                pDesc,
            int NumSourceAccelerationStructures,
            Pointer<Uint64> pSourceAccelerationStructureData,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        NumSourceAccelerationStructures,
        pSourceAccelerationStructureData,
      );

  void CopyRaytracingAccelerationStructure(
    int DestAccelerationStructureData,
    int SourceAccelerationStructureData,
    int Mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint64 DestAccelerationStructureData,
            Uint64 SourceAccelerationStructureData,
            Int32 Mode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int DestAccelerationStructureData,
            int SourceAccelerationStructureData,
            int Mode,
          )>()(
        ptr.ref.lpVtbl,
        DestAccelerationStructureData,
        SourceAccelerationStructureData,
        Mode,
      );

  void SetPipelineState1(
    Pointer<COMObject> pStateObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pStateObject,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pStateObject,
          )>()(
        ptr.ref.lpVtbl,
        pStateObject,
      );

  void DispatchRays(
    Pointer<D3D12_DISPATCH_RAYS_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_DISPATCH_RAYS_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_DISPATCH_RAYS_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
