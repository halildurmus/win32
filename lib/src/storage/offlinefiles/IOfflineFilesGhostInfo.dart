// IOfflineFilesGhostInfo.dart

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
const IID_IOfflineFilesGhostInfo = '{2B09D48C-8AB5-464F-A755-A59D92F99429}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesGhostInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IOfflineFilesGhostInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsGhosted(
    Pointer<Int32> pbGhosted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbGhosted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbGhosted,
          )>()(
        ptr.ref.lpVtbl,
        pbGhosted,
      );
}
