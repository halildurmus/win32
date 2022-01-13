// IWICBitmapDecoderInfo.dart

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

import '../../graphics/imaging/IWICBitmapCodecInfo.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../graphics/imaging/IWICBitmapDecoder.dart';

/// @nodoc
const IID_IWICBitmapDecoderInfo = '{D8CD007F-D08F-4191-9BFC-236EA7F0E4B5}';

/// {@category Interface}
/// {@category com}
class IWICBitmapDecoderInfo extends IWICBitmapCodecInfo {
  // vtable begins at 23, is 3 entries long.
  IWICBitmapDecoderInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetPatterns(
    int cbSizePatterns,
    Pointer<WICBitmapPattern> pPatterns,
    Pointer<Uint32> pcPatterns,
    Pointer<Uint32> pcbPatternsActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSizePatterns,
            Pointer<WICBitmapPattern> pPatterns,
            Pointer<Uint32> pcPatterns,
            Pointer<Uint32> pcbPatternsActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSizePatterns,
            Pointer<WICBitmapPattern> pPatterns,
            Pointer<Uint32> pcPatterns,
            Pointer<Uint32> pcbPatternsActual,
          )>()(
        ptr.ref.lpVtbl,
        cbSizePatterns,
        pPatterns,
        pcPatterns,
        pcbPatternsActual,
      );

  int MatchesPattern(
    Pointer<COMObject> pIStream,
    Pointer<Int32> pfMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<Int32> pfMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Pointer<Int32> pfMatches,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        pfMatches,
      );

  int CreateInstance(
    Pointer<Pointer<COMObject>> ppIBitmapDecoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapDecoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapDecoder,
          )>()(
        ptr.ref.lpVtbl,
        ppIBitmapDecoder,
      );
}
