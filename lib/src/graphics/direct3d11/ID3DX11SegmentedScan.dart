// ID3DX11SegmentedScan.dart

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
const IID_ID3DX11SegmentedScan = '{A915128C-D954-4C79-BFE1-64DB923194D6}';

/// {@category Interface}
/// {@category com}
class ID3DX11SegmentedScan extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID3DX11SegmentedScan(Pointer<COMObject> ptr) : super(ptr);

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

  int SegScan(
    int ElementType,
    int OpCode,
    int ElementScanSize,
    Pointer<COMObject> pSrc,
    Pointer<COMObject> pSrcElementFlags,
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
            Pointer<COMObject> pSrcElementFlags,
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
            Pointer<COMObject> pSrcElementFlags,
            Pointer<COMObject> pDst,
          )>()(
        ptr.ref.lpVtbl,
        ElementType,
        OpCode,
        ElementScanSize,
        pSrc,
        pSrcElementFlags,
        pDst,
      );
}
