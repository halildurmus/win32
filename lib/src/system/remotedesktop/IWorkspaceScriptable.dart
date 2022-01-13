// IWorkspaceScriptable.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWorkspaceScriptable = '{EFEA49A2-DDA5-429D-8F42-B23B92C4C347}';

/// {@category Interface}
/// {@category com}
class IWorkspaceScriptable extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IWorkspaceScriptable(Pointer<COMObject> ptr) : super(ptr);

  int DisconnectWorkspace(
    Pointer<Utf16> bstrWorkspaceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
      );

  int StartWorkspace(
    Pointer<Utf16> bstrWorkspaceId,
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrPassword,
    Pointer<Utf16> bstrWorkspaceParams,
    int lTimeout,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrWorkspaceParams,
            Int32 lTimeout,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrUserName,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrWorkspaceParams,
            int lTimeout,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
        bstrUserName,
        bstrPassword,
        bstrWorkspaceParams,
        lTimeout,
        lFlags,
      );

  int IsWorkspaceCredentialSpecified(
    Pointer<Utf16> bstrWorkspaceId,
    int bCountUnauthenticatedCredentials,
    Pointer<Int16> pbCredExist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Int16 bCountUnauthenticatedCredentials,
            Pointer<Int16> pbCredExist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            int bCountUnauthenticatedCredentials,
            Pointer<Int16> pbCredExist,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
        bCountUnauthenticatedCredentials,
        pbCredExist,
      );

  int IsWorkspaceSSOEnabled(
    Pointer<Int16> pbSSOEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbSSOEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbSSOEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pbSSOEnabled,
      );

  int ClearWorkspaceCredential(
    Pointer<Utf16> bstrWorkspaceId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
      );

  int OnAuthenticated(
    Pointer<Utf16> bstrWorkspaceId,
    Pointer<Utf16> bstrUserName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrUserName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrUserName,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
        bstrUserName,
      );

  int DisconnectWorkspaceByFriendlyName(
    Pointer<Utf16> bstrWorkspaceFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceFriendlyName,
      );
}
