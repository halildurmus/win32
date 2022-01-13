// IFolderView2.dart

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

import '../../ui/shell/IFolderView.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IShellItemArray.dart';

/// @nodoc
const IID_IFolderView2 = '{1AF3A467-214F-4298-908E-06B03E0B39F9}';

/// {@category Interface}
/// {@category com}
class IFolderView2 extends IFolderView {
  // vtable begins at 17, is 25 entries long.
  IFolderView2(Pointer<COMObject> ptr) : super(ptr);

  int SetGroupBy(
    Pointer<PROPERTYKEY> key,
    int fAscending,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            Int32 fAscending,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> key,
            int fAscending,
          )>()(
        ptr.ref.lpVtbl,
        key,
        fAscending,
      );

  int GetGroupBy(
    Pointer<PROPERTYKEY> pkey,
    Pointer<Int32> pfAscending,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
            Pointer<Int32> pfAscending,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
            Pointer<Int32> pfAscending,
          )>()(
        ptr.ref.lpVtbl,
        pkey,
        pfAscending,
      );

  int SetViewProperty(
    Pointer<ITEMIDLIST> pidl,
    Pointer<PROPERTYKEY> propkey,
    Pointer<PROPVARIANT> propvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<PROPERTYKEY> propkey,
            Pointer<PROPVARIANT> propvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<PROPERTYKEY> propkey,
            Pointer<PROPVARIANT> propvar,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        propkey,
        propvar,
      );

  int GetViewProperty(
    Pointer<ITEMIDLIST> pidl,
    Pointer<PROPERTYKEY> propkey,
    Pointer<PROPVARIANT> ppropvar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<PROPERTYKEY> propkey,
            Pointer<PROPVARIANT> ppropvar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<PROPERTYKEY> propkey,
            Pointer<PROPVARIANT> ppropvar,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        propkey,
        ppropvar,
      );

  int SetTileViewProperties(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Utf16> pszPropList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Utf16> pszPropList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Utf16> pszPropList,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pszPropList,
      );

  int SetExtendedTileViewProperties(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Utf16> pszPropList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Utf16> pszPropList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Utf16> pszPropList,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pszPropList,
      );

  int SetText(
    int iType,
    Pointer<Utf16> pwszText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iType,
            Pointer<Utf16> pwszText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iType,
            Pointer<Utf16> pwszText,
          )>()(
        ptr.ref.lpVtbl,
        iType,
        pwszText,
      );

  int SetCurrentFolderFlags(
    int dwMask,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMask,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMask,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwMask,
        dwFlags,
      );

  int GetCurrentFolderFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int GetSortColumnCount(
    Pointer<Int32> pcColumns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pcColumns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pcColumns,
          )>()(
        ptr.ref.lpVtbl,
        pcColumns,
      );

  int SetSortColumns(
    Pointer<SORTCOLUMN> rgSortColumns,
    int cColumns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SORTCOLUMN> rgSortColumns,
            Int32 cColumns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SORTCOLUMN> rgSortColumns,
            int cColumns,
          )>()(
        ptr.ref.lpVtbl,
        rgSortColumns,
        cColumns,
      );

  int GetSortColumns(
    Pointer<SORTCOLUMN> rgSortColumns,
    int cColumns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SORTCOLUMN> rgSortColumns,
            Int32 cColumns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SORTCOLUMN> rgSortColumns,
            int cColumns,
          )>()(
        ptr.ref.lpVtbl,
        rgSortColumns,
        cColumns,
      );

  int GetItem(
    int iItem,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iItem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iItem,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        iItem,
        riid,
        ppv,
      );

  int GetVisibleItem(
    int iStart,
    int fPrevious,
    Pointer<Int32> piItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iStart,
            Int32 fPrevious,
            Pointer<Int32> piItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iStart,
            int fPrevious,
            Pointer<Int32> piItem,
          )>()(
        ptr.ref.lpVtbl,
        iStart,
        fPrevious,
        piItem,
      );

  int GetSelectedItem(
    int iStart,
    Pointer<Int32> piItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iStart,
            Pointer<Int32> piItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iStart,
            Pointer<Int32> piItem,
          )>()(
        ptr.ref.lpVtbl,
        iStart,
        piItem,
      );

  int GetSelection(
    int fNoneImpliesFolder,
    Pointer<Pointer<COMObject>> ppsia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fNoneImpliesFolder,
            Pointer<Pointer<COMObject>> ppsia,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fNoneImpliesFolder,
            Pointer<Pointer<COMObject>> ppsia,
          )>()(
        ptr.ref.lpVtbl,
        fNoneImpliesFolder,
        ppsia,
      );

  int GetSelectionState(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pdwFlags,
      );

  int InvokeVerbOnSelection(
    Pointer<Utf8> pszVerb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf8> pszVerb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf8> pszVerb,
          )>()(
        ptr.ref.lpVtbl,
        pszVerb,
      );

  int SetViewModeAndIconSize(
    int uViewMode,
    int iImageSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 uViewMode,
            Int32 iImageSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uViewMode,
            int iImageSize,
          )>()(
        ptr.ref.lpVtbl,
        uViewMode,
        iImageSize,
      );

  int GetViewModeAndIconSize(
    Pointer<Int32> puViewMode,
    Pointer<Int32> piImageSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> puViewMode,
            Pointer<Int32> piImageSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> puViewMode,
            Pointer<Int32> piImageSize,
          )>()(
        ptr.ref.lpVtbl,
        puViewMode,
        piImageSize,
      );

  int SetGroupSubsetCount(
    int cVisibleRows,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cVisibleRows,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cVisibleRows,
          )>()(
        ptr.ref.lpVtbl,
        cVisibleRows,
      );

  int GetGroupSubsetCount(
    Pointer<Uint32> pcVisibleRows,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcVisibleRows,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcVisibleRows,
          )>()(
        ptr.ref.lpVtbl,
        pcVisibleRows,
      );

  int SetRedraw(
    int fRedrawOn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fRedrawOn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fRedrawOn,
          )>()(
        ptr.ref.lpVtbl,
        fRedrawOn,
      );

  int IsMoveInSameFolder() => ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int DoRename() => ptr.ref.lpVtbl.value
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
}
