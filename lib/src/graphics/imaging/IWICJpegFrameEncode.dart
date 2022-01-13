// IWICJpegFrameEncode.dart

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
import '../../graphics/dxgi/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICJpegFrameEncode = '{2F0C601F-D2C6-468C-ABFA-49495D983ED1}';

/// {@category Interface}
/// {@category com}
class IWICJpegFrameEncode extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWICJpegFrameEncode(Pointer<COMObject> ptr) : super(ptr);

  int GetAcHuffmanTable(
    int scanIndex,
    int tableIndex,
    Pointer<DXGI_JPEG_AC_HUFFMAN_TABLE> pAcHuffmanTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 scanIndex,
            Uint32 tableIndex,
            Pointer<DXGI_JPEG_AC_HUFFMAN_TABLE> pAcHuffmanTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scanIndex,
            int tableIndex,
            Pointer<DXGI_JPEG_AC_HUFFMAN_TABLE> pAcHuffmanTable,
          )>()(
        ptr.ref.lpVtbl,
        scanIndex,
        tableIndex,
        pAcHuffmanTable,
      );

  int GetDcHuffmanTable(
    int scanIndex,
    int tableIndex,
    Pointer<DXGI_JPEG_DC_HUFFMAN_TABLE> pDcHuffmanTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 scanIndex,
            Uint32 tableIndex,
            Pointer<DXGI_JPEG_DC_HUFFMAN_TABLE> pDcHuffmanTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scanIndex,
            int tableIndex,
            Pointer<DXGI_JPEG_DC_HUFFMAN_TABLE> pDcHuffmanTable,
          )>()(
        ptr.ref.lpVtbl,
        scanIndex,
        tableIndex,
        pDcHuffmanTable,
      );

  int GetQuantizationTable(
    int scanIndex,
    int tableIndex,
    Pointer<DXGI_JPEG_QUANTIZATION_TABLE> pQuantizationTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 scanIndex,
            Uint32 tableIndex,
            Pointer<DXGI_JPEG_QUANTIZATION_TABLE> pQuantizationTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scanIndex,
            int tableIndex,
            Pointer<DXGI_JPEG_QUANTIZATION_TABLE> pQuantizationTable,
          )>()(
        ptr.ref.lpVtbl,
        scanIndex,
        tableIndex,
        pQuantizationTable,
      );

  int WriteScan(
    int cbScanData,
    Pointer<Uint8> pbScanData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbScanData,
            Pointer<Uint8> pbScanData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbScanData,
            Pointer<Uint8> pbScanData,
          )>()(
        ptr.ref.lpVtbl,
        cbScanData,
        pbScanData,
      );
}
