// ISyncFullEnumerationChange.dart

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
import '../../system/windowssync/IForgottenKnowledge.dart';

/// @nodoc
const IID_ISyncFullEnumerationChange = '{9785E0BD-BDFF-40C4-98C5-B34B2F1991B3}';

/// {@category Interface}
/// {@category com}
class ISyncFullEnumerationChange extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISyncFullEnumerationChange(Pointer<COMObject> ptr) : super(ptr);

  int GetLearnedKnowledgeAfterRecoveryComplete(
    Pointer<Pointer<COMObject>> ppLearnedKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedKnowledge,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppLearnedKnowledge,
          )>()(
        ptr.ref.lpVtbl,
        ppLearnedKnowledge,
      );

  int GetLearnedForgottenKnowledge(
    Pointer<Pointer<COMObject>> ppLearnedForgottenKnowledge,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
