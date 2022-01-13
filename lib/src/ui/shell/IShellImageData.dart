// IShellImageData.dart

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
import '../../graphics/gdi/structs.g.dart';
import '../../system/com/structuredstorage/IPropertySetStorage.dart';
import '../../system/com/structuredstorage/IPropertyBag.dart';
import '../../ui/shell/IShellImageDataAbort.dart';

/// @nodoc
const IID_IShellImageData = '{BFDEEC12-8040-4403-A5EA-9E07DAFCF530}';

/// {@category Interface}
/// {@category com}
class IShellImageData extends IUnknown {
  // vtable begins at 3, is 30 entries long.
  IShellImageData(Pointer<COMObject> ptr) : super(ptr);

  int Decode(
    int dwFlags,
    int cxDesired,
    int cyDesired,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 cxDesired,
            Uint32 cyDesired,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int cxDesired,
            int cyDesired,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        cxDesired,
        cyDesired,
      );

  int Draw(
    int hdc,
    Pointer<RECT> prcDest,
    Pointer<RECT> prcSrc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hdc,
            Pointer<RECT> prcDest,
            Pointer<RECT> prcSrc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hdc,
            Pointer<RECT> prcDest,
            Pointer<RECT> prcSrc,
          )>()(
        ptr.ref.lpVtbl,
        hdc,
        prcDest,
        prcSrc,
      );

  int NextFrame() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int NextPage() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int PrevPage() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int IsTransparent() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int IsAnimated() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int IsVector() => ptr.ref.lpVtbl.value
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

  int IsMultipage() => ptr.ref.lpVtbl.value
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

  int IsEditable() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int IsPrintable() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int IsDecoded() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetCurrentPage(
    Pointer<Uint32> pnPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnPage,
          )>()(
        ptr.ref.lpVtbl,
        pnPage,
      );

  int GetPageCount(
    Pointer<Uint32> pcPages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcPages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcPages,
          )>()(
        ptr.ref.lpVtbl,
        pcPages,
      );

  int SelectPage(
    int iPage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iPage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iPage,
          )>()(
        ptr.ref.lpVtbl,
        iPage,
      );

  int GetSize(
    Pointer<SIZE> pSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int GetRawDataFormat(
    Pointer<GUID> pDataFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pDataFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pDataFormat,
          )>()(
        ptr.ref.lpVtbl,
        pDataFormat,
      );

  int GetPixelFormat(
    Pointer<Uint32> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int GetDelay(
    Pointer<Uint32> pdwDelay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwDelay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwDelay,
          )>()(
        ptr.ref.lpVtbl,
        pdwDelay,
      );

  int GetProperties(
    int dwMode,
    Pointer<Pointer<COMObject>> ppPropSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMode,
            Pointer<Pointer<COMObject>> ppPropSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMode,
            Pointer<Pointer<COMObject>> ppPropSet,
          )>()(
        ptr.ref.lpVtbl,
        dwMode,
        ppPropSet,
      );

  int Rotate(
    int dwAngle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAngle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAngle,
          )>()(
        ptr.ref.lpVtbl,
        dwAngle,
      );

  int Scale(
    int cx,
    int cy,
    int hints,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cx,
            Uint32 cy,
            Uint32 hints,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cx,
            int cy,
            int hints,
          )>()(
        ptr.ref.lpVtbl,
        cx,
        cy,
        hints,
      );

  int DiscardEdit() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int SetEncoderParams(
    Pointer<COMObject> pbagEnc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pbagEnc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pbagEnc,
          )>()(
        ptr.ref.lpVtbl,
        pbagEnc,
      );

  int DisplayName(
    Pointer<Utf16> wszName,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszName,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszName,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        wszName,
        cch,
      );

  int GetResolution(
    Pointer<Uint32> puResolutionX,
    Pointer<Uint32> puResolutionY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puResolutionX,
            Pointer<Uint32> puResolutionY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puResolutionX,
            Pointer<Uint32> puResolutionY,
          )>()(
        ptr.ref.lpVtbl,
        puResolutionX,
        puResolutionY,
      );

  int GetEncoderParams(
    Pointer<GUID> pguidFmt,
    Pointer<Pointer<Uint8>> ppEncParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidFmt,
            Pointer<Pointer<Uint8>> ppEncParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidFmt,
            Pointer<Pointer<Uint8>> ppEncParams,
          )>()(
        ptr.ref.lpVtbl,
        pguidFmt,
        ppEncParams,
      );

  int RegisterAbort(
    Pointer<COMObject> pAbort,
    Pointer<Pointer<COMObject>> ppAbortPrev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAbort,
            Pointer<Pointer<COMObject>> ppAbortPrev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAbort,
            Pointer<Pointer<COMObject>> ppAbortPrev,
          )>()(
        ptr.ref.lpVtbl,
        pAbort,
        ppAbortPrev,
      );

  int CloneFrame(
    Pointer<Pointer<Uint8>> ppImg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppImg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppImg,
          )>()(
        ptr.ref.lpVtbl,
        ppImg,
      );

  int ReplaceFrame(
    Pointer<Uint8> pImg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pImg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pImg,
          )>()(
        ptr.ref.lpVtbl,
        pImg,
      );
}
