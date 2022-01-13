// IOpcSignaturePartReference.dart

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
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/structs.g.dart';

/// @nodoc
const IID_IOpcSignaturePartReference = '{E24231CA-59F4-484E-B64B-36EEDA36072C}';

/// {@category Interface}
/// {@category com}
class IOpcSignaturePartReference extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IOpcSignaturePartReference(Pointer<COMObject> ptr) : super(ptr);

  int GetPartName(
    Pointer<Pointer<COMObject>> partName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partName,
          )>()(
        ptr.ref.lpVtbl,
        partName,
      );

  int GetContentType(
    Pointer<Pointer<Utf16>> contentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> contentType,
          )>()(
        ptr.ref.lpVtbl,
        contentType,
      );

  int GetDigestMethod(
    Pointer<Pointer<Utf16>> digestMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
          .elementAt(6)
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

  int GetTransformMethod(
    Pointer<Int32> transformMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
