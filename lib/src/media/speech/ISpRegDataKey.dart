// ISpRegDataKey.dart

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

import '../../media/speech/ISpDataKey.dart';
import '../../system/registry/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpRegDataKey = '{92A66E2B-C830-4149-83DF-6FC2BA1E7A5B}';

/// {@category Interface}
/// {@category com}
class ISpRegDataKey extends ISpDataKey {
  // vtable begins at 15, is 1 entries long.
  ISpRegDataKey(Pointer<COMObject> ptr) : super(ptr);

  int SetKey(
    int hkey,
    int fReadOnly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hkey,
            Int32 fReadOnly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hkey,
            int fReadOnly,
          )>()(
        ptr.ref.lpVtbl,
        hkey,
        fReadOnly,
      );
}
