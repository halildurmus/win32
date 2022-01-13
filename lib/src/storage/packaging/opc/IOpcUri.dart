// IOpcUri.dart

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

import '../../../system/com/IUri.dart';
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IOpcUri = '{BC9C1B9B-D62C-49EB-AEF0-3B4E0B28EBED}';

/// {@category Interface}
/// {@category com}
class IOpcUri extends IUri {
  // vtable begins at 28, is 3 entries long.
  IOpcUri(Pointer<COMObject> ptr) : super(ptr);

  int GetRelationshipsPartUri(
    Pointer<Pointer<COMObject>> relationshipPartUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipPartUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipPartUri,
          )>()(
        ptr.ref.lpVtbl,
        relationshipPartUri,
      );

  int GetRelativeUri(
    Pointer<COMObject> targetPartUri,
    Pointer<Pointer<COMObject>> relativeUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> targetPartUri,
            Pointer<Pointer<COMObject>> relativeUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> targetPartUri,
            Pointer<Pointer<COMObject>> relativeUri,
          )>()(
        ptr.ref.lpVtbl,
        targetPartUri,
        relativeUri,
      );

  int CombinePartUri(
    Pointer<COMObject> relativeUri,
    Pointer<Pointer<COMObject>> combinedUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> relativeUri,
            Pointer<Pointer<COMObject>> combinedUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> relativeUri,
            Pointer<Pointer<COMObject>> combinedUri,
          )>()(
        ptr.ref.lpVtbl,
        relativeUri,
        combinedUri,
      );
}
