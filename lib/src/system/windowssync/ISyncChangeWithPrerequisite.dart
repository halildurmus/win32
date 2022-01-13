// ISyncChangeWithPrerequisite.dart

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
import '../../system/windowssync/ISyncKnowledge.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncChangeWithPrerequisite =
    '{9E38382F-1589-48C3-92E4-05ECDCB4F3F7}';

/// {@category Interface}
/// {@category com}
class ISyncChangeWithPrerequisite extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISyncChangeWithPrerequisite(Pointer<COMObject> ptr) : super(ptr);

  int GetPrerequisiteKnowledge(
    Pointer<Pointer<COMObject>> ppPrerequisiteKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPrerequisiteKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPrerequisiteKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppPrerequisiteKnowledge,
      );

  int GetLearnedKnowledgeWithPrerequisite(
    Pointer<COMObject> pDestinationKnowledge,
    Pointer<Pointer<COMObject>> ppLearnedKnowledgeWithPrerequisite,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<Pointer<COMObject>> ppLearnedKnowledgeWithPrerequisite,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDestinationKnowledge,
            Pointer<Pointer<COMObject>> ppLearnedKnowledgeWithPrerequisite,
          )>()(
        ptr.ref.lpVtbl,
        pDestinationKnowledge,
        ppLearnedKnowledgeWithPrerequisite,
      );
}
