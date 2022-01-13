// IUpdateHistoryEntry2.dart

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

import '../../system/updateagent/IUpdateHistoryEntry.dart';
import '../../system/updateagent/ICategoryCollection.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUpdateHistoryEntry2 = '{C2BFB780-4539-4132-AB8C-0A8772013AB6}';

/// {@category Interface}
/// {@category com}
class IUpdateHistoryEntry2 extends IUpdateHistoryEntry {
  // vtable begins at 21, is 1 entries long.
  IUpdateHistoryEntry2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Categories {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retval,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
