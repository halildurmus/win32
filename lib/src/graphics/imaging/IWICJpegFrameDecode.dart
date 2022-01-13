// IWICJpegFrameDecode.dart

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
import '../../graphics/dxgi/common/structs.g.dart';

/// @nodoc
const IID_IWICJpegFrameDecode = '{8939F66E-C46A-4C21-A9D1-98B327CE1679}';

/// {@category Interface}
/// {@category com}
class IWICJpegFrameDecode extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IWICJpegFrameDecode(Pointer<COMObject> ptr) : super(ptr);

  int DoesSupportIndexing(
    Pointer<Int32> pfIndexingSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIndexingSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIndexingSupported,
          )>()(
        ptr.ref.lpVtbl,
        pfIndexingSupported,
      );

  int SetIndexing(
    int options,
    int horizontalIntervalSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 options,
            Uint32 horizontalIntervalSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            int horizontalIntervalSize,
          )>()(
        ptr.ref.lpVtbl,
        options,
        horizontalIntervalSize,
      );

  int ClearIndexing() => ptr.ref.lpVtbl.value
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

  int GetAcHuffmanTable(
    int scanIndex,
    int tableIndex,
    Pointer<DXGI_JPEG_AC_HUFFMAN_TABLE> pAcHuffmanTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
          .elementAt(7)
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
          .elementAt(8)
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

  int GetFrameHeader(
    Pointer<WICJpegFrameHeader> pFrameHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WICJpegFrameHeader> pFrameHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WICJpegFrameHeader> pFrameHeader,
          )>()(
        ptr.ref.lpVtbl,
        pFrameHeader,
      );

  int GetScanHeader(
    int scanIndex,
    Pointer<WICJpegScanHeader> pScanHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 scanIndex,
            Pointer<WICJpegScanHeader> pScanHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scanIndex,
            Pointer<WICJpegScanHeader> pScanHeader,
          )>()(
        ptr.ref.lpVtbl,
        scanIndex,
        pScanHeader,
      );

  int CopyScan(
    int scanIndex,
    int scanOffset,
    int cbScanData,
    Pointer<Uint8> pbScanData,
    Pointer<Uint32> pcbScanDataActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 scanIndex,
            Uint32 scanOffset,
            Uint32 cbScanData,
            Pointer<Uint8> pbScanData,
            Pointer<Uint32> pcbScanDataActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scanIndex,
            int scanOffset,
            int cbScanData,
            Pointer<Uint8> pbScanData,
            Pointer<Uint32> pcbScanDataActual,
          )>()(
        ptr.ref.lpVtbl,
        scanIndex,
        scanOffset,
        cbScanData,
        pbScanData,
        pcbScanDataActual,
      );

  int CopyMinimalStream(
    int streamOffset,
    int cbStreamData,
    Pointer<Uint8> pbStreamData,
    Pointer<Uint32> pcbStreamDataActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 streamOffset,
            Uint32 cbStreamData,
            Pointer<Uint8> pbStreamData,
            Pointer<Uint32> pcbStreamDataActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int streamOffset,
            int cbStreamData,
            Pointer<Uint8> pbStreamData,
            Pointer<Uint32> pcbStreamDataActual,
          )>()(
        ptr.ref.lpVtbl,
        streamOffset,
        cbStreamData,
        pbStreamData,
        pcbStreamDataActual,
      );
}
