// IDWriteFactory5.dart

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

import '../../graphics/directwrite/IDWriteFactory4.dart';
import '../../graphics/directwrite/IDWriteFontSetBuilder1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteInMemoryFontFileLoader.dart';
import '../../graphics/directwrite/IDWriteRemoteFontFileLoader.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFileStream.dart';

/// @nodoc
const IID_IDWriteFactory5 = '{958DB99A-BE2A-4F09-AF7D-65189803D1D3}';

/// {@category Interface}
/// {@category com}
class IDWriteFactory5 extends IDWriteFactory4 {
  // vtable begins at 43, is 5 entries long.
  IDWriteFactory5(Pointer<COMObject> ptr) : super(ptr);

  int CreateFontSetBuilder_1(
    Pointer<Pointer<COMObject>> fontSetBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSetBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSetBuilder,
          )>()(
        ptr.ref.lpVtbl,
        fontSetBuilder,
      );

  int CreateInMemoryFontFileLoader(
    Pointer<Pointer<COMObject>> newLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> newLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> newLoader,
          )>()(
        ptr.ref.lpVtbl,
        newLoader,
      );

  int CreateHttpFontFileLoader(
    Pointer<Utf16> referrerUrl,
    Pointer<Utf16> extraHeaders,
    Pointer<Pointer<COMObject>> newLoader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> referrerUrl,
            Pointer<Utf16> extraHeaders,
            Pointer<Pointer<COMObject>> newLoader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> referrerUrl,
            Pointer<Utf16> extraHeaders,
            Pointer<Pointer<COMObject>> newLoader,
          )>()(
        ptr.ref.lpVtbl,
        referrerUrl,
        extraHeaders,
        newLoader,
      );

  int AnalyzeContainerType(
    Pointer fileData,
    int fileDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer fileData,
            Uint32 fileDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fileData,
            int fileDataSize,
          )>()(
        ptr.ref.lpVtbl,
        fileData,
        fileDataSize,
      );

  int UnpackFontFile(
    int containerType,
    Pointer fileData,
    int fileDataSize,
    Pointer<Pointer<COMObject>> unpackedFontStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 containerType,
            Pointer fileData,
            Uint32 fileDataSize,
            Pointer<Pointer<COMObject>> unpackedFontStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int containerType,
            Pointer fileData,
            int fileDataSize,
            Pointer<Pointer<COMObject>> unpackedFontStream,
          )>()(
        ptr.ref.lpVtbl,
        containerType,
        fileData,
        fileDataSize,
        unpackedFontStream,
      );
}
