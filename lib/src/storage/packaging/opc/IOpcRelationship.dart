// IOpcRelationship.dart

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
import '../../../storage/packaging/opc/IOpcUri.dart';
import '../../../system/com/IUri.dart';
import '../../../storage/packaging/opc/structs.g.dart';

/// @nodoc
const IID_IOpcRelationship = '{42195949-3B79-4FC8-89C6-FC7FB979EE72}';

/// {@category Interface}
/// {@category com}
class IOpcRelationship extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IOpcRelationship(Pointer<COMObject> ptr) : super(ptr);

  int GetId(
    Pointer<Pointer<Utf16>> relationshipIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> relationshipIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> relationshipIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        relationshipIdentifier,
      );

  int GetRelationshipType(
    Pointer<Pointer<Utf16>> relationshipType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> relationshipType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> relationshipType,
          )>()(
        ptr.ref.lpVtbl,
        relationshipType,
      );

  int GetSourceUri(
    Pointer<Pointer<COMObject>> sourceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetTargetUri(
    Pointer<Pointer<COMObject>> targetUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> targetUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> targetUri,
          )>()(
        ptr.ref.lpVtbl,
        targetUri,
      );

  int GetTargetMode(
    Pointer<Int32> targetMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> targetMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> targetMode,
          )>()(
        ptr.ref.lpVtbl,
        targetMode,
      );
}
