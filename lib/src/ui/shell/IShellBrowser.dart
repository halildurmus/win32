// IShellBrowser.dart

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
import '../../system/ole/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../ui/shell/IShellView.dart';
import '../../ui/controls/structs.g.dart';

/// @nodoc
const IID_IShellBrowser = '{000214E2-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IShellBrowser extends IOleWindow {
  // vtable begins at 5, is 13 entries long.
  IShellBrowser(Pointer<COMObject> ptr) : super(ptr);

  int InsertMenusSB(
    int hmenuShared,
    Pointer<OleMenuGroupWidths> lpMenuWidths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenuShared,
            Pointer<OleMenuGroupWidths> lpMenuWidths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenuShared,
            Pointer<OleMenuGroupWidths> lpMenuWidths,
          )>()(
        ptr.ref.lpVtbl,
        hmenuShared,
        lpMenuWidths,
      );

  int SetMenuSB(
    int hmenuShared,
    int holemenuRes,
    int hwndActiveObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenuShared,
            IntPtr holemenuRes,
            IntPtr hwndActiveObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenuShared,
            int holemenuRes,
            int hwndActiveObject,
          )>()(
        ptr.ref.lpVtbl,
        hmenuShared,
        holemenuRes,
        hwndActiveObject,
      );

  int RemoveMenusSB(
    int hmenuShared,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hmenuShared,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hmenuShared,
          )>()(
        ptr.ref.lpVtbl,
        hmenuShared,
      );

  int SetStatusTextSB(
    Pointer<Utf16> pszStatusText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStatusText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStatusText,
          )>()(
        ptr.ref.lpVtbl,
        pszStatusText,
      );

  int EnableModelessSB(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int TranslateAcceleratorSB(
    Pointer<MSG> pmsg,
    int wID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pmsg,
            Uint16 wID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pmsg,
            int wID,
          )>()(
        ptr.ref.lpVtbl,
        pmsg,
        wID,
      );

  int BrowseObject(
    Pointer<ITEMIDLIST> pidl,
    int wFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 wFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int wFlags,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        wFlags,
      );

  int GetViewStateStream(
    int grfMode,
    Pointer<Pointer<COMObject>> ppStrm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfMode,
            Pointer<Pointer<COMObject>> ppStrm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfMode,
            Pointer<Pointer<COMObject>> ppStrm,
          )>()(
        ptr.ref.lpVtbl,
        grfMode,
        ppStrm,
      );

  int GetControlWindow(
    int id,
    Pointer<IntPtr> phwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 id,
            Pointer<IntPtr> phwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int id,
            Pointer<IntPtr> phwnd,
          )>()(
        ptr.ref.lpVtbl,
        id,
        phwnd,
      );

  int SendControlMsg(
    int id,
    int uMsg,
    int wParam,
    int lParam,
    Pointer<IntPtr> pret,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 id,
            Uint32 uMsg,
            IntPtr wParam,
            IntPtr lParam,
            Pointer<IntPtr> pret,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int id,
            int uMsg,
            int wParam,
            int lParam,
            Pointer<IntPtr> pret,
          )>()(
        ptr.ref.lpVtbl,
        id,
        uMsg,
        wParam,
        lParam,
        pret,
      );

  int QueryActiveShellView(
    Pointer<Pointer<COMObject>> ppshv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppshv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppshv,
          )>()(
        ptr.ref.lpVtbl,
        ppshv,
      );

  int OnViewWindowActive(
    Pointer<COMObject> pshv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pshv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pshv,
          )>()(
        ptr.ref.lpVtbl,
        pshv,
      );

  int SetToolbarItems(
    Pointer<TBBUTTON> lpButtons,
    int nButtons,
    int uFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TBBUTTON> lpButtons,
            Uint32 nButtons,
            Uint32 uFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TBBUTTON> lpButtons,
            int nButtons,
            int uFlags,
          )>()(
        ptr.ref.lpVtbl,
        lpButtons,
        nButtons,
        uFlags,
      );
}
