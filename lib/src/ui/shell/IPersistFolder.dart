// IPersistFolder.dart

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
const IID_IPersistFolder = '{000214EA-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IPersistFolder extends IPersist {
  // vtable begins at 4, is 1 entries long.
  IPersistFolder(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
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
}
