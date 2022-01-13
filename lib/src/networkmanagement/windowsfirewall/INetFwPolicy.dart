// INetFwPolicy.dart

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

import '../../system/com/IDispatch.dart';
import '../../networkmanagement/windowsfirewall/INetFwProfile.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsfirewall/structs.g.dart';

/// @nodoc
const IID_INetFwPolicy = '{D46D2478-9AC9-4008-9DC7-5563CE5536CC}';

/// {@category Interface}
/// {@category com}
class INetFwPolicy extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  INetFwPolicy(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get CurrentProfile {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> profile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> profile,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetProfileByType(
    int profileType,
    Pointer<Pointer<COMObject>> profile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<Pointer<COMObject>> profile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<Pointer<COMObject>> profile,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        profile,
      );
}
