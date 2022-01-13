// IWICDdsFrameDecode.dart

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
import '../../graphics/imaging/structs.g.dart';

/// @nodoc
const IID_IWICDdsFrameDecode = '{3D4C0C61-18A4-41E4-BD80-481A4FC9F464}';

/// {@category Interface}
/// {@category com}
class IWICDdsFrameDecode extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWICDdsFrameDecode(Pointer<COMObject> ptr) : super(ptr);

  int GetSizeInBlocks(
    Pointer<Uint32> pWidthInBlocks,
    Pointer<Uint32> pHeightInBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pWidthInBlocks,
            Pointer<Uint32> pHeightInBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pWidthInBlocks,
            Pointer<Uint32> pHeightInBlocks,
          )>()(
        ptr.ref.lpVtbl,
        pWidthInBlocks,
        pHeightInBlocks,
      );

  int GetFormatInfo(
    Pointer<WICDdsFormatInfo> pFormatInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICDdsFormatInfo> pFormatInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICDdsFormatInfo> pFormatInfo,
          )>()(
        ptr.ref.lpVtbl,
        pFormatInfo,
      );

  int CopyBlocks(
    Pointer<WICRect> prcBoundsInBlocks,
    int cbStride,
    int cbBufferSize,
    Pointer<Uint8> pbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICRect> prcBoundsInBlocks,
            Uint32 cbStride,
            Uint32 cbBufferSize,
            Pointer<Uint8> pbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICRect> prcBoundsInBlocks,
            int cbStride,
            int cbBufferSize,
            Pointer<Uint8> pbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        prcBoundsInBlocks,
        cbStride,
        cbBufferSize,
        pbBuffer,
      );
}
