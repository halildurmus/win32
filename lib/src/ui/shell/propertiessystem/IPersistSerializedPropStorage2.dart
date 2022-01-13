// IPersistSerializedPropStorage2.dart

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

import '../../../ui/shell/propertiessystem/IPersistSerializedPropStorage.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/shell/propertiessystem/structs.g.dart';

/// @nodoc
const IID_IPersistSerializedPropStorage2 =
    '{77EFFA68-4F98-4366-BA72-573B3D880571}';

/// {@category Interface}
/// {@category com}
class IPersistSerializedPropStorage2 extends IPersistSerializedPropStorage {
  // vtable begins at 6, is 2 entries long.
  IPersistSerializedPropStorage2(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyStorageSize(
    Pointer<Uint32> pcb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcb,
          )>()(
        ptr.ref.lpVtbl,
        pcb,
      );

  int GetPropertyStorageBuffer(
    Pointer<SERIALIZEDPROPSTORAGE> psps,
    int cb,
    Pointer<Uint32> pcbWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SERIALIZEDPROPSTORAGE> psps,
            Uint32 cb,
            Pointer<Uint32> pcbWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SERIALIZEDPROPSTORAGE> psps,
            int cb,
            Pointer<Uint32> pcbWritten,
          )>()(
        ptr.ref.lpVtbl,
        psps,
        cb,
        pcbWritten,
      );
}
