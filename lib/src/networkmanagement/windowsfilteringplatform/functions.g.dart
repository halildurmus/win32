// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsfilteringplatform/structs.g.dart';
import '../../security/structs.g.dart';
import '../../networkmanagement/windowsfilteringplatform/callbacks.g.dart';
import '../../system/rpc/structs.g.dart'; // -----------------------------------------------------------------------

// fwpuclnt.dll
// -----------------------------------------------------------------------
final _fwpuclnt = DynamicLibrary.open('fwpuclnt.dll');

int FwpmCalloutAdd0(
  int engineHandle,
  Pointer<FWPM_CALLOUT0> callout,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint32> id,
) =>
    _FwpmCalloutAdd0(
      engineHandle,
      callout,
      sd,
      id,
    );

late final _FwpmCalloutAdd0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_CALLOUT0> callout,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint32> id,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_CALLOUT0> callout,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint32> id,
)>('FwpmCalloutAdd0');

int FwpmCalloutCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_CALLOUT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmCalloutCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmCalloutCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_CALLOUT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_CALLOUT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmCalloutCreateEnumHandle0');

int FwpmCalloutDeleteById0(
  int engineHandle,
  int id,
) =>
    _FwpmCalloutDeleteById0(
      engineHandle,
      id,
    );

late final _FwpmCalloutDeleteById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 id,
),
    int Function(
  int engineHandle,
  int id,
)>('FwpmCalloutDeleteById0');

int FwpmCalloutDeleteByKey0(
  int engineHandle,
  Pointer<GUID> key,
) =>
    _FwpmCalloutDeleteByKey0(
      engineHandle,
      key,
    );

late final _FwpmCalloutDeleteByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
)>('FwpmCalloutDeleteByKey0');

int FwpmCalloutDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmCalloutDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmCalloutDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmCalloutDestroyEnumHandle0');

int FwpmCalloutEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_CALLOUT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmCalloutEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmCalloutEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_CALLOUT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_CALLOUT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmCalloutEnum0');

int FwpmCalloutGetById0(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_CALLOUT0>> callout,
) =>
    _FwpmCalloutGetById0(
      engineHandle,
      id,
      callout,
    );

late final _FwpmCalloutGetById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 id,
  Pointer<Pointer<FWPM_CALLOUT0>> callout,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_CALLOUT0>> callout,
)>('FwpmCalloutGetById0');

int FwpmCalloutGetByKey0(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_CALLOUT0>> callout,
) =>
    _FwpmCalloutGetByKey0(
      engineHandle,
      key,
      callout,
    );

late final _FwpmCalloutGetByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_CALLOUT0>> callout,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_CALLOUT0>> callout,
)>('FwpmCalloutGetByKey0');

int FwpmCalloutGetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmCalloutGetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmCalloutGetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmCalloutGetSecurityInfoByKey0');

int FwpmCalloutSetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmCalloutSetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmCalloutSetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmCalloutSetSecurityInfoByKey0');

int FwpmCalloutSubscribeChanges0(
  int engineHandle,
  Pointer<FWPM_CALLOUT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_CALLOUT_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
) =>
    _FwpmCalloutSubscribeChanges0(
      engineHandle,
      subscription,
      callback,
      context,
      changeHandle,
    );

late final _FwpmCalloutSubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_CALLOUT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_CALLOUT_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_CALLOUT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_CALLOUT_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
)>('FwpmCalloutSubscribeChanges0');

int FwpmCalloutSubscriptionsGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_CALLOUT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _FwpmCalloutSubscriptionsGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _FwpmCalloutSubscriptionsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<FWPM_CALLOUT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_CALLOUT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
)>('FwpmCalloutSubscriptionsGet0');

int FwpmCalloutUnsubscribeChanges0(
  int engineHandle,
  int changeHandle,
) =>
    _FwpmCalloutUnsubscribeChanges0(
      engineHandle,
      changeHandle,
    );

late final _FwpmCalloutUnsubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr changeHandle,
),
    int Function(
  int engineHandle,
  int changeHandle,
)>('FwpmCalloutUnsubscribeChanges0');

int FwpmConnectionCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_CONNECTION_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmConnectionCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmConnectionCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_CONNECTION_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_CONNECTION_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmConnectionCreateEnumHandle0');

int FwpmConnectionDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmConnectionDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmConnectionDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmConnectionDestroyEnumHandle0');

int FwpmConnectionEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_CONNECTION0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmConnectionEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmConnectionEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_CONNECTION0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_CONNECTION0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmConnectionEnum0');

int FwpmConnectionGetById0(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_CONNECTION0>> connection,
) =>
    _FwpmConnectionGetById0(
      engineHandle,
      id,
      connection,
    );

late final _FwpmConnectionGetById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<FWPM_CONNECTION0>> connection,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_CONNECTION0>> connection,
)>('FwpmConnectionGetById0');

int FwpmConnectionGetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmConnectionGetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmConnectionGetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmConnectionGetSecurityInfo0');

int FwpmConnectionSetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmConnectionSetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmConnectionSetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmConnectionSetSecurityInfo0');

int FwpmConnectionSubscribe0(
  int engineHandle,
  Pointer<FWPM_CONNECTION_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_CONNECTION_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
) =>
    _FwpmConnectionSubscribe0(
      engineHandle,
      subscription,
      callback,
      context,
      eventsHandle,
    );

late final _FwpmConnectionSubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_CONNECTION_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_CONNECTION_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_CONNECTION_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_CONNECTION_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
)>('FwpmConnectionSubscribe0');

int FwpmConnectionUnsubscribe0(
  int engineHandle,
  int eventsHandle,
) =>
    _FwpmConnectionUnsubscribe0(
      engineHandle,
      eventsHandle,
    );

late final _FwpmConnectionUnsubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr eventsHandle,
),
    int Function(
  int engineHandle,
  int eventsHandle,
)>('FwpmConnectionUnsubscribe0');

int FwpmDynamicKeywordSubscribe0(
  int flags,
  Pointer<NativeFunction<FWPM_DYNAMIC_KEYWORD_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> subscriptionHandle,
) =>
    _FwpmDynamicKeywordSubscribe0(
      flags,
      callback,
      context,
      subscriptionHandle,
    );

late final _FwpmDynamicKeywordSubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  Uint32 flags,
  Pointer<NativeFunction<FWPM_DYNAMIC_KEYWORD_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> subscriptionHandle,
),
    int Function(
  int flags,
  Pointer<NativeFunction<FWPM_DYNAMIC_KEYWORD_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> subscriptionHandle,
)>('FwpmDynamicKeywordSubscribe0');

int FwpmDynamicKeywordUnsubscribe0(
  int subscriptionHandle,
) =>
    _FwpmDynamicKeywordUnsubscribe0(
      subscriptionHandle,
    );

late final _FwpmDynamicKeywordUnsubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr subscriptionHandle,
),
    int Function(
  int subscriptionHandle,
)>('FwpmDynamicKeywordUnsubscribe0');

int FwpmEngineClose0(
  int engineHandle,
) =>
    _FwpmEngineClose0(
      engineHandle,
    );

late final _FwpmEngineClose0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
),
    int Function(
  int engineHandle,
)>('FwpmEngineClose0');

int FwpmEngineGetOption0(
  int engineHandle,
  int option,
  Pointer<Pointer<FWP_VALUE0>> value,
) =>
    _FwpmEngineGetOption0(
      engineHandle,
      option,
      value,
    );

