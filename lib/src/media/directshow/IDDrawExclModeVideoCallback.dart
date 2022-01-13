// IDDrawExclModeVideoCallback.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IDDrawExclModeVideoCallback =
    '{913C24A0-20AB-11D2-9038-00A0C9697298}';

/// {@category Interface}
/// {@category com}
class IDDrawExclModeVideoCallback extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDDrawExclModeVideoCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnUpdateOverlay(
    int bBefore,
    int dwFlags,
    int bOldVisible,
    Pointer<RECT> prcOldSrc,
    Pointer<RECT> prcOldDest,
    int bNewVisible,
    Pointer<RECT> prcNewSrc,
    Pointer<RECT> prcNewDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bBefore,
            Uint32 dwFlags,
            Int32 bOldVisible,
            Pointer<RECT> prcOldSrc,
            Pointer<RECT> prcOldDest,
            Int32 bNewVisible,
            Pointer<RECT> prcNewSrc,
            Pointer<RECT> prcNewDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bBefore,
            int dwFlags,
            int bOldVisible,
            Pointer<RECT> prcOldSrc,
            Pointer<RECT> prcOldDest,
            int bNewVisible,
            Pointer<RECT> prcNewSrc,
            Pointer<RECT> prcNewDest,
          )>()(
        ptr.ref.lpVtbl,
        bBefore,
        dwFlags,
        bOldVisible,
        prcOldSrc,
        prcOldDest,
        bNewVisible,
        prcNewSrc,
        prcNewDest,
      );

  int OnUpdateColorKey(
    Pointer<COLORKEY> pKey,
    int dwColor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COLORKEY> pKey,
            Uint32 dwColor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COLORKEY> pKey,
            int dwColor,
          )>()(
        ptr.ref.lpVtbl,
        pKey,
        dwColor,
      );

  int OnUpdateSize(
    int dwWidth,
    int dwHeight,
    int dwARWidth,
    int dwARHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWidth,
            Uint32 dwHeight,
            Uint32 dwARWidth,
            Uint32 dwARHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWidth,
            int dwHeight,
            int dwARWidth,
            int dwARHeight,
          )>()(
        ptr.ref.lpVtbl,
        dwWidth,
        dwHeight,
        dwARWidth,
        dwARHeight,
      );
}
