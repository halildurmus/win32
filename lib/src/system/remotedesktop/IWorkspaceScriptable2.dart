// IWorkspaceScriptable2.dart

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

import '../../system/remotedesktop/IWorkspaceScriptable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWorkspaceScriptable2 = '{EFEA49A2-DDA5-429D-8F42-B33BA2C4C348}';

/// {@category Interface}
/// {@category com}
class IWorkspaceScriptable2 extends IWorkspaceScriptable {
  // vtable begins at 14, is 2 entries long.
  IWorkspaceScriptable2(Pointer<COMObject> ptr) : super(ptr);

  int StartWorkspaceEx(
    Pointer<Utf16> bstrWorkspaceId,
    Pointer<Utf16> bstrWorkspaceFriendlyName,
    Pointer<Utf16> bstrRedirectorName,
    Pointer<Utf16> bstrUserName,
    Pointer<Utf16> bstrPassword,
    Pointer<Utf16> bstrAppContainer,
    Pointer<Utf16> bstrWorkspaceParams,
    int lTimeout,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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
      );

  int ResourceDismissed(
    Pointer<Utf16> bstrWorkspaceId,
    Pointer<Utf16> bstrWorkspaceFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrWorkspaceFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrWorkspaceId,
            Pointer<Utf16> bstrWorkspaceFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        bstrWorkspaceId,
        bstrWorkspaceFriendlyName,
      );
}
