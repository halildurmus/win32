// IShellView.dart

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

import '../../system/ole/IOleWindow.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IShellView.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IShellBrowser.dart';
import '../../ui/controls/callbacks.g.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_IShellView = '{000214E3-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IShellView extends IOleWindow {
  // vtable begins at 5, is 11 entries long.
  IShellView(Pointer<COMObject> ptr) : super(ptr);

  int TranslateAccelerator(
    Pointer<MSG> pmsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pmsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pmsg,
          )>()(
        ptr.ref.lpVtbl,
        pmsg,
      );

  int EnableModeless(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int UIActivate(
    int uState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uState,
          )>()(
        ptr.ref.lpVtbl,
        uState,
      );

  int Refresh() => ptr.ref.lpVtbl.value
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

  int CreateViewWindow(
    Pointer<COMObject> psvPrevious,
    Pointer<FOLDERSETTINGS> pfs,
    Pointer<COMObject> psb,
    Pointer<RECT> prcView,
    Pointer<IntPtr> phWnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psvPrevious,
            Pointer<FOLDERSETTINGS> pfs,
            Pointer<COMObject> psb,
            Pointer<RECT> prcView,
            Pointer<IntPtr> phWnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psvPrevious,
            Pointer<FOLDERSETTINGS> pfs,
            Pointer<COMObject> psb,
            Pointer<RECT> prcView,
            Pointer<IntPtr> phWnd,
          )>()(
        ptr.ref.lpVtbl,
        psvPrevious,
        pfs,
        psb,
        prcView,
        phWnd,
      );

  int DestroyViewWindow() => ptr.ref.lpVtbl.value
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

  int GetCurrentInfo(
    Pointer<FOLDERSETTINGS> pfs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int AddPropertySheetPages(
    int dwReserved,
    Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfn,
    int lparam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
            Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfn,
            IntPtr lparam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
            Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfn,
            int lparam,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
        pfn,
        lparam,
      );

  int SaveViewState() => ptr.ref.lpVtbl.value
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

  int SelectItem(
    Pointer<ITEMIDLIST> pidlItem,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlItem,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlItem,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        pidlItem,
        uFlags,
      );

  int GetItemObject(
    int uItem,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uItem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uItem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        uItem,
        riid,
        ppv,
      );
}
