// ISyncFullEnumerationChangeBatch.dart

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

import '../../system/windowssync/ISyncChangeBatchBase.dart';
import '../../system/windowssync/ISyncKnowledge.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncFullEnumerationChangeBatch =
    '{EF64197D-4F44-4EA2-B355-4524713E3BED}';

/// {@category Interface}
/// {@category com}
class ISyncFullEnumerationChangeBatch extends ISyncChangeBatchBase {
  // vtable begins at 17, is 3 entries long.
  ISyncFullEnumerationChangeBatch(Pointer<COMObject> ptr) : super(ptr);

  int GetLearnedKnowledgeAfterRecoveryComplete(
    Pointer<Pointer<COMObject>> ppLearnedKnowledgeAfterRecoveryComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedKnowledgeAfterRecoveryComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedKnowledgeAfterRecoveryComplete,
          )>()(
        ptr.ref.lpVtbl,
        ppLearnedKnowledgeAfterRecoveryComplete,
      );

  int GetClosedLowerBoundItemId(
    Pointer<Uint8> pbClosedLowerBoundItemId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbClosedLowerBoundItemId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbClosedLowerBoundItemId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbClosedLowerBoundItemId,
        pcbIdSize,
      );

  int GetClosedUpperBoundItemId(
    Pointer<Uint8> pbClosedUpperBoundItemId,
    Pointer<Uint32> pcbIdSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbClosedUpperBoundItemId,
            Pointer<Uint32> pcbIdSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbClosedUpperBoundItemId,
            Pointer<Uint32> pcbIdSize,
          )>()(
        ptr.ref.lpVtbl,
        pbClosedUpperBoundItemId,
        pcbIdSize,
      );
}
