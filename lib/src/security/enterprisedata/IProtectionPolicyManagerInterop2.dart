// IProtectionPolicyManagerInterop2.dart

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
const IID_IProtectionPolicyManagerInterop2 =
    '{157CFBE4-A78D-4156-B384-61FDAC41E686}';

/// {@category Interface}
/// {@category com}
class IProtectionPolicyManagerInterop2 extends IInspectable {
  // vtable begins at 6, is 5 entries long.
  IProtectionPolicyManagerInterop2(Pointer<COMObject> ptr) : super(ptr);

  int RequestAccessForAppWithWindowAsync(
    int appWindow,
    int sourceIdentity,
    int appPackageFamilyName,
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
            IntPtr appPackageFamilyName,
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
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        appPackageFamilyName,
        riid,
        asyncOperation,
      );

  int RequestAccessWithAuditingInfoForWindowAsync(
    int appWindow,
    int sourceIdentity,
    int targetIdentity,
    Pointer<COMObject> auditInfoUnk,
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
            IntPtr targetIdentity,
            Pointer<COMObject> auditInfoUnk,
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
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        targetIdentity,
        auditInfoUnk,
        riid,
        asyncOperation,
      );

  int RequestAccessWithMessageForWindowAsync(
    int appWindow,
    int sourceIdentity,
    int targetIdentity,
    Pointer<COMObject> auditInfoUnk,
    int messageFromApp,
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
            IntPtr sourceIdentity,
            IntPtr targetIdentity,
            Pointer<COMObject> auditInfoUnk,
            IntPtr messageFromApp,
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
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        targetIdentity,
        auditInfoUnk,
        messageFromApp,
        riid,
        asyncOperation,
      );

  int RequestAccessForAppWithAuditingInfoForWindowAsync(
    int appWindow,
    int sourceIdentity,
    int appPackageFamilyName,
    Pointer<COMObject> auditInfoUnk,
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
            IntPtr sourceIdentity,
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
            int sourceIdentity,
            int appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        appPackageFamilyName,
        auditInfoUnk,
        riid,
        asyncOperation,
      );

  int RequestAccessForAppWithMessageForWindowAsync(
    int appWindow,
    int sourceIdentity,
    int appPackageFamilyName,
    Pointer<COMObject> auditInfoUnk,
    int messageFromApp,
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
            IntPtr sourceIdentity,
            IntPtr appPackageFamilyName,
            Pointer<COMObject> auditInfoUnk,
            IntPtr messageFromApp,
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
            Pointer<GUID> riid,
            Pointer<Pointer> asyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        sourceIdentity,
        appPackageFamilyName,
        auditInfoUnk,
        messageFromApp,
        riid,
        asyncOperation,
      );
}
