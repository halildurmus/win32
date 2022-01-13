// IRecoverableError.dart

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
import '../../system/windowssync/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/windowssync/ISyncChange.dart';
import '../../system/windowssync/IRecoverableErrorData.dart';
import '../../system/windowssync/ISyncChangeUnit.dart';

/// @nodoc
const IID_IRecoverableError = '{0F5625E8-0A7B-45EE-9637-1CE13645909E}';

/// {@category Interface}
/// {@category com}
class IRecoverableError extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IRecoverableError(Pointer<COMObject> ptr) : super(ptr);

  int GetStage(
    Pointer<Int32> pStage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStage,
          )>()(
        ptr.ref.lpVtbl,
        pStage,
      );

  int GetProvider(
    Pointer<Int32> pProviderRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pProviderRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pProviderRole,
          )>()(
        ptr.ref.lpVtbl,
        pProviderRole,
      );

  int GetChangeWithRecoverableError(
    Pointer<Pointer<COMObject>> ppChangeWithRecoverableError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppChangeWithRecoverableError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppChangeWithRecoverableError,
          )>()(
        ptr.ref.lpVtbl,
        ppChangeWithRecoverableError,
      );

  int GetRecoverableErrorDataForChange(
    Pointer<Int32> phrError,
    Pointer<Pointer<COMObject>> ppErrorData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> phrError,
            Pointer<Pointer<COMObject>> ppErrorData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> phrError,
            Pointer<Pointer<COMObject>> ppErrorData,
          )>()(
        ptr.ref.lpVtbl,
        phrError,
        ppErrorData,
      );

  int GetRecoverableErrorDataForChangeUnit(
    Pointer<COMObject> pChangeUnit,
    Pointer<Int32> phrError,
    Pointer<Pointer<COMObject>> ppErrorData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Pointer<Int32> phrError,
            Pointer<Pointer<COMObject>> ppErrorData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pChangeUnit,
            Pointer<Int32> phrError,
            Pointer<Pointer<COMObject>> ppErrorData,
          )>()(
        ptr.ref.lpVtbl,
        pChangeUnit,
        phrError,
        ppErrorData,
      );
}
