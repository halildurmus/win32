// IFsrmActionEmail2.dart

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

import '../../storage/fileserverresourcemanager/IFsrmActionEmail.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmActionEmail2 = '{8276702F-2532-4839-89BF-4872609A2EA4}';

/// {@category Interface}
/// {@category com}
class IFsrmActionEmail2 extends IFsrmActionEmail {
  // vtable begins at 26, is 2 entries long.
  IFsrmActionEmail2(Pointer<COMObject> ptr) : super(ptr);

  int get AttachmentFileListSize {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> attachmentFileListSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> attachmentFileListSize,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AttachmentFileListSize(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 attachmentFileListSize,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int attachmentFileListSize,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
