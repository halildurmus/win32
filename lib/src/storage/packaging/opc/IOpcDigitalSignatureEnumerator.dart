// IOpcDigitalSignatureEnumerator.dart

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
import '../../../storage/packaging/opc/IOpcDigitalSignature.dart';
import '../../../storage/packaging/opc/IOpcDigitalSignatureEnumerator.dart';

/// @nodoc
const IID_IOpcDigitalSignatureEnumerator =
    '{967B6882-0BA3-4358-B9E7-B64C75063C5E}';

/// {@category Interface}
/// {@category com}
class IOpcDigitalSignatureEnumerator extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IOpcDigitalSignatureEnumerator(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> digitalSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> digitalSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> digitalSignature,
          )>()(
        ptr.ref.lpVtbl,
        digitalSignature,
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