late final _FwpmEngineGetOption0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Int32 option,
  Pointer<Pointer<FWP_VALUE0>> value,
),
    int Function(
  int engineHandle,
  int option,
  Pointer<Pointer<FWP_VALUE0>> value,
)>('FwpmEngineGetOption0');

int FwpmEngineGetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmEngineGetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmEngineGetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmEngineGetSecurityInfo0');

int FwpmEngineOpen0(
  Pointer<Utf16> serverName,
  int authnService,
  Pointer<SEC_WINNT_AUTH_IDENTITY_> authIdentity,
  Pointer<FWPM_SESSION0> session,
  Pointer<IntPtr> engineHandle,
) =>
    _FwpmEngineOpen0(
      serverName,
      authnService,
      authIdentity,
      session,
      engineHandle,
    );

late final _FwpmEngineOpen0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> serverName,
  Uint32 authnService,
  Pointer<SEC_WINNT_AUTH_IDENTITY_> authIdentity,
  Pointer<FWPM_SESSION0> session,
  Pointer<IntPtr> engineHandle,
),
    int Function(
  Pointer<Utf16> serverName,
  int authnService,
  Pointer<SEC_WINNT_AUTH_IDENTITY_> authIdentity,
  Pointer<FWPM_SESSION0> session,
  Pointer<IntPtr> engineHandle,
)>('FwpmEngineOpen0');

int FwpmEngineSetOption0(
  int engineHandle,
  int option,
  Pointer<FWP_VALUE0> newValue,
) =>
    _FwpmEngineSetOption0(
      engineHandle,
      option,
      newValue,
    );

late final _FwpmEngineSetOption0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Int32 option,
  Pointer<FWP_VALUE0> newValue,
),
    int Function(
  int engineHandle,
  int option,
  Pointer<FWP_VALUE0> newValue,
)>('FwpmEngineSetOption0');

int FwpmEngineSetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmEngineSetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmEngineSetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmEngineSetSecurityInfo0');

int FwpmFilterAdd0(
  int engineHandle,
  Pointer<FWPM_FILTER0> filter,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
) =>
    _FwpmFilterAdd0(
      engineHandle,
      filter,
      sd,
      id,
    );

late final _FwpmFilterAdd0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_FILTER0> filter,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_FILTER0> filter,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
)>('FwpmFilterAdd0');

int FwpmFilterCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_FILTER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmFilterCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmFilterCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_FILTER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_FILTER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmFilterCreateEnumHandle0');

int FwpmFilterDeleteById0(
  int engineHandle,
  int id,
) =>
    _FwpmFilterDeleteById0(
      engineHandle,
      id,
    );

late final _FwpmFilterDeleteById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
),
    int Function(
  int engineHandle,
  int id,
)>('FwpmFilterDeleteById0');

int FwpmFilterDeleteByKey0(
  int engineHandle,
  Pointer<GUID> key,
) =>
    _FwpmFilterDeleteByKey0(
      engineHandle,
      key,
    );

late final _FwpmFilterDeleteByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
)>('FwpmFilterDeleteByKey0');

int FwpmFilterDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmFilterDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmFilterDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmFilterDestroyEnumHandle0');

int FwpmFilterEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_FILTER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmFilterEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmFilterEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_FILTER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_FILTER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmFilterEnum0');

int FwpmFilterGetById0(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_FILTER0>> filter,
) =>
    _FwpmFilterGetById0(
      engineHandle,
      id,
      filter,
    );

late final _FwpmFilterGetById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<FWPM_FILTER0>> filter,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_FILTER0>> filter,
)>('FwpmFilterGetById0');

int FwpmFilterGetByKey0(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_FILTER0>> filter,
) =>
    _FwpmFilterGetByKey0(
      engineHandle,
      key,
      filter,
    );

late final _FwpmFilterGetByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_FILTER0>> filter,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_FILTER0>> filter,
)>('FwpmFilterGetByKey0');

int FwpmFilterGetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmFilterGetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmFilterGetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmFilterGetSecurityInfoByKey0');

int FwpmFilterSetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmFilterSetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmFilterSetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmFilterSetSecurityInfoByKey0');

int FwpmFilterSubscribeChanges0(
  int engineHandle,
  Pointer<FWPM_FILTER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_FILTER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
) =>
    _FwpmFilterSubscribeChanges0(
      engineHandle,
      subscription,
      callback,
      context,
      changeHandle,
    );

late final _FwpmFilterSubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_FILTER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_FILTER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_FILTER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_FILTER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
)>('FwpmFilterSubscribeChanges0');

int FwpmFilterSubscriptionsGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_FILTER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _FwpmFilterSubscriptionsGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _FwpmFilterSubscriptionsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<FWPM_FILTER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_FILTER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
)>('FwpmFilterSubscriptionsGet0');

int FwpmFilterUnsubscribeChanges0(
  int engineHandle,
  int changeHandle,
) =>
    _FwpmFilterUnsubscribeChanges0(
      engineHandle,
      changeHandle,
    );

late final _FwpmFilterUnsubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr changeHandle,
),
    int Function(
  int engineHandle,
  int changeHandle,
)>('FwpmFilterUnsubscribeChanges0');

void FwpmFreeMemory0(
  Pointer<Pointer> p,
) =>
    _FwpmFreeMemory0(
      p,
    );

late final _FwpmFreeMemory0 = _fwpuclnt.lookupFunction<
    Void Function(
  Pointer<Pointer> p,
),
    void Function(
  Pointer<Pointer> p,
)>('FwpmFreeMemory0');

int FwpmGetAppIdFromFileName0(
  Pointer<Utf16> fileName,
  Pointer<Pointer<FWP_BYTE_BLOB>> appId,
) =>
    _FwpmGetAppIdFromFileName0(
      fileName,
      appId,
    );

late final _FwpmGetAppIdFromFileName0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> fileName,
  Pointer<Pointer<FWP_BYTE_BLOB>> appId,
),
    int Function(
  Pointer<Utf16> fileName,
  Pointer<Pointer<FWP_BYTE_BLOB>> appId,
)>('FwpmGetAppIdFromFileName0');

int FwpmIPsecTunnelAdd0(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT0> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT0> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<SECURITY_DESCRIPTOR> sd,
) =>
    _FwpmIPsecTunnelAdd0(
      engineHandle,
      flags,
      mainModePolicy,
      tunnelPolicy,
      numFilterConditions,
      filterConditions,
      sd,
    );

late final _FwpmIPsecTunnelAdd0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 flags,
  Pointer<FWPM_PROVIDER_CONTEXT0> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT0> tunnelPolicy,
  Uint32 numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<SECURITY_DESCRIPTOR> sd,
),
    int Function(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT0> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT0> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<SECURITY_DESCRIPTOR> sd,
)>('FwpmIPsecTunnelAdd0');

int FwpmIPsecTunnelAdd1(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT1> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT1> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
) =>
    _FwpmIPsecTunnelAdd1(
      engineHandle,
      flags,
      mainModePolicy,
      tunnelPolicy,
      numFilterConditions,
      filterConditions,
      keyModKey,
      sd,
    );

late final _FwpmIPsecTunnelAdd1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 flags,
  Pointer<FWPM_PROVIDER_CONTEXT1> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT1> tunnelPolicy,
  Uint32 numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
),
    int Function(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT1> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT1> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
)>('FwpmIPsecTunnelAdd1');

int FwpmIPsecTunnelAdd2(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT2> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT2> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
) =>
    _FwpmIPsecTunnelAdd2(
      engineHandle,
      flags,
      mainModePolicy,
      tunnelPolicy,
      numFilterConditions,
      filterConditions,
      keyModKey,
      sd,
    );

