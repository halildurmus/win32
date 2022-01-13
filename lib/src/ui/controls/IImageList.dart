// IImageList.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IImageList = '{46EB5926-582E-4017-9FDF-E8998DAA0950}';

/// {@category Interface}
/// {@category com}
class IImageList extends IUnknown {
  // vtable begins at 3, is 29 entries long.
  IImageList(Pointer<COMObject> ptr) : super(ptr);

  int Add(
    int hbmImage,
    int hbmMask,
    Pointer<Int32> pi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hbmImage,
            IntPtr hbmMask,
            Pointer<Int32> pi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hbmImage,
            int hbmMask,
            Pointer<Int32> pi,
          )>()(
        ptr.ref.lpVtbl,
        hbmImage,
        hbmMask,
        pi,
      );

  int ReplaceIcon(
    int i,
    int hicon,
    Pointer<Int32> pi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            IntPtr hicon,
            Pointer<Int32> pi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            int hicon,
            Pointer<Int32> pi,
          )>()(
        ptr.ref.lpVtbl,
        i,
        hicon,
        pi,
      );

  int SetOverlayImage(
    int iImage,
    int iOverlay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iImage,
            Int32 iOverlay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iImage,
            int iOverlay,
          )>()(
        ptr.ref.lpVtbl,
        iImage,
        iOverlay,
      );

  int Replace(
    int i,
    int hbmImage,
    int hbmMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            IntPtr hbmImage,
            IntPtr hbmMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            int hbmImage,
            int hbmMask,
          )>()(
        ptr.ref.lpVtbl,
        i,
        hbmImage,
        hbmMask,
      );

  int AddMasked(
    int hbmImage,
    int crMask,
    Pointer<Int32> pi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hbmImage,
            Uint32 crMask,
            Pointer<Int32> pi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hbmImage,
            int crMask,
            Pointer<Int32> pi,
          )>()(
        ptr.ref.lpVtbl,
        hbmImage,
        crMask,
        pi,
      );

  int Draw(
    Pointer<IMAGELISTDRAWPARAMS> pimldp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Remove(
    int i,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
          )>()(
        ptr.ref.lpVtbl,
        i,
      );

  int GetIcon(
    int i,
    int flags,
    Pointer<IntPtr> picon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            Uint32 flags,
            Pointer<IntPtr> picon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            int flags,
            Pointer<IntPtr> picon,
          )>()(
        ptr.ref.lpVtbl,
        i,
        flags,
        picon,
      );

  int GetImageInfo(
    int i,
    Pointer<IMAGEINFO> pImageInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            Pointer<IMAGEINFO> pImageInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            Pointer<IMAGEINFO> pImageInfo,
          )>()(
        ptr.ref.lpVtbl,
        i,
        pImageInfo,
      );

  int Copy(
    int iDst,
    Pointer<COMObject> punkSrc,
    int iSrc,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iDst,
            Pointer<COMObject> punkSrc,
            Int32 iSrc,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iDst,
            Pointer<COMObject> punkSrc,
            int iSrc,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        iDst,
        punkSrc,
        iSrc,
        uFlags,
      );

  int Merge(
    int i1,
    Pointer<COMObject> punk2,
    int i2,
    int dx,
    int dy,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i1,
            Pointer<COMObject> punk2,
            Int32 i2,
            Int32 dx,
            Int32 dy,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i1,
            Pointer<COMObject> punk2,
            int i2,
            int dx,
            int dy,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        i1,
        punk2,
        i2,
        dx,
        dy,
        riid,
        ppv,
      );

  int Clone(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetImageRect(
    int i,
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        i,
        prc,
      );

  int GetIconSize(
    Pointer<Int32> cx,
    Pointer<Int32> cy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> cx,
            Pointer<Int32> cy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> cx,
            Pointer<Int32> cy,
          )>()(
        ptr.ref.lpVtbl,
        cx,
        cy,
      );

  int SetIconSize(
    int cx,
    int cy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 cx,
            Int32 cy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cx,
            int cy,
          )>()(
        ptr.ref.lpVtbl,
        cx,
        cy,
      );

  int GetImageCount(
    Pointer<Int32> pi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pi,
          )>()(
        ptr.ref.lpVtbl,
        pi,
      );

  int SetImageCount(
    int uNewCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uNewCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uNewCount,
          )>()(
        ptr.ref.lpVtbl,
        uNewCount,
      );

  int SetBkColor(
    int clrBk,
    Pointer<Uint32> pclr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 clrBk,
            Pointer<Uint32> pclr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int clrBk,
            Pointer<Uint32> pclr,
          )>()(
        ptr.ref.lpVtbl,
        clrBk,
        pclr,
      );

  int GetBkColor(
    Pointer<Uint32> pclr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pclr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pclr,
          )>()(
        ptr.ref.lpVtbl,
        pclr,
      );

  int BeginDrag(
    int iTrack,
    int dxHotspot,
    int dyHotspot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iTrack,
            Int32 dxHotspot,
            Int32 dyHotspot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iTrack,
            int dxHotspot,
            int dyHotspot,
          )>()(
        ptr.ref.lpVtbl,
        iTrack,
        dxHotspot,
        dyHotspot,
      );

  int EndDrag() => ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int DragEnter(
    int hwndLock,
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndLock,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndLock,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        hwndLock,
        x,
        y,
      );

  int DragLeave(
    int hwndLock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndLock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndLock,
          )>()(
        ptr.ref.lpVtbl,
        hwndLock,
      );

  int DragMove(
    int x,
    int y,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 x,
            Int32 y,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int x,
            int y,
          )>()(
        ptr.ref.lpVtbl,
        x,
        y,
      );

  int SetDragCursorImage(
    Pointer<COMObject> punk,
    int iDrag,
    int dxHotspot,
    int dyHotspot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Int32 iDrag,
            Int32 dxHotspot,
            Int32 dyHotspot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int iDrag,
            int dxHotspot,
            int dyHotspot,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        iDrag,
        dxHotspot,
        dyHotspot,
      );

  int DragShowNolock(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );

  int GetDragImage(
    Pointer<POINT> ppt,
    Pointer<POINT> pptHotspot,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> ppt,
            Pointer<POINT> pptHotspot,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> ppt,
            Pointer<POINT> pptHotspot,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        ppt,
        pptHotspot,
        riid,
        ppv,
      );

  int GetItemFlags(
    int i,
    Pointer<Uint32> dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 i,
            Pointer<Uint32> dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int i,
            Pointer<Uint32> dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        i,
        dwFlags,
      );

  int GetOverlayImage(
    int iOverlay,
    Pointer<Int32> piIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iOverlay,
            Pointer<Int32> piIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iOverlay,
            Pointer<Int32> piIndex,
          )>()(
        ptr.ref.lpVtbl,
        iOverlay,
        piIndex,
      );
}

/// @nodoc
const CLSID_ImageList = '{7C476BA2-02B1-48F4-8048-B24619DDC058}';

/// {@category com}
class ImageList extends IImageList {
  ImageList(Pointer<COMObject> ptr) : super(ptr);

  factory ImageList.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ImageList);
    final iid = calloc<GUID>()..ref.setGUID(IID_IImageList);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ImageList(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
