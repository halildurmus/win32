// FolderItems2.dart

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

import '../../ui/shell/FolderItems.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_FolderItems2 = '{C94F0AD0-F363-11D2-A327-00C04F8EEC7F}';

/// {@category Interface}
/// {@category com}
class FolderItems2 extends FolderItems {
  // vtable begins at 12, is 1 entries long.
  FolderItems2(Pointer<COMObject> ptr) : super(ptr);

  int InvokeVerbEx(
    VARIANT vVerb,
    VARIANT vArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vVerb,
            VARIANT vArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vVerb,
            VARIANT vArgs,
          )>()(
        ptr.ref.lpVtbl,
        vVerb,
        vArgs,
      );
}