late final _FwpmIPsecTunnelAdd2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 flags,
  Pointer<FWPM_PROVIDER_CONTEXT2> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT2> tunnelPolicy,
  Uint32 numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
),
    int Function(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT2> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT2> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
)>('FwpmIPsecTunnelAdd2');

int FwpmIPsecTunnelAdd3(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT3_> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT3_> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
) =>
    _FwpmIPsecTunnelAdd3(
      engineHandle,
      flags,
      mainModePolicy,
      tunnelPolicy,
      numFilterConditions,
      filterConditions,
      keyModKey,
      sd,
    );

late final _FwpmIPsecTunnelAdd3 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 flags,
  Pointer<FWPM_PROVIDER_CONTEXT3_> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT3_> tunnelPolicy,
  Uint32 numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
),
    int Function(
  int engineHandle,
  int flags,
  Pointer<FWPM_PROVIDER_CONTEXT3_> mainModePolicy,
  Pointer<FWPM_PROVIDER_CONTEXT3_> tunnelPolicy,
  int numFilterConditions,
  Pointer<FWPM_FILTER_CONDITION0> filterConditions,
  Pointer<GUID> keyModKey,
  Pointer<SECURITY_DESCRIPTOR> sd,
)>('FwpmIPsecTunnelAdd3');

int FwpmIPsecTunnelDeleteByKey0(
  int engineHandle,
  Pointer<GUID> key,
) =>
    _FwpmIPsecTunnelDeleteByKey0(
      engineHandle,
      key,
    );

late final _FwpmIPsecTunnelDeleteByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
)>('FwpmIPsecTunnelDeleteByKey0');

int FwpmLayerCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_LAYER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmLayerCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmLayerCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_LAYER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_LAYER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmLayerCreateEnumHandle0');

int FwpmLayerDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmLayerDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmLayerDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmLayerDestroyEnumHandle0');

int FwpmLayerEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_LAYER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmLayerEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmLayerEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_LAYER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_LAYER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmLayerEnum0');

int FwpmLayerGetById0(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_LAYER0>> layer,
) =>
    _FwpmLayerGetById0(
      engineHandle,
      id,
      layer,
    );

late final _FwpmLayerGetById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint16 id,
  Pointer<Pointer<FWPM_LAYER0>> layer,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_LAYER0>> layer,
)>('FwpmLayerGetById0');

int FwpmLayerGetByKey0(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_LAYER0>> layer,
) =>
    _FwpmLayerGetByKey0(
      engineHandle,
      key,
      layer,
    );

late final _FwpmLayerGetByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_LAYER0>> layer,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_LAYER0>> layer,
)>('FwpmLayerGetByKey0');

int FwpmLayerGetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmLayerGetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmLayerGetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmLayerGetSecurityInfoByKey0');

int FwpmLayerSetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmLayerSetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmLayerSetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmLayerSetSecurityInfoByKey0');

int FwpmNetEventCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmNetEventCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmNetEventCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_NET_EVENT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmNetEventCreateEnumHandle0');

int FwpmNetEventDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmNetEventDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmNetEventDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmNetEventDestroyEnumHandle0');

int FwpmNetEventEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmNetEventEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmNetEventEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmNetEventEnum0');

int FwpmNetEventEnum1(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmNetEventEnum1(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmNetEventEnum1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmNetEventEnum1');

int FwpmNetEventEnum2(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT2>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmNetEventEnum2(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmNetEventEnum2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT2>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT2>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmNetEventEnum2');

int FwpmNetEventEnum3(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT3>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmNetEventEnum3(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmNetEventEnum3 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT3>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT3>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmNetEventEnum3');

int FwpmNetEventEnum4(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT4_>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmNetEventEnum4(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmNetEventEnum4 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT4_>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT4_>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmNetEventEnum4');

int FwpmNetEventEnum5(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT5_>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmNetEventEnum5(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmNetEventEnum5 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT5_>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT5_>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmNetEventEnum5');

int FwpmNetEventSubscribe0(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
) =>
    _FwpmNetEventSubscribe0(
      engineHandle,
      subscription,
      callback,
      context,
      eventsHandle,
    );

late final _FwpmNetEventSubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
)>('FwpmNetEventSubscribe0');

int FwpmNetEventSubscribe1(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK1>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
) =>
    _FwpmNetEventSubscribe1(
      engineHandle,
      subscription,
      callback,
      context,
      eventsHandle,
    );

late final _FwpmNetEventSubscribe1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK1>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK1>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
)>('FwpmNetEventSubscribe1');

int FwpmNetEventSubscribe2(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK2>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
) =>
    _FwpmNetEventSubscribe2(
      engineHandle,
      subscription,
      callback,
      context,
      eventsHandle,
    );

late final _FwpmNetEventSubscribe2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK2>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK2>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
)>('FwpmNetEventSubscribe2');

int FwpmNetEventSubscribe3(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK3>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
) =>
    _FwpmNetEventSubscribe3(
      engineHandle,
      subscription,
      callback,
      context,
      eventsHandle,
    );

late final _FwpmNetEventSubscribe3 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK3>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK3>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
)>('FwpmNetEventSubscribe3');

int FwpmNetEventSubscribe4(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK4>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
) =>
    _FwpmNetEventSubscribe4(
      engineHandle,
      subscription,
      callback,
      context,
      eventsHandle,
    );

late final _FwpmNetEventSubscribe4 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK4>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_NET_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_NET_EVENT_CALLBACK4>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
)>('FwpmNetEventSubscribe4');

int FwpmNetEventSubscriptionsGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _FwpmNetEventSubscriptionsGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _FwpmNetEventSubscriptionsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_NET_EVENT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
)>('FwpmNetEventSubscriptionsGet0');

int FwpmNetEventUnsubscribe0(
  int engineHandle,
  int eventsHandle,
) =>
    _FwpmNetEventUnsubscribe0(
      engineHandle,
      eventsHandle,
    );

late final _FwpmNetEventUnsubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr eventsHandle,
),
    int Function(
  int engineHandle,
  int eventsHandle,
)>('FwpmNetEventUnsubscribe0');

int FwpmNetEventsGetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmNetEventsGetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmNetEventsGetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmNetEventsGetSecurityInfo0');

int FwpmNetEventsSetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmNetEventsSetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmNetEventsSetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmNetEventsSetSecurityInfo0');

int FwpmProviderAdd0(
  int engineHandle,
  Pointer<FWPM_PROVIDER0> provider,
  Pointer<SECURITY_DESCRIPTOR> sd,
) =>
    _FwpmProviderAdd0(
      engineHandle,
      provider,
      sd,
    );

late final _FwpmProviderAdd0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER0> provider,
  Pointer<SECURITY_DESCRIPTOR> sd,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER0> provider,
  Pointer<SECURITY_DESCRIPTOR> sd,
)>('FwpmProviderAdd0');

int FwpmProviderContextAdd0(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT0> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
) =>
    _FwpmProviderContextAdd0(
      engineHandle,
      providerContext,
      sd,
      id,
    );

late final _FwpmProviderContextAdd0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT0> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT0> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
)>('FwpmProviderContextAdd0');

int FwpmProviderContextAdd1(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT1> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
) =>
    _FwpmProviderContextAdd1(
      engineHandle,
      providerContext,
      sd,
      id,
    );

late final _FwpmProviderContextAdd1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT1> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT1> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
)>('FwpmProviderContextAdd1');

