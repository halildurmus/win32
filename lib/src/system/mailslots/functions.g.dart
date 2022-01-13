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
import '../../security/structs.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int CreateMailslot(
  Pointer<Utf16> lpName,
  int nMaxMessageSize,
  int lReadTimeout,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
) =>
    _CreateMailslot(
      lpName,
      nMaxMessageSize,
      lReadTimeout,
      lpSecurityAttributes,
    );

late final _CreateMailslot = _kernel32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpName,
  Uint32 nMaxMessageSize,
  Uint32 lReadTimeout,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
),
    int Function(
  Pointer<Utf16> lpName,
  int nMaxMessageSize,
  int lReadTimeout,
  Pointer<SECURITY_ATTRIBUTES> lpSecurityAttributes,
)>('CreateMailslotW');

int GetMailslotInfo(
  int hMailslot,
  Pointer<Uint32> lpMaxMessageSize,
  Pointer<Uint32> lpNextSize,
  Pointer<Uint32> lpMessageCount,
  Pointer<Uint32> lpReadTimeout,
) =>
    _GetMailslotInfo(
      hMailslot,
      lpMaxMessageSize,
      lpNextSize,
      lpMessageCount,
      lpReadTimeout,
    );

late final _GetMailslotInfo = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hMailslot,
  Pointer<Uint32> lpMaxMessageSize,
  Pointer<Uint32> lpNextSize,
  Pointer<Uint32> lpMessageCount,
  Pointer<Uint32> lpReadTimeout,
),
    int Function(
  int hMailslot,
  Pointer<Uint32> lpMaxMessageSize,
  Pointer<Uint32> lpNextSize,
  Pointer<Uint32> lpMessageCount,
  Pointer<Uint32> lpReadTimeout,
)>('GetMailslotInfo');

int SetMailslotInfo(
  int hMailslot,
  int lReadTimeout,
) =>
    _SetMailslotInfo(
      hMailslot,
      lReadTimeout,
    );

late final _SetMailslotInfo = _kernel32.lookupFunction<
    Int32 Function(
  IntPtr hMailslot,
  Uint32 lReadTimeout,
),
    int Function(
  int hMailslot,
  int lReadTimeout,
)>('SetMailslotInfo');
