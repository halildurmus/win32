// IShellDetails.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellDetails = '{000214EC-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IShellDetails extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IShellDetails(Pointer<COMObject> ptr) : super(ptr);

  int GetDetailsOf(
    Pointer<ITEMIDLIST> pidl,
    int iColumn,
    Pointer<SHELLDETAILS> pDetails,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            Uint32 iColumn,
            Pointer<SHELLDETAILS> pDetails,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidl,
            int iColumn,
            Pointer<SHELLDETAILS> pDetails,
          )>()(
        ptr.ref.lpVtbl,
        pidl,
        iColumn,
        pDetails,
      );

  int ColumnClick(
    int iColumn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iColumn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iColumn,
          )>()(
        ptr.ref.lpVtbl,
        iColumn,
      );
}
