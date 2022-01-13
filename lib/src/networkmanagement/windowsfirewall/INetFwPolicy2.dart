// INetFwPolicy2.dart

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
import '../../networkmanagement/windowsfirewall/structs.g.dart';
import '../../specialTypes.dart';
import '../../networkmanagement/windowsfirewall/INetFwRules.dart';
import '../../networkmanagement/windowsfirewall/INetFwServiceRestriction.dart';

/// @nodoc
const IID_INetFwPolicy2 = '{98325047-C671-4174-8D81-DEFCD3F03186}';

/// {@category Interface}
/// {@category com}
class INetFwPolicy2 extends IDispatch {
  // vtable begins at 7, is 22 entries long.
  INetFwPolicy2(Pointer<COMObject> ptr) : super(ptr);

  int get CurrentProfileTypes {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> profileTypesBitmask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> profileTypesBitmask,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_FirewallEnabled(
    int profileType,
    Pointer<Int16> enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<Int16> enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<Int16> enabled,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        enabled,
      );

  int put_FirewallEnabled(
    int profileType,
    int enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Int16 enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            int enabled,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        enabled,
      );

  int get_ExcludedInterfaces(
    int profileType,
    Pointer<VARIANT> interfaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<VARIANT> interfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<VARIANT> interfaces,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        interfaces,
      );

  int put_ExcludedInterfaces(
    int profileType,
    VARIANT interfaces,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            VARIANT interfaces,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            VARIANT interfaces,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        interfaces,
      );

  int get_BlockAllInboundTraffic(
    int profileType,
    Pointer<Int16> Block,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<Int16> Block,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<Int16> Block,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        Block,
      );

  int put_BlockAllInboundTraffic(
    int profileType,
    int Block,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Int16 Block,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            int Block,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        Block,
      );

  int get_NotificationsDisabled(
    int profileType,
    Pointer<Int16> disabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<Int16> disabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<Int16> disabled,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        disabled,
      );

  int put_NotificationsDisabled(
    int profileType,
    int disabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Int16 disabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            int disabled,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        disabled,
      );

  int get_UnicastResponsesToMulticastBroadcastDisabled(
    int profileType,
    Pointer<Int16> disabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<Int16> disabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<Int16> disabled,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        disabled,
      );

  int put_UnicastResponsesToMulticastBroadcastDisabled(
    int profileType,
    int disabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Int16 disabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            int disabled,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        disabled,
      );

  Pointer<COMObject> get Rules {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> rules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> rules,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get ServiceRestriction {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ServiceRestriction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ServiceRestriction,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnableRuleGroup(
    int profileTypesBitmask,
    Pointer<Utf16> group,
    int enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileTypesBitmask,
            Pointer<Utf16> group,
            Int16 enable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileTypesBitmask,
            Pointer<Utf16> group,
            int enable,
          )>()(
        ptr.ref.lpVtbl,
        profileTypesBitmask,
        group,
        enable,
      );

  int IsRuleGroupEnabled(
    int profileTypesBitmask,
    Pointer<Utf16> group,
    Pointer<Int16> enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileTypesBitmask,
            Pointer<Utf16> group,
            Pointer<Int16> enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileTypesBitmask,
            Pointer<Utf16> group,
            Pointer<Int16> enabled,
          )>()(
        ptr.ref.lpVtbl,
        profileTypesBitmask,
        group,
        enabled,
      );

  int RestoreLocalFirewallDefaults() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int get_DefaultInboundAction(
    int profileType,
    Pointer<Int32> action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<Int32> action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<Int32> action,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        action,
      );

  int put_DefaultInboundAction(
    int profileType,
    int action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Int32 action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            int action,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        action,
      );

  int get_DefaultOutboundAction(
    int profileType,
    Pointer<Int32> action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Pointer<Int32> action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            Pointer<Int32> action,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        action,
      );

  int put_DefaultOutboundAction(
    int profileType,
    int action,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 profileType,
            Int32 action,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int profileType,
            int action,
          )>()(
        ptr.ref.lpVtbl,
        profileType,
        action,
      );

  int get_IsRuleGroupCurrentlyEnabled(
    Pointer<Utf16> group,
    Pointer<Int16> enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> group,
            Pointer<Int16> enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> group,
            Pointer<Int16> enabled,
          )>()(
        ptr.ref.lpVtbl,
        group,
        enabled,
      );

  int get LocalPolicyModifyState {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> modifyState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> modifyState,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_NetFwPolicy2 = '{E2B3C97F-6AE1-41AC-817A-F6F92166D7DD}';

/// {@category com}
class NetFwPolicy2 extends INetFwPolicy2 {
  NetFwPolicy2(Pointer<COMObject> ptr) : super(ptr);

  factory NetFwPolicy2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_NetFwPolicy2);
    final iid = calloc<GUID>()..ref.setGUID(IID_INetFwPolicy2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return NetFwPolicy2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
