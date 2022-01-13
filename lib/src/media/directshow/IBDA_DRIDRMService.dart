// IBDA_DRIDRMService.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IBDA_DRIDRMService = '{1F9BC2A5-44A3-4C52-AAB1-0BBCE5A1381D}';

/// {@category Interface}
/// {@category com}
class IBDA_DRIDRMService extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBDA_DRIDRMService(Pointer<COMObject> ptr) : super(ptr);

  int SetDRM(
    Pointer<Utf16> bstrNewDrm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrNewDrm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrNewDrm,
          )>()(
        ptr.ref.lpVtbl,
        bstrNewDrm,
      );

  int GetDRMStatus(
    Pointer<Pointer<Utf16>> pbstrDrmUuidList,
    Pointer<GUID> DrmUuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDrmUuidList,
            Pointer<GUID> DrmUuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrDrmUuidList,
            Pointer<GUID> DrmUuid,
          )>()(
        ptr.ref.lpVtbl,
        pbstrDrmUuidList,
        DrmUuid,
      );

  int GetPairingStatus(
    Pointer<Int32> penumPairingStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> penumPairingStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> penumPairingStatus,
          )>()(
        ptr.ref.lpVtbl,
        penumPairingStatus,
      );
}
