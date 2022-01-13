// IDirect3D9.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DDevice9.dart';

/// @nodoc
const IID_IDirect3D9 = '{81BDCBCA-64D4-426D-AE8D-AD0147F4275C}';

/// {@category Interface}
/// {@category com}
class IDirect3D9 extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IDirect3D9(Pointer<COMObject> ptr) : super(ptr);

  int RegisterSoftwareDevice(
    Pointer pInitializeFunction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pInitializeFunction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pInitializeFunction,
          )>()(
        ptr.ref.lpVtbl,
        pInitializeFunction,
      );

  int GetAdapterCount() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetAdapterIdentifier(
    int Adapter,
    int Flags,
    Pointer<D3DADAPTER_IDENTIFIER9> pIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 Flags,
            Pointer<D3DADAPTER_IDENTIFIER9> pIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int Flags,
            Pointer<D3DADAPTER_IDENTIFIER9> pIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        Flags,
        pIdentifier,
      );

  int GetAdapterModeCount(
    int Adapter,
    int Format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 Format,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int Format,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        Format,
      );

  int EnumAdapterModes(
    int Adapter,
    int Format,
    int Mode,
    Pointer<D3DDISPLAYMODE> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 Format,
            Uint32 Mode,
            Pointer<D3DDISPLAYMODE> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int Format,
            int Mode,
            Pointer<D3DDISPLAYMODE> pMode,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        Format,
        Mode,
        pMode,
      );

  int GetAdapterDisplayMode(
    int Adapter,
    Pointer<D3DDISPLAYMODE> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Pointer<D3DDISPLAYMODE> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            Pointer<D3DDISPLAYMODE> pMode,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        pMode,
      );

  int CheckDeviceType(
    int Adapter,
    int DevType,
    int AdapterFormat,
    int BackBufferFormat,
    int bWindowed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DevType,
            Uint32 AdapterFormat,
            Uint32 BackBufferFormat,
            Int32 bWindowed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DevType,
            int AdapterFormat,
            int BackBufferFormat,
            int bWindowed,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DevType,
        AdapterFormat,
        BackBufferFormat,
        bWindowed,
      );

  int CheckDeviceFormat(
    int Adapter,
    int DeviceType,
    int AdapterFormat,
    int Usage,
    int RType,
    int CheckFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DeviceType,
            Uint32 AdapterFormat,
            Uint32 Usage,
            Int32 RType,
            Uint32 CheckFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DeviceType,
            int AdapterFormat,
            int Usage,
            int RType,
            int CheckFormat,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DeviceType,
        AdapterFormat,
        Usage,
        RType,
        CheckFormat,
      );

  int CheckDeviceMultiSampleType(
    int Adapter,
    int DeviceType,
    int SurfaceFormat,
    int Windowed,
    int MultiSampleType,
    Pointer<Uint32> pQualityLevels,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DeviceType,
            Uint32 SurfaceFormat,
            Int32 Windowed,
            Int32 MultiSampleType,
            Pointer<Uint32> pQualityLevels,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DeviceType,
            int SurfaceFormat,
            int Windowed,
            int MultiSampleType,
            Pointer<Uint32> pQualityLevels,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DeviceType,
        SurfaceFormat,
        Windowed,
        MultiSampleType,
        pQualityLevels,
      );

  int CheckDepthStencilMatch(
    int Adapter,
    int DeviceType,
    int AdapterFormat,
    int RenderTargetFormat,
    int DepthStencilFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DeviceType,
            Uint32 AdapterFormat,
            Uint32 RenderTargetFormat,
            Uint32 DepthStencilFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DeviceType,
            int AdapterFormat,
            int RenderTargetFormat,
            int DepthStencilFormat,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DeviceType,
        AdapterFormat,
        RenderTargetFormat,
        DepthStencilFormat,
      );

  int CheckDeviceFormatConversion(
    int Adapter,
    int DeviceType,
    int SourceFormat,
    int TargetFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DeviceType,
            Uint32 SourceFormat,
            Uint32 TargetFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DeviceType,
            int SourceFormat,
            int TargetFormat,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DeviceType,
        SourceFormat,
        TargetFormat,
      );

  int GetDeviceCaps(
    int Adapter,
    int DeviceType,
    Pointer<D3DCAPS9> pCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DeviceType,
            Pointer<D3DCAPS9> pCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DeviceType,
            Pointer<D3DCAPS9> pCaps,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DeviceType,
        pCaps,
      );

  int GetAdapterMonitor(
    int Adapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            Uint32 Adapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
      );

  int CreateDevice(
    int Adapter,
    int DeviceType,
    int hFocusWindow,
    int BehaviorFlags,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<Pointer<COMObject>> ppReturnedDeviceInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DeviceType,
            IntPtr hFocusWindow,
            Uint32 BehaviorFlags,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
            Pointer<Pointer<COMObject>> ppReturnedDeviceInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DeviceType,
            int hFocusWindow,
            int BehaviorFlags,
            Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
            Pointer<Pointer<COMObject>> ppReturnedDeviceInterface,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DeviceType,
        hFocusWindow,
        BehaviorFlags,
        pPresentationParameters,
        ppReturnedDeviceInterface,
      );
}