int FwpmProviderContextAdd2(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT2> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
) =>
    _FwpmProviderContextAdd2(
      engineHandle,
      providerContext,
      sd,
      id,
    );

late final _FwpmProviderContextAdd2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT2> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT2> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
)>('FwpmProviderContextAdd2');

int FwpmProviderContextAdd3(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT3_> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
) =>
    _FwpmProviderContextAdd3(
      engineHandle,
      providerContext,
      sd,
      id,
    );

late final _FwpmProviderContextAdd3 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT3_> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT3_> providerContext,
  Pointer<SECURITY_DESCRIPTOR> sd,
  Pointer<Uint64> id,
)>('FwpmProviderContextAdd3');

int FwpmProviderContextCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmProviderContextCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmProviderContextCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmProviderContextCreateEnumHandle0');

int FwpmProviderContextDeleteById0(
  int engineHandle,
  int id,
) =>
    _FwpmProviderContextDeleteById0(
      engineHandle,
      id,
    );

late final _FwpmProviderContextDeleteById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
),
    int Function(
  int engineHandle,
  int id,
)>('FwpmProviderContextDeleteById0');

int FwpmProviderContextDeleteByKey0(
  int engineHandle,
  Pointer<GUID> key,
) =>
    _FwpmProviderContextDeleteByKey0(
      engineHandle,
      key,
    );

late final _FwpmProviderContextDeleteByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
)>('FwpmProviderContextDeleteByKey0');

int FwpmProviderContextDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmProviderContextDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmProviderContextDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmProviderContextDestroyEnumHandle0');

int FwpmProviderContextEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmProviderContextEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmProviderContextEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmProviderContextEnum0');

int FwpmProviderContextEnum1(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmProviderContextEnum1(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmProviderContextEnum1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmProviderContextEnum1');

int FwpmProviderContextEnum2(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmProviderContextEnum2(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmProviderContextEnum2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmProviderContextEnum2');

int FwpmProviderContextEnum3(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmProviderContextEnum3(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmProviderContextEnum3 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmProviderContextEnum3');

int FwpmProviderContextGetById0(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>> providerContext,
) =>
    _FwpmProviderContextGetById0(
      engineHandle,
      id,
      providerContext,
    );

late final _FwpmProviderContextGetById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>> providerContext,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>> providerContext,
)>('FwpmProviderContextGetById0');

int FwpmProviderContextGetById1(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>> providerContext,
) =>
    _FwpmProviderContextGetById1(
      engineHandle,
      id,
      providerContext,
    );

late final _FwpmProviderContextGetById1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>> providerContext,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>> providerContext,
)>('FwpmProviderContextGetById1');

int FwpmProviderContextGetById2(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>> providerContext,
) =>
    _FwpmProviderContextGetById2(
      engineHandle,
      id,
      providerContext,
    );

late final _FwpmProviderContextGetById2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>> providerContext,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>> providerContext,
)>('FwpmProviderContextGetById2');

int FwpmProviderContextGetById3(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>> providerContext,
) =>
    _FwpmProviderContextGetById3(
      engineHandle,
      id,
      providerContext,
    );

late final _FwpmProviderContextGetById3 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>> providerContext,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>> providerContext,
)>('FwpmProviderContextGetById3');

int FwpmProviderContextGetByKey0(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>> providerContext,
) =>
    _FwpmProviderContextGetByKey0(
      engineHandle,
      key,
      providerContext,
    );

late final _FwpmProviderContextGetByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>> providerContext,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT0>> providerContext,
)>('FwpmProviderContextGetByKey0');

int FwpmProviderContextGetByKey1(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>> providerContext,
) =>
    _FwpmProviderContextGetByKey1(
      engineHandle,
      key,
      providerContext,
    );

late final _FwpmProviderContextGetByKey1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>> providerContext,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT1>> providerContext,
)>('FwpmProviderContextGetByKey1');

int FwpmProviderContextGetByKey2(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>> providerContext,
) =>
    _FwpmProviderContextGetByKey2(
      engineHandle,
      key,
      providerContext,
    );

late final _FwpmProviderContextGetByKey2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>> providerContext,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT2>> providerContext,
)>('FwpmProviderContextGetByKey2');

int FwpmProviderContextGetByKey3(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>> providerContext,
) =>
    _FwpmProviderContextGetByKey3(
      engineHandle,
      key,
      providerContext,
    );

late final _FwpmProviderContextGetByKey3 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>> providerContext,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER_CONTEXT3_>> providerContext,
)>('FwpmProviderContextGetByKey3');

int FwpmProviderContextGetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmProviderContextGetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmProviderContextGetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmProviderContextGetSecurityInfoByKey0');

int FwpmProviderContextSetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmProviderContextSetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmProviderContextSetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmProviderContextSetSecurityInfoByKey0');

int FwpmProviderContextSubscribeChanges0(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_PROVIDER_CONTEXT_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
) =>
    _FwpmProviderContextSubscribeChanges0(
      engineHandle,
      subscription,
      callback,
      context,
      changeHandle,
    );

late final _FwpmProviderContextSubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_PROVIDER_CONTEXT_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_PROVIDER_CONTEXT_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
)>('FwpmProviderContextSubscribeChanges0');

int FwpmProviderContextSubscriptionsGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _FwpmProviderContextSubscriptionsGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _FwpmProviderContextSubscriptionsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_CONTEXT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
)>('FwpmProviderContextSubscriptionsGet0');

int FwpmProviderContextUnsubscribeChanges0(
  int engineHandle,
  int changeHandle,
) =>
    _FwpmProviderContextUnsubscribeChanges0(
      engineHandle,
      changeHandle,
    );

late final _FwpmProviderContextUnsubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr changeHandle,
),
    int Function(
  int engineHandle,
  int changeHandle,
)>('FwpmProviderContextUnsubscribeChanges0');

int FwpmProviderCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_PROVIDER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmProviderCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmProviderCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmProviderCreateEnumHandle0');

int FwpmProviderDeleteByKey0(
  int engineHandle,
  Pointer<GUID> key,
) =>
    _FwpmProviderDeleteByKey0(
      engineHandle,
      key,
    );

late final _FwpmProviderDeleteByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
)>('FwpmProviderDeleteByKey0');

int FwpmProviderDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmProviderDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmProviderDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmProviderDestroyEnumHandle0');

int FwpmProviderEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmProviderEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmProviderEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_PROVIDER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmProviderEnum0');

int FwpmProviderGetByKey0(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER0>> provider,
) =>
    _FwpmProviderGetByKey0(
      engineHandle,
      key,
      provider,
    );

late final _FwpmProviderGetByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER0>> provider,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_PROVIDER0>> provider,
)>('FwpmProviderGetByKey0');

int FwpmProviderGetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmProviderGetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmProviderGetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmProviderGetSecurityInfoByKey0');

int FwpmProviderSetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmProviderSetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmProviderSetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmProviderSetSecurityInfoByKey0');

int FwpmProviderSubscribeChanges0(
  int engineHandle,
  Pointer<FWPM_PROVIDER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_PROVIDER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
) =>
    _FwpmProviderSubscribeChanges0(
      engineHandle,
      subscription,
      callback,
      context,
      changeHandle,
    );

late final _FwpmProviderSubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_PROVIDER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_PROVIDER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_PROVIDER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_PROVIDER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
)>('FwpmProviderSubscribeChanges0');

int FwpmProviderSubscriptionsGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _FwpmProviderSubscriptionsGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _FwpmProviderSubscriptionsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_PROVIDER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
)>('FwpmProviderSubscriptionsGet0');

int FwpmProviderUnsubscribeChanges0(
  int engineHandle,
  int changeHandle,
) =>
    _FwpmProviderUnsubscribeChanges0(
      engineHandle,
      changeHandle,
    );

late final _FwpmProviderUnsubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr changeHandle,
),
    int Function(
  int engineHandle,
  int changeHandle,
)>('FwpmProviderUnsubscribeChanges0');

int FwpmSessionCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_SESSION_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmSessionCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmSessionCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_SESSION_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_SESSION_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmSessionCreateEnumHandle0');

int FwpmSessionDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmSessionDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmSessionDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmSessionDestroyEnumHandle0');

int FwpmSessionEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_SESSION0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmSessionEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmSessionEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_SESSION0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_SESSION0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmSessionEnum0');

int FwpmSubLayerAdd0(
  int engineHandle,
  Pointer<FWPM_SUBLAYER0> subLayer,
  Pointer<SECURITY_DESCRIPTOR> sd,
) =>
    _FwpmSubLayerAdd0(
      engineHandle,
      subLayer,
      sd,
    );

late final _FwpmSubLayerAdd0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_SUBLAYER0> subLayer,
  Pointer<SECURITY_DESCRIPTOR> sd,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_SUBLAYER0> subLayer,
  Pointer<SECURITY_DESCRIPTOR> sd,
)>('FwpmSubLayerAdd0');

int FwpmSubLayerCreateEnumHandle0(
  int engineHandle,
  Pointer<FWPM_SUBLAYER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _FwpmSubLayerCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _FwpmSubLayerCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_SUBLAYER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_SUBLAYER_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('FwpmSubLayerCreateEnumHandle0');

int FwpmSubLayerDeleteByKey0(
  int engineHandle,
  Pointer<GUID> key,
) =>
    _FwpmSubLayerDeleteByKey0(
      engineHandle,
      key,
    );

late final _FwpmSubLayerDeleteByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
)>('FwpmSubLayerDeleteByKey0');

int FwpmSubLayerDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _FwpmSubLayerDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _FwpmSubLayerDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('FwpmSubLayerDestroyEnumHandle0');

int FwpmSubLayerEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_SUBLAYER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _FwpmSubLayerEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _FwpmSubLayerEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_SUBLAYER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<FWPM_SUBLAYER0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('FwpmSubLayerEnum0');

int FwpmSubLayerGetByKey0(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_SUBLAYER0>> subLayer,
) =>
    _FwpmSubLayerGetByKey0(
      engineHandle,
      key,
      subLayer,
    );

late final _FwpmSubLayerGetByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_SUBLAYER0>> subLayer,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  Pointer<Pointer<FWPM_SUBLAYER0>> subLayer,
)>('FwpmSubLayerGetByKey0');

int FwpmSubLayerGetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmSubLayerGetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmSubLayerGetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmSubLayerGetSecurityInfoByKey0');

int FwpmSubLayerSetSecurityInfoByKey0(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmSubLayerSetSecurityInfoByKey0(
      engineHandle,
      key,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmSubLayerSetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<GUID> key,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  Pointer<GUID> key,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmSubLayerSetSecurityInfoByKey0');

int FwpmSubLayerSubscribeChanges0(
  int engineHandle,
  Pointer<FWPM_SUBLAYER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_SUBLAYER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
) =>
    _FwpmSubLayerSubscribeChanges0(
      engineHandle,
      subscription,
      callback,
      context,
      changeHandle,
    );

late final _FwpmSubLayerSubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_SUBLAYER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_SUBLAYER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_SUBLAYER_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_SUBLAYER_CHANGE_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> changeHandle,
)>('FwpmSubLayerSubscribeChanges0');

int FwpmSubLayerSubscriptionsGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_SUBLAYER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _FwpmSubLayerSubscriptionsGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _FwpmSubLayerSubscriptionsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<FWPM_SUBLAYER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<FWPM_SUBLAYER_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
)>('FwpmSubLayerSubscriptionsGet0');

int FwpmSubLayerUnsubscribeChanges0(
  int engineHandle,
  int changeHandle,
) =>
    _FwpmSubLayerUnsubscribeChanges0(
      engineHandle,
      changeHandle,
    );

late final _FwpmSubLayerUnsubscribeChanges0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr changeHandle,
),
    int Function(
  int engineHandle,
  int changeHandle,
)>('FwpmSubLayerUnsubscribeChanges0');

int FwpmSystemPortsGet0(
  int engineHandle,
  Pointer<Pointer<FWPM_SYSTEM_PORTS0>> sysPorts,
) =>
    _FwpmSystemPortsGet0(
      engineHandle,
      sysPorts,
    );

late final _FwpmSystemPortsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<FWPM_SYSTEM_PORTS0>> sysPorts,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<FWPM_SYSTEM_PORTS0>> sysPorts,
)>('FwpmSystemPortsGet0');

int FwpmSystemPortsSubscribe0(
  int engineHandle,
  Pointer reserved,
  Pointer<NativeFunction<FWPM_SYSTEM_PORTS_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> sysPortsHandle,
) =>
    _FwpmSystemPortsSubscribe0(
      engineHandle,
      reserved,
      callback,
      context,
      sysPortsHandle,
    );

late final _FwpmSystemPortsSubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer reserved,
  Pointer<NativeFunction<FWPM_SYSTEM_PORTS_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> sysPortsHandle,
),
    int Function(
  int engineHandle,
  Pointer reserved,
  Pointer<NativeFunction<FWPM_SYSTEM_PORTS_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> sysPortsHandle,
)>('FwpmSystemPortsSubscribe0');

int FwpmSystemPortsUnsubscribe0(
  int engineHandle,
  int sysPortsHandle,
) =>
    _FwpmSystemPortsUnsubscribe0(
      engineHandle,
      sysPortsHandle,
    );

late final _FwpmSystemPortsUnsubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr sysPortsHandle,
),
    int Function(
  int engineHandle,
  int sysPortsHandle,
)>('FwpmSystemPortsUnsubscribe0');

int FwpmTransactionAbort0(
  int engineHandle,
) =>
    _FwpmTransactionAbort0(
      engineHandle,
    );

late final _FwpmTransactionAbort0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
),
    int Function(
  int engineHandle,
)>('FwpmTransactionAbort0');

int FwpmTransactionBegin0(
  int engineHandle,
  int flags,
) =>
    _FwpmTransactionBegin0(
      engineHandle,
      flags,
    );

late final _FwpmTransactionBegin0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 flags,
),
    int Function(
  int engineHandle,
  int flags,
)>('FwpmTransactionBegin0');

int FwpmTransactionCommit0(
  int engineHandle,
) =>
    _FwpmTransactionCommit0(
      engineHandle,
    );

late final _FwpmTransactionCommit0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
),
    int Function(
  int engineHandle,
)>('FwpmTransactionCommit0');

int FwpmvSwitchEventSubscribe0(
  int engineHandle,
  Pointer<FWPM_VSWITCH_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_VSWITCH_EVENT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> subscriptionHandle,
) =>
    _FwpmvSwitchEventSubscribe0(
      engineHandle,
      subscription,
      callback,
      context,
      subscriptionHandle,
    );

late final _FwpmvSwitchEventSubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<FWPM_VSWITCH_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_VSWITCH_EVENT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> subscriptionHandle,
),
    int Function(
  int engineHandle,
  Pointer<FWPM_VSWITCH_EVENT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<FWPM_VSWITCH_EVENT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> subscriptionHandle,
)>('FwpmvSwitchEventSubscribe0');

