// IWABOBJECT_.dart

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

import '../../foundation/structs.g.dart';
import '../../system/addressbook/structs.g.dart';
import '../../system/addressbook/IAddrBook.dart';
import '../../system/addressbook/IMailUser.dart';

/// @nodoc
const IID_IWABOBJECT_ = 'null';

/// {@category Interface}
/// {@category com}
class IWABOBJECT_ {
  // vtable begins at 0, is 16 entries long.
  Pointer<COMObject> ptr;

  IWABOBJECT_(this.ptr);

  int QueryInterface(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObj,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvObj,
      );

  int AddRef() => ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Release() => ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetLastError(
    int hResult,
    int ulFlags,
    Pointer<Pointer<MAPIERROR>> lppMAPIError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hResult,
            Uint32 ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hResult,
            int ulFlags,
            Pointer<Pointer<MAPIERROR>> lppMAPIError,
          )>()(
        ptr.ref.lpVtbl,
        hResult,
        ulFlags,
        lppMAPIError,
      );

  int AllocateBuffer(
    int cbSize,
    Pointer<Pointer> lppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSize,
            Pointer<Pointer> lppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
            Pointer<Pointer> lppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
        lppBuffer,
      );

  int AllocateMore(
    int cbSize,
    Pointer lpObject,
    Pointer<Pointer> lppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSize,
            Pointer lpObject,
            Pointer<Pointer> lppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
            Pointer lpObject,
            Pointer<Pointer> lppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
        lpObject,
        lppBuffer,
      );

  int FreeBuffer(
    Pointer lpBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpBuffer,
          )>()(
        ptr.ref.lpVtbl,
        lpBuffer,
      );

  int Backup(
    Pointer<Utf8> lpFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> lpFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> lpFileName,
          )>()(
        ptr.ref.lpVtbl,
        lpFileName,
      );

  int Import(
    Pointer<Utf8> lpWIP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> lpWIP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> lpWIP,
          )>()(
        ptr.ref.lpVtbl,
        lpWIP,
      );

  int Find(
    Pointer<COMObject> lpIAB,
    int hWnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            IntPtr hWnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            int hWnd,
          )>()(
        ptr.ref.lpVtbl,
        lpIAB,
        hWnd,
      );

  int VCardDisplay(
    Pointer<COMObject> lpIAB,
    int hWnd,
    Pointer<Utf8> lpszFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            IntPtr hWnd,
            Pointer<Utf8> lpszFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            int hWnd,
            Pointer<Utf8> lpszFileName,
          )>()(
        ptr.ref.lpVtbl,
        lpIAB,
        hWnd,
        lpszFileName,
      );

  int LDAPUrl(
    Pointer<COMObject> lpIAB,
    int hWnd,
    int ulFlags,
    Pointer<Utf8> lpszURL,
    Pointer<Pointer<COMObject>> lppMailUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            IntPtr hWnd,
            Uint32 ulFlags,
            Pointer<Utf8> lpszURL,
            Pointer<Pointer<COMObject>> lppMailUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            int hWnd,
            int ulFlags,
            Pointer<Utf8> lpszURL,
            Pointer<Pointer<COMObject>> lppMailUser,
          )>()(
        ptr.ref.lpVtbl,
        lpIAB,
        hWnd,
        ulFlags,
        lpszURL,
        lppMailUser,
      );

  int VCardCreate(
    Pointer<COMObject> lpIAB,
    int ulFlags,
    Pointer<Utf8> lpszVCard,
    Pointer<COMObject> lpMailUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            Uint32 ulFlags,
            Pointer<Utf8> lpszVCard,
            Pointer<COMObject> lpMailUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            int ulFlags,
            Pointer<Utf8> lpszVCard,
            Pointer<COMObject> lpMailUser,
          )>()(
        ptr.ref.lpVtbl,
        lpIAB,
        ulFlags,
        lpszVCard,
        lpMailUser,
      );

  int VCardRetrieve(
    Pointer<COMObject> lpIAB,
    int ulFlags,
    Pointer<Utf8> lpszVCard,
    Pointer<Pointer<COMObject>> lppMailUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            Uint32 ulFlags,
            Pointer<Utf8> lpszVCard,
            Pointer<Pointer<COMObject>> lppMailUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            int ulFlags,
            Pointer<Utf8> lpszVCard,
            Pointer<Pointer<COMObject>> lppMailUser,
          )>()(
        ptr.ref.lpVtbl,
        lpIAB,
        ulFlags,
        lpszVCard,
        lppMailUser,
      );

  int GetMe(
    Pointer<COMObject> lpIAB,
    int ulFlags,
    Pointer<Uint32> lpdwAction,
    Pointer<SBinary> lpsbEID,
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            Uint32 ulFlags,
            Pointer<Uint32> lpdwAction,
            Pointer<SBinary> lpsbEID,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            int ulFlags,
            Pointer<Uint32> lpdwAction,
            Pointer<SBinary> lpsbEID,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        lpIAB,
        ulFlags,
        lpdwAction,
        lpsbEID,
        hwnd,
      );

  int SetMe(
    Pointer<COMObject> lpIAB,
    int ulFlags,
    SBinary sbEID,
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            Uint32 ulFlags,
            SBinary sbEID,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> lpIAB,
            int ulFlags,
            SBinary sbEID,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        lpIAB,
        ulFlags,
        sbEID,
        hwnd,
      );
}
