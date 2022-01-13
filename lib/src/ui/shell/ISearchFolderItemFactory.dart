// ISearchFolderItemFactory.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../ui/shell/IShellItemArray.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_ISearchFolderItemFactory = '{A0FFBC28-5482-4366-BE27-3E81E78E06C2}';

/// {@category Interface}
/// {@category com}
class ISearchFolderItemFactory extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  ISearchFolderItemFactory(Pointer<COMObject> ptr) : super(ptr);

  int SetDisplayName(
    Pointer<Utf16> pszDisplayName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDisplayName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDisplayName,
          )>()(
        ptr.ref.lpVtbl,
        pszDisplayName,
      );

  int SetFolderTypeID(
    GUID ftid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ftid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ftid,
          )>()(
        ptr.ref.lpVtbl,
        ftid,
      );

  int SetFolderLogicalViewMode(
    int flvm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flvm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flvm,
          )>()(
        ptr.ref.lpVtbl,
        flvm,
      );

  int SetIconSize(
    int iIconSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iIconSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIconSize,
          )>()(
        ptr.ref.lpVtbl,
        iIconSize,
      );

  int SetVisibleColumns(
    int cVisibleColumns,
    Pointer<PROPERTYKEY> rgKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cVisibleColumns,
            Pointer<PROPERTYKEY> rgKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cVisibleColumns,
            Pointer<PROPERTYKEY> rgKey,
          )>()(
        ptr.ref.lpVtbl,
        cVisibleColumns,
        rgKey,
      );

  int SetSortColumns(
    int cSortColumns,
    Pointer<SORTCOLUMN> rgSortColumns,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cSortColumns,
            Pointer<SORTCOLUMN> rgSortColumns,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cSortColumns,
            Pointer<SORTCOLUMN> rgSortColumns,
          )>()(
        ptr.ref.lpVtbl,
        cSortColumns,
        rgSortColumns,
      );

  int SetGroupColumn(
    Pointer<PROPERTYKEY> keyGroup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> keyGroup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> keyGroup,
          )>()(
        ptr.ref.lpVtbl,
        keyGroup,
      );

  int SetStacks(
    int cStackKeys,
    Pointer<PROPERTYKEY> rgStackKeys,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cStackKeys,
            Pointer<PROPERTYKEY> rgStackKeys,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cStackKeys,
            Pointer<PROPERTYKEY> rgStackKeys,
          )>()(
        ptr.ref.lpVtbl,
        cStackKeys,
        rgStackKeys,
      );

  int SetScope(
    Pointer<COMObject> psiaScope,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiaScope,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiaScope,
          )>()(
        ptr.ref.lpVtbl,
        psiaScope,
      );

  int SetCondition(
    Pointer<COMObject> pCondition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCondition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCondition,
          )>()(
        ptr.ref.lpVtbl,
        pCondition,
      );

  int GetShellItem(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetIDList(
    Pointer<Pointer<ITEMIDLIST>> ppidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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
}

/// @nodoc
const CLSID_SearchFolderItemFactory = '{14010E02-BBBD-41F0-88E3-EDA371216584}';

/// {@category com}
class SearchFolderItemFactory extends ISearchFolderItemFactory {
  SearchFolderItemFactory(Pointer<COMObject> ptr) : super(ptr);

  factory SearchFolderItemFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SearchFolderItemFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISearchFolderItemFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SearchFolderItemFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
