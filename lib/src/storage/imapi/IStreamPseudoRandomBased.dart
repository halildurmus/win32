// IStreamPseudoRandomBased.dart

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

import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamPseudoRandomBased = '{27354145-7F64-5B0F-8F00-5D77AFBE261E}';

/// {@category Interface}
/// {@category com}
class IStreamPseudoRandomBased extends IStream {
  // vtable begins at 14, is 4 entries long.
  IStreamPseudoRandomBased(Pointer<COMObject> ptr) : super(ptr);

  set Seed(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Seed {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int put_ExtendedSeed(
    Pointer<Uint32> values,
    int eCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> values,
            Uint32 eCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> values,
            int eCount,
          )>()(
        ptr.ref.lpVtbl,
        values,
        eCount,
      );

  int get_ExtendedSeed(
    Pointer<Pointer<Uint32>> values,
    Pointer<Uint32> eCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint32>> values,
            Pointer<Uint32> eCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint32>> values,
            Pointer<Uint32> eCount,
          )>()(
        ptr.ref.lpVtbl,
        values,
        eCount,
      );
}
