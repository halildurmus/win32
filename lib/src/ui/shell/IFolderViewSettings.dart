// IFolderViewSettings.dart

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
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IFolderViewSettings = '{AE8C987D-8797-4ED3-BE72-2A47DD938DB0}';

/// {@category Interface}
/// {@category com}
class IFolderViewSettings extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IFolderViewSettings(Pointer<COMObject> ptr) : super(ptr);

  int GetColumnPropertyList(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetGroupByProperty(
    Pointer<PROPERTYKEY> pkey,
    Pointer<Int32> pfGroupAscending,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
            Pointer<Int32> pfGroupAscending,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPERTYKEY> pkey,
            Pointer<Int32> pfGroupAscending,
          )>()(
        ptr.ref.lpVtbl,
        pkey,
        pfGroupAscending,
      );

  int GetViewMode(
    Pointer<Int32> plvm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plvm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plvm,
          )>()(
        ptr.ref.lpVtbl,
        plvm,
      );

  int GetIconSize(
    Pointer<Uint32> puIconSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puIconSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puIconSize,
          )>()(
        ptr.ref.lpVtbl,
        puIconSize,
      );

  int GetFolderFlags(
    Pointer<Int32> pfolderMask,
    Pointer<Int32> pfolderFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfolderMask,
            Pointer<Int32> pfolderFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfolderMask,
            Pointer<Int32> pfolderFlags,
          )>()(
        ptr.ref.lpVtbl,
        pfolderMask,
        pfolderFlags,
      );

  int GetSortColumns(
    Pointer<SORTCOLUMN> rgSortColumns,
    int cColumnsIn,
    Pointer<Uint32> pcColumnsOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SORTCOLUMN> rgSortColumns,
            Uint32 cColumnsIn,
            Pointer<Uint32> pcColumnsOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SORTCOLUMN> rgSortColumns,
            int cColumnsIn,
            Pointer<Uint32> pcColumnsOut,
          )>()(
        ptr.ref.lpVtbl,
        rgSortColumns,
        cColumnsIn,
        pcColumnsOut,
      );

  int GetGroupSubsetCount(
    Pointer<Uint32> pcVisibleRows,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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
}
