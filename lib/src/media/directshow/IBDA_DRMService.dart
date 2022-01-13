// IBDA_DRMService.dart

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

/// @nodoc
const IID_IBDA_DRMService = '{BFF6B5BB-B0AE-484C-9DCA-73528FB0B46E}';

/// {@category Interface}
/// {@category com}
class IBDA_DRMService extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IBDA_DRMService(Pointer<COMObject> ptr) : super(ptr);

  int SetDRM(
    Pointer<GUID> puuidNewDrm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> puuidNewDrm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> puuidNewDrm,
          )>()(
        ptr.ref.lpVtbl,
        puuidNewDrm,
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
}
