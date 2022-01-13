// ISyncMgrConflictResolveInfo.dart

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
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_ISyncMgrConflictResolveInfo =
    '{C405A219-25A2-442E-8743-B845A2CEE93F}';

/// {@category Interface}
/// {@category com}
class ISyncMgrConflictResolveInfo extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ISyncMgrConflictResolveInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetIterationInfo(
    Pointer<Uint32> pnCurrentConflict,
    Pointer<Uint32> pcConflicts,
    Pointer<Uint32> pcRemainingForApplyToAll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnCurrentConflict,
            Pointer<Uint32> pcConflicts,
            Pointer<Uint32> pcRemainingForApplyToAll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnCurrentConflict,
            Pointer<Uint32> pcConflicts,
            Pointer<Uint32> pcRemainingForApplyToAll,
          )>()(
        ptr.ref.lpVtbl,
        pnCurrentConflict,
        pcConflicts,
        pcRemainingForApplyToAll,
      );

  int GetPresenterNextStep(
    Pointer<Int32> pnPresenterNextStep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnPresenterNextStep,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnPresenterNextStep,
          )>()(
        ptr.ref.lpVtbl,
        pnPresenterNextStep,
      );

  int GetPresenterChoice(
    Pointer<Int32> pnPresenterChoice,
    Pointer<Int32> pfApplyToAll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnPresenterChoice,
            Pointer<Int32> pfApplyToAll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnPresenterChoice,
            Pointer<Int32> pfApplyToAll,
          )>()(
        ptr.ref.lpVtbl,
        pnPresenterChoice,
        pfApplyToAll,
      );

  int GetItemChoiceCount(
    Pointer<Uint32> pcChoices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcChoices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcChoices,
          )>()(
        ptr.ref.lpVtbl,
        pcChoices,
      );

  int GetItemChoice(
    int iChoice,
    Pointer<Uint32> piChoiceIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iChoice,
            Pointer<Uint32> piChoiceIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iChoice,
            Pointer<Uint32> piChoiceIndex,
          )>()(
        ptr.ref.lpVtbl,
        iChoice,
        piChoiceIndex,
      );

  int SetPresenterNextStep(
    int nPresenterNextStep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nPresenterNextStep,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nPresenterNextStep,
          )>()(
        ptr.ref.lpVtbl,
        nPresenterNextStep,
      );

  int SetPresenterChoice(
    int nPresenterChoice,
    int fApplyToAll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nPresenterChoice,
            Int32 fApplyToAll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nPresenterChoice,
            int fApplyToAll,
          )>()(
        ptr.ref.lpVtbl,
        nPresenterChoice,
        fApplyToAll,
      );

  int SetItemChoices(
    Pointer<Uint32> prgiConflictItemIndexes,
    int cChoices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> prgiConflictItemIndexes,
            Uint32 cChoices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> prgiConflictItemIndexes,
            int cChoices,
          )>()(
        ptr.ref.lpVtbl,
        prgiConflictItemIndexes,
        cChoices,
      );
}
