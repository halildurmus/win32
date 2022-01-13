// IOpcSignatureCustomObjectEnumerator.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/IOpcSignatureCustomObject.dart';
import '../../../storage/packaging/opc/IOpcSignatureCustomObjectEnumerator.dart';

/// @nodoc
const IID_IOpcSignatureCustomObjectEnumerator =
    '{5EE4FE1D-E1B0-4683-8079-7EA0FCF80B4C}';

/// {@category Interface}
/// {@category com}
class IOpcSignatureCustomObjectEnumerator extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IOpcSignatureCustomObjectEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int MoveNext(
    Pointer<Int32> hasNext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasNext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasNext,
          )>()(
        ptr.ref.lpVtbl,
        hasNext,
      );

  int MovePrevious(
    Pointer<Int32> hasPrevious,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasPrevious,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasPrevious,
          )>()(
        ptr.ref.lpVtbl,
        hasPrevious,
      );

  int GetCurrent(
    Pointer<Pointer<COMObject>> customObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> customObject,
          )>()(
        ptr.ref.lpVtbl,
        customObject,
      );

  int Clone(
    Pointer<Pointer<COMObject>> copy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> copy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> copy,
          )>()(
        ptr.ref.lpVtbl,
        copy,
      );
}
