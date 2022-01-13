// ISyncMgrRegister.dart

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
const IID_ISyncMgrRegister = '{6295DF42-35EE-11D1-8707-00C04FD93327}';

/// {@category Interface}
/// {@category com}
class ISyncMgrRegister extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISyncMgrRegister(Pointer<COMObject> ptr) : super(ptr);

  int RegisterSyncMgrHandler(
    Pointer<GUID> clsidHandler,
    Pointer<Utf16> pwszDescription,
    int dwSyncMgrRegisterFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            Pointer<Utf16> pwszDescription,
            Uint32 dwSyncMgrRegisterFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            Pointer<Utf16> pwszDescription,
            int dwSyncMgrRegisterFlags,
          )>()(
        ptr.ref.lpVtbl,
        clsidHandler,
        pwszDescription,
        dwSyncMgrRegisterFlags,
      );

  int UnregisterSyncMgrHandler(
    Pointer<GUID> clsidHandler,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        clsidHandler,
        dwReserved,
      );

  int GetHandlerRegistrationInfo(
    Pointer<GUID> clsidHandler,
    Pointer<Uint32> pdwSyncMgrRegisterFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            Pointer<Uint32> pdwSyncMgrRegisterFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            Pointer<Uint32> pdwSyncMgrRegisterFlags,
          )>()(
        ptr.ref.lpVtbl,
        clsidHandler,
        pdwSyncMgrRegisterFlags,
      );
}
