// IFileSystemImageResult2.dart

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

import '../../storage/imapi/IFileSystemImageResult.dart';
import '../../storage/imapi/IBlockRangeList.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFileSystemImageResult2 = '{B507CA29-2204-11DD-966A-001AA01BBC58}';

/// {@category Interface}
/// {@category com}
class IFileSystemImageResult2 extends IFileSystemImageResult {
  // vtable begins at 12, is 1 entries long.
  IFileSystemImageResult2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get ModifiedBlocks {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
