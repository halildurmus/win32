// IDirect3D9ExOverlayExtension.dart

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
import '../../graphics/direct3d9/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirect3D9ExOverlayExtension =
    '{187AEB13-AAF5-4C59-876D-E059088C0DF8}';

/// {@category Interface}
/// {@category com}
class IDirect3D9ExOverlayExtension extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirect3D9ExOverlayExtension(Pointer<COMObject> ptr) : super(ptr);

  int CheckDeviceOverlayType(
    int Adapter,
    int DevType,
    int OverlayWidth,
    int OverlayHeight,
    int OverlayFormat,
    Pointer<D3DDISPLAYMODEEX> pDisplayMode,
    int DisplayRotation,
    Pointer<D3DOVERLAYCAPS> pOverlayCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Adapter,
            Uint32 DevType,
            Uint32 OverlayWidth,
            Uint32 OverlayHeight,
            Uint32 OverlayFormat,
            Pointer<D3DDISPLAYMODEEX> pDisplayMode,
            Int32 DisplayRotation,
            Pointer<D3DOVERLAYCAPS> pOverlayCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Adapter,
            int DevType,
            int OverlayWidth,
            int OverlayHeight,
            int OverlayFormat,
            Pointer<D3DDISPLAYMODEEX> pDisplayMode,
            int DisplayRotation,
            Pointer<D3DOVERLAYCAPS> pOverlayCaps,
          )>()(
        ptr.ref.lpVtbl,
        Adapter,
        DevType,
        OverlayWidth,
        OverlayHeight,
        OverlayFormat,
        pDisplayMode,
        DisplayRotation,
        pOverlayCaps,
      );
}
