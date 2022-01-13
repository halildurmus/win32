// IConfigInterleaving.dart

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

import '../../system/com/IUnknown.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IConfigInterleaving = '{BEE3D220-157B-11D0-BD23-00A0C911CE86}';

/// {@category Interface}
/// {@category com}
class IConfigInterleaving extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IConfigInterleaving(Pointer<COMObject> ptr) : super(ptr);

  set Mode(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(3)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 mode,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int mode,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Mode {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pMode,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int put_Interleaving(
    Pointer<Int64> prtInterleave,
    Pointer<Int64> prtPreroll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtInterleave,
            Pointer<Int64> prtPreroll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtInterleave,
            Pointer<Int64> prtPreroll,
          )>()(
        ptr.ref.lpVtbl,
        prtInterleave,
        prtPreroll,
      );

  int get_Interleaving(
    Pointer<Int64> prtInterleave,
    Pointer<Int64> prtPreroll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtInterleave,
            Pointer<Int64> prtPreroll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtInterleave,
            Pointer<Int64> prtPreroll,
          )>()(
        ptr.ref.lpVtbl,
        prtInterleave,
        prtPreroll,
      );
}
