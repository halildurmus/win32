// IMLangFontLink.dart

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

import '../globalization/IMLangCodePages.dart';
import '../graphics/gdi/structs.g.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IMLangFontLink = '{359F3441-BD4A-11D0-B188-00AA0038C969}';

/// {@category Interface}
/// {@category com}
class IMLangFontLink extends IMLangCodePages {
  // vtable begins at 7, is 4 entries long.
  IMLangFontLink(Pointer<COMObject> ptr) : super(ptr);

  int GetFontCodePages(
    int hDC,
    int hFont,
    Pointer<Uint32> pdwCodePages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            IntPtr hFont,
            Pointer<Uint32> pdwCodePages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            int hFont,
            Pointer<Uint32> pdwCodePages,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        hFont,
        pdwCodePages,
      );

  int MapFont(
    int hDC,
    int dwCodePages,
    int hSrcFont,
    Pointer<IntPtr> phDestFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hDC,
            Uint32 dwCodePages,
            IntPtr hSrcFont,
            Pointer<IntPtr> phDestFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hDC,
            int dwCodePages,
            int hSrcFont,
            Pointer<IntPtr> phDestFont,
          )>()(
        ptr.ref.lpVtbl,
        hDC,
        dwCodePages,
        hSrcFont,
        phDestFont,
      );

  int ReleaseFont(
    int hFont,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hFont,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hFont,
          )>()(
        ptr.ref.lpVtbl,
        hFont,
      );

  int ResetFontMapping() => ptr.ref.lpVtbl.value
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
