// ID3D12Device5.dart

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

import '../../graphics/direct3d12/ID3D12Device4.dart';
import '../../graphics/direct3d12/ID3D12LifetimeOwner.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12Device5 = '{8B4F173B-2FEA-4B80-8F58-4307191AB95D}';

/// {@category Interface}
/// {@category com}
class ID3D12Device5 extends ID3D12Device4 {
  // vtable begins at 57, is 8 entries long.
  ID3D12Device5(Pointer<COMObject> ptr) : super(ptr);

  int CreateLifetimeTracker(
    Pointer<COMObject> pOwner,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvTracker,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOwner,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvTracker,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOwner,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvTracker,
          )>()(
        ptr.ref.lpVtbl,
        pOwner,
        riid,
        ppvTracker,
      );

  void RemoveDevice() => ptr.ref.lpVtbl.value
          .elementAt(58)
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

  int EnumerateMetaCommands(
    Pointer<Uint32> pNumMetaCommands,
    Pointer<D3D12_META_COMMAND_DESC> pDescs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pNumMetaCommands,
            Pointer<D3D12_META_COMMAND_DESC> pDescs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pNumMetaCommands,
            Pointer<D3D12_META_COMMAND_DESC> pDescs,
          )>()(
        ptr.ref.lpVtbl,
        pNumMetaCommands,
        pDescs,
      );

  int EnumerateMetaCommandParameters(
    Pointer<GUID> CommandId,
    int Stage,
    Pointer<Uint32> pTotalStructureSizeInBytes,
    Pointer<Uint32> pParameterCount,
    Pointer<D3D12_META_COMMAND_PARAMETER_DESC> pParameterDescs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> CommandId,
            Int32 Stage,
            Pointer<Uint32> pTotalStructureSizeInBytes,
            Pointer<Uint32> pParameterCount,
            Pointer<D3D12_META_COMMAND_PARAMETER_DESC> pParameterDescs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> CommandId,
            int Stage,
            Pointer<Uint32> pTotalStructureSizeInBytes,
            Pointer<Uint32> pParameterCount,
            Pointer<D3D12_META_COMMAND_PARAMETER_DESC> pParameterDescs,
          )>()(
        ptr.ref.lpVtbl,
        CommandId,
        Stage,
        pTotalStructureSizeInBytes,
        pParameterCount,
        pParameterDescs,
      );

  int CreateMetaCommand(
    Pointer<GUID> CommandId,
    int NodeMask,
    Pointer pCreationParametersData,
    int CreationParametersDataSizeInBytes,
    Pointer<GUID> riid,
    Pointer<Pointer> ppMetaCommand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> CommandId,
            Uint32 NodeMask,
            Pointer pCreationParametersData,
            IntPtr CreationParametersDataSizeInBytes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppMetaCommand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> CommandId,
            int NodeMask,
            Pointer pCreationParametersData,
            int CreationParametersDataSizeInBytes,
            Pointer<GUID> riid,
            Pointer<Pointer> ppMetaCommand,
          )>()(
        ptr.ref.lpVtbl,
        CommandId,
        NodeMask,
        pCreationParametersData,
        CreationParametersDataSizeInBytes,
        riid,
        ppMetaCommand,
      );

  int CreateStateObject(
    Pointer<D3D12_STATE_OBJECT_DESC> pDesc,
    Pointer<GUID> riid,
    Pointer<Pointer> ppStateObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_STATE_OBJECT_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppStateObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_STATE_OBJECT_DESC> pDesc,
            Pointer<GUID> riid,
            Pointer<Pointer> ppStateObject,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        riid,
        ppStateObject,
      );

  void GetRaytracingAccelerationStructurePrebuildInfo(
    Pointer<D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS> pDesc,
    Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS> pDesc,
            Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO>
                pInfo,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INPUTS> pDesc,
            Pointer<D3D12_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO>
                pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
        pInfo,
      );

  int CheckDriverMatchingIdentifier(
    int SerializedDataType,
    Pointer<D3D12_SERIALIZED_DATA_DRIVER_MATCHING_IDENTIFIER>
        pIdentifierToCheck,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 SerializedDataType,
            Pointer<D3D12_SERIALIZED_DATA_DRIVER_MATCHING_IDENTIFIER>
                pIdentifierToCheck,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SerializedDataType,
            Pointer<D3D12_SERIALIZED_DATA_DRIVER_MATCHING_IDENTIFIER>
                pIdentifierToCheck,
          )>()(
        ptr.ref.lpVtbl,
        SerializedDataType,
        pIdentifierToCheck,
      );
}
