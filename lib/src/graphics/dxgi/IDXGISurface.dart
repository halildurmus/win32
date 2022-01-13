// IDXGISurface.dart

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

import '../../graphics/dxgi/IDXGIDeviceSubObject.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGISurface = '{CAFCB56C-6AC3-4889-BF47-9E23BBD260EC}';

/// {@category Interface}
/// {@category com}
class IDXGISurface extends IDXGIDeviceSubObject {
  // vtable begins at 8, is 3 entries long.
  IDXGISurface(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc(
    Pointer<DXGI_SURFACE_DESC> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_SURFACE_DESC> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_SURFACE_DESC> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );

  int $Map(
    Pointer<DXGI_MAPPED_RECT> pLockedRect,
    int MapFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_MAPPED_RECT> pLockedRect,
            Uint32 MapFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_MAPPED_RECT> pLockedRect,
            int MapFlags,
          )>()(
        ptr.ref.lpVtbl,
        pLockedRect,
        MapFlags,
      );

  int Unmap() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
