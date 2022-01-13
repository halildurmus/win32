// IImageList2.dart

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

import '../../ui/controls/IImageList.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/controls/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IImageList2 = '{192B9D83-50FC-457B-90A0-2B82A8B5DAE1}';

/// {@category Interface}
/// {@category com}
class IImageList2 extends IImageList {
  // vtable begins at 32, is 12 entries long.
  IImageList2(Pointer<COMObject> ptr) : super(ptr);

  int Resize(
    int cxNewIconSize,
    int cyNewIconSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cxNewIconSize,
            Int32 cyNewIconSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cxNewIconSize,
            int cyNewIconSize,
          )>()(
        ptr.ref.lpVtbl,
        cxNewIconSize,
        cyNewIconSize,
      );

  int GetOriginalSize(
    int iImage,
    int dwFlags,
    Pointer<Int32> pcx,
    Pointer<Int32> pcy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iImage,
            Uint32 dwFlags,
            Pointer<Int32> pcx,
            Pointer<Int32> pcy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iImage,
            int dwFlags,
            Pointer<Int32> pcx,
            Pointer<Int32> pcy,
          )>()(
        ptr.ref.lpVtbl,
        iImage,
        dwFlags,
        pcx,
        pcy,
      );

  int SetOriginalSize(
    int iImage,
    int cx,
    int cy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iImage,
            Int32 cx,
            Int32 cy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iImage,
            int cx,
            int cy,
          )>()(
        ptr.ref.lpVtbl,
        iImage,
        cx,
        cy,
      );

  int SetCallback(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int GetCallback(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int ForceImagePresent(
    int iImage,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iImage,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iImage,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        iImage,
        dwFlags,
      );

  int DiscardImages(
    int iFirstImage,
    int iLastImage,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iFirstImage,
            Int32 iLastImage,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFirstImage,
            int iLastImage,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        iFirstImage,
        iLastImage,
        dwFlags,
      );

  int PreloadImages(
    Pointer<IMAGELISTDRAWPARAMS> pimldp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMAGELISTDRAWPARAMS> pimldp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMAGELISTDRAWPARAMS> pimldp,
          )>()(
        ptr.ref.lpVtbl,
        pimldp,
      );

  int GetStatistics(
    Pointer<IMAGELISTSTATS> pils,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMAGELISTSTATS> pils,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMAGELISTSTATS> pils,
          )>()(
        ptr.ref.lpVtbl,
        pils,
      );

  int Initialize(
    int cx,
    int cy,
    int flags,
    int cInitial,
    int cGrow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cx,
            Int32 cy,
            Uint32 flags,
            Int32 cInitial,
            Int32 cGrow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cx,
            int cy,
            int flags,
            int cInitial,
            int cGrow,
          )>()(
        ptr.ref.lpVtbl,
        cx,
        cy,
        flags,
        cInitial,
        cGrow,
      );

  int Replace2(
    int i,
    int hbmImage,
    int hbmMask,
    Pointer<COMObject> punk,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            IntPtr hbmImage,
            IntPtr hbmMask,
            Pointer<COMObject> punk,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            int hbmImage,
            int hbmMask,
            Pointer<COMObject> punk,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        i,
        hbmImage,
        hbmMask,
        punk,
        dwFlags,
      );

  int ReplaceFromImageList(
    int i,
    Pointer<COMObject> pil,
    int iSrc,
    Pointer<COMObject> punk,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            Pointer<COMObject> pil,
            Int32 iSrc,
            Pointer<COMObject> punk,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            Pointer<COMObject> pil,
            int iSrc,
            Pointer<COMObject> punk,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        i,
        pil,
        iSrc,
        punk,
        dwFlags,
      );
}
