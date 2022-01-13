// IShellFolder2.dart

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

import '../../ui/shell/IShellFolder.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IEnumExtraSearch.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellFolder2 = '{93F2F68C-1D1B-11D3-A30E-00C04F79ABD1}';

/// {@category Interface}
/// {@category com}
class IShellFolder2 extends IShellFolder {
  // vtable begins at 13, is 7 entries long.
  IShellFolder2(Pointer<COMObject> ptr) : super(ptr);

  int GetDefaultSearchGUID(
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
      );

  int EnumSearches(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );

  int GetDefaultColumn(
    int dwRes,
    Pointer<Uint32> pSort,
    Pointer<Uint32> pDisplay,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRes,
            Pointer<Uint32> pSort,
            Pointer<Uint32> pDisplay,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRes,
            Pointer<Uint32> pSort,
            Pointer<Uint32> pDisplay,
          )>()(
        ptr.ref.lpVtbl,
        dwRes,
        pSort,
        pDisplay,
      );

  int GetDefaultColumnState(
    int iColumn,
    Pointer<Uint32> pcsFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iColumn,
            Pointer<Uint32> pcsFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iColumn,
            Pointer<Uint32> pcsFlags,
          )>()(
        ptr.ref.lpVtbl,
        iColumn,
        pcsFlags,
      );

  int GetDetailsEx(
    Pointer<ITEMIDLIST> pidl,
    Pointer<PROPERTYKEY> pscid,
    Pointer<VARIANT> pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<PROPERTYKEY> pscid,
            Pointer<VARIANT> pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Pointer<PROPERTYKEY> pscid,
            Pointer<VARIANT> pv,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        pscid,
        pv,
      );

  int GetDetailsOf(
    Pointer<ITEMIDLIST> pidl,
    int iColumn,
    Pointer<SHELLDETAILS> psd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 iColumn,
            Pointer<SHELLDETAILS> psd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int iColumn,
            Pointer<SHELLDETAILS> psd,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        iColumn,
        psd,
      );

  int MapColumnToSCID(
    int iColumn,
    Pointer<PROPERTYKEY> pscid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iColumn,
            Pointer<PROPERTYKEY> pscid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iColumn,
            Pointer<PROPERTYKEY> pscid,
          )>()(
        ptr.ref.lpVtbl,
        iColumn,
        pscid,
      );
}
