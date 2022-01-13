// IFileSystemImage3.dart

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

import '../../storage/imapi/IFileSystemImage2.dart';
import '../../foundation/structs.g.dart';
import '../../storage/imapi/structs.g.dart';

/// @nodoc
const IID_IFileSystemImage3 = '{7CFF842C-7E97-4807-8304-910DD8F7C051}';

/// {@category Interface}
/// {@category com}
class IFileSystemImage3 extends IFileSystemImage2 {
  // vtable begins at 59, is 3 entries long.
  IFileSystemImage3(Pointer<COMObject> ptr) : super(ptr);

  int get CreateRedundantUdfMetadataFiles {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CreateRedundantUdfMetadataFiles(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(60)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int ProbeSpecificFileSystem(
    int fileSystemToProbe,
    Pointer<Int16> isAppendable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fileSystemToProbe,
            Pointer<Int16> isAppendable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fileSystemToProbe,
            Pointer<Int16> isAppendable,
          )>()(
        ptr.ref.lpVtbl,
        fileSystemToProbe,
        isAppendable,
      );
}
