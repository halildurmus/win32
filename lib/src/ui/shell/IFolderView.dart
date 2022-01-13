// IFolderView.dart

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

/// @nodoc
const IID_IFolderView = '{CDE725B0-CCC9-4519-917E-325D72FAB4CE}';

/// {@category Interface}
/// {@category com}
class IFolderView extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IFolderView(Pointer<COMObject> ptr) : super(ptr);

  int GetCurrentViewMode(
    Pointer<Uint32> pViewMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pViewMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pViewMode,
          )>()(
        ptr.ref.lpVtbl,
        pViewMode,
      );

  int SetCurrentViewMode(
    int ViewMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ViewMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ViewMode,
          )>()(
        ptr.ref.lpVtbl,
        ViewMode,
      );

  int GetFolder(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Item(
    int iItemIndex,
    Pointer<Pointer<ITEMIDLIST>> ppidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iItemIndex,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iItemIndex,
            Pointer<Pointer<ITEMIDLIST>> ppidl,
          )>()(
        ptr.ref.lpVtbl,
        iItemIndex,
        ppidl,
      );

  int ItemCount(
    int uFlags,
    Pointer<Int32> pcItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
            Pointer<Int32> pcItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
            Pointer<Int32> pcItems,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
        pcItems,
      );

  int Items(
    int uFlags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uFlags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uFlags,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        uFlags,
        riid,
        ppv,
      );

  int GetSelectionMarkedItem(
    Pointer<Int32> piItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> piItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> piItem,
          )>()(
        ptr.ref.lpVtbl,
        piItem,
      );

  int GetFocusedItem(
    Pointer<Int32> piItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> piItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> piItem,
          )>()(
        ptr.ref.lpVtbl,
        piItem,
      );

  int GetItemPosition(
    Pointer<ITEMIDLIST> pidl,
    Pointer<POINT> ppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetSpacing(
    Pointer<POINT> ppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int GetDefaultSpacing(
    Pointer<POINT> ppt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetAutoArrange() => ptr.ref.lpVtbl.value
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

  int SelectItem(
    int iItem,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iItem,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iItem,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        iItem,
        dwFlags,
      );

  int SelectAndPositionItems(
    int cidl,
    Pointer<Pointer<ITEMIDLIST>> apidl,
    Pointer<POINT> apt,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cidl,
            Pointer<Pointer<ITEMIDLIST>> apidl,
            Pointer<POINT> apt,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cidl,
            Pointer<Pointer<ITEMIDLIST>> apidl,
            Pointer<POINT> apt,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        cidl,
        apidl,
        apt,
        dwFlags,
      );
}