int FwpmvSwitchEventUnsubscribe0(
  int engineHandle,
  int subscriptionHandle,
) =>
    _FwpmvSwitchEventUnsubscribe0(
      engineHandle,
      subscriptionHandle,
    );

late final _FwpmvSwitchEventUnsubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr subscriptionHandle,
),
    int Function(
  int engineHandle,
  int subscriptionHandle,
)>('FwpmvSwitchEventUnsubscribe0');

int FwpmvSwitchEventsGetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _FwpmvSwitchEventsGetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _FwpmvSwitchEventsGetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('FwpmvSwitchEventsGetSecurityInfo0');

int FwpmvSwitchEventsSetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _FwpmvSwitchEventsSetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _FwpmvSwitchEventsSetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('FwpmvSwitchEventsSetSecurityInfo0');

int IPsecDospGetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _IPsecDospGetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _IPsecDospGetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('IPsecDospGetSecurityInfo0');

int IPsecDospGetStatistics0(
  int engineHandle,
  Pointer<IPSEC_DOSP_STATISTICS0> idpStatistics,
) =>
    _IPsecDospGetStatistics0(
      engineHandle,
      idpStatistics,
    );

late final _IPsecDospGetStatistics0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_DOSP_STATISTICS0> idpStatistics,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_DOSP_STATISTICS0> idpStatistics,
)>('IPsecDospGetStatistics0');

int IPsecDospSetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _IPsecDospSetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _IPsecDospSetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('IPsecDospSetSecurityInfo0');

int IPsecDospStateCreateEnumHandle0(
  int engineHandle,
  Pointer<IPSEC_DOSP_STATE_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _IPsecDospStateCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _IPsecDospStateCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_DOSP_STATE_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_DOSP_STATE_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('IPsecDospStateCreateEnumHandle0');

int IPsecDospStateDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _IPsecDospStateDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _IPsecDospStateDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('IPsecDospStateDestroyEnumHandle0');

int IPsecDospStateEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_DOSP_STATE0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _IPsecDospStateEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntries,
    );

late final _IPsecDospStateEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_DOSP_STATE0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_DOSP_STATE0>>> entries,
  Pointer<Uint32> numEntries,
)>('IPsecDospStateEnum0');

int IPsecGetStatistics0(
  int engineHandle,
  Pointer<IPSEC_STATISTICS0> ipsecStatistics,
) =>
    _IPsecGetStatistics0(
      engineHandle,
      ipsecStatistics,
    );

late final _IPsecGetStatistics0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_STATISTICS0> ipsecStatistics,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_STATISTICS0> ipsecStatistics,
)>('IPsecGetStatistics0');

int IPsecGetStatistics1(
  int engineHandle,
  Pointer<IPSEC_STATISTICS1> ipsecStatistics,
) =>
    _IPsecGetStatistics1(
      engineHandle,
      ipsecStatistics,
    );

late final _IPsecGetStatistics1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_STATISTICS1> ipsecStatistics,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_STATISTICS1> ipsecStatistics,
)>('IPsecGetStatistics1');

int IPsecKeyManagerAddAndRegister0(
  int engineHandle,
  Pointer<IPSEC_KEY_MANAGER0> keyManager,
  Pointer<IPSEC_KEY_MANAGER_CALLBACKS0> keyManagerCallbacks,
  Pointer<IntPtr> keyMgmtHandle,
) =>
    _IPsecKeyManagerAddAndRegister0(
      engineHandle,
      keyManager,
      keyManagerCallbacks,
      keyMgmtHandle,
    );

late final _IPsecKeyManagerAddAndRegister0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_KEY_MANAGER0> keyManager,
  Pointer<IPSEC_KEY_MANAGER_CALLBACKS0> keyManagerCallbacks,
  Pointer<IntPtr> keyMgmtHandle,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_KEY_MANAGER0> keyManager,
  Pointer<IPSEC_KEY_MANAGER_CALLBACKS0> keyManagerCallbacks,
  Pointer<IntPtr> keyMgmtHandle,
)>('IPsecKeyManagerAddAndRegister0');

int IPsecKeyManagerGetSecurityInfoByKey0(
  int engineHandle,
  Pointer reserved,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _IPsecKeyManagerGetSecurityInfoByKey0(
      engineHandle,
      reserved,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _IPsecKeyManagerGetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer reserved,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  Pointer reserved,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('IPsecKeyManagerGetSecurityInfoByKey0');

int IPsecKeyManagerSetSecurityInfoByKey0(
  int engineHandle,
  Pointer reserved,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _IPsecKeyManagerSetSecurityInfoByKey0(
      engineHandle,
      reserved,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _IPsecKeyManagerSetSecurityInfoByKey0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer reserved,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  Pointer reserved,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('IPsecKeyManagerSetSecurityInfoByKey0');

int IPsecKeyManagerUnregisterAndDelete0(
  int engineHandle,
  int keyMgmtHandle,
) =>
    _IPsecKeyManagerUnregisterAndDelete0(
      engineHandle,
      keyMgmtHandle,
    );

late final _IPsecKeyManagerUnregisterAndDelete0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr keyMgmtHandle,
),
    int Function(
  int engineHandle,
  int keyMgmtHandle,
)>('IPsecKeyManagerUnregisterAndDelete0');

int IPsecKeyManagersGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<IPSEC_KEY_MANAGER0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _IPsecKeyManagersGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _IPsecKeyManagersGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<IPSEC_KEY_MANAGER0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<IPSEC_KEY_MANAGER0>>> entries,
  Pointer<Uint32> numEntries,
)>('IPsecKeyManagersGet0');

int IPsecSaContextAddInbound0(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE0> inboundBundle,
) =>
    _IPsecSaContextAddInbound0(
      engineHandle,
      id,
      inboundBundle,
    );

late final _IPsecSaContextAddInbound0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<IPSEC_SA_BUNDLE0> inboundBundle,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE0> inboundBundle,
)>('IPsecSaContextAddInbound0');

int IPsecSaContextAddInbound1(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE1> inboundBundle,
) =>
    _IPsecSaContextAddInbound1(
      engineHandle,
      id,
      inboundBundle,
    );

late final _IPsecSaContextAddInbound1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<IPSEC_SA_BUNDLE1> inboundBundle,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE1> inboundBundle,
)>('IPsecSaContextAddInbound1');

int IPsecSaContextAddOutbound0(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE0> outboundBundle,
) =>
    _IPsecSaContextAddOutbound0(
      engineHandle,
      id,
      outboundBundle,
    );

late final _IPsecSaContextAddOutbound0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<IPSEC_SA_BUNDLE0> outboundBundle,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE0> outboundBundle,
)>('IPsecSaContextAddOutbound0');

int IPsecSaContextAddOutbound1(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE1> outboundBundle,
) =>
    _IPsecSaContextAddOutbound1(
      engineHandle,
      id,
      outboundBundle,
    );

late final _IPsecSaContextAddOutbound1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<IPSEC_SA_BUNDLE1> outboundBundle,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<IPSEC_SA_BUNDLE1> outboundBundle,
)>('IPsecSaContextAddOutbound1');

int IPsecSaContextCreate0(
  int engineHandle,
  Pointer<IPSEC_TRAFFIC0> outboundTraffic,
  Pointer<Uint64> inboundFilterId,
  Pointer<Uint64> id,
) =>
    _IPsecSaContextCreate0(
      engineHandle,
      outboundTraffic,
      inboundFilterId,
      id,
    );

