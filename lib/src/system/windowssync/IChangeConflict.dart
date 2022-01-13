// IChangeConflict.dart

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
const IID_IChangeConflict = '{014EBF97-9F20-4F7A-BDD4-25979C77C002}';

/// {@category Interface}
/// {@category com}
class IChangeConflict extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IChangeConflict(Pointer<COMObject> ptr) : super(ptr);

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

  int GetDestinationProviderConflictingData(
    Pointer<Pointer<COMObject>> ppConflictingData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetResolveActionForChange(
    Pointer<Int32> pResolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pResolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pResolveAction,
          )>()(
        ptr.ref.lpVtbl,
        pResolveAction,
      );

  int SetResolveActionForChange(
    int resolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 resolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int resolveAction,
          )>()(
        ptr.ref.lpVtbl,
        resolveAction,
      );

  int GetResolveActionForChangeUnit(
    Pointer<COMObject> pChangeUnit,
    Pointer<Int32> pResolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Pointer<Int32> pResolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Pointer<Int32> pResolveAction,
          )>()(
        ptr.ref.lpVtbl,
        pChangeUnit,
        pResolveAction,
      );

  int SetResolveActionForChangeUnit(
    Pointer<COMObject> pChangeUnit,
    int resolveAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Int32 resolveAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            int resolveAction,
          )>()(
        ptr.ref.lpVtbl,
        pChangeUnit,
        resolveAction,
      );
}
