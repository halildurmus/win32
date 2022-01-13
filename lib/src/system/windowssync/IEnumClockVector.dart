// IEnumClockVector.dart

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
import '../../system/windowssync/IClockVectorElement.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/IEnumClockVector.dart';

/// @nodoc
const IID_IEnumClockVector = '{525844DB-2837-4799-9E80-81A66E02220C}';

/// {@category Interface}
/// {@category com}
class IEnumClockVector extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumClockVector(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cClockVectorElements,
    Pointer<Pointer<COMObject>> ppiClockVectorElements,
    Pointer<Uint32> pcFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cClockVectorElements,
            Pointer<Pointer<COMObject>> ppiClockVectorElements,
            Pointer<Uint32> pcFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cClockVectorElements,
            Pointer<Pointer<COMObject>> ppiClockVectorElements,
            Pointer<Uint32> pcFetched,
          )>()(
        ptr.ref.lpVtbl,
        cClockVectorElements,
        ppiClockVectorElements,
        pcFetched,
      );

  int Skip(
    int cSyncVersions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cSyncVersions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cSyncVersions,
          )>()(
        ptr.ref.lpVtbl,
        cSyncVersions,
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
    Pointer<Pointer<COMObject>> ppiEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppiEnum,
      );
}
