// IWTSBitmapRenderer.dart

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
import '../../system/remotedesktop/structs.g.dart';

/// @nodoc
const IID_IWTSBitmapRenderer = '{5B7ACC97-F3C9-46F7-8C5B-FA685D3441B1}';

/// {@category Interface}
/// {@category com}
class IWTSBitmapRenderer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWTSBitmapRenderer(Pointer<COMObject> ptr) : super(ptr);

  int Render(
    GUID imageFormat,
    int dwWidth,
    int dwHeight,
    int cbStride,
    int cbImageBuffer,
    Pointer<Uint8> pImageBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID imageFormat,
            Uint32 dwWidth,
            Uint32 dwHeight,
            Int32 cbStride,
            Uint32 cbImageBuffer,
            Pointer<Uint8> pImageBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID imageFormat,
            int dwWidth,
            int dwHeight,
            int cbStride,
            int cbImageBuffer,
            Pointer<Uint8> pImageBuffer,
          )>()(
        ptr.ref.lpVtbl,
        imageFormat,
        dwWidth,
        dwHeight,
        cbStride,
        cbImageBuffer,
        pImageBuffer,
      );

  int GetRendererStatistics(
    Pointer<BITMAP_RENDERER_STATISTICS> pStatistics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BITMAP_RENDERER_STATISTICS> pStatistics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BITMAP_RENDERER_STATISTICS> pStatistics,
          )>()(
        ptr.ref.lpVtbl,
        pStatistics,
      );

  int RemoveMapping() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
