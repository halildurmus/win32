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

final _scarddlg = DynamicLibrary.open('scarddlg.dll');

/// Displays the smart card Select Card dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scarduidlgselectcardw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardUIDlgSelectCard(Pointer<OPENCARDNAME_EX> param0) =>
    _SCardUIDlgSelectCard(param0);

final _SCardUIDlgSelectCard = _scarddlg
    .lookupFunction<
      Int32 Function(Pointer<OPENCARDNAME_EX>),
      int Function(Pointer<OPENCARDNAME_EX>)
    >('SCardUIDlgSelectCardW');
