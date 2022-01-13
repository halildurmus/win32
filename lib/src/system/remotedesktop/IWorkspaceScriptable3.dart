// IWorkspaceScriptable3.dart

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

import '../../system/remotedesktop/IWorkspaceScriptable2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWorkspaceScriptable3 = '{531E6512-2CBF-4BD2-80A5-D90A71636A9A}';

/// {@category Interface}
/// {@category com}
class IWorkspaceScriptable3 extends IWorkspaceScriptable2 {
  // vtable begins at 16, is 1 entries long.
  IWorkspaceScriptable3(Pointer<COMObject> ptr) : super(ptr);

  int StartWorkspaceEx2(
    Pointer<Utf16> bstrWorkspaceId,
    Pointer<Utf16> bstrWorkspaceFriendlyName,
    Pointer<Utf16> bstrRedirectorName,
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrPassword,
    Pointer<Utf16> bstrAppContainer,
    Pointer<Utf16> bstrWorkspaceParams,
    int lTimeout,
    int lFlags,
    Pointer<Utf16> bstrEventLogUploadAddress,
    GUID correlationId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrWorkspaceFriendlyName,
            Pointer<Utf16> bstrRedirectorName,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrAppContainer,
            Pointer<Utf16> bstrWorkspaceParams,
            Int32 lTimeout,
            Int32 lFlags,
            Pointer<Utf16> bstrEventLogUploadAddress,
            GUID correlationId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrWorkspaceFriendlyName,
            Pointer<Utf16> bstrRedirectorName,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrAppContainer,
            Pointer<Utf16> bstrWorkspaceParams,
            int lTimeout,
            int lFlags,
            Pointer<Utf16> bstrEventLogUploadAddress,
            GUID correlationId,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
        bstrWorkspaceFriendlyName,
        bstrRedirectorName,
        bstrUserName,
        bstrPassword,
        bstrAppContainer,
        bstrWorkspaceParams,
        lTimeout,
        lFlags,
        bstrEventLogUploadAddress,
        correlationId,
      );
}
