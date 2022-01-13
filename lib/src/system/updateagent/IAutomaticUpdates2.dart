// IAutomaticUpdates2.dart

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

import '../../system/updateagent/IAutomaticUpdates.dart';
import '../../system/updateagent/IAutomaticUpdatesResults.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAutomaticUpdates2 = '{4A2F5C31-CFD9-410E-B7FB-29A653973A0F}';

/// {@category Interface}
/// {@category com}
class IAutomaticUpdates2 extends IAutomaticUpdates {
  // vtable begins at 14, is 1 entries long.
  IAutomaticUpdates2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get Results {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
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
