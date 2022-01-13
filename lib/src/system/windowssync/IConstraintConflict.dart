// IConstraintConflict.dart

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
import '../../specialTypes.dart';
import '../../system/windowssync/structs.g.dart';
import '../../system/windowssync/ISyncChangeUnit.dart';

/// @nodoc
const IID_IConstraintConflict = '{00D2302E-1CF8-4835-B85F-B7CA4F799E0A}';

/// {@category Interface}
/// {@category com}
class IConstraintConflict extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IConstraintConflict(Pointer<COMObject> ptr) : super(ptr);

  int GetDestinationProviderConflictingChange(
    Pointer<Pointer<COMObject>> ppConflictingChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingChange,
          )>()(
        ptr.ref.lpVtbl,
        ppConflictingChange,
      );

  int GetSourceProviderConflictingChange(
    Pointer<Pointer<COMObject>> ppConflictingChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingChange,
          )>()(
        ptr.ref.lpVtbl,
        ppConflictingChange,
      );

  int GetDestinationProviderOriginalChange(
    Pointer<Pointer<COMObject>> ppOriginalChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOriginalChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOriginalChange,
          )>()(
        ptr.ref.lpVtbl,
        ppOriginalChange,
      );

  int GetDestinationProviderConflictingData(
    Pointer<Pointer<COMObject>> ppConflictingData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingData,
          )>()(
        ptr.ref.lpVtbl,
        ppConflictingData,
      );

  int GetSourceProviderConflictingData(
    Pointer<Pointer<COMObject>> ppConflictingData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppConflictingData,
          )>()(
        ptr.ref.lpVtbl,
        ppConflictingData,
      );

  int GetDestinationProviderOriginalData(
    Pointer<Pointer<COMObject>> ppOriginalData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOriginalData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppOriginalData,
          )>()(
        ptr.ref.lpVtbl,
        ppOriginalData,
      );

  int GetConstraintResolveActionForChange(
    Pointer<Int32> pConstraintResolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pConstraintResolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pConstraintResolveAction,
          )>()(
        ptr.ref.lpVtbl,
        pConstraintResolveAction,
      );

  int SetConstraintResolveActionForChange(
    int constraintResolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 constraintResolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int constraintResolveAction,
          )>()(
        ptr.ref.lpVtbl,
        constraintResolveAction,
      );

  int GetConstraintResolveActionForChangeUnit(
    Pointer<COMObject> pChangeUnit,
    Pointer<Int32> pConstraintResolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Pointer<Int32> pConstraintResolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Pointer<Int32> pConstraintResolveAction,
          )>()(
        ptr.ref.lpVtbl,
        pChangeUnit,
        pConstraintResolveAction,
      );

  int SetConstraintResolveActionForChangeUnit(
    Pointer<COMObject> pChangeUnit,
    int constraintResolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Int32 constraintResolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            int constraintResolveAction,
          )>()(
        ptr.ref.lpVtbl,
        pChangeUnit,
        constraintResolveAction,
      );

  int GetConstraintConflictReason(
    Pointer<Int32> pConstraintConflictReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pConstraintConflictReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pConstraintConflictReason,
          )>()(
        ptr.ref.lpVtbl,
        pConstraintConflictReason,
      );

  int IsTemporary() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
}
