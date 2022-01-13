// IMultiLanguage3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../globalization/IMultiLanguage2.dart';
import '../foundation/structs.g.dart';
import '../system/com/IStream.dart';

/// @nodoc
const IID_IMultiLanguage3 = '{4E5868AB-B157-4623-9ACC-6A1D9CAEBE04}';

/// {@category Interface}
/// {@category com}
class IMultiLanguage3 extends IMultiLanguage2 {
  // vtable begins at 30, is 2 entries long.
  IMultiLanguage3(Pointer<COMObject> ptr) : super(ptr);

  int DetectOutboundCodePage(
    int dwFlags,
    Pointer<Utf16> lpWideCharStr,
    int cchWideChar,
    Pointer<Uint32> puiPreferredCodePages,
    int nPreferredCodePages,
    Pointer<Uint32> puiDetectedCodePages,
    Pointer<Uint32> pnDetectedCodePages,
    Pointer<Utf16> lpSpecialChar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Utf16> lpWideCharStr,
            Uint32 cchWideChar,
            Pointer<Uint32> puiPreferredCodePages,
            Uint32 nPreferredCodePages,
            Pointer<Uint32> puiDetectedCodePages,
            Pointer<Uint32> pnDetectedCodePages,
            Pointer<Utf16> lpSpecialChar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Utf16> lpWideCharStr,
            int cchWideChar,
            Pointer<Uint32> puiPreferredCodePages,
            int nPreferredCodePages,
            Pointer<Uint32> puiDetectedCodePages,
            Pointer<Uint32> pnDetectedCodePages,
            Pointer<Utf16> lpSpecialChar,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        lpWideCharStr,
        cchWideChar,
        puiPreferredCodePages,
        nPreferredCodePages,
        puiDetectedCodePages,
        pnDetectedCodePages,
        lpSpecialChar,
      );

  int DetectOutboundCodePageInIStream(
    int dwFlags,
    Pointer<COMObject> pStrIn,
    Pointer<Uint32> puiPreferredCodePages,
    int nPreferredCodePages,
    Pointer<Uint32> puiDetectedCodePages,
    Pointer<Uint32> pnDetectedCodePages,
    Pointer<Utf16> lpSpecialChar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pStrIn,
            Pointer<Uint32> puiPreferredCodePages,
            Uint32 nPreferredCodePages,
            Pointer<Uint32> puiDetectedCodePages,
            Pointer<Uint32> pnDetectedCodePages,
            Pointer<Utf16> lpSpecialChar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pStrIn,
            Pointer<Uint32> puiPreferredCodePages,
            int nPreferredCodePages,
            Pointer<Uint32> puiDetectedCodePages,
            Pointer<Uint32> pnDetectedCodePages,
            Pointer<Utf16> lpSpecialChar,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pStrIn,
        puiPreferredCodePages,
        nPreferredCodePages,
        puiDetectedCodePages,
        pnDetectedCodePages,
        lpSpecialChar,
      );
}
