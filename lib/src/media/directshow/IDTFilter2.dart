// IDTFilter2.dart

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

import '../../media/directshow/IDTFilter.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IDTFilter2 = '{C4C4C4B4-0049-4E2B-98FB-9537F6CE516D}';

/// {@category Interface}
/// {@category com}
class IDTFilter2 extends IDTFilter {
  // vtable begins at 11, is 3 entries long.
  IDTFilter2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get ChallengeUrl {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrChallengeUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrChallengeUrl,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetCurrLicenseExpDate(
    Pointer<Int32> protType,
    Pointer<Int32> lpDateTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> protType,
            Pointer<Int32> lpDateTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> protType,
            Pointer<Int32> lpDateTime,
          )>()(
        ptr.ref.lpVtbl,
        protType,
        lpDateTime,
      );

  int GetLastErrorCode() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
