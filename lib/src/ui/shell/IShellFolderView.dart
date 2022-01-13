// IShellFolderView.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../system/ole/IDropTarget.dart';
import '../../system/com/IDataObject.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IShellFolderViewCB.dart';
import '../../system/com/IDispatch.dart';

/// @nodoc
const IID_IShellFolderView = '{37A378C0-F82D-11CE-AE65-08002B2E1262}';

/// {@category Interface}
/// {@category com}
class IShellFolderView extends IUnknown {
  // vtable begins at 3, is 28 entries long.
  IShellFolderView(Pointer<COMObject> ptr) : super(ptr);

  int Rearrange(
    int lParamSort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr lParamSort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lParamSort,
          )>()(
        ptr.ref.lpVtbl,
        lParamSort,
      );

  int GetArrangeParam(
    Pointer<IntPtr> plParamSort,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> plParamSort,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> plParamSort,
          )>()(
        ptr.ref.lpVtbl,
        plParamSort,
      );

  int ArrangeGrid() => ptr.ref.lpVtbl.value
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

  int AutoArrange() => ptr.ref.lpVtbl.value
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

  int GetAutoArrange() => ptr.ref.lpVtbl.value
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

  int AddObject(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Uint32> puItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> puItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> puItem,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        puItem,
      );

  int GetObject(
    Pointer<Pointer<ITEMIDLIST>> ppidl,
    int uItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
            Uint32 uItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
            int uItem,
          )>()(
        ptr.ref.lpVtbl,
        ppidl,
        uItem,
      );

  int RemoveObject(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Uint32> puItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> puItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> puItem,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        puItem,
      );

  int GetObjectCount(
    Pointer<Uint32> puCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puCount,
          )>()(
        ptr.ref.lpVtbl,
        puCount,
      );

  int SetObjectCount(
    int uCount,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uCount,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uCount,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        uCount,
        dwFlags,
      );

  int UpdateObject(
    Pointer<ITEMIDLIST> pidlOld,
    Pointer<ITEMIDLIST> pidlNew,
    Pointer<Uint32> puItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlOld,
            Pointer<ITEMIDLIST> pidlNew,
            Pointer<Uint32> puItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlOld,
            Pointer<ITEMIDLIST> pidlNew,
            Pointer<Uint32> puItem,
          )>()(
        ptr.ref.lpVtbl,
        pidlOld,
        pidlNew,
        puItem,
      );

  int RefreshObject(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Uint32> puItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> puItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> puItem,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        puItem,
      );

  int SetRedraw(
    int bRedraw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bRedraw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRedraw,
          )>()(
        ptr.ref.lpVtbl,
        bRedraw,
      );

  int GetSelectedCount(
    Pointer<Uint32> puSelected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puSelected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puSelected,
          )>()(
        ptr.ref.lpVtbl,
        puSelected,
      );

  int GetSelectedObjects(
    Pointer<Pointer<Pointer<ITEMIDLIST>>> pppidl,
    Pointer<Uint32> puItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Pointer<ITEMIDLIST>>> pppidl,
            Pointer<Uint32> puItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Pointer<ITEMIDLIST>>> pppidl,
            Pointer<Uint32> puItems,
          )>()(
        ptr.ref.lpVtbl,
        pppidl,
        puItems,
      );

  int IsDropOnSource(
    Pointer<COMObject> pDropTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDropTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDropTarget,
          )>()(
        ptr.ref.lpVtbl,
        pDropTarget,
      );

  int GetDragPoint(
    Pointer<POINT> ppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> ppt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> ppt,
          )>()(
        ptr.ref.lpVtbl,
        ppt,
      );

  int GetDropPoint(
    Pointer<POINT> ppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<POINT> ppt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<POINT> ppt,
          )>()(
        ptr.ref.lpVtbl,
        ppt,
      );

  int MoveIcons(
    Pointer<COMObject> pDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataObject,
          )>()(
        ptr.ref.lpVtbl,
        pDataObject,
      );

  int SetItemPos(
    Pointer<ITEMIDLIST> pidl,
    Pointer<POINT> ppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<POINT> ppt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<POINT> ppt,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        ppt,
      );

  int IsBkDropTarget(
    Pointer<COMObject> pDropTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDropTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDropTarget,
          )>()(
        ptr.ref.lpVtbl,
        pDropTarget,
      );

  int SetClipboard(
    int bMove,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bMove,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bMove,
          )>()(
        ptr.ref.lpVtbl,
        bMove,
      );

  int SetPoints(
    Pointer<COMObject> pDataObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDataObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDataObject,
          )>()(
        ptr.ref.lpVtbl,
        pDataObject,
      );

  int GetItemSpacing(
    Pointer<ITEMSPACING> pSpacing,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMSPACING> pSpacing,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMSPACING> pSpacing,
          )>()(
        ptr.ref.lpVtbl,
        pSpacing,
      );

  int SetCallback(
    Pointer<COMObject> pNewCB,
    Pointer<Pointer<COMObject>> ppOldCB,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNewCB,
            Pointer<Pointer<COMObject>> ppOldCB,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNewCB,
            Pointer<Pointer<COMObject>> ppOldCB,
          )>()(
        ptr.ref.lpVtbl,
        pNewCB,
        ppOldCB,
      );

  int Select(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int QuerySupport(
    Pointer<Uint32> pdwSupport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwSupport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwSupport,
          )>()(
        ptr.ref.lpVtbl,
        pdwSupport,
      );

  int SetAutomationObject(
    Pointer<COMObject> pdisp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdisp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdisp,
          )>()(
        ptr.ref.lpVtbl,
        pdisp,
      );
}

/// @nodoc
const CLSID_ShellFolderView = '{62112AA1-EBE4-11CF-A5FB-0020AFE7292D}';

/// {@category com}
class ShellFolderView extends IShellFolderView {
  ShellFolderView(Pointer<COMObject> ptr) : super(ptr);

  factory ShellFolderView.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ShellFolderView);
    final iid = calloc<GUID>()..ref.setGUID(IID_IShellFolderView);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ShellFolderView(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
