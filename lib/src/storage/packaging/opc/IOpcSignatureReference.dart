// IOpcSignatureReference.dart

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
import '../../../system/com/IUri.dart';
import '../../../storage/packaging/opc/structs.g.dart';

/// @nodoc
const IID_IOpcSignatureReference = '{1B47005E-3011-4EDC-BE6F-0F65E5AB0342}';

/// {@category Interface}
/// {@category com}
class IOpcSignatureReference extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IOpcSignatureReference(Pointer<COMObject> ptr) : super(ptr);

  int GetId(
    Pointer<Pointer<Utf16>> referenceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> referenceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> referenceId,
          )>()(
        ptr.ref.lpVtbl,
        referenceId,
      );

  int GetUri(
    Pointer<Pointer<COMObject>> referenceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> referenceUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> referenceUri,
          )>()(
        ptr.ref.lpVtbl,
        referenceUri,
      );

  int GetType(
    Pointer<Pointer<Utf16>> type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> type,
          )>()(
        ptr.ref.lpVtbl,
        type,
      );

  int GetTransformMethod(
    Pointer<Int32> transformMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> transformMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> transformMethod,
          )>()(
        ptr.ref.lpVtbl,
        transformMethod,
      );

  int GetDigestMethod(
    Pointer<Pointer<Utf16>> digestMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> digestMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> digestMethod,
          )>()(
        ptr.ref.lpVtbl,
        digestMethod,
      );

  int GetDigestValue(
    Pointer<Pointer<Uint8>> digestValue,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> digestValue,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> digestValue,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        digestValue,
        count,
      );
}
