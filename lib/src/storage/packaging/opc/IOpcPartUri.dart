// IOpcPartUri.dart

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

import '../../../storage/packaging/opc/IOpcUri.dart';
import '../../../storage/packaging/opc/IOpcPartUri.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IOpcPartUri = '{7D3BABE7-88B2-46BA-85CB-4203CB016C87}';

/// {@category Interface}
/// {@category com}
class IOpcPartUri extends IOpcUri {
  // vtable begins at 31, is 3 entries long.
  IOpcPartUri(Pointer<COMObject> ptr) : super(ptr);

  int ComparePartUri(
    Pointer<COMObject> partUri,
    Pointer<Int32> comparisonResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Int32> comparisonResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partUri,
            Pointer<Int32> comparisonResult,
          )>()(
        ptr.ref.lpVtbl,
        partUri,
        comparisonResult,
      );

  int GetSourceUri(
    Pointer<Pointer<COMObject>> sourceUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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

  int IsRelationshipsPartUri(
    Pointer<Int32> isRelationshipUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> isRelationshipUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> isRelationshipUri,
          )>()(
        ptr.ref.lpVtbl,
        isRelationshipUri,
      );
}
