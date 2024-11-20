// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Frees the memory allocated for the specified DSREG_JOIN_INFO structure,
/// which contains join information for a tenant and which you retrieved by
/// calling the NetGetAadJoinInformation function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/nf-lmjoin-netfreeaadjoininformation>.
///
/// {@category netapi32}
@pragma('vm:prefer-inline')
void NetFreeAadJoinInformation(Pointer<DSREG_JOIN_INFO>? pJoinInfo) =>
    _NetFreeAadJoinInformation(pJoinInfo ?? nullptr);

@Native<Void Function(Pointer<DSREG_JOIN_INFO>)>(
  symbol: 'NetFreeAadJoinInformation',
)
external void _NetFreeAadJoinInformation(Pointer<DSREG_JOIN_INFO> pJoinInfo);

/// Retrieves the join information for the specified tenant.
///
/// This function examines the join information for Microsoft Azure Active
/// Directory and the work account that the current user added.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/lmjoin/nf-lmjoin-netgetaadjoininformation>.
///
/// {@category netapi32}
Pointer<DSREG_JOIN_INFO> NetGetAadJoinInformation(PCWSTR? pcszTenantId) {
  final ppJoinInfo = loggingCalloc<Pointer<DSREG_JOIN_INFO>>();
  final hr$ = HRESULT(
    _NetGetAadJoinInformation(pcszTenantId ?? nullptr, ppJoinInfo),
  );
  if (hr$.isError) {
    free(ppJoinInfo);
    throw WindowsException(hr$);
  }
  final result$ = ppJoinInfo.value;
  free(ppJoinInfo);
  return result$;
}

@Native<Int32 Function(PCWSTR, Pointer<Pointer<DSREG_JOIN_INFO>>)>(
  symbol: 'NetGetAadJoinInformation',
)
external int _NetGetAadJoinInformation(
  PCWSTR pcszTenantId,
  Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo,
);
