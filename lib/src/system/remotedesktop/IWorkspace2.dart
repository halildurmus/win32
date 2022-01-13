// IWorkspace2.dart

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

import '../../system/remotedesktop/IWorkspace.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IWorkspace2 = '{96D8D7CF-783E-4286-834C-EBC0E95F783C}';

/// {@category Interface}
/// {@category com}
class IWorkspace2 extends IWorkspace {
  // vtable begins at 6, is 1 entries long.
  IWorkspace2(Pointer<COMObject> ptr) : super(ptr);

  int StartRemoteApplicationEx(
    Pointer<Utf16> bstrWorkspaceId,
    Pointer<Utf16> bstrRequestingAppId,
    Pointer<Utf16> bstrRequestingAppFamilyName,
    int bLaunchIntoImmersiveClient,
    Pointer<Utf16> bstrImmersiveClientActivationContext,
    Pointer<SAFEARRAY> psaParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrRequestingAppId,
            Pointer<Utf16> bstrRequestingAppFamilyName,
            Int16 bLaunchIntoImmersiveClient,
            Pointer<Utf16> bstrImmersiveClientActivationContext,
            Pointer<SAFEARRAY> psaParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrRequestingAppId,
            Pointer<Utf16> bstrRequestingAppFamilyName,
            int bLaunchIntoImmersiveClient,
            Pointer<Utf16> bstrImmersiveClientActivationContext,
            Pointer<SAFEARRAY> psaParams,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
        bstrRequestingAppId,
        bstrRequestingAppFamilyName,
        bLaunchIntoImmersiveClient,
        bstrImmersiveClientActivationContext,
        psaParams,
      );
}
