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
import '../../networkmanagement/netshell/structs.g.dart'; // -----------------------------------------------------------------------

// netsh.dll
// -----------------------------------------------------------------------
final _netsh = DynamicLibrary.open('netsh.dll');

int MatchEnumTag(
  int hModule,
  Pointer<Utf16> pwcArg,
  int dwNumArg,
  Pointer<TOKEN_VALUE> pEnumTable,
  Pointer<Uint32> pdwValue,
) =>
    _MatchEnumTag(
      hModule,
      pwcArg,
      dwNumArg,
      pEnumTable,
      pdwValue,
    );

late final _MatchEnumTag = _netsh.lookupFunction<
    Uint32 Function(
  IntPtr hModule,
  Pointer<Utf16> pwcArg,
  Uint32 dwNumArg,
  Pointer<TOKEN_VALUE> pEnumTable,
  Pointer<Uint32> pdwValue,
),
    int Function(
  int hModule,
  Pointer<Utf16> pwcArg,
  int dwNumArg,
  Pointer<TOKEN_VALUE> pEnumTable,
  Pointer<Uint32> pdwValue,
)>('MatchEnumTag');

int MatchToken(
  Pointer<Utf16> pwszUserToken,
  Pointer<Utf16> pwszCmdToken,
) =>
    _MatchToken(
      pwszUserToken,
      pwszCmdToken,
    );

late final _MatchToken = _netsh.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszUserToken,
  Pointer<Utf16> pwszCmdToken,
),
    int Function(
  Pointer<Utf16> pwszUserToken,
  Pointer<Utf16> pwszCmdToken,
)>('MatchToken');

int PreprocessCommand(
  int hModule,
  Pointer<Pointer<Utf16>> ppwcArguments,
  int dwCurrentIndex,
  int dwArgCount,
  Pointer<TAG_TYPE> pttTags,
  int dwTagCount,
  int dwMinArgs,
  int dwMaxArgs,
  Pointer<Uint32> pdwTagType,
) =>
    _PreprocessCommand(
      hModule,
      ppwcArguments,
      dwCurrentIndex,
      dwArgCount,
      pttTags,
      dwTagCount,
      dwMinArgs,
      dwMaxArgs,
      pdwTagType,
    );

late final _PreprocessCommand = _netsh.lookupFunction<
    Uint32 Function(
  IntPtr hModule,
  Pointer<Pointer<Utf16>> ppwcArguments,
  Uint32 dwCurrentIndex,
  Uint32 dwArgCount,
  Pointer<TAG_TYPE> pttTags,
  Uint32 dwTagCount,
  Uint32 dwMinArgs,
  Uint32 dwMaxArgs,
  Pointer<Uint32> pdwTagType,
),
    int Function(
  int hModule,
  Pointer<Pointer<Utf16>> ppwcArguments,
  int dwCurrentIndex,
  int dwArgCount,
  Pointer<TAG_TYPE> pttTags,
  int dwTagCount,
  int dwMinArgs,
  int dwMaxArgs,
  Pointer<Uint32> pdwTagType,
)>('PreprocessCommand');

int PrintError(
  int hModule,
  int dwErrId,
) =>
    _PrintError(
      hModule,
      dwErrId,
    );

late final _PrintError = _netsh.lookupFunction<
    Uint32 Function(
  IntPtr hModule,
  Uint32 dwErrId,
),
    int Function(
  int hModule,
  int dwErrId,
)>('PrintError');

int PrintMessage(
  Pointer<Utf16> pwszFormat,
) =>
    _PrintMessage(
      pwszFormat,
    );

late final _PrintMessage = _netsh.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszFormat,
),
    int Function(
  Pointer<Utf16> pwszFormat,
)>('PrintMessage');

int PrintMessageFromModule(
  int hModule,
  int dwMsgId,
) =>
    _PrintMessageFromModule(
      hModule,
      dwMsgId,
    );

late final _PrintMessageFromModule = _netsh.lookupFunction<
    Uint32 Function(
  IntPtr hModule,
  Uint32 dwMsgId,
),
    int Function(
  int hModule,
  int dwMsgId,
)>('PrintMessageFromModule');

int RegisterContext(
  Pointer<NS_CONTEXT_ATTRIBUTES> pChildContext,
) =>
    _RegisterContext(
      pChildContext,
    );

late final _RegisterContext = _netsh.lookupFunction<
    Uint32 Function(
  Pointer<NS_CONTEXT_ATTRIBUTES> pChildContext,
),
    int Function(
  Pointer<NS_CONTEXT_ATTRIBUTES> pChildContext,
)>('RegisterContext');

int RegisterHelper(
  Pointer<GUID> pguidParentContext,
  Pointer<NS_HELPER_ATTRIBUTES> pfnRegisterSubContext,
) =>
    _RegisterHelper(
      pguidParentContext,
      pfnRegisterSubContext,
    );

late final _RegisterHelper = _netsh.lookupFunction<
    Uint32 Function(
  Pointer<GUID> pguidParentContext,
  Pointer<NS_HELPER_ATTRIBUTES> pfnRegisterSubContext,
),
    int Function(
  Pointer<GUID> pguidParentContext,
  Pointer<NS_HELPER_ATTRIBUTES> pfnRegisterSubContext,
)>('RegisterHelper');
