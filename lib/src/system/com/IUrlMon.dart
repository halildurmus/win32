// IUrlMon.dart

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
import '../../system/com/IBindCtx.dart';

/// @nodoc
const IID_IUrlMon = '{00000026-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IUrlMon extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUrlMon(Pointer<COMObject> ptr) : super(ptr);

  int AsyncGetClassBits(
    Pointer<GUID> rclsid,
    Pointer<Utf16> pszTYPE,
    Pointer<Utf16> pszExt,
    int dwFileVersionMS,
    int dwFileVersionLS,
    Pointer<Utf16> pszCodeBase,
    Pointer<COMObject> pbc,
    int dwClassContext,
    Pointer<GUID> riid,
    int flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Utf16> pszTYPE,
            Pointer<Utf16> pszExt,
            Uint32 dwFileVersionMS,
            Uint32 dwFileVersionLS,
            Pointer<Utf16> pszCodeBase,
            Pointer<COMObject> pbc,
            Uint32 dwClassContext,
            Pointer<GUID> riid,
            Uint32 flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Utf16> pszTYPE,
            Pointer<Utf16> pszExt,
            int dwFileVersionMS,
            int dwFileVersionLS,
            Pointer<Utf16> pszCodeBase,
            Pointer<COMObject> pbc,
            int dwClassContext,
            Pointer<GUID> riid,
            int flags,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        pszTYPE,
        pszExt,
        dwFileVersionMS,
        dwFileVersionLS,
        pszCodeBase,
        pbc,
        dwClassContext,
        riid,
        flags,
      );
}
