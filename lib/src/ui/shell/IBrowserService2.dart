// IBrowserService2.dart

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

import '../../ui/shell/IBrowserService.dart';
import '../../foundation/structs.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/controls/structs.g.dart';
import '../../ui/shell/IShellView.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/ITravelLog.dart';
import '../../specialTypes.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IBrowserService2 = '{68BD21CC-438B-11D2-A560-00A0C92DBFE8}';

/// {@category Interface}
/// {@category com}
class IBrowserService2 extends IBrowserService {
  // vtable begins at 33, is 62 entries long.
  IBrowserService2(Pointer<COMObject> ptr) : super(ptr);

  int WndProcBS(
    int hwnd,
    int uMsg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            IntPtr hwnd,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int uMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        uMsg,
        wParam,
        lParam,
      );

  int SetAsDefFolderSettings() => ptr.ref.lpVtbl.value
          .elementAt(34)
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

  int GetViewRect(
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        prc,
      );

  int OnSize(
    int wParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr wParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
      );

  int OnCreate(
    Pointer<CREATESTRUCT> pcs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CREATESTRUCT> pcs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CREATESTRUCT> pcs,
          )>()(
        ptr.ref.lpVtbl,
        pcs,
      );

  int OnCommand(
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        wParam,
        lParam,
      );

  int OnDestroy() => ptr.ref.lpVtbl.value
          .elementAt(39)
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

  int OnNotify(
    Pointer<NMHDR> pnm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            Pointer<NMHDR> pnm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NMHDR> pnm,
          )>()(
        ptr.ref.lpVtbl,
        pnm,
      );

  int OnSetFocus() => ptr.ref.lpVtbl.value
          .elementAt(41)
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

  int OnFrameWindowActivateBS(
    int fActive,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fActive,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fActive,
          )>()(
        ptr.ref.lpVtbl,
        fActive,
      );

  int ReleaseShellView() => ptr.ref.lpVtbl.value
          .elementAt(43)
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

