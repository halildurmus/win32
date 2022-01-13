// IMFVideoDisplayControl.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IMFVideoDisplayControl = '{A490B1E4-AB84-4D31-A1B2-181E03B1077A}';

/// {@category Interface}
/// {@category com}
class IMFVideoDisplayControl extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IMFVideoDisplayControl(Pointer<COMObject> ptr) : super(ptr);

  int GetNativeVideoSize(
    Pointer<SIZE> pszVideo,
    Pointer<SIZE> pszARVideo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pszVideo,
            Pointer<SIZE> pszARVideo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pszVideo,
            Pointer<SIZE> pszARVideo,
          )>()(
        ptr.ref.lpVtbl,
        pszVideo,
        pszARVideo,
      );

  int GetIdealVideoSize(
    Pointer<SIZE> pszMin,
    Pointer<SIZE> pszMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SIZE> pszMin,
            Pointer<SIZE> pszMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SIZE> pszMin,
            Pointer<SIZE> pszMax,
          )>()(
        ptr.ref.lpVtbl,
        pszMin,
        pszMax,
      );

  int SetVideoPosition(
    Pointer<MFVideoNormalizedRect> pnrcSource,
    Pointer<RECT> prcDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
            Pointer<RECT> prcDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
            Pointer<RECT> prcDest,
          )>()(
        ptr.ref.lpVtbl,
        pnrcSource,
        prcDest,
      );

  int GetVideoPosition(
    Pointer<MFVideoNormalizedRect> pnrcSource,
    Pointer<RECT> prcDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
            Pointer<RECT> prcDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFVideoNormalizedRect> pnrcSource,
            Pointer<RECT> prcDest,
          )>()(
        ptr.ref.lpVtbl,
        pnrcSource,
        prcDest,
      );

  int SetAspectRatioMode(
    int dwAspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        dwAspectRatioMode,
      );

  int GetAspectRatioMode(
    Pointer<Uint32> pdwAspectRatioMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAspectRatioMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAspectRatioMode,
          )>()(
        ptr.ref.lpVtbl,
        pdwAspectRatioMode,
      );

  int SetVideoWindow(
    int hwndVideo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndVideo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndVideo,
          )>()(
        ptr.ref.lpVtbl,
        hwndVideo,
      );

  int GetVideoWindow(
    Pointer<IntPtr> phwndVideo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwndVideo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwndVideo,
          )>()(
        ptr.ref.lpVtbl,
        phwndVideo,
      );

  int RepaintVideo() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetCurrentImage(
    Pointer<BITMAPINFOHEADER> pBih,
    Pointer<Pointer<Uint8>> pDib,
    Pointer<Uint32> pcbDib,
    Pointer<Int64> pTimeStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BITMAPINFOHEADER> pBih,
            Pointer<Pointer<Uint8>> pDib,
            Pointer<Uint32> pcbDib,
            Pointer<Int64> pTimeStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BITMAPINFOHEADER> pBih,
            Pointer<Pointer<Uint8>> pDib,
            Pointer<Uint32> pcbDib,
            Pointer<Int64> pTimeStamp,
          )>()(
        ptr.ref.lpVtbl,
        pBih,
        pDib,
        pcbDib,
        pTimeStamp,
      );

  int SetBorderColor(
    int Clr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Clr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Clr,
          )>()(
        ptr.ref.lpVtbl,
        Clr,
      );

  int GetBorderColor(
    Pointer<Uint32> pClr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pClr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pClr,
          )>()(
        ptr.ref.lpVtbl,
        pClr,
      );

  int SetRenderingPrefs(
    int dwRenderFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRenderFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRenderFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwRenderFlags,
      );

  int GetRenderingPrefs(
    Pointer<Uint32> pdwRenderFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRenderFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRenderFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwRenderFlags,
      );

  int SetFullscreen(
    int fFullscreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fFullscreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fFullscreen,
          )>()(
        ptr.ref.lpVtbl,
        fFullscreen,
      );

  int GetFullscreen(
    Pointer<Int32> pfFullscreen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfFullscreen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfFullscreen,
          )>()(
        ptr.ref.lpVtbl,
        pfFullscreen,
      );
}
