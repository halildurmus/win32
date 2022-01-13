// IEnumSyncChangeUnits.dart

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
import '../../system/windowssync/ISyncChangeUnit.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumSyncChangeUnits.dart';

/// @nodoc
const IID_IEnumSyncChangeUnits = '{346B35F1-8703-4C6D-AB1A-4DBCA2CFF97F}';

/// {@category Interface}
/// {@category com}
class IEnumSyncChangeUnits extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumSyncChangeUnits(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cChanges,
    Pointer<Pointer<COMObject>> ppChangeUnit,
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
            Pointer<Pointer<COMObject>> ppChangeUnit,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cChanges,
            Pointer<Pointer<COMObject>> ppChangeUnit,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cChanges,
        ppChangeUnit,
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
