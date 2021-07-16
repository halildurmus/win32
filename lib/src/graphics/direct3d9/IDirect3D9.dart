// IDirect3D9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirect3D9 = '{81BDCBCA-64D4-426D-AE8D-AD0147F4275C}';

typedef _RegisterSoftwareDevice_Native = Int32 Function(
    Pointer obj, Pointer pInitializeFunction);
typedef _RegisterSoftwareDevice_Dart = int Function(
    Pointer obj, Pointer pInitializeFunction);

typedef _GetAdapterCount_Native = Uint32 Function(Pointer obj);
typedef _GetAdapterCount_Dart = int Function(Pointer obj);

typedef _GetAdapterIdentifier_Native = Int32 Function(Pointer obj,
    Uint32 Adapter, Uint32 Flags, Pointer<D3DADAPTER_IDENTIFIER9> pIdentifier);
typedef _GetAdapterIdentifier_Dart = int Function(Pointer obj, int Adapter,
    int Flags, Pointer<D3DADAPTER_IDENTIFIER9> pIdentifier);

typedef _GetAdapterModeCount_Native = Uint32 Function(
    Pointer obj, Uint32 Adapter, Uint32 Format);
typedef _GetAdapterModeCount_Dart = int Function(
    Pointer obj, int Adapter, int Format);

typedef _EnumAdapterModes_Native = Int32 Function(Pointer obj, Uint32 Adapter,
    Uint32 Format, Uint32 Mode, Pointer<D3DDISPLAYMODE> pMode);
typedef _EnumAdapterModes_Dart = int Function(Pointer obj, int Adapter,
    int Format, int Mode, Pointer<D3DDISPLAYMODE> pMode);

typedef _GetAdapterDisplayMode_Native = Int32 Function(
    Pointer obj, Uint32 Adapter, Pointer<D3DDISPLAYMODE> pMode);
typedef _GetAdapterDisplayMode_Dart = int Function(
    Pointer obj, int Adapter, Pointer<D3DDISPLAYMODE> pMode);

typedef _CheckDeviceType_Native = Int32 Function(
    Pointer obj,
    Uint32 Adapter,
    Uint32 DevType,
    Uint32 AdapterFormat,
    Uint32 BackBufferFormat,
    Int32 bWindowed);
typedef _CheckDeviceType_Dart = int Function(Pointer obj, int Adapter,
    int DevType, int AdapterFormat, int BackBufferFormat, int bWindowed);

typedef _CheckDeviceFormat_Native = Int32 Function(
    Pointer obj,
    Uint32 Adapter,
    Uint32 DeviceType,
    Uint32 AdapterFormat,
    Uint32 Usage,
    Uint32 RType,
    Uint32 CheckFormat);
typedef _CheckDeviceFormat_Dart = int Function(Pointer obj, int Adapter,
    int DeviceType, int AdapterFormat, int Usage, int RType, int CheckFormat);

typedef _CheckDeviceMultiSampleType_Native = Int32 Function(
    Pointer obj,
    Uint32 Adapter,
    Uint32 DeviceType,
    Uint32 SurfaceFormat,
    Int32 Windowed,
    Uint32 MultiSampleType,
    Pointer<Uint32> pQualityLevels);
typedef _CheckDeviceMultiSampleType_Dart = int Function(
    Pointer obj,
    int Adapter,
    int DeviceType,
    int SurfaceFormat,
    int Windowed,
    int MultiSampleType,
    Pointer<Uint32> pQualityLevels);

typedef _CheckDepthStencilMatch_Native = Int32 Function(
    Pointer obj,
    Uint32 Adapter,
    Uint32 DeviceType,
    Uint32 AdapterFormat,
    Uint32 RenderTargetFormat,
    Uint32 DepthStencilFormat);
typedef _CheckDepthStencilMatch_Dart = int Function(
    Pointer obj,
    int Adapter,
    int DeviceType,
    int AdapterFormat,
    int RenderTargetFormat,
    int DepthStencilFormat);

typedef _CheckDeviceFormatConversion_Native = Int32 Function(
    Pointer obj,
    Uint32 Adapter,
    Uint32 DeviceType,
    Uint32 SourceFormat,
    Uint32 TargetFormat);
typedef _CheckDeviceFormatConversion_Dart = int Function(Pointer obj,
    int Adapter, int DeviceType, int SourceFormat, int TargetFormat);

typedef _GetDeviceCaps_Native = Int32 Function(
    Pointer obj, Uint32 Adapter, Uint32 DeviceType, Pointer<D3DCAPS9> pCaps);
typedef _GetDeviceCaps_Dart = int Function(
    Pointer obj, int Adapter, int DeviceType, Pointer<D3DCAPS9> pCaps);

typedef _GetAdapterMonitor_Native = IntPtr Function(
    Pointer obj, Uint32 Adapter);
typedef _GetAdapterMonitor_Dart = int Function(Pointer obj, int Adapter);

typedef _CreateDevice_Native = Int32 Function(
    Pointer obj,
    Uint32 Adapter,
    Uint32 DeviceType,
    IntPtr hFocusWindow,
    Uint32 BehaviorFlags,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<COMObject> ppReturnedDeviceInterface);
typedef _CreateDevice_Dart = int Function(
    Pointer obj,
    int Adapter,
    int DeviceType,
    int hFocusWindow,
    int BehaviorFlags,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<COMObject> ppReturnedDeviceInterface);

/// {@category Interface}
/// {@category com}
class IDirect3D9 extends IUnknown {
  // vtable begins at 3, ends at 16

  IDirect3D9(Pointer<COMObject> ptr) : super(ptr);

