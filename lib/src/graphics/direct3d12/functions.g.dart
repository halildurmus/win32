// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d/ID3DBlob.dart'; // -----------------------------------------------------------------------

// d3d12.dll
// -----------------------------------------------------------------------
final _d3d12 = DynamicLibrary.open('d3d12.dll');

int D3D12CreateDevice(
  Pointer<COMObject> pAdapter,
  int MinimumFeatureLevel,
  Pointer<GUID> riid,
  Pointer<Pointer> ppDevice,
) =>
    _D3D12CreateDevice(
      pAdapter,
      MinimumFeatureLevel,
      riid,
      ppDevice,
    );

late final _D3D12CreateDevice = _d3d12.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pAdapter,
  Int32 MinimumFeatureLevel,
  Pointer<GUID> riid,
  Pointer<Pointer> ppDevice,
),
    int Function(
  Pointer<COMObject> pAdapter,
  int MinimumFeatureLevel,
  Pointer<GUID> riid,
  Pointer<Pointer> ppDevice,
)>('D3D12CreateDevice');

int D3D12CreateRootSignatureDeserializer(
  Pointer pSrcData,
  int SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
) =>
    _D3D12CreateRootSignatureDeserializer(
      pSrcData,
      SrcDataSizeInBytes,
      pRootSignatureDeserializerInterface,
      ppRootSignatureDeserializer,
    );

late final _D3D12CreateRootSignatureDeserializer = _d3d12.lookupFunction<
    Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
),
    int Function(
  Pointer pSrcData,
  int SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
)>('D3D12CreateRootSignatureDeserializer');

int D3D12CreateVersionedRootSignatureDeserializer(
  Pointer pSrcData,
  int SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
) =>
    _D3D12CreateVersionedRootSignatureDeserializer(
      pSrcData,
      SrcDataSizeInBytes,
      pRootSignatureDeserializerInterface,
      ppRootSignatureDeserializer,
    );

late final _D3D12CreateVersionedRootSignatureDeserializer =
    _d3d12.lookupFunction<
        Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
),
        int Function(
  Pointer pSrcData,
  int SrcDataSizeInBytes,
  Pointer<GUID> pRootSignatureDeserializerInterface,
  Pointer<Pointer> ppRootSignatureDeserializer,
)>('D3D12CreateVersionedRootSignatureDeserializer');

int D3D12EnableExperimentalFeatures(
  int NumFeatures,
  Pointer<GUID> pIIDs,
  Pointer pConfigurationStructs,
  Pointer<Uint32> pConfigurationStructSizes,
) =>
    _D3D12EnableExperimentalFeatures(
      NumFeatures,
      pIIDs,
      pConfigurationStructs,
      pConfigurationStructSizes,
    );

late final _D3D12EnableExperimentalFeatures = _d3d12.lookupFunction<
    Int32 Function(
  Uint32 NumFeatures,
  Pointer<GUID> pIIDs,
  Pointer pConfigurationStructs,
  Pointer<Uint32> pConfigurationStructSizes,
),
    int Function(
  int NumFeatures,
  Pointer<GUID> pIIDs,
  Pointer pConfigurationStructs,
  Pointer<Uint32> pConfigurationStructSizes,
)>('D3D12EnableExperimentalFeatures');

int D3D12GetDebugInterface(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvDebug,
) =>
    _D3D12GetDebugInterface(
      riid,
      ppvDebug,
    );

late final _D3D12GetDebugInterface = _d3d12.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvDebug,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvDebug,
)>('D3D12GetDebugInterface');

int D3D12GetInterface(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvDebug,
) =>
    _D3D12GetInterface(
      rclsid,
      riid,
      ppvDebug,
    );

late final _D3D12GetInterface = _d3d12.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvDebug,
),
    int Function(
  Pointer<GUID> rclsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvDebug,
)>('D3D12GetInterface');

int D3D12SerializeRootSignature(
  Pointer<D3D12_ROOT_SIGNATURE_DESC> pRootSignature,
  int Version,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
) =>
    _D3D12SerializeRootSignature(
      pRootSignature,
      Version,
      ppBlob,
      ppErrorBlob,
    );

late final _D3D12SerializeRootSignature = _d3d12.lookupFunction<
    Int32 Function(
  Pointer<D3D12_ROOT_SIGNATURE_DESC> pRootSignature,
  Int32 Version,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
),
    int Function(
  Pointer<D3D12_ROOT_SIGNATURE_DESC> pRootSignature,
  int Version,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
)>('D3D12SerializeRootSignature');

int D3D12SerializeVersionedRootSignature(
  Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC> pRootSignature,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
) =>
    _D3D12SerializeVersionedRootSignature(
      pRootSignature,
      ppBlob,
      ppErrorBlob,
    );

late final _D3D12SerializeVersionedRootSignature = _d3d12.lookupFunction<
    Int32 Function(
  Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC> pRootSignature,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
),
    int Function(
  Pointer<D3D12_VERSIONED_ROOT_SIGNATURE_DESC> pRootSignature,
  Pointer<Pointer<COMObject>> ppBlob,
  Pointer<Pointer<COMObject>> ppErrorBlob,
)>('D3D12SerializeVersionedRootSignature');
