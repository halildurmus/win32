// IEnumSyncChanges.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../system/windowssync/ISyncChange.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumSyncChanges.dart';

/// @nodoc
const IID_IEnumSyncChanges = '{5F86BE4A-5E78-4E32-AC1C-C24FD223EF85}';

/// {@category Interface}
/// {@category com}
class IEnumSyncChanges extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumSyncChanges(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cChanges,
    Pointer<Pointer<COMObject>> ppChange,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cChanges,
            Pointer<Pointer<COMObject>> ppChange,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cChanges,
            Pointer<Pointer<COMObject>> ppChange,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cChanges,
        ppChange,
        pcFetched,
      );

  int Skip(
    int cChanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cChanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cChanges,
          )>()(
        ptr.ref.lpVtbl,
        cChanges,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
