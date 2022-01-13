// IMPEG2_TIF_CONTROL.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMPEG2_TIF_CONTROL = '{F9BAC2F9-4149-4916-B2EF-FAA202326862}';

/// {@category Interface}
/// {@category com}
class IMPEG2_TIF_CONTROL extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMPEG2_TIF_CONTROL(Pointer<COMObject> ptr) : super(ptr);

  int RegisterTIF(
    Pointer<COMObject> pUnkTIF,
    Pointer<Uint32> ppvRegistrationContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkTIF,
            Pointer<Uint32> ppvRegistrationContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkTIF,
            Pointer<Uint32> ppvRegistrationContext,
          )>()(
        ptr.ref.lpVtbl,
        pUnkTIF,
        ppvRegistrationContext,
      );

  int UnregisterTIF(
    int pvRegistrationContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pvRegistrationContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pvRegistrationContext,
          )>()(
        ptr.ref.lpVtbl,
        pvRegistrationContext,
      );

  int AddPIDs(
    int ulcPIDs,
    Pointer<Uint32> pulPIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcPIDs,
            Pointer<Uint32> pulPIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcPIDs,
            Pointer<Uint32> pulPIDs,
          )>()(
        ptr.ref.lpVtbl,
        ulcPIDs,
        pulPIDs,
      );

  int DeletePIDs(
    int ulcPIDs,
    Pointer<Uint32> pulPIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulcPIDs,
            Pointer<Uint32> pulPIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulcPIDs,
            Pointer<Uint32> pulPIDs,
          )>()(
        ptr.ref.lpVtbl,
        ulcPIDs,
        pulPIDs,
      );

  int GetPIDCount(
    Pointer<Uint32> pulcPIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcPIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcPIDs,
          )>()(
        ptr.ref.lpVtbl,
        pulcPIDs,
      );

  int GetPIDs(
    Pointer<Uint32> pulcPIDs,
    Pointer<Uint32> pulPIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcPIDs,
            Pointer<Uint32> pulPIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcPIDs,
            Pointer<Uint32> pulPIDs,
          )>()(
        ptr.ref.lpVtbl,
        pulcPIDs,
        pulPIDs,
      );
}
