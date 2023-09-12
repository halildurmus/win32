// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';

/// A P/Invoke method representation.
class PinvokeMap extends TokenObject {
  final int importDllToken;
  final String importName;
  final String moduleName;

  final int _attributes;

  const PinvokeMap(super.scope, super.token, this._attributes, this.importName,
      this.importDllToken, this.moduleName);

  /// Creates a P/Invoke method representation object from a provided token.
  factory PinvokeMap.fromToken(Scope scope, int token) {
    assert([TokenType.fieldDef, TokenType.methodDef]
        .contains(TokenType.fromToken(token)));

    return using((Arena arena) {
      final pdwMappingFlags = arena<DWORD>();
      final szImportName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchImportName = arena<ULONG>();
      final ptkImportDLL = arena<mdModuleRef>();
      final szModuleName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchModuleName = arena<ULONG>();

      final reader = scope.reader;
      var hr = reader.getPinvokeMap(token, pdwMappingFlags, szImportName,
          stringBufferSize, pchImportName, ptkImportDLL);
      if (FAILED(hr)) throw WindowsException(hr);

      hr = reader.getModuleRefProps(
          ptkImportDLL.value, szModuleName, stringBufferSize, pchModuleName);

      final moduleName = SUCCEEDED(hr) ? szModuleName.toDartString() : '';

      return PinvokeMap(scope, token, pdwMappingFlags.value,
          szImportName.toDartString(), ptkImportDLL.value, moduleName);
    });
  }

  /// Returns true if each member name is used as specified.
  bool get isNoMangle =>
      _attributes & CorPinvokeMap.pmNoMangle == CorPinvokeMap.pmNoMangle;

  /// Returns true if the callee is allowed to call the Win32 SetLastError
  /// function before returning from the attributed method.
  bool get supportsLastError =>
      _attributes & CorPinvokeMap.pmSupportsLastError ==
      CorPinvokeMap.pmSupportsLastError;

  /// Returns details of the string marshalling convention used for this member.
  StringMarshalConvention get stringMarshalConvention =>
      switch (_attributes & CorPinvokeMap.pmCharSetMask) {
        CorPinvokeMap.pmCharSetNotSpec => StringMarshalConvention.notSpecified,
        CorPinvokeMap.pmCharSetAnsi => StringMarshalConvention.ansi,
        CorPinvokeMap.pmCharSetUnicode => StringMarshalConvention.unicode,
        CorPinvokeMap.pmCharSetAuto => StringMarshalConvention.auto,
        _ => throw const WinmdException(
            'Unable to identify string marshal convention.')
      };

  /// Returns the preferred convention for mapping of Unicode characters that
  /// lack an exact match in the ANSI character set.
  BestFit get bestFitConvention =>
      switch (_attributes & CorPinvokeMap.pmBestFitMask) {
        CorPinvokeMap.pmBestFitUseAssem => BestFit.useAssem,
        CorPinvokeMap.pmBestFitEnabled => BestFit.enabled,
        CorPinvokeMap.pmBestFitDisabled => BestFit.disabled,
        _ =>
          throw const WinmdException('Unable to identify best fit convention.')
      };

  /// Returns the preferred convention for how the interop marshaler should
  /// respond when it encounters an unmappable character.
  ThrowOnUnmappableChar get throwOnUnmappableCharConvention =>
      switch (_attributes & CorPinvokeMap.pmThrowOnUnmappableCharMask) {
        CorPinvokeMap.pmThrowOnUnmappableCharUseAssem =>
          ThrowOnUnmappableChar.useAssem,
        CorPinvokeMap.pmThrowOnUnmappableCharEnabled =>
          ThrowOnUnmappableChar.enabled,
        CorPinvokeMap.pmThrowOnUnmappableCharDisabled =>
          ThrowOnUnmappableChar.disabled,
        _ => throw const WinmdException(
            'Unable to identify convention for handling unmappable characters.')
      };

  /// Returns the calling convention.
  CallingConvention get callingConvention =>
      switch (_attributes & CorPinvokeMap.pmCallConvMask) {
        CorPinvokeMap.pmCallConvWinapi => CallingConvention.winApi,
        CorPinvokeMap.pmCallConvCdecl => CallingConvention.cdecl,
        CorPinvokeMap.pmCallConvStdcall => CallingConvention.stdcall,
        CorPinvokeMap.pmCallConvThiscall => CallingConvention.thiscall,
        CorPinvokeMap.pmCallConvFastcall => CallingConvention.fastcall,
        _ =>
          throw const WinmdException('Unable to identify calling convention.')
      };
}
