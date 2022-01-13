// IPersistFolder2.dart

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

import '../../ui/shell/IPersistFolder.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPersistFolder2 = '{1AC3D9F0-175C-11D1-95BE-00609797EA4F}';

/// {@category Interface}
/// {@category com}
class IPersistFolder2 extends IPersistFolder {
  // vtable begins at 5, is 1 entries long.
  IPersistFolder2(Pointer<COMObject> ptr) : super(ptr);

  int GetCurFolder(
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
