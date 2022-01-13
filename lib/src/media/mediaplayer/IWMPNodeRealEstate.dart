// IWMPNodeRealEstate.dart

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

/// @nodoc
const IID_IWMPNodeRealEstate = '{42751198-5A50-4460-BCB4-709F8BDC8E59}';

/// {@category Interface}
/// {@category com}
class IWMPNodeRealEstate extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IWMPNodeRealEstate(Pointer<COMObject> ptr) : super(ptr);

  int GetDesiredSize(
    Pointer<SIZE> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pSize,
          )>()(
        ptr.ref.lpVtbl,
        pSize,
      );

  int SetRects(
    Pointer<RECT> pSrc,
    Pointer<RECT> pDest,
    Pointer<RECT> pClip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSrc,
            Pointer<RECT> pDest,
            Pointer<RECT> pClip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSrc,
            Pointer<RECT> pDest,
            Pointer<RECT> pClip,
          )>()(
        ptr.ref.lpVtbl,
        pSrc,
        pDest,
        pClip,
      );

  int GetRects(
    Pointer<RECT> pSrc,
    Pointer<RECT> pDest,
    Pointer<RECT> pClip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> pSrc,
            Pointer<RECT> pDest,
            Pointer<RECT> pClip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> pSrc,
            Pointer<RECT> pDest,
            Pointer<RECT> pClip,
          )>()(
        ptr.ref.lpVtbl,
        pSrc,
        pDest,
        pClip,
      );

  int SetWindowless(
    int fWindowless,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fWindowless,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fWindowless,
          )>()(
        ptr.ref.lpVtbl,
        fWindowless,
      );

  int GetWindowless(
    Pointer<Int32> pfWindowless,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfWindowless,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfWindowless,
          )>()(
        ptr.ref.lpVtbl,
        pfWindowless,
      );

  int SetFullScreen(
    int fFullScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fFullScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fFullScreen,
          )>()(
        ptr.ref.lpVtbl,
        fFullScreen,
      );

  int GetFullScreen(
    Pointer<Int32> pfFullScreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfFullScreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfFullScreen,
          )>()(
        ptr.ref.lpVtbl,
        pfFullScreen,
      );
}
