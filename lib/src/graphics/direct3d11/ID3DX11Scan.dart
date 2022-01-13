// ID3DX11Scan.dart

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
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d11/ID3D11UnorderedAccessView.dart';

/// @nodoc
const IID_ID3DX11Scan = '{5089B68F-E71D-4D38-BE8E-F363B95A9405}';

/// {@category Interface}
/// {@category com}
class ID3DX11Scan extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3DX11Scan(Pointer<COMObject> ptr) : super(ptr);

  int SetScanDirection(
    int Direction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Direction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Direction,
          )>()(
        ptr.ref.lpVtbl,
        Direction,
      );

  int Scan(
    int ElementType,
    int OpCode,
    int ElementScanSize,
    Pointer<COMObject> pSrc,
    Pointer<COMObject> pDst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ElementType,
            Int32 OpCode,
            Uint32 ElementScanSize,
            Pointer<COMObject> pSrc,
            Pointer<COMObject> pDst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ElementType,
            int OpCode,
            int ElementScanSize,
            Pointer<COMObject> pSrc,
            Pointer<COMObject> pDst,
          )>()(
        ptr.ref.lpVtbl,
        ElementType,
        OpCode,
        ElementScanSize,
        pSrc,
        pDst,
      );

  int Multiscan(
    int ElementType,
    int OpCode,
    int ElementScanSize,
    int ElementScanPitch,
    int ScanCount,
    Pointer<COMObject> pSrc,
    Pointer<COMObject> pDst,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ElementType,
            Int32 OpCode,
            Uint32 ElementScanSize,
            Uint32 ElementScanPitch,
            Uint32 ScanCount,
            Pointer<COMObject> pSrc,
            Pointer<COMObject> pDst,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ElementType,
            int OpCode,
            int ElementScanSize,
            int ElementScanPitch,
            int ScanCount,
            Pointer<COMObject> pSrc,
            Pointer<COMObject> pDst,
          )>()(
        ptr.ref.lpVtbl,
        ElementType,
        OpCode,
        ElementScanSize,
        ElementScanPitch,
        ScanCount,
        pSrc,
        pDst,
      );
}
