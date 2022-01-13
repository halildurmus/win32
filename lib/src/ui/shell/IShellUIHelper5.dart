// IShellUIHelper5.dart

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

import '../../ui/shell/IShellUIHelper4.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellUIHelper5 = '{A2A08B09-103D-4D3F-B91C-EA455CA82EFA}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper5 extends IShellUIHelper4 {
  // vtable begins at 67, is 7 entries long.
  IShellUIHelper5(Pointer<COMObject> ptr) : super(ptr);

  int msProvisionNetworks(
    Pointer<Utf16> bstrProvisioningXml,
    Pointer<VARIANT> puiResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrProvisioningXml,
            Pointer<VARIANT> puiResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrProvisioningXml,
            Pointer<VARIANT> puiResult,
          )>()(
        ptr.ref.lpVtbl,
        bstrProvisioningXml,
        puiResult,
      );

  int msReportSafeUrl() => ptr.ref.lpVtbl.value
          .elementAt(68)
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

  int msSiteModeRefreshBadge() => ptr.ref.lpVtbl.value
          .elementAt(69)
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

  int msSiteModeClearBadge() => ptr.ref.lpVtbl.value
          .elementAt(70)
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

  int msDiagnoseConnectionUILess() => ptr.ref.lpVtbl.value
          .elementAt(71)
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

  int msLaunchNetworkClientHelp() => ptr.ref.lpVtbl.value
          .elementAt(72)
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

  int msChangeDefaultBrowser(
    int fChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fChange,
          )>()(
        ptr.ref.lpVtbl,
        fChange,
      );
}
