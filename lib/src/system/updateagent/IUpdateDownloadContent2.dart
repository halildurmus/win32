// IUpdateDownloadContent2.dart

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

import '../../system/updateagent/IUpdateDownloadContent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUpdateDownloadContent2 = '{C97AD11B-F257-420B-9D9F-377F733F6F68}';

/// {@category Interface}
/// {@category com}
class IUpdateDownloadContent2 extends IUpdateDownloadContent {
  // vtable begins at 8, is 1 entries long.
  IUpdateDownloadContent2(Pointer<COMObject> ptr) : super(ptr);

  int get IsDeltaCompressedContent {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
