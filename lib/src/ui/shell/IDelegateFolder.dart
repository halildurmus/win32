// IDelegateFolder.dart

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
import '../../system/com/IMalloc.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDelegateFolder = '{ADD8BA80-002B-11D0-8F0F-00C04FD7D062}';

/// {@category Interface}
/// {@category com}
class IDelegateFolder extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDelegateFolder(Pointer<COMObject> ptr) : super(ptr);

  int SetItemAlloc(
    Pointer<COMObject> pmalloc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pmalloc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pmalloc,
          )>()(
        ptr.ref.lpVtbl,
        pmalloc,
      );
}
