// IWorkspaceRegistration.dart

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
import '../../system/remotedesktop/IWorkspaceClientExt.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWorkspaceRegistration = '{B922BBB8-4C55-4FEA-8496-BEB0B44285E6}';

/// {@category Interface}
/// {@category com}
class IWorkspaceRegistration extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWorkspaceRegistration(Pointer<COMObject> ptr) : super(ptr);

  int AddResource(
    Pointer<COMObject> pUnk,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnk,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnk,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pUnk,
        pdwCookie,
      );

  int RemoveResource(
    int dwCookieConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookieConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookieConnection,
          )>()(
        ptr.ref.lpVtbl,
        dwCookieConnection,
      );
}
