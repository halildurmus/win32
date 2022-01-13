// IOpcPackage.dart

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
import '../../../storage/packaging/opc/IOpcPartSet.dart';
import '../../../foundation/structs.g.dart';
import '../../../storage/packaging/opc/IOpcRelationshipSet.dart';

/// @nodoc
const IID_IOpcPackage = '{42195949-3B79-4FC8-89C6-FC7FB979EE70}';

/// {@category Interface}
/// {@category com}
class IOpcPackage extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IOpcPackage(Pointer<COMObject> ptr) : super(ptr);

  int GetPartSet(
    Pointer<Pointer<COMObject>> partSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partSet,
          )>()(
        ptr.ref.lpVtbl,
        partSet,
      );

  int GetRelationshipSet(
    Pointer<Pointer<COMObject>> relationshipSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> relationshipSet,
          )>()(
        ptr.ref.lpVtbl,
        relationshipSet,
      );
}
