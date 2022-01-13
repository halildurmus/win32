// INetCfgClassSetup.dart

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
import '../../networkmanagement/netmanagement/structs.g.dart';
import '../../networkmanagement/netmanagement/INetCfgComponent.dart';

/// @nodoc
const IID_INetCfgClassSetup = '{C0E8AE9D-306E-11D1-AACF-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetCfgClassSetup extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  INetCfgClassSetup(Pointer<COMObject> ptr) : super(ptr);

  int SelectAndInstall(
    int hwndParent,
    Pointer<OBO_TOKEN> pOboToken,
    Pointer<Pointer<COMObject>> ppnccItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<OBO_TOKEN> pOboToken,
            Pointer<Pointer<COMObject>> ppnccItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<OBO_TOKEN> pOboToken,
            Pointer<Pointer<COMObject>> ppnccItem,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        pOboToken,
        ppnccItem,
      );

  int Install(
    Pointer<Utf16> pszwInfId,
    Pointer<OBO_TOKEN> pOboToken,
    int dwSetupFlags,
    int dwUpgradeFromBuildNo,
    Pointer<Utf16> pszwAnswerFile,
    Pointer<Utf16> pszwAnswerSections,
    Pointer<Pointer<COMObject>> ppnccItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwInfId,
            Pointer<OBO_TOKEN> pOboToken,
            Uint32 dwSetupFlags,
            Uint32 dwUpgradeFromBuildNo,
            Pointer<Utf16> pszwAnswerFile,
            Pointer<Utf16> pszwAnswerSections,
            Pointer<Pointer<COMObject>> ppnccItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwInfId,
            Pointer<OBO_TOKEN> pOboToken,
            int dwSetupFlags,
            int dwUpgradeFromBuildNo,
            Pointer<Utf16> pszwAnswerFile,
            Pointer<Utf16> pszwAnswerSections,
            Pointer<Pointer<COMObject>> ppnccItem,
          )>()(
        ptr.ref.lpVtbl,
        pszwInfId,
        pOboToken,
        dwSetupFlags,
        dwUpgradeFromBuildNo,
        pszwAnswerFile,
        pszwAnswerSections,
        ppnccItem,
      );

  int DeInstall(
    Pointer<COMObject> pComponent,
    Pointer<OBO_TOKEN> pOboToken,
    Pointer<Pointer<Utf16>> pmszwRefs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pComponent,
            Pointer<OBO_TOKEN> pOboToken,
            Pointer<Pointer<Utf16>> pmszwRefs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pComponent,
            Pointer<OBO_TOKEN> pOboToken,
            Pointer<Pointer<Utf16>> pmszwRefs,
          )>()(
        ptr.ref.lpVtbl,
        pComponent,
        pOboToken,
        pmszwRefs,
      );
}
