// ITfLangBarItemBitmap.dart

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

import '../../ui/textservices/ITfLangBarItem.dart';
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_ITfLangBarItemBitmap = '{73830352-D722-4179-ADA5-F045C98DF355}';

/// {@category Interface}
/// {@category com}
class ITfLangBarItemBitmap extends ITfLangBarItem {
  // vtable begins at 7, is 3 entries long.
  ITfLangBarItemBitmap(Pointer<COMObject> ptr) : super(ptr);

  int OnClick(
    int click,
    POINT pt,
    Pointer<RECT> prcArea,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 click,
            POINT pt,
            Pointer<RECT> prcArea,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int click,
            POINT pt,
            Pointer<RECT> prcArea,
          )>()(
        ptr.ref.lpVtbl,
        click,
        pt,
        prcArea,
      );

  int GetPreferredSize(
    Pointer<SIZE> pszDefault,
    Pointer<SIZE> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pszDefault,
            Pointer<SIZE> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pszDefault,
            Pointer<SIZE> psz,
          )>()(
        ptr.ref.lpVtbl,
        pszDefault,
        psz,
      );

  int DrawBitmap(
    int bmWidth,
    int bmHeight,
    int dwFlags,
    Pointer<IntPtr> phbmp,
    Pointer<IntPtr> phbmpMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bmWidth,
            Int32 bmHeight,
            Uint32 dwFlags,
            Pointer<IntPtr> phbmp,
            Pointer<IntPtr> phbmpMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bmWidth,
            int bmHeight,
            int dwFlags,
            Pointer<IntPtr> phbmp,
            Pointer<IntPtr> phbmpMask,
          )>()(
        ptr.ref.lpVtbl,
        bmWidth,
        bmHeight,
        dwFlags,
        phbmp,
        phbmpMask,
      );
}
