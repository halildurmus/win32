// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _dnsapi = DynamicLibrary.open('dnsapi.dll');

/// Used to remove a registered service.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windns/nf-windns-dnsservicederegister>.
///
/// {@category dnsapi}
Win32Result<int> DnsServiceDeRegister(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL>? pCancel,
) {
  resolveGetLastError();
  final result_ = _DnsServiceDeRegister(pRequest, pCancel ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _DnsServiceDeRegister = _dnsapi
    .lookupFunction<
      Uint32 Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      ),
      int Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      )
    >('DnsServiceDeRegister');

/// Used to register a discoverable service on this device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windns/nf-windns-dnsserviceregister>.
///
/// {@category dnsapi}
Win32Result<int> DnsServiceRegister(
  Pointer<DNS_SERVICE_REGISTER_REQUEST> pRequest,
  Pointer<DNS_SERVICE_CANCEL>? pCancel,
) {
  resolveGetLastError();
  final result_ = _DnsServiceRegister(pRequest, pCancel ?? nullptr);
  return .new(value: result_, error: GetLastError());
}

final _DnsServiceRegister = _dnsapi
    .lookupFunction<
      Uint32 Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      ),
      int Function(
        Pointer<DNS_SERVICE_REGISTER_REQUEST>,
        Pointer<DNS_SERVICE_CANCEL>,
      )
    >('DnsServiceRegister');

/// Used to cancel a pending registration operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/windns/nf-windns-dnsserviceregistercancel>.
///
/// {@category dnsapi}
@pragma('vm:prefer-inline')
int DnsServiceRegisterCancel(Pointer<DNS_SERVICE_CANCEL> pCancelHandle) =>
    _DnsServiceRegisterCancel(pCancelHandle);

final _DnsServiceRegisterCancel = _dnsapi
    .lookupFunction<
      Uint32 Function(Pointer<DNS_SERVICE_CANCEL>),
      int Function(Pointer<DNS_SERVICE_CANCEL>)
    >('DnsServiceRegisterCancel');
