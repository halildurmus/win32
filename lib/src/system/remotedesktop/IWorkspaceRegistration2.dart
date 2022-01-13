// IWorkspaceRegistration2.dart

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

import '../../system/remotedesktop/IWorkspaceRegistration.dart';
import '../../system/remotedesktop/IWorkspaceClientExt.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWorkspaceRegistration2 = '{CF59F654-39BB-44D8-94D0-4635728957E9}';

/// {@category Interface}
/// {@category com}
class IWorkspaceRegistration2 extends IWorkspaceRegistration {
  // vtable begins at 5, is 2 entries long.
  IWorkspaceRegistration2(Pointer<COMObject> ptr) : super(ptr);

  int AddResourceEx(
    Pointer<COMObject> pUnk,
    Pointer<Utf16> bstrEventLogUploadAddress,
    Pointer<Uint32> pdwCookie,
    GUID correlationId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnk,
            Pointer<Utf16> bstrEventLogUploadAddress,
            Pointer<Uint32> pdwCookie,
            GUID correlationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnk,
            Pointer<Utf16> bstrEventLogUploadAddress,
            Pointer<Uint32> pdwCookie,
            GUID correlationId,
          )>()(
        ptr.ref.lpVtbl,
        pUnk,
        bstrEventLogUploadAddress,
        pdwCookie,
        correlationId,
      );

  int RemoveResourceEx(
    int dwCookieConnection,
    GUID correlationId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookieConnection,
            GUID correlationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookieConnection,
            GUID correlationId,
          )>()(
        ptr.ref.lpVtbl,
        dwCookieConnection,
        correlationId,
      );
}
