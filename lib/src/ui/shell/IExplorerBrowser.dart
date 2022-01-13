// IExplorerBrowser.dart

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
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IExplorerBrowserEvents.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IExplorerBrowser = '{DFD3B6B5-C10C-4BE9-85F6-A66969F402F6}';

/// {@category Interface}
/// {@category com}
class IExplorerBrowser extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IExplorerBrowser(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int hwndParent,
    Pointer<RECT> prc,
    Pointer<FOLDERSETTINGS> pfs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<RECT> prc,
            Pointer<FOLDERSETTINGS> pfs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<RECT> prc,
            Pointer<FOLDERSETTINGS> pfs,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        prc,
        pfs,
      );

  int Destroy() => ptr.ref.lpVtbl.value
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

  int SetRect(
    Pointer<IntPtr> phdwp,
    RECT rcBrowser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phdwp,
            RECT rcBrowser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phdwp,
            RECT rcBrowser,
          )>()(
        ptr.ref.lpVtbl,
        phdwp,
        rcBrowser,
      );

  int SetPropertyBag(
    Pointer<Utf16> pszPropertyBag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropertyBag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropertyBag,
          )>()(
        ptr.ref.lpVtbl,
        pszPropertyBag,
      );

  int SetEmptyText(
    Pointer<Utf16> pszEmptyText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszEmptyText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszEmptyText,
          )>()(
        ptr.ref.lpVtbl,
        pszEmptyText,
      );

  int SetFolderSettings(
    Pointer<FOLDERSETTINGS> pfs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FOLDERSETTINGS> pfs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FOLDERSETTINGS> pfs,
          )>()(
        ptr.ref.lpVtbl,
        pfs,
      );

  int Advise(
    Pointer<COMObject> psbe,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psbe,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psbe,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        psbe,
        pdwCookie,
      );

  int Unadvise(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );

  int SetOptions(
    int dwFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlag,
          )>()(
        ptr.ref.lpVtbl,
        dwFlag,
      );

  int GetOptions(
    Pointer<Int32> pdwFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pdwFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pdwFlag,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlag,
      );

  int BrowseToIDList(
    Pointer<ITEMIDLIST> pidl,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        uFlags,
      );

  int BrowseToObject(
    Pointer<COMObject> punk,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        uFlags,
      );

  int FillFromObject(
    Pointer<COMObject> punk,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
            Int32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        punk,
        dwFlags,
      );

  int RemoveAll() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetCurrentView(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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
}

/// @nodoc
const CLSID_ExplorerBrowser = '{71F96385-DDD6-48D3-A0C1-AE06E8B055FB}';

/// {@category com}
class ExplorerBrowser extends IExplorerBrowser {
  ExplorerBrowser(Pointer<COMObject> ptr) : super(ptr);

  factory ExplorerBrowser.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ExplorerBrowser);
    final iid = calloc<GUID>()..ref.setGUID(IID_IExplorerBrowser);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ExplorerBrowser(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