late final _IPsecSaContextCreate0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_TRAFFIC0> outboundTraffic,
  Pointer<Uint64> inboundFilterId,
  Pointer<Uint64> id,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_TRAFFIC0> outboundTraffic,
  Pointer<Uint64> inboundFilterId,
  Pointer<Uint64> id,
)>('IPsecSaContextCreate0');

int IPsecSaContextCreate1(
  int engineHandle,
  Pointer<IPSEC_TRAFFIC1> outboundTraffic,
  Pointer<IPSEC_VIRTUAL_IF_TUNNEL_INFO0> virtualIfTunnelInfo,
  Pointer<Uint64> inboundFilterId,
  Pointer<Uint64> id,
) =>
    _IPsecSaContextCreate1(
      engineHandle,
      outboundTraffic,
      virtualIfTunnelInfo,
      inboundFilterId,
      id,
    );

late final _IPsecSaContextCreate1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_TRAFFIC1> outboundTraffic,
  Pointer<IPSEC_VIRTUAL_IF_TUNNEL_INFO0> virtualIfTunnelInfo,
  Pointer<Uint64> inboundFilterId,
  Pointer<Uint64> id,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_TRAFFIC1> outboundTraffic,
  Pointer<IPSEC_VIRTUAL_IF_TUNNEL_INFO0> virtualIfTunnelInfo,
  Pointer<Uint64> inboundFilterId,
  Pointer<Uint64> id,
)>('IPsecSaContextCreate1');

int IPsecSaContextCreateEnumHandle0(
  int engineHandle,
  Pointer<IPSEC_SA_CONTEXT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _IPsecSaContextCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _IPsecSaContextCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_SA_CONTEXT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_SA_CONTEXT_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('IPsecSaContextCreateEnumHandle0');

int IPsecSaContextDeleteById0(
  int engineHandle,
  int id,
) =>
    _IPsecSaContextDeleteById0(
      engineHandle,
      id,
    );

late final _IPsecSaContextDeleteById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
),
    int Function(
  int engineHandle,
  int id,
)>('IPsecSaContextDeleteById0');

int IPsecSaContextDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _IPsecSaContextDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _IPsecSaContextDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('IPsecSaContextDestroyEnumHandle0');

int IPsecSaContextEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _IPsecSaContextEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _IPsecSaContextEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('IPsecSaContextEnum0');

int IPsecSaContextEnum1(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _IPsecSaContextEnum1(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _IPsecSaContextEnum1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT1>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('IPsecSaContextEnum1');

int IPsecSaContextExpire0(
  int engineHandle,
  int id,
) =>
    _IPsecSaContextExpire0(
      engineHandle,
      id,
    );

late final _IPsecSaContextExpire0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
),
    int Function(
  int engineHandle,
  int id,
)>('IPsecSaContextExpire0');

int IPsecSaContextGetById0(
  int engineHandle,
  int id,
  Pointer<Pointer<IPSEC_SA_CONTEXT0>> saContext,
) =>
    _IPsecSaContextGetById0(
      engineHandle,
      id,
      saContext,
    );

late final _IPsecSaContextGetById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<IPSEC_SA_CONTEXT0>> saContext,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<IPSEC_SA_CONTEXT0>> saContext,
)>('IPsecSaContextGetById0');

int IPsecSaContextGetById1(
  int engineHandle,
  int id,
  Pointer<Pointer<IPSEC_SA_CONTEXT1>> saContext,
) =>
    _IPsecSaContextGetById1(
      engineHandle,
      id,
      saContext,
    );

late final _IPsecSaContextGetById1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<IPSEC_SA_CONTEXT1>> saContext,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<IPSEC_SA_CONTEXT1>> saContext,
)>('IPsecSaContextGetById1');

int IPsecSaContextGetSpi0(
  int engineHandle,
  int id,
  Pointer<IPSEC_GETSPI0> getSpi,
  Pointer<Uint32> inboundSpi,
) =>
    _IPsecSaContextGetSpi0(
      engineHandle,
      id,
      getSpi,
      inboundSpi,
    );

late final _IPsecSaContextGetSpi0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<IPSEC_GETSPI0> getSpi,
  Pointer<Uint32> inboundSpi,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<IPSEC_GETSPI0> getSpi,
  Pointer<Uint32> inboundSpi,
)>('IPsecSaContextGetSpi0');

int IPsecSaContextGetSpi1(
  int engineHandle,
  int id,
  Pointer<IPSEC_GETSPI1> getSpi,
  Pointer<Uint32> inboundSpi,
) =>
    _IPsecSaContextGetSpi1(
      engineHandle,
      id,
      getSpi,
      inboundSpi,
    );

late final _IPsecSaContextGetSpi1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<IPSEC_GETSPI1> getSpi,
  Pointer<Uint32> inboundSpi,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<IPSEC_GETSPI1> getSpi,
  Pointer<Uint32> inboundSpi,
)>('IPsecSaContextGetSpi1');

int IPsecSaContextSetSpi0(
  int engineHandle,
  int id,
  Pointer<IPSEC_GETSPI1> getSpi,
  int inboundSpi,
) =>
    _IPsecSaContextSetSpi0(
      engineHandle,
      id,
      getSpi,
      inboundSpi,
    );

late final _IPsecSaContextSetSpi0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<IPSEC_GETSPI1> getSpi,
  Uint32 inboundSpi,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<IPSEC_GETSPI1> getSpi,
  int inboundSpi,
)>('IPsecSaContextSetSpi0');

int IPsecSaContextSubscribe0(
  int engineHandle,
  Pointer<IPSEC_SA_CONTEXT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<IPSEC_SA_CONTEXT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
) =>
    _IPsecSaContextSubscribe0(
      engineHandle,
      subscription,
      callback,
      context,
      eventsHandle,
    );

late final _IPsecSaContextSubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_SA_CONTEXT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<IPSEC_SA_CONTEXT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_SA_CONTEXT_SUBSCRIPTION0> subscription,
  Pointer<NativeFunction<IPSEC_SA_CONTEXT_CALLBACK0>> callback,
  Pointer context,
  Pointer<IntPtr> eventsHandle,
)>('IPsecSaContextSubscribe0');

int IPsecSaContextSubscriptionsGet0(
  int engineHandle,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
) =>
    _IPsecSaContextSubscriptionsGet0(
      engineHandle,
      entries,
      numEntries,
    );

late final _IPsecSaContextSubscriptionsGet0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
),
    int Function(
  int engineHandle,
  Pointer<Pointer<Pointer<IPSEC_SA_CONTEXT_SUBSCRIPTION0>>> entries,
  Pointer<Uint32> numEntries,
)>('IPsecSaContextSubscriptionsGet0');

int IPsecSaContextUnsubscribe0(
  int engineHandle,
  int eventsHandle,
) =>
    _IPsecSaContextUnsubscribe0(
      engineHandle,
      eventsHandle,
    );

late final _IPsecSaContextUnsubscribe0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr eventsHandle,
),
    int Function(
  int engineHandle,
  int eventsHandle,
)>('IPsecSaContextUnsubscribe0');

int IPsecSaContextUpdate0(
  int engineHandle,
  int flags,
  Pointer<IPSEC_SA_CONTEXT1> newValues,
) =>
    _IPsecSaContextUpdate0(
      engineHandle,
      flags,
      newValues,
    );