  int ActivatePendingView() => ptr.ref.lpVtbl.value
          .elementAt(44)
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
    Pointer<COMObject> psvNew,
    Pointer<COMObject> psvOld,
    Pointer<RECT> prcView,
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psvNew,
            Pointer<COMObject> psvOld,
            Pointer<RECT> prcView,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psvNew,
            Pointer<COMObject> psvOld,
            Pointer<RECT> prcView,
            Pointer<IntPtr> phwnd,
          )>()(
        ptr.ref.lpVtbl,
        psvNew,
        psvOld,
        prcView,
        phwnd,
      );

  int CreateBrowserPropSheetExt(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
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

  int GetViewWindow(
    Pointer<IntPtr> phwndView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phwndView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phwndView,
          )>()(
        ptr.ref.lpVtbl,
        phwndView,
      );

  int GetBaseBrowserData(
    Pointer<Pointer<BASEBROWSERDATALH>> pbbd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<BASEBROWSERDATALH>> pbbd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<BASEBROWSERDATALH>> pbbd,
          )>()(
        ptr.ref.lpVtbl,
        pbbd,
      );

  Pointer<BASEBROWSERDATALH> PutBaseBrowserData() => ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<BASEBROWSERDATALH> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<BASEBROWSERDATALH> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int InitializeTravelLog(
    Pointer<COMObject> ptl,
    int dw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ptl,
            Uint32 dw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ptl,
            int dw,
          )>()(
        ptr.ref.lpVtbl,
        ptl,
        dw,
      );

  int SetTopBrowser() => ptr.ref.lpVtbl.value
          .elementAt(51)
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

  int Offline(
    int iCmd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iCmd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iCmd,
          )>()(
        ptr.ref.lpVtbl,
        iCmd,
      );

  int AllowViewResize(
    int f,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 f,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int f,
          )>()(
        ptr.ref.lpVtbl,
        f,
      );

  int SetActivateState(
    int u,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u,
          )>()(
        ptr.ref.lpVtbl,
        u,
      );

  int UpdateSecureLockIcon(
    int eSecureLock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eSecureLock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eSecureLock,
          )>()(
        ptr.ref.lpVtbl,
        eSecureLock,
      );

  int InitializeDownloadManager() => ptr.ref.lpVtbl.value
          .elementAt(56)
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

  int InitializeTransitionSite() => ptr.ref.lpVtbl.value
          .elementAt(57)
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

  int Initialize(
    int hwnd,
    Pointer<COMObject> pauto,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> pauto,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> pauto,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pauto,
      );

  int CancelPendingNavigationAsync() => ptr.ref.lpVtbl.value
          .elementAt(59)
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

  int CancelPendingView() => ptr.ref.lpVtbl.value
          .elementAt(60)
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

  int MaySaveChanges() => ptr.ref.lpVtbl.value
          .elementAt(61)
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

  int PauseOrResumeView(
    int fPaused,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fPaused,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fPaused,
          )>()(
        ptr.ref.lpVtbl,
        fPaused,
      );

  int DisableModeless() => ptr.ref.lpVtbl.value
          .elementAt(63)
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

  int NavigateToPidl2(
    Pointer<ITEMIDLIST> pidl,
    int grfHLNF,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 grfHLNF,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int grfHLNF,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        grfHLNF,
        dwFlags,
      );

  int TryShell2Rename(
    Pointer<COMObject> psv,
    Pointer<ITEMIDLIST> pidlNew,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<ITEMIDLIST> pidlNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psv,
            Pointer<ITEMIDLIST> pidlNew,
          )>()(
        ptr.ref.lpVtbl,
        psv,
        pidlNew,
      );

  int SwitchActivationNow() => ptr.ref.lpVtbl.value
          .elementAt(66)
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

  int ExecChildren(
    Pointer<COMObject> punkBar,
    int fBroadcast,
    Pointer<GUID> pguidCmdGroup,
    int nCmdID,
    int nCmdexecopt,
    Pointer<VARIANT> pvarargIn,
    Pointer<VARIANT> pvarargOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkBar,
            Int32 fBroadcast,
            Pointer<GUID> pguidCmdGroup,
            Uint32 nCmdID,
            Uint32 nCmdexecopt,
            Pointer<VARIANT> pvarargIn,
            Pointer<VARIANT> pvarargOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkBar,
            int fBroadcast,
            Pointer<GUID> pguidCmdGroup,
            int nCmdID,
            int nCmdexecopt,
            Pointer<VARIANT> pvarargIn,
            Pointer<VARIANT> pvarargOut,
          )>()(
        ptr.ref.lpVtbl,
        punkBar,
        fBroadcast,
        pguidCmdGroup,
        nCmdID,
        nCmdexecopt,
        pvarargIn,
        pvarargOut,
      );

  int SendChildren(
    int hwndBar,
    int fBroadcast,
    int uMsg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndBar,
            Int32 fBroadcast,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndBar,
            int fBroadcast,
            int uMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        hwndBar,
        fBroadcast,
        uMsg,
        wParam,
        lParam,
      );

  int GetFolderSetData(
    Pointer<FOLDERSETDATA> pfsd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FOLDERSETDATA> pfsd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FOLDERSETDATA> pfsd,
          )>()(
        ptr.ref.lpVtbl,
        pfsd,
      );

  int OnFocusChange(
    int itb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 itb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int itb,
          )>()(
        ptr.ref.lpVtbl,
        itb,
      );

  int v_ShowHideChildWindows(
    int fChildOnly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(71)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fChildOnly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fChildOnly,
          )>()(
        ptr.ref.lpVtbl,
        fChildOnly,
      );

  int get_itbLastFocus() => ptr.ref.lpVtbl.value
          .elementAt(72)
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

  int put_itbLastFocus(
    int itbLastFocus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 itbLastFocus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int itbLastFocus,
          )>()(
        ptr.ref.lpVtbl,
        itbLastFocus,
      );

  int UIActivateView(
    int uState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
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

  int GetViewBorderRect(
    Pointer<RECT> prc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> prc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> prc,
          )>()(
        ptr.ref.lpVtbl,
        prc,
      );

  int UpdateViewRectSize() => ptr.ref.lpVtbl.value
          .elementAt(76)
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

  int ResizeNextBorder(
    int itb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 itb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int itb,
          )>()(
        ptr.ref.lpVtbl,
        itb,
      );

  int ResizeView() => ptr.ref.lpVtbl.value
          .elementAt(78)
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

  int GetEffectiveClientArea(
    Pointer<RECT> lprectBorder,
    int hmon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(79)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RECT> lprectBorder,
            IntPtr hmon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RECT> lprectBorder,
            int hmon,
          )>()(
        ptr.ref.lpVtbl,
        lprectBorder,
        hmon,
      );

  Pointer<COMObject> v_GetViewStream(
    Pointer<ITEMIDLIST> pidl,
    int grfMode,
    Pointer<Utf16> pwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 grfMode,
            Pointer<Utf16> pwszName,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int grfMode,
            Pointer<Utf16> pwszName,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        grfMode,
        pwszName,
      );

  int ForwardViewMsg(
    int uMsg,
    int wParam,
    int lParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(81)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uMsg,
            int wParam,
            int lParam,
          )>()(
        ptr.ref.lpVtbl,
        uMsg,
        wParam,
        lParam,
      );

  int SetAcceleratorMenu(
    int hacc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hacc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hacc,
          )>()(
        ptr.ref.lpVtbl,
        hacc,
      );

  int GetToolbarCount() => ptr.ref.lpVtbl.value
          .elementAt(83)
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

  Pointer<TOOLBARITEM> GetToolbarItem(
    int itb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<TOOLBARITEM> Function(
            Pointer,
            Int32 itb,
          )>>>()
          .value
          .asFunction<
              Pointer<TOOLBARITEM> Function(
            Pointer,
            int itb,
          )>()(
        ptr.ref.lpVtbl,
        itb,
      );

  int SaveToolbars(
    Pointer<COMObject> pstm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pstm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pstm,
          )>()(
        ptr.ref.lpVtbl,
        pstm,
      );

  int LoadToolbars(
    Pointer<COMObject> pstm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pstm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pstm,
          )>()(
        ptr.ref.lpVtbl,
        pstm,
      );

  int CloseAndReleaseToolbars(
    int fClose,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(87)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fClose,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fClose,
          )>()(
        ptr.ref.lpVtbl,
        fClose,
      );

  int v_MayGetNextToolbarFocus(
    Pointer<MSG> lpMsg,
    int itbNext,
    int citb,
    Pointer<Pointer<TOOLBARITEM>> pptbi,
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> lpMsg,
            Uint32 itbNext,
            Int32 citb,
            Pointer<Pointer<TOOLBARITEM>> pptbi,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> lpMsg,
            int itbNext,
            int citb,
            Pointer<Pointer<TOOLBARITEM>> pptbi,
            Pointer<IntPtr> phwnd,
          )>()(
        ptr.ref.lpVtbl,
        lpMsg,
        itbNext,
        citb,
        pptbi,
        phwnd,
      );

  int ResizeNextBorderHelper(
    int itb,
    int bUseHmonitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(89)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 itb,
            Int32 bUseHmonitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int itb,
            int bUseHmonitor,
          )>()(
        ptr.ref.lpVtbl,
        itb,
        bUseHmonitor,
      );

  int FindTBar(
    Pointer<COMObject> punkSrc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Pointer<COMObject> punkSrc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkSrc,
          )>()(
        ptr.ref.lpVtbl,
        punkSrc,
      );

  int SetFocus(
    Pointer<TOOLBARITEM> ptbi,
    int hwnd,
    Pointer<MSG> lpMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(91)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TOOLBARITEM> ptbi,
            IntPtr hwnd,
            Pointer<MSG> lpMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TOOLBARITEM> ptbi,
            int hwnd,
            Pointer<MSG> lpMsg,
          )>()(
        ptr.ref.lpVtbl,
        ptbi,
        hwnd,
        lpMsg,
      );

  int v_MayTranslateAccelerator(
    Pointer<MSG> pmsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(92)
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

  int GetBorderDWHelper(
    Pointer<COMObject> punkSrc,
    Pointer<RECT> lprectBorder,
    int bUseHmonitor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(93)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkSrc,
            Pointer<RECT> lprectBorder,
            Int32 bUseHmonitor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkSrc,
            Pointer<RECT> lprectBorder,
            int bUseHmonitor,
          )>()(
        ptr.ref.lpVtbl,
        punkSrc,
        lprectBorder,
        bUseHmonitor,
      );

  int v_CheckZoneCrossing(
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(94)
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
}
