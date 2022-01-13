// IPersistIDList.dart

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

import '../../system/com/IPersist.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPersistIDList = '{1079ACFC-29BD-11D3-8E0D-00C04F6837D5}';

/// {@category Interface}
/// {@category com}
class IPersistIDList extends IPersist {
  // vtable begins at 4, is 2 entries long.
  IPersistIDList(Pointer<COMObject> ptr) : super(ptr);

  int SetIDList(
    Pointer<ITEMIDLIST> pidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetIDList(
    Pointer<Pointer<ITEMIDLIST>> ppidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
