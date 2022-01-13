// IBrowserService.dart

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
import '../../system/ole/IOleInPlaceSite.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IShellView.dart';
import '../../system/ole/IOleObject.dart';
import '../../ui/shell/ITravelLog.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IStream.dart';
import '../../system/com/IBindCtx.dart';
import '../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IBrowserService = '{02BA3B52-0547-11D1-B833-00C04FC9B31F}';

/// {@category Interface}
/// {@category com}
class IBrowserService extends IUnknown {
  // vtable begins at 3, is 30 entries long.
  IBrowserService(Pointer<COMObject> ptr) : super(ptr);

  int GetParentSite(
    Pointer<Pointer<COMObject>> ppipsite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppipsite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppipsite,
          )>()(
        ptr.ref.lpVtbl,
        ppipsite,
      );

  int SetTitle(
    Pointer<COMObject> psv,
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        psv,
        pszName,
      );

  int GetTitle(
    Pointer<COMObject> psv,
    Pointer<Utf16> pszName,
    int cchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<Utf16> pszName,
            Uint32 cchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<Utf16> pszName,
            int cchName,
          )>()(
        ptr.ref.lpVtbl,
        psv,
        pszName,
        cchName,
      );

  int GetOleObject(
    Pointer<Pointer<COMObject>> ppobjv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppobjv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppobjv,
          )>()(
        ptr.ref.lpVtbl,
        ppobjv,
      );

  int GetTravelLog(
    Pointer<Pointer<COMObject>> pptl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pptl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pptl,
          )>()(
        ptr.ref.lpVtbl,
        pptl,
      );

  int ShowControlWindow(
    int id,
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 id,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int id,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        id,
        fShow,
      );

  int IsControlWindowShown(
    int id,
    Pointer<Int32> pfShown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 id,
            Pointer<Int32> pfShown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int id,
            Pointer<Int32> pfShown,
          )>()(
        ptr.ref.lpVtbl,
        id,
        pfShown,
      );

  int IEGetDisplayName(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Utf16> pwszName,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Utf16> pwszName,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Utf16> pwszName,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pwszName,
        uFlags,
      );

  int IEParseDisplayName(
    int uiCP,
    Pointer<Utf16> pwszPath,
    Pointer<Pointer<ITEMIDLIST>> ppidlOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiCP,
            Pointer<Utf16> pwszPath,
            Pointer<Pointer<ITEMIDLIST>> ppidlOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiCP,
            Pointer<Utf16> pwszPath,
            Pointer<Pointer<ITEMIDLIST>> ppidlOut,
          )>()(
        ptr.ref.lpVtbl,
        uiCP,
        pwszPath,
        ppidlOut,
      );

  int DisplayParseError(
    int hres,
    Pointer<Utf16> pwszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hres,
            Pointer<Utf16> pwszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hres,
            Pointer<Utf16> pwszPath,
          )>()(
        ptr.ref.lpVtbl,
        hres,
        pwszPath,
      );

  int NavigateToPidl(
    Pointer<ITEMIDLIST> pidl,
    int grfHLNF,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 grfHLNF,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int grfHLNF,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        grfHLNF,
      );

  int SetNavigateState(
    int bnstate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bnstate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bnstate,
          )>()(
        ptr.ref.lpVtbl,
        bnstate,
      );

  int GetNavigateState(
    Pointer<Int32> pbnstate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbnstate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbnstate,
          )>()(
        ptr.ref.lpVtbl,
        pbnstate,
      );

  int NotifyRedirect(
    Pointer<COMObject> psv,
    Pointer<ITEMIDLIST> pidl,
    Pointer<Int32> pfDidBrowse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Int32> pfDidBrowse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Int32> pfDidBrowse,
          )>()(
        ptr.ref.lpVtbl,
        psv,
        pidl,
        pfDidBrowse,
      );

  int UpdateWindowList() => ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int UpdateBackForwardState() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int SetFlags(
    int dwFlags,
    int dwFlagMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 dwFlagMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int dwFlagMask,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        dwFlagMask,
      );

  int GetFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );

  int CanNavigateNow() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int GetPidl(
    Pointer<Pointer<ITEMIDLIST>> ppidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
          )>()(
        ptr.ref.lpVtbl,
        ppidl,
      );

  int SetReferrer(
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
      );

  int GetBrowserIndex() => ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int GetBrowserByIndex(
    int dwID,
    Pointer<Pointer<COMObject>> ppunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwID,
            Pointer<Pointer<COMObject>> ppunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwID,
            Pointer<Pointer<COMObject>> ppunk,
          )>()(
        ptr.ref.lpVtbl,
        dwID,
        ppunk,
      );

  int GetHistoryObject(
    Pointer<Pointer<COMObject>> ppole,
    Pointer<Pointer<COMObject>> pstm,
    Pointer<Pointer<COMObject>> ppbc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppole,
            Pointer<Pointer<COMObject>> pstm,
            Pointer<Pointer<COMObject>> ppbc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppole,
            Pointer<Pointer<COMObject>> pstm,
            Pointer<Pointer<COMObject>> ppbc,
          )>()(
        ptr.ref.lpVtbl,
        ppole,
        pstm,
        ppbc,
      );

  int SetHistoryObject(
    Pointer<COMObject> pole,
    int fIsLocalAnchor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pole,
            Int32 fIsLocalAnchor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pole,
            int fIsLocalAnchor,
          )>()(
        ptr.ref.lpVtbl,
        pole,
        fIsLocalAnchor,
      );

  int CacheOLEServer(
    Pointer<COMObject> pole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pole,
          )>()(
        ptr.ref.lpVtbl,
        pole,
      );

  int GetSetCodePage(
    Pointer<VARIANT> pvarIn,
    Pointer<VARIANT> pvarOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarIn,
            Pointer<VARIANT> pvarOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarIn,
            Pointer<VARIANT> pvarOut,
          )>()(
        ptr.ref.lpVtbl,
        pvarIn,
        pvarOut,
      );

  int OnHttpEquiv(
    Pointer<COMObject> psv,
    int fDone,
    Pointer<VARIANT> pvarargIn,
    Pointer<VARIANT> pvarargOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psv,
            Int32 fDone,
            Pointer<VARIANT> pvarargIn,
            Pointer<VARIANT> pvarargOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psv,
            int fDone,
            Pointer<VARIANT> pvarargIn,
            Pointer<VARIANT> pvarargOut,
          )>()(
        ptr.ref.lpVtbl,
        psv,
        fDone,
        pvarargIn,
        pvarargOut,
      );

  int GetPalette(
    Pointer<IntPtr> hpal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> hpal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> hpal,
          )>()(
        ptr.ref.lpVtbl,
        hpal,
      );

  int RegisterWindow(
    int fForceRegister,
    int swc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fForceRegister,
            Int32 swc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fForceRegister,
            int swc,
          )>()(
        ptr.ref.lpVtbl,
        fForceRegister,
        swc,
      );
}
