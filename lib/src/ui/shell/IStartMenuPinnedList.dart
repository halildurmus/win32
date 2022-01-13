// IStartMenuPinnedList.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStartMenuPinnedList = '{4CD19ADA-25A5-4A32-B3B7-347BEE5BE36B}';

/// {@category Interface}
/// {@category com}
class IStartMenuPinnedList extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStartMenuPinnedList(Pointer<COMObject> ptr) : super(ptr);

  int RemoveFromList(
    Pointer<COMObject> pitem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pitem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pitem,
          )>()(
        ptr.ref.lpVtbl,
        pitem,
      );
}
