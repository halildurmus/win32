// ISyncChangeBatchWithPrerequisite.dart

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
import '../../system/windowssync/IForgottenKnowledge.dart';

/// @nodoc
const IID_ISyncChangeBatchWithPrerequisite =
    '{097F13BE-5B92-4048-B3F2-7B42A2515E07}';

/// {@category Interface}
/// {@category com}
class ISyncChangeBatchWithPrerequisite extends ISyncChangeBatchBase {
  // vtable begins at 17, is 3 entries long.
  ISyncChangeBatchWithPrerequisite(Pointer<COMObject> ptr) : super(ptr);

  int SetPrerequisiteKnowledge(
    Pointer<COMObject> pPrerequisiteKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPrerequisiteKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPrerequisiteKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pPrerequisiteKnowledge,
      );

  int GetLearnedKnowledgeWithPrerequisite(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<Pointer<COMObject>> ppLearnedWithPrerequisiteKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<Pointer<COMObject>> ppLearnedWithPrerequisiteKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<Pointer<COMObject>> ppLearnedWithPrerequisiteKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationKnowledge,
        ppLearnedWithPrerequisiteKnowledge,
      );

  int GetLearnedForgottenKnowledge(
    Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppLearnedForgottenKnowledge,
      );
}
