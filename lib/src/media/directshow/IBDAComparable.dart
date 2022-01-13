// IBDAComparable.dart

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
import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDAComparable = '{B34505E0-2F0E-497B-80BC-D43F3B24ED7F}';

/// {@category Interface}
/// {@category com}
class IBDAComparable extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IBDAComparable(Pointer<COMObject> ptr) : super(ptr);

  int CompareExact(
    Pointer<COMObject> CompareTo,
    Pointer<Int32> Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CompareTo,
            Pointer<Int32> Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CompareTo,
            Pointer<Int32> Result,
          )>()(
        ptr.ref.lpVtbl,
        CompareTo,
        Result,
      );

  int CompareEquivalent(
    Pointer<COMObject> CompareTo,
    int dwFlags,
    Pointer<Int32> Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> CompareTo,
            Uint32 dwFlags,
            Pointer<Int32> Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> CompareTo,
            int dwFlags,
            Pointer<Int32> Result,
          )>()(
        ptr.ref.lpVtbl,
        CompareTo,
        dwFlags,
        Result,
      );

  int HashExact(
    Pointer<Int64> Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> Result,
          )>()(
        ptr.ref.lpVtbl,
        Result,
      );

  int HashExactIncremental(
    int PartialResult,
    Pointer<Int64> Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 PartialResult,
            Pointer<Int64> Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PartialResult,
            Pointer<Int64> Result,
          )>()(
        ptr.ref.lpVtbl,
        PartialResult,
        Result,
      );

  int HashEquivalent(
    int dwFlags,
    Pointer<Int64> Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Int64> Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Int64> Result,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        Result,
      );

  int HashEquivalentIncremental(
    int PartialResult,
    int dwFlags,
    Pointer<Int64> Result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 PartialResult,
            Uint32 dwFlags,
            Pointer<Int64> Result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PartialResult,
            int dwFlags,
            Pointer<Int64> Result,
          )>()(
        ptr.ref.lpVtbl,
        PartialResult,
        dwFlags,
        Result,
      );
}
