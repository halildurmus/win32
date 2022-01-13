// IDirect3D9Ex.dart

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

import '../../graphics/direct3d9/IDirect3D9.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DDevice9Ex.dart';

/// @nodoc
const IID_IDirect3D9Ex = '{02177241-69FC-400C-8FF1-93A44DF6861D}';

/// {@category Interface}
/// {@category com}
class IDirect3D9Ex extends IDirect3D9 {
  // vtable begins at 17, is 5 entries long.
  IDirect3D9Ex(Pointer<COMObject> ptr) : super(ptr);

  int GetAdapterModeCountEx(
    int Adapter,
    Pointer<D3DDISPLAYMODEFILTER> pFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 Adapter,
            Pointer<D3DDISPLAYMODEFILTER> pFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            Pointer<D3DDISPLAYMODEFILTER> pFilter,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        pFilter,
      );

  int EnumAdapterModesEx(
    int Adapter,
    Pointer<D3DDISPLAYMODEFILTER> pFilter,
    int Mode,
    Pointer<D3DDISPLAYMODEEX> pMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Pointer<D3DDISPLAYMODEFILTER> pFilter,
            Uint32 Mode,
            Pointer<D3DDISPLAYMODEEX> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            Pointer<D3DDISPLAYMODEFILTER> pFilter,
            int Mode,
            Pointer<D3DDISPLAYMODEEX> pMode,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        pFilter,
        Mode,
        pMode,
      );

  int GetAdapterDisplayModeEx(
    int Adapter,
    Pointer<D3DDISPLAYMODEEX> pMode,
    Pointer<Int32> pRotation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Pointer<D3DDISPLAYMODEEX> pMode,
            Pointer<Int32> pRotation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            Pointer<D3DDISPLAYMODEEX> pMode,
            Pointer<Int32> pRotation,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        pMode,
        pRotation,
      );

  int CreateDeviceEx(
    int Adapter,
    int DeviceType,
    int hFocusWindow,
    int BehaviorFlags,
    Pointer<D3DPRESENT_PARAMETERS> pPresentationParameters,
    Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode,
    Pointer<Pointer<COMObject>> ppReturnedDeviceInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
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
            Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode,
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
            Pointer<D3DDISPLAYMODEEX> pFullscreenDisplayMode,
            Pointer<Pointer<COMObject>> ppReturnedDeviceInterface,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DeviceType,
        hFocusWindow,
        BehaviorFlags,
        pPresentationParameters,
        pFullscreenDisplayMode,
        ppReturnedDeviceInterface,
      );

  int GetAdapterLUID(
    int Adapter,
    Pointer<LUID> pLUID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Pointer<LUID> pLUID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            Pointer<LUID> pLUID,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        pLUID,
      );
}
