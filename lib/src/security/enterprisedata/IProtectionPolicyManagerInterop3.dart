// IProtectionPolicyManagerInterop3.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';
import '../../system/winrt/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IProtectionPolicyManagerInterop3 =
    '{C1C03933-B398-4D93-B0FD-2972ADF802C2}';

/// {@category Interface}
/// {@category com}
class IProtectionPolicyManagerInterop3 extends IInspectable {
  // vtable begins at 6, is 6 entries long.
  IProtectionPolicyManagerInterop3(Pointer<COMObject> ptr) : super(ptr);

  int RequestAccessWithBehaviorForWindowAsync(
    int appWindow,
    int sourceIdentity,
    int targetIdentity,
    Pointer<COMObject> auditInfoUnk,
    int messageFromApp,
    int behavior,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            IntPtr sourceIdentity,
            IntPtr targetIdentity,
            Pointer<COMObject> auditInfoUnk,
            IntPtr messageFromApp,
            Uint32 behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            int sourceIdentity,
            int targetIdentity,
            Pointer<COMObject> auditInfoUnk,
            int messageFromApp,
            int behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        targetIdentity,
        auditInfoUnk,
        messageFromApp,
        behavior,
        riid,
        asyncOperation,
      );

  int RequestAccessForAppWithBehaviorForWindowAsync(
    int appWindow,
    int sourceIdentity,
    int appPackageFamilyName,
    Pointer<COMObject> auditInfoUnk,
    int messageFromApp,
    int behavior,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            IntPtr sourceIdentity,
            IntPtr appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            IntPtr messageFromApp,
            Uint32 behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            int sourceIdentity,
            int appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            int messageFromApp,
            int behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        appPackageFamilyName,
        auditInfoUnk,
        messageFromApp,
        behavior,
        riid,
        asyncOperation,
      );

  int RequestAccessToFilesForAppForWindowAsync(
    int appWindow,
    Pointer<COMObject> sourceItemListUnk,
    int appPackageFamilyName,
    Pointer<COMObject> auditInfoUnk,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<COMObject> sourceItemListUnk,
            IntPtr appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<COMObject> sourceItemListUnk,
            int appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceItemListUnk,
        appPackageFamilyName,
        auditInfoUnk,
        riid,
        asyncOperation,
      );

  int RequestAccessToFilesForAppWithMessageAndBehaviorForWindowAsync(
    int appWindow,
    Pointer<COMObject> sourceItemListUnk,
    int appPackageFamilyName,
    Pointer<COMObject> auditInfoUnk,
    int messageFromApp,
    int behavior,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<COMObject> sourceItemListUnk,
            IntPtr appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            IntPtr messageFromApp,
            Uint32 behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<COMObject> sourceItemListUnk,
            int appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            int messageFromApp,
            int behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceItemListUnk,
        appPackageFamilyName,
        auditInfoUnk,
        messageFromApp,
        behavior,
        riid,
        asyncOperation,
      );

  int RequestAccessToFilesForProcessForWindowAsync(
    int appWindow,
    Pointer<COMObject> sourceItemListUnk,
    int processId,
    Pointer<COMObject> auditInfoUnk,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<COMObject> sourceItemListUnk,
            Uint32 processId,
            Pointer<COMObject> auditInfoUnk,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<COMObject> sourceItemListUnk,
            int processId,
            Pointer<COMObject> auditInfoUnk,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceItemListUnk,
        processId,
        auditInfoUnk,
        riid,
        asyncOperation,
      );

  int RequestAccessToFilesForProcessWithMessageAndBehaviorForWindowAsync(
    int appWindow,
    Pointer<COMObject> sourceItemListUnk,
    int processId,
    Pointer<COMObject> auditInfoUnk,
    int messageFromApp,
    int behavior,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<COMObject> sourceItemListUnk,
            Uint32 processId,
            Pointer<COMObject> auditInfoUnk,
            IntPtr messageFromApp,
            Uint32 behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<COMObject> sourceItemListUnk,
            int processId,
            Pointer<COMObject> auditInfoUnk,
            int messageFromApp,
            int behavior,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceItemListUnk,
        processId,
        auditInfoUnk,
        messageFromApp,
        behavior,
        riid,
        asyncOperation,
      );
}
