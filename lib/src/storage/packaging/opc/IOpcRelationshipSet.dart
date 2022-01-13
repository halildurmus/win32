// IOpcRelationshipSet.dart

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
import '../../../storage/packaging/opc/IOpcRelationship.dart';
import '../../../system/com/IUri.dart';
import '../../../storage/packaging/opc/structs.g.dart';
import '../../../storage/packaging/opc/IOpcRelationshipEnumerator.dart';
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IOpcRelationshipSet = '{42195949-3B79-4FC8-89C6-FC7FB979EE74}';

/// {@category Interface}
/// {@category com}
class IOpcRelationshipSet extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IOpcRelationshipSet(Pointer<COMObject> ptr) : super(ptr);

  int GetRelationship(
    Pointer<Utf16> relationshipIdentifier,
    Pointer<Pointer<COMObject>> relationship,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
            Pointer<Pointer<COMObject>> relationship,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
            Pointer<Pointer<COMObject>> relationship,
          )>()(
        ptr.ref.lpVtbl,
        relationshipIdentifier,
        relationship,
      );

  int CreateRelationship(
    Pointer<Utf16> relationshipIdentifier,
    Pointer<Utf16> relationshipType,
    Pointer<COMObject> targetUri,
    int targetMode,
    Pointer<Pointer<COMObject>> relationship,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
            Pointer<Utf16> relationshipType,
            Pointer<COMObject> targetUri,
            Int32 targetMode,
            Pointer<Pointer<COMObject>> relationship,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
            Pointer<Utf16> relationshipType,
            Pointer<COMObject> targetUri,
            int targetMode,
            Pointer<Pointer<COMObject>> relationship,
          )>()(
        ptr.ref.lpVtbl,
        relationshipIdentifier,
        relationshipType,
        targetUri,
        targetMode,
        relationship,
      );

  int DeleteRelationship(
    Pointer<Utf16> relationshipIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        relationshipIdentifier,
      );

  int RelationshipExists(
    Pointer<Utf16> relationshipIdentifier,
    Pointer<Int32> relationshipExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
            Pointer<Int32> relationshipExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> relationshipIdentifier,
            Pointer<Int32> relationshipExists,
          )>()(
        ptr.ref.lpVtbl,
        relationshipIdentifier,
        relationshipExists,
      );

  int GetEnumerator(
    Pointer<Pointer<COMObject>> relationshipEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        relationshipEnumerator,
      );

  int GetEnumeratorForType(
    Pointer<Utf16> relationshipType,
    Pointer<Pointer<COMObject>> relationshipEnumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> relationshipType,
            Pointer<Pointer<COMObject>> relationshipEnumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> relationshipType,
            Pointer<Pointer<COMObject>> relationshipEnumerator,
          )>()(
        ptr.ref.lpVtbl,
        relationshipType,
        relationshipEnumerator,
      );

  int GetRelationshipsContentStream(
    Pointer<Pointer<COMObject>> contents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> contents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> contents,
          )>()(
        ptr.ref.lpVtbl,
        contents,
      );
}
