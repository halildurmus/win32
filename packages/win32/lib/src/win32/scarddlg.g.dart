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

/// Displays the smart card Select Card dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winscard/nf-winscard-scarduidlgselectcardw>.
///
/// {@category winscard}
@pragma('vm:prefer-inline')
int SCardUIDlgSelectCard(Pointer<OPENCARDNAME_EX> param0) =>
    _SCardUIDlgSelectCard(param0);

@Native<Int32 Function(Pointer<OPENCARDNAME_EX>)>(
  symbol: 'SCardUIDlgSelectCardW',
)
external int _SCardUIDlgSelectCard(Pointer<OPENCARDNAME_EX> param0);
