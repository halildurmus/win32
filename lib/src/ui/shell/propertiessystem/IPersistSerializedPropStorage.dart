// IPersistSerializedPropStorage.dart

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
import '../../../ui/shell/propertiessystem/structs.g.dart';

/// @nodoc
const IID_IPersistSerializedPropStorage =
    '{E318AD57-0AA0-450F-ACA5-6FAB7103D917}';

/// {@category Interface}
/// {@category com}
class IPersistSerializedPropStorage extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPersistSerializedPropStorage(Pointer<COMObject> ptr) : super(ptr);

  int SetFlags(
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        flags,
      );

  int SetPropertyStorage(
    Pointer<SERIALIZEDPROPSTORAGE> psps,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SERIALIZEDPROPSTORAGE> psps,
            Uint32 cb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SERIALIZEDPROPSTORAGE> psps,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        psps,
        cb,
      );

  int GetPropertyStorage(
    Pointer<Pointer<SERIALIZEDPROPSTORAGE>> ppsps,
    Pointer<Uint32> pcb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SERIALIZEDPROPSTORAGE>> ppsps,
            Pointer<Uint32> pcb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SERIALIZEDPROPSTORAGE>> ppsps,
            Pointer<Uint32> pcb,
          )>()(
        ptr.ref.lpVtbl,
        ppsps,
        pcb,
      );
}
