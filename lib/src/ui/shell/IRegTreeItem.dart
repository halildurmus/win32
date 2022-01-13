// IRegTreeItem.dart

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

/// @nodoc
const IID_IRegTreeItem = '{A9521922-0812-4D44-9EC3-7FD38C726F3D}';

/// {@category Interface}
/// {@category com}
class IRegTreeItem extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRegTreeItem(Pointer<COMObject> ptr) : super(ptr);

  int GetCheckState(
    Pointer<Int32> pbCheck,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbCheck,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbCheck,
          )>()(
        ptr.ref.lpVtbl,
        pbCheck,
      );

  int SetCheckState(
    int bCheck,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bCheck,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bCheck,
          )>()(
        ptr.ref.lpVtbl,
        bCheck,
      );
}
