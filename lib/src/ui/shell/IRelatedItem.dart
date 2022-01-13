// IRelatedItem.dart

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
import '../../ui/shell/IShellItem.dart';

/// @nodoc
const IID_IRelatedItem = '{A73CE67A-8AB1-44F1-8D43-D2FCBF6B1CD0}';

/// {@category Interface}
/// {@category com}
class IRelatedItem extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRelatedItem(Pointer<COMObject> ptr) : super(ptr);

  int GetItemIDList(
    Pointer<Pointer<ITEMIDLIST>> ppidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetItem(
    Pointer<Pointer<COMObject>> ppsi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsi,
          )>()(
        ptr.ref.lpVtbl,
        ppsi,
      );
}
