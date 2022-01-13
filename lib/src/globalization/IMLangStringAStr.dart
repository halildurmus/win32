// IMLangStringAStr.dart

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

import '../globalization/IMLangString.dart';
import '../foundation/structs.g.dart';
import '../globalization/IMLangStringBuf.dart';

/// @nodoc
const IID_IMLangStringAStr = '{C04D65D2-B70D-11D0-B188-00AA0038C969}';

/// {@category Interface}
/// {@category com}
class IMLangStringAStr extends IMLangString {
  // vtable begins at 7, is 8 entries long.
  IMLangStringAStr(Pointer<COMObject> ptr) : super(ptr);

  int SetAStr(
    int lDestPos,
    int lDestLen,
    int uCodePage,
    Pointer<Utf8> pszSrc,
    int cchSrc,
    Pointer<Int32> pcchActual,
    Pointer<Int32> plActualLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lDestPos,
            Int32 lDestLen,
            Uint32 uCodePage,
            Pointer<Utf8> pszSrc,
            Int32 cchSrc,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lDestPos,
            int lDestLen,
            int uCodePage,
            Pointer<Utf8> pszSrc,
            int cchSrc,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>()(
        ptr.ref.lpVtbl,
        lDestPos,
        lDestLen,
        uCodePage,
        pszSrc,
        cchSrc,
        pcchActual,
        plActualLen,
      );

  int SetStrBufA(
    int lDestPos,
    int lDestLen,
    int uCodePage,
    Pointer<COMObject> pSrcBuf,
    Pointer<Int32> pcchActual,
    Pointer<Int32> plActualLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lDestPos,
            Int32 lDestLen,
            Uint32 uCodePage,
            Pointer<COMObject> pSrcBuf,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lDestPos,
            int lDestLen,
            int uCodePage,
            Pointer<COMObject> pSrcBuf,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>()(
        ptr.ref.lpVtbl,
        lDestPos,
        lDestLen,
        uCodePage,
        pSrcBuf,
        pcchActual,
        plActualLen,
      );

  int GetAStr(
    int lSrcPos,
    int lSrcLen,
    int uCodePageIn,
    Pointer<Uint32> puCodePageOut,
    Pointer<Utf8> pszDest,
    int cchDest,
    Pointer<Int32> pcchActual,
    Pointer<Int32> plActualLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSrcPos,
            Int32 lSrcLen,
            Uint32 uCodePageIn,
            Pointer<Uint32> puCodePageOut,
            Pointer<Utf8> pszDest,
            Int32 cchDest,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSrcPos,
            int lSrcLen,
            int uCodePageIn,
            Pointer<Uint32> puCodePageOut,
            Pointer<Utf8> pszDest,
            int cchDest,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>()(
        ptr.ref.lpVtbl,
        lSrcPos,
        lSrcLen,
        uCodePageIn,
        puCodePageOut,
        pszDest,
        cchDest,
        pcchActual,
        plActualLen,
      );

  int GetStrBufA(
    int lSrcPos,
    int lSrcMaxLen,
    Pointer<Uint32> puDestCodePage,
    Pointer<Pointer<COMObject>> ppDestBuf,
    Pointer<Int32> plDestLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSrcPos,
            Int32 lSrcMaxLen,
            Pointer<Uint32> puDestCodePage,
            Pointer<Pointer<COMObject>> ppDestBuf,
            Pointer<Int32> plDestLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSrcPos,
            int lSrcMaxLen,
            Pointer<Uint32> puDestCodePage,
            Pointer<Pointer<COMObject>> ppDestBuf,
            Pointer<Int32> plDestLen,
          )>()(
        ptr.ref.lpVtbl,
        lSrcPos,
        lSrcMaxLen,
        puDestCodePage,
        ppDestBuf,
        plDestLen,
      );

  int LockAStr(
    int lSrcPos,
    int lSrcLen,
    int lFlags,
    int uCodePageIn,
    int cchRequest,
    Pointer<Uint32> puCodePageOut,
    Pointer<Pointer<Utf8>> ppszDest,
    Pointer<Int32> pcchDest,
    Pointer<Int32> plDestLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSrcPos,
            Int32 lSrcLen,
            Int32 lFlags,
            Uint32 uCodePageIn,
            Int32 cchRequest,
            Pointer<Uint32> puCodePageOut,
            Pointer<Pointer<Utf8>> ppszDest,
            Pointer<Int32> pcchDest,
            Pointer<Int32> plDestLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSrcPos,
            int lSrcLen,
            int lFlags,
            int uCodePageIn,
            int cchRequest,
            Pointer<Uint32> puCodePageOut,
            Pointer<Pointer<Utf8>> ppszDest,
            Pointer<Int32> pcchDest,
            Pointer<Int32> plDestLen,
          )>()(
        ptr.ref.lpVtbl,
        lSrcPos,
        lSrcLen,
        lFlags,
        uCodePageIn,
        cchRequest,
        puCodePageOut,
        ppszDest,
        pcchDest,
        plDestLen,
      );

  int UnlockAStr(
    Pointer<Utf8> pszSrc,
    int cchSrc,
    Pointer<Int32> pcchActual,
    Pointer<Int32> plActualLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszSrc,
            Int32 cchSrc,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszSrc,
            int cchSrc,
            Pointer<Int32> pcchActual,
            Pointer<Int32> plActualLen,
          )>()(
        ptr.ref.lpVtbl,
        pszSrc,
        cchSrc,
        pcchActual,
        plActualLen,
      );

  int SetLocale(
    int lDestPos,
    int lDestLen,
    int locale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lDestPos,
            Int32 lDestLen,
            Uint32 locale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lDestPos,
            int lDestLen,
            int locale,
          )>()(
        ptr.ref.lpVtbl,
        lDestPos,
        lDestLen,
        locale,
      );

  int GetLocale(
    int lSrcPos,
    int lSrcMaxLen,
    Pointer<Uint32> plocale,
    Pointer<Int32> plLocalePos,
    Pointer<Int32> plLocaleLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSrcPos,
            Int32 lSrcMaxLen,
            Pointer<Uint32> plocale,
            Pointer<Int32> plLocalePos,
            Pointer<Int32> plLocaleLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSrcPos,
            int lSrcMaxLen,
            Pointer<Uint32> plocale,
            Pointer<Int32> plLocalePos,
            Pointer<Int32> plLocaleLen,
          )>()(
        ptr.ref.lpVtbl,
        lSrcPos,
        lSrcMaxLen,
        plocale,
        plLocalePos,
        plLocaleLen,
      );
}
