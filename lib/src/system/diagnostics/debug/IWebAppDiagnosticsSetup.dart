// IWebAppDiagnosticsSetup.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IWebAppDiagnosticsSetup = '{379BFBE1-C6C9-432A-93E1-6D17656C538C}';

/// {@category Interface}
/// {@category com}
class IWebAppDiagnosticsSetup extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWebAppDiagnosticsSetup(Pointer<COMObject> ptr) : super(ptr);

  int DiagnosticsSupported(
    Pointer<Int16> pRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pRetVal,
          )>()(
        ptr.ref.lpVtbl,
        pRetVal,
      );

  int CreateObjectWithSiteAtWebApp(
    Pointer<GUID> rclsid,
    int dwClsContext,
    Pointer<GUID> riid,
    int hPassToObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 dwClsContext,
            Pointer<GUID> riid,
            IntPtr hPassToObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int dwClsContext,
            Pointer<GUID> riid,
            int hPassToObject,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        dwClsContext,
        riid,
        hPassToObject,
      );
}
