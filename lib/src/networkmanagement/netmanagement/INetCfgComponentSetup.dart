// INetCfgComponentSetup.dart

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
const IID_INetCfgComponentSetup = '{932238E3-BEA1-11D0-9298-00C04FC99DCF}';

/// {@category Interface}
/// {@category com}
class INetCfgComponentSetup extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  INetCfgComponentSetup(Pointer<COMObject> ptr) : super(ptr);

  int Install(
    int dwSetupFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSetupFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSetupFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwSetupFlags,
      );

  int Upgrade(
    int dwSetupFlags,
    int dwUpgradeFomBuildNo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSetupFlags,
            Uint32 dwUpgradeFomBuildNo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSetupFlags,
            int dwUpgradeFomBuildNo,
          )>()(
        ptr.ref.lpVtbl,
        dwSetupFlags,
        dwUpgradeFomBuildNo,
      );

  int ReadAnswerFile(
    Pointer<Utf16> pszwAnswerFile,
    Pointer<Utf16> pszwAnswerSections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwAnswerFile,
            Pointer<Utf16> pszwAnswerSections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwAnswerFile,
            Pointer<Utf16> pszwAnswerSections,
          )>()(
        ptr.ref.lpVtbl,
        pszwAnswerFile,
        pszwAnswerSections,
      );

  int Removing() => ptr.ref.lpVtbl.value
          .elementAt(6)
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
}
