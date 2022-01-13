// ISyncChangeUnit.dart

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
import '../../system/windowssync/structs.g.dart';

/// @nodoc
const IID_ISyncChangeUnit = '{60EDD8CA-7341-4BB7-95CE-FAB6394B51CB}';

/// {@category Interface}
/// {@category com}
class ISyncChangeUnit extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISyncChangeUnit(Pointer<COMObject> ptr) : super(ptr);

  int GetItemChange(
    Pointer<Pointer<COMObject>> ppSyncChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSyncChange,
          )>()(
        ptr.ref.lpVtbl,
        ppSyncChange,
      );

  int GetChangeUnitId(
    Pointer<Uint8> pbChangeUnitId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbChangeUnitId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbChangeUnitId,
        pcbIdSize,
      );

  int GetChangeUnitVersion(
    Pointer<Uint8> pbCurrentReplicaId,
    Pointer<SYNC_VERSION> pVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbCurrentReplicaId,
            Pointer<SYNC_VERSION> pVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbCurrentReplicaId,
            Pointer<SYNC_VERSION> pVersion,
          )>()(
        ptr.ref.lpVtbl,
        pbCurrentReplicaId,
        pVersion,
      );
}
