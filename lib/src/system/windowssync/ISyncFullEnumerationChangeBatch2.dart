// ISyncFullEnumerationChangeBatch2.dart

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

import '../../system/windowssync/ISyncFullEnumerationChangeBatch.dart';
import '../../system/windowssync/structs.g.dart';
import '../../system/windowssync/ISyncChangeBuilder.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncFullEnumerationChangeBatch2 =
    '{E06449F4-A205-4B65-9724-01B22101EEC1}';

/// {@category Interface}
/// {@category com}
class ISyncFullEnumerationChangeBatch2 extends ISyncFullEnumerationChangeBatch {
  // vtable begins at 20, is 1 entries long.
  ISyncFullEnumerationChangeBatch2(Pointer<COMObject> ptr) : super(ptr);

  int AddMergeTombstoneMetadataToGroup(
    Pointer<Uint8> pbOwnerReplicaId,
    Pointer<Uint8> pbWinnerItemId,
    Pointer<Uint8> pbItemId,
    Pointer<SYNC_VERSION> pChangeVersion,
    Pointer<SYNC_VERSION> pCreationVersion,
    int dwWorkForChange,
    Pointer<Pointer<COMObject>> ppChangeBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            Uint32 dwWorkForChange,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbOwnerReplicaId,
            Pointer<Uint8> pbWinnerItemId,
            Pointer<Uint8> pbItemId,
            Pointer<SYNC_VERSION> pChangeVersion,
            Pointer<SYNC_VERSION> pCreationVersion,
            int dwWorkForChange,
            Pointer<Pointer<COMObject>> ppChangeBuilder,
          )>()(
        ptr.ref.lpVtbl,
        pbOwnerReplicaId,
        pbWinnerItemId,
        pbItemId,
        pChangeVersion,
        pCreationVersion,
        dwWorkForChange,
        ppChangeBuilder,
      );
}
