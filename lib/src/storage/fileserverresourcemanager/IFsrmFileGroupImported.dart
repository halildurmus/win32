// IFsrmFileGroupImported.dart

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

import '../../storage/fileserverresourcemanager/IFsrmFileGroup.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmFileGroupImported = '{AD55F10B-5F11-4BE7-94EF-D9EE2E470DED}';

/// {@category Interface}
/// {@category com}
class IFsrmFileGroupImported extends IFsrmFileGroup {
  // vtable begins at 18, is 2 entries long.
  IFsrmFileGroupImported(Pointer<COMObject> ptr) : super(ptr);

  int get OverwriteOnCommit {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> overwrite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> overwrite,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set OverwriteOnCommit(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(19)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 overwrite,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int overwrite,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
