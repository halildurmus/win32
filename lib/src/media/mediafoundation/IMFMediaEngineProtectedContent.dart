// IMFMediaEngineProtectedContent.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFContentProtectionManager.dart';

/// @nodoc
const IID_IMFMediaEngineProtectedContent =
    '{9F8021E8-9C8C-487E-BB5C-79AA4779938C}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineProtectedContent extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFMediaEngineProtectedContent(Pointer<COMObject> ptr) : super(ptr);

  int ShareResources(
    Pointer<COMObject> pUnkDeviceContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkDeviceContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkDeviceContext,
          )>()(
        ptr.ref.lpVtbl,
        pUnkDeviceContext,
      );

  int GetRequiredProtections(
    Pointer<Uint32> pFrameProtectionFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFrameProtectionFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFrameProtectionFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFrameProtectionFlags,
      );

  int SetOPMWindow(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );

  int TransferVideoFrame(
    Pointer<COMObject> pDstSurf,
    Pointer<MFVideoNormalizedRect> pSrc,
    Pointer<RECT> pDst,
    Pointer<MFARGB> pBorderClr,
    Pointer<Uint32> pFrameProtectionFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDstSurf,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<MFARGB> pBorderClr,
            Pointer<Uint32> pFrameProtectionFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDstSurf,
            Pointer<MFVideoNormalizedRect> pSrc,
            Pointer<RECT> pDst,
            Pointer<MFARGB> pBorderClr,
            Pointer<Uint32> pFrameProtectionFlags,
          )>()(
        ptr.ref.lpVtbl,
        pDstSurf,
        pSrc,
        pDst,
        pBorderClr,
        pFrameProtectionFlags,
      );

  int SetContentProtectionManager(
    Pointer<COMObject> pCPM,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCPM,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCPM,
          )>()(
        ptr.ref.lpVtbl,
        pCPM,
      );

  int SetApplicationCertificate(
    Pointer<Uint8> pbBlob,
    int cbBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbBlob,
            Uint32 cbBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbBlob,
            int cbBlob,
          )>()(
        ptr.ref.lpVtbl,
        pbBlob,
        cbBlob,
      );
}