  int RegisterSoftwareDevice(Pointer pInitializeFunction) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_RegisterSoftwareDevice_Native>>>()
              .value
              .asFunction<_RegisterSoftwareDevice_Dart>()(
          ptr.ref.lpVtbl, pInitializeFunction);

  int GetAdapterCount() => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetAdapterCount_Native>>>()
      .value
      .asFunction<_GetAdapterCount_Dart>()(ptr.ref.lpVtbl);

  int GetAdapterIdentifier(int Adapter, int Flags,
          Pointer<D3DADAPTER_IDENTIFIER9> pIdentifier) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_GetAdapterIdentifier_Native>>>()
              .value
              .asFunction<_GetAdapterIdentifier_Dart>()(
          ptr.ref.lpVtbl, Adapter, Flags, pIdentifier);

  int GetAdapterModeCount(int Adapter, int Format) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_GetAdapterModeCount_Native>>>()
      .value
      .asFunction<_GetAdapterModeCount_Dart>()(ptr.ref.lpVtbl, Adapter, Format);

  int EnumAdapterModes(
          int Adapter, int Format, int Mode, Pointer<D3DDISPLAYMODE> pMode) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_EnumAdapterModes_Native>>>()
              .value
              .asFunction<_EnumAdapterModes_Dart>()(
          ptr.ref.lpVtbl, Adapter, Format, Mode, pMode);

  int GetAdapterDisplayMode(int Adapter, Pointer<D3DDISPLAYMODE> pMode) =>
      ptr.ref.lpVtbl.value
              .elementAt(8)
              .cast<Pointer<NativeFunction<_GetAdapterDisplayMode_Native>>>()
              .value
              .asFunction<_GetAdapterDisplayMode_Dart>()(
          ptr.ref.lpVtbl, Adapter, pMode);

  int CheckDeviceType(int Adapter, int DevType, int AdapterFormat,
          int BackBufferFormat, int bWindowed) =>
      ptr.ref.lpVtbl.value
              .elementAt(9)
              .cast<Pointer<NativeFunction<_CheckDeviceType_Native>>>()
              .value
              .asFunction<_CheckDeviceType_Dart>()(ptr.ref.lpVtbl, Adapter,
          DevType, AdapterFormat, BackBufferFormat, bWindowed);

  int CheckDeviceFormat(int Adapter, int DeviceType, int AdapterFormat,
          int Usage, int RType, int CheckFormat) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_CheckDeviceFormat_Native>>>()
              .value
              .asFunction<_CheckDeviceFormat_Dart>()(ptr.ref.lpVtbl, Adapter,
          DeviceType, AdapterFormat, Usage, RType, CheckFormat);

  int CheckDeviceMultiSampleType(int Adapter, int DeviceType, int SurfaceFormat,
          int Windowed, int MultiSampleType, Pointer<Uint32> pQualityLevels) =>
      ptr.ref.lpVtbl.value
              .elementAt(11)
              .cast<Pointer<NativeFunction<_CheckDeviceMultiSampleType_Native>>>()
              .value
              .asFunction<_CheckDeviceMultiSampleType_Dart>()(
          ptr.ref.lpVtbl,
          Adapter,
          DeviceType,
          SurfaceFormat,
          Windowed,
          MultiSampleType,
          pQualityLevels);

  int CheckDepthStencilMatch(int Adapter, int DeviceType, int AdapterFormat,
          int RenderTargetFormat, int DepthStencilFormat) =>
      ptr.ref.lpVtbl.value
              .elementAt(12)
              .cast<Pointer<NativeFunction<_CheckDepthStencilMatch_Native>>>()
              .value
              .asFunction<_CheckDepthStencilMatch_Dart>()(
          ptr.ref.lpVtbl,
          Adapter,
          DeviceType,
          AdapterFormat,
          RenderTargetFormat,
          DepthStencilFormat);

  int
      CheckDeviceFormatConversion(int Adapter, int DeviceType, int SourceFormat,
              int TargetFormat) =>
          ptr.ref.lpVtbl.value
                  .elementAt(13)
                  .cast<
                      Pointer<
                          NativeFunction<_CheckDeviceFormatConversion_Native>>>()
                  .value
                  .asFunction<_CheckDeviceFormatConversion_Dart>()(
              ptr.ref.lpVtbl, Adapter, DeviceType, SourceFormat, TargetFormat);

  int GetDeviceCaps(int Adapter, int DeviceType, Pointer<D3DCAPS9> pCaps) =>
      ptr.ref.lpVtbl.value
              .elementAt(14)
              .cast<Pointer<NativeFunction<_GetDeviceCaps_Native>>>()
              .value
              .asFunction<_GetDeviceCaps_Dart>()(
          ptr.ref.lpVtbl, Adapter, DeviceType, pCaps);

  int GetAdapterMonitor(int Adapter) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_GetAdapterMonitor_Native>>>()
      .value
      .asFunction<_GetAdapterMonitor_Dart>()(ptr.ref.lpVtbl, Adapter);

  int CreateDevice(
          int Adapter,
          int DeviceType,
          int hFocusWindow,
          int BehaviorFlags,
          Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
          Pointer<COMObject> ppReturnedDeviceInterface) =>
      ptr.ref.lpVtbl.value
              .elementAt(16)
              .cast<Pointer<NativeFunction<_CreateDevice_Native>>>()
              .value
              .asFunction<_CreateDevice_Dart>()(
          ptr.ref.lpVtbl,
          Adapter,
          DeviceType,
          hFocusWindow,
          BehaviorFlags,
          pPresentationParameters,
          ppReturnedDeviceInterface);
}
