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

/// Attempts to open a communication device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/nf-winbase-opencommport>.
///
/// {@category onecore}
@pragma('vm:prefer-inline')
int OpenCommPort(
  int uPortNumber,
  int dwDesiredAccess,
  int dwFlagsAndAttributes,
) => _OpenCommPort(uPortNumber, dwDesiredAccess, dwFlagsAndAttributes);

@Native<HANDLE Function(Uint32, Uint32, Uint32)>(symbol: 'OpenCommPort')
external int _OpenCommPort(
  int uPortNumber,
  int dwDesiredAccess,
  int dwFlagsAndAttributes,
);
