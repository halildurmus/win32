// INewMenuClient.dart

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
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_INewMenuClient = '{DCB07FDC-3BB5-451C-90BE-966644FED7B0}';

/// {@category Interface}
/// {@category com}
class INewMenuClient extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INewMenuClient(Pointer<COMObject> ptr) : super(ptr);

  int IncludeItems(
    Pointer<Int32> pflags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pflags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pflags,
          )>()(
        ptr.ref.lpVtbl,
        pflags,
      );

  int SelectAndEditItem(
    Pointer<ITEMIDLIST> pidlItem,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlItem,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlItem,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        pidlItem,
        flags,
      );
}
