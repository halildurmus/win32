// IUpdateIDList.dart

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
import '../../system/com/IBindCtx.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUpdateIDList = '{6589B6D2-5F8D-4B9E-B7E0-23CDD9717D8C}';

/// {@category Interface}
/// {@category com}
class IUpdateIDList extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUpdateIDList(Pointer<COMObject> ptr) : super(ptr);

  int Update(
    Pointer<COMObject> pbc,
    Pointer<ITEMIDLIST> pidlIn,
    Pointer<Pointer<ITEMIDLIST>> ppidlOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pbc,
            Pointer<ITEMIDLIST> pidlIn,
            Pointer<Pointer<ITEMIDLIST>> ppidlOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pbc,
            Pointer<ITEMIDLIST> pidlIn,
            Pointer<Pointer<ITEMIDLIST>> ppidlOut,
          )>()(
        ptr.ref.lpVtbl,
        pbc,
        pidlIn,
        ppidlOut,
      );
}
