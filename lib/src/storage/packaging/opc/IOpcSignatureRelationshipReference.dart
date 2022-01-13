// IOpcSignatureRelationshipReference.dart

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
import '../../../storage/packaging/opc/IOpcUri.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../storage/packaging/opc/IOpcRelationshipSelectorEnumerator.dart';

/// @nodoc
const IID_IOpcSignatureRelationshipReference =
    '{57BABAC6-9D4A-4E50-8B86-E5D4051EAE7C}';

/// {@category Interface}
/// {@category com}
class IOpcSignatureRelationshipReference extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IOpcSignatureRelationshipReference(Pointer<COMObject> ptr) : super(ptr);

  int GetSourceUri(
    Pointer<Pointer<COMObject>> sourceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> sourceUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> sourceUri,
          )>()(
        ptr.ref.lpVtbl,
        sourceUri,
      );

  int GetDigestMethod(
    Pointer<Pointer<Utf16>> digestMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
          .elementAt(5)
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

  int GetRelationshipSigningOption(
    Pointer<Int32> relationshipSigningOption,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> relationshipSigningOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> relationshipSigningOption,
          )>()(
        ptr.ref.lpVtbl,
        relationshipSigningOption,
      );

  int GetRelationshipSelectorEnumerator(
    Pointer<Pointer<COMObject>> selectorEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> selectorEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> selectorEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        selectorEnumerator,
      );
}
