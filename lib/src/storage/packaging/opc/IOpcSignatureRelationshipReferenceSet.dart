// IOpcSignatureRelationshipReferenceSet.dart

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
import '../../../storage/packaging/opc/IOpcRelationshipSelectorSet.dart';
import '../../../storage/packaging/opc/IOpcSignatureRelationshipReference.dart';
import '../../../storage/packaging/opc/IOpcSignatureRelationshipReferenceEnumerator.dart';

/// @nodoc
const IID_IOpcSignatureRelationshipReferenceSet =
    '{9F863CA5-3631-404C-828D-807E0715069B}';

/// {@category Interface}
/// {@category com}
class IOpcSignatureRelationshipReferenceSet extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IOpcSignatureRelationshipReferenceSet(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    Pointer<COMObject> sourceUri,
    Pointer<Utf16> digestMethod,
    int relationshipSigningOption,
    Pointer<COMObject> selectorSet,
    int transformMethod,
    Pointer<Pointer<COMObject>> relationshipReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sourceUri,
            Pointer<Utf16> digestMethod,
            Int32 relationshipSigningOption,
            Pointer<COMObject> selectorSet,
            Int32 transformMethod,
            Pointer<Pointer<COMObject>> relationshipReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sourceUri,
            Pointer<Utf16> digestMethod,
            int relationshipSigningOption,
            Pointer<COMObject> selectorSet,
            int transformMethod,
            Pointer<Pointer<COMObject>> relationshipReference,
          )>()(
        ptr.ref.lpVtbl,
        sourceUri,
        digestMethod,
        relationshipSigningOption,
        selectorSet,
        transformMethod,
        relationshipReference,
      );

  int CreateRelationshipSelectorSet(
    Pointer<Pointer<COMObject>> selectorSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> selectorSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> selectorSet,
          )>()(
        ptr.ref.lpVtbl,
        selectorSet,
      );

  int Delete(
    Pointer<COMObject> relationshipReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> relationshipReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> relationshipReference,
          )>()(
        ptr.ref.lpVtbl,
        relationshipReference,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> relationshipReferenceEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipReferenceEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipReferenceEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        relationshipReferenceEnumerator,
      );
}