late final _IPsecSaContextUpdate0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 flags,
  Pointer<IPSEC_SA_CONTEXT1> newValues,
),
    int Function(
  int engineHandle,
  int flags,
  Pointer<IPSEC_SA_CONTEXT1> newValues,
)>('IPsecSaContextUpdate0');

int IPsecSaCreateEnumHandle0(
  int engineHandle,
  Pointer<IPSEC_SA_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _IPsecSaCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _IPsecSaCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IPSEC_SA_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<IPSEC_SA_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('IPsecSaCreateEnumHandle0');

int IPsecSaDbGetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _IPsecSaDbGetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _IPsecSaDbGetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('IPsecSaDbGetSecurityInfo0');

int IPsecSaDbSetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _IPsecSaDbSetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _IPsecSaDbSetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('IPsecSaDbSetSecurityInfo0');

int IPsecSaDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _IPsecSaDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _IPsecSaDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('IPsecSaDestroyEnumHandle0');

int IPsecSaEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_DETAILS0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _IPsecSaEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _IPsecSaEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_DETAILS0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_DETAILS0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('IPsecSaEnum0');

int IPsecSaEnum1(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_DETAILS1>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _IPsecSaEnum1(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _IPsecSaEnum1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_DETAILS1>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IPSEC_SA_DETAILS1>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('IPsecSaEnum1');

int IkeextGetStatistics0(
  int engineHandle,
  Pointer<IKEEXT_STATISTICS0> ikeextStatistics,
) =>
    _IkeextGetStatistics0(
      engineHandle,
      ikeextStatistics,
    );

late final _IkeextGetStatistics0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IKEEXT_STATISTICS0> ikeextStatistics,
),
    int Function(
  int engineHandle,
  Pointer<IKEEXT_STATISTICS0> ikeextStatistics,
)>('IkeextGetStatistics0');

int IkeextGetStatistics1(
  int engineHandle,
  Pointer<IKEEXT_STATISTICS1> ikeextStatistics,
) =>
    _IkeextGetStatistics1(
      engineHandle,
      ikeextStatistics,
    );

late final _IkeextGetStatistics1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IKEEXT_STATISTICS1> ikeextStatistics,
),
    int Function(
  int engineHandle,
  Pointer<IKEEXT_STATISTICS1> ikeextStatistics,
)>('IkeextGetStatistics1');

int IkeextSaCreateEnumHandle0(
  int engineHandle,
  Pointer<IKEEXT_SA_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
) =>
    _IkeextSaCreateEnumHandle0(
      engineHandle,
      enumTemplate,
      enumHandle,
    );

late final _IkeextSaCreateEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Pointer<IKEEXT_SA_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
),
    int Function(
  int engineHandle,
  Pointer<IKEEXT_SA_ENUM_TEMPLATE0> enumTemplate,
  Pointer<IntPtr> enumHandle,
)>('IkeextSaCreateEnumHandle0');

int IkeextSaDbGetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
) =>
    _IkeextSaDbGetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
      securityDescriptor,
    );

late final _IkeextSaDbGetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<IntPtr> sidOwner,
  Pointer<IntPtr> sidGroup,
  Pointer<Pointer<ACL>> dacl,
  Pointer<Pointer<ACL>> sacl,
  Pointer<Pointer<SECURITY_DESCRIPTOR>> securityDescriptor,
)>('IkeextSaDbGetSecurityInfo0');

int IkeextSaDbSetSecurityInfo0(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
) =>
    _IkeextSaDbSetSecurityInfo0(
      engineHandle,
      securityInfo,
      sidOwner,
      sidGroup,
      dacl,
      sacl,
    );

late final _IkeextSaDbSetSecurityInfo0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint32 securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
),
    int Function(
  int engineHandle,
  int securityInfo,
  Pointer<SID> sidOwner,
  Pointer<SID> sidGroup,
  Pointer<ACL> dacl,
  Pointer<ACL> sacl,
)>('IkeextSaDbSetSecurityInfo0');

int IkeextSaDeleteById0(
  int engineHandle,
  int id,
) =>
    _IkeextSaDeleteById0(
      engineHandle,
      id,
    );

late final _IkeextSaDeleteById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
),
    int Function(
  int engineHandle,
  int id,
)>('IkeextSaDeleteById0');

int IkeextSaDestroyEnumHandle0(
  int engineHandle,
  int enumHandle,
) =>
    _IkeextSaDestroyEnumHandle0(
      engineHandle,
      enumHandle,
    );

late final _IkeextSaDestroyEnumHandle0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
),
    int Function(
  int engineHandle,
  int enumHandle,
)>('IkeextSaDestroyEnumHandle0');

int IkeextSaEnum0(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS0>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _IkeextSaEnum0(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _IkeextSaEnum0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS0>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS0>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('IkeextSaEnum0');

int IkeextSaEnum1(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS1>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _IkeextSaEnum1(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _IkeextSaEnum1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS1>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS1>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('IkeextSaEnum1');

int IkeextSaEnum2(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS2>>> entries,
  Pointer<Uint32> numEntriesReturned,
) =>
    _IkeextSaEnum2(
      engineHandle,
      enumHandle,
      numEntriesRequested,
      entries,
      numEntriesReturned,
    );

late final _IkeextSaEnum2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  IntPtr enumHandle,
  Uint32 numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS2>>> entries,
  Pointer<Uint32> numEntriesReturned,
),
    int Function(
  int engineHandle,
  int enumHandle,
  int numEntriesRequested,
  Pointer<Pointer<Pointer<IKEEXT_SA_DETAILS2>>> entries,
  Pointer<Uint32> numEntriesReturned,
)>('IkeextSaEnum2');

int IkeextSaGetById0(
  int engineHandle,
  int id,
  Pointer<Pointer<IKEEXT_SA_DETAILS0>> sa,
) =>
    _IkeextSaGetById0(
      engineHandle,
      id,
      sa,
    );

late final _IkeextSaGetById0 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<Pointer<IKEEXT_SA_DETAILS0>> sa,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<Pointer<IKEEXT_SA_DETAILS0>> sa,
)>('IkeextSaGetById0');

int IkeextSaGetById1(
  int engineHandle,
  int id,
  Pointer<GUID> saLookupContext,
  Pointer<Pointer<IKEEXT_SA_DETAILS1>> sa,
) =>
    _IkeextSaGetById1(
      engineHandle,
      id,
      saLookupContext,
      sa,
    );

late final _IkeextSaGetById1 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<GUID> saLookupContext,
  Pointer<Pointer<IKEEXT_SA_DETAILS1>> sa,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<GUID> saLookupContext,
  Pointer<Pointer<IKEEXT_SA_DETAILS1>> sa,
)>('IkeextSaGetById1');

int IkeextSaGetById2(
  int engineHandle,
  int id,
  Pointer<GUID> saLookupContext,
  Pointer<Pointer<IKEEXT_SA_DETAILS2>> sa,
) =>
    _IkeextSaGetById2(
      engineHandle,
      id,
      saLookupContext,
      sa,
    );

late final _IkeextSaGetById2 = _fwpuclnt.lookupFunction<
    Uint32 Function(
  IntPtr engineHandle,
  Uint64 id,
  Pointer<GUID> saLookupContext,
  Pointer<Pointer<IKEEXT_SA_DETAILS2>> sa,
),
    int Function(
  int engineHandle,
  int id,
  Pointer<GUID> saLookupContext,
  Pointer<Pointer<IKEEXT_SA_DETAILS2>> sa,
)>('IkeextSaGetById2');
