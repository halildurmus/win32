// IFEDictionary.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/input/ime/structs.g.dart';
import '../../../ui/input/ime/callbacks.g.dart';

/// @nodoc
const IID_IFEDictionary = '{019F7153-E6DB-11D0-83C3-00C04FDDB82E}';

/// {@category Interface}
/// {@category com}
class IFEDictionary extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IFEDictionary(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf8> pchDictPath,
    Pointer<IMESHF> pshf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pchDictPath,
            Pointer<IMESHF> pshf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pchDictPath,
            Pointer<IMESHF> pshf,
          )>()(
        ptr.ref.lpVtbl,
        pchDictPath,
        pshf,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetHeader(
    Pointer<Utf8> pchDictPath,
    Pointer<IMESHF> pshf,
    Pointer<Int32> pjfmt,
    Pointer<Uint32> pulType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pchDictPath,
            Pointer<IMESHF> pshf,
            Pointer<Int32> pjfmt,
            Pointer<Uint32> pulType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pchDictPath,
            Pointer<IMESHF> pshf,
            Pointer<Int32> pjfmt,
            Pointer<Uint32> pulType,
          )>()(
        ptr.ref.lpVtbl,
        pchDictPath,
        pshf,
        pjfmt,
        pulType,
      );

  int DisplayProperty(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int GetPosTable(
    Pointer<Pointer<POSTBL>> prgPosTbl,
    Pointer<Int32> pcPosTbl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<POSTBL>> prgPosTbl,
            Pointer<Int32> pcPosTbl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<POSTBL>> prgPosTbl,
            Pointer<Int32> pcPosTbl,
          )>()(
        ptr.ref.lpVtbl,
        prgPosTbl,
        pcPosTbl,
      );

  int GetWords(
    Pointer<Utf16> pwchFirst,
    Pointer<Utf16> pwchLast,
    Pointer<Utf16> pwchDisplay,
    int ulPos,
    int ulSelect,
    int ulWordSrc,
    Pointer<Uint8> pchBuffer,
    int cbBuffer,
    Pointer<Uint32> pcWrd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchFirst,
            Pointer<Utf16> pwchLast,
            Pointer<Utf16> pwchDisplay,
            Uint32 ulPos,
            Uint32 ulSelect,
            Uint32 ulWordSrc,
            Pointer<Uint8> pchBuffer,
            Uint32 cbBuffer,
            Pointer<Uint32> pcWrd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchFirst,
            Pointer<Utf16> pwchLast,
            Pointer<Utf16> pwchDisplay,
            int ulPos,
            int ulSelect,
            int ulWordSrc,
            Pointer<Uint8> pchBuffer,
            int cbBuffer,
            Pointer<Uint32> pcWrd,
          )>()(
        ptr.ref.lpVtbl,
        pwchFirst,
        pwchLast,
        pwchDisplay,
        ulPos,
        ulSelect,
        ulWordSrc,
        pchBuffer,
        cbBuffer,
        pcWrd,
      );

  int NextWords(
    Pointer<Uint8> pchBuffer,
    int cbBuffer,
    Pointer<Uint32> pcWrd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pchBuffer,
            Uint32 cbBuffer,
            Pointer<Uint32> pcWrd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pchBuffer,
            int cbBuffer,
            Pointer<Uint32> pcWrd,
          )>()(
        ptr.ref.lpVtbl,
        pchBuffer,
        cbBuffer,
        pcWrd,
      );

  int Create(
    Pointer<Utf8> pchDictPath,
    Pointer<IMESHF> pshf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pchDictPath,
            Pointer<IMESHF> pshf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pchDictPath,
            Pointer<IMESHF> pshf,
          )>()(
        ptr.ref.lpVtbl,
        pchDictPath,
        pshf,
      );

  int SetHeader(
    Pointer<IMESHF> pshf,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMESHF> pshf,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMESHF> pshf,
          )>()(
        ptr.ref.lpVtbl,
        pshf,
      );

  int ExistWord(
    Pointer<IMEWRD> pwrd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMEWRD> pwrd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMEWRD> pwrd,
          )>()(
        ptr.ref.lpVtbl,
        pwrd,
      );

  int ExistDependency(
    Pointer<IMEDP> pdp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IMEDP> pdp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IMEDP> pdp,
          )>()(
        ptr.ref.lpVtbl,
        pdp,
      );

  int RegisterWord(
    int reg,
    Pointer<IMEWRD> pwrd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 reg,
            Pointer<IMEWRD> pwrd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reg,
            Pointer<IMEWRD> pwrd,
          )>()(
        ptr.ref.lpVtbl,
        reg,
        pwrd,
      );

  int RegisterDependency(
    int reg,
    Pointer<IMEDP> pdp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 reg,
            Pointer<IMEDP> pdp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reg,
            Pointer<IMEDP> pdp,
          )>()(
        ptr.ref.lpVtbl,
        reg,
        pdp,
      );

  int GetDependencies(
    Pointer<Utf16> pwchKakariReading,
    Pointer<Utf16> pwchKakariDisplay,
    int ulKakariPos,
    Pointer<Utf16> pwchUkeReading,
    Pointer<Utf16> pwchUkeDisplay,
    int ulUkePos,
    int jrel,
    int ulWordSrc,
    Pointer<Uint8> pchBuffer,
    int cbBuffer,
    Pointer<Uint32> pcdp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwchKakariReading,
            Pointer<Utf16> pwchKakariDisplay,
            Uint32 ulKakariPos,
            Pointer<Utf16> pwchUkeReading,
            Pointer<Utf16> pwchUkeDisplay,
            Uint32 ulUkePos,
            Int32 jrel,
            Uint32 ulWordSrc,
            Pointer<Uint8> pchBuffer,
            Uint32 cbBuffer,
            Pointer<Uint32> pcdp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwchKakariReading,
            Pointer<Utf16> pwchKakariDisplay,
            int ulKakariPos,
            Pointer<Utf16> pwchUkeReading,
            Pointer<Utf16> pwchUkeDisplay,
            int ulUkePos,
            int jrel,
            int ulWordSrc,
            Pointer<Uint8> pchBuffer,
            int cbBuffer,
            Pointer<Uint32> pcdp,
          )>()(
        ptr.ref.lpVtbl,
        pwchKakariReading,
        pwchKakariDisplay,
        ulKakariPos,
        pwchUkeReading,
        pwchUkeDisplay,
        ulUkePos,
        jrel,
        ulWordSrc,
        pchBuffer,
        cbBuffer,
        pcdp,
      );

  int NextDependencies(
    Pointer<Uint8> pchBuffer,
    int cbBuffer,
    Pointer<Uint32> pcDp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pchBuffer,
            Uint32 cbBuffer,
            Pointer<Uint32> pcDp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pchBuffer,
            int cbBuffer,
            Pointer<Uint32> pcDp,
          )>()(
        ptr.ref.lpVtbl,
        pchBuffer,
        cbBuffer,
        pcDp,
      );

  int ConvertFromOldMSIME(
    Pointer<Utf8> pchDic,
    Pointer<NativeFunction<PFNLOG>> pfnLog,
    int reg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pchDic,
            Pointer<NativeFunction<PFNLOG>> pfnLog,
            Int32 reg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pchDic,
            Pointer<NativeFunction<PFNLOG>> pfnLog,
            int reg,
          )>()(
        ptr.ref.lpVtbl,
        pchDic,
        pfnLog,
        reg,
      );

  int ConvertFromUserToSys() => ptr.ref.lpVtbl.value
          .elementAt(19)
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
