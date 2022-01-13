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
import '../../graphics/direct3d11/ID3D11Device.dart';
import '../../graphics/direct3d11/ID3D11DeviceContext.dart'; // -----------------------------------------------------------------------

// d3d11.dll
// -----------------------------------------------------------------------
final _d3d11 = DynamicLibrary.open('d3d11.dll');

int D3D11On12CreateDevice(
  Pointer<COMObject> pDevice,
  int Flags,
  Pointer<Int32> pFeatureLevels,
  int FeatureLevels,
  Pointer<Pointer<COMObject>> ppCommandQueues,
  int NumQueues,
  int NodeMask,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Pointer<COMObject>> ppImmediateContext,
  Pointer<Int32> pChosenFeatureLevel,
) =>
    _D3D11On12CreateDevice(
      pDevice,
      Flags,
      pFeatureLevels,
      FeatureLevels,
      ppCommandQueues,
      NumQueues,
      NodeMask,
      ppDevice,
      ppImmediateContext,
      pChosenFeatureLevel,
    );

late final _D3D11On12CreateDevice = _d3d11.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDevice,
  Uint32 Flags,
  Pointer<Int32> pFeatureLevels,
  Uint32 FeatureLevels,
  Pointer<Pointer<COMObject>> ppCommandQueues,
  Uint32 NumQueues,
  Uint32 NodeMask,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Pointer<COMObject>> ppImmediateContext,
  Pointer<Int32> pChosenFeatureLevel,
),
    int Function(
  Pointer<COMObject> pDevice,
  int Flags,
  Pointer<Int32> pFeatureLevels,
  int FeatureLevels,
  Pointer<Pointer<COMObject>> ppCommandQueues,
  int NumQueues,
  int NodeMask,
  Pointer<Pointer<COMObject>> ppDevice,
  Pointer<Pointer<COMObject>> ppImmediateContext,
  Pointer<Int32> pChosenFeatureLevel,
)>('D3D11On12CreateDevice');
