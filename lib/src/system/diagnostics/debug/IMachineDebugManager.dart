// IMachineDebugManager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/diagnostics/debug/IRemoteDebugApplication.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IEnumRemoteDebugApplications.dart';

/// @nodoc
const IID_IMachineDebugManager = '{51973C2C-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IMachineDebugManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMachineDebugManager(Pointer<COMObject> ptr) : super(ptr);

  int AddApplication(
    Pointer<COMObject> pda,
    Pointer<Uint32> pdwAppCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pda,
            Pointer<Uint32> pdwAppCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pda,
            Pointer<Uint32> pdwAppCookie,
          )>()(
        ptr.ref.lpVtbl,
        pda,
        pdwAppCookie,
      );

  int RemoveApplication(
    int dwAppCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAppCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAppCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwAppCookie,
      );

  int EnumApplications(
    Pointer<Pointer<COMObject>> ppeda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppeda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppeda,
          )>()(
        ptr.ref.lpVtbl,
        ppeda,
      );
}
