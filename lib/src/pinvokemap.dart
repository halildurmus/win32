import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'models/models.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'win32/win32.dart';

/// A P/Invoke method representation.
class PinvokeMap extends TokenObject {
  const PinvokeMap(
    super.scope,
    super.token,
    this._attributes,
    this.importName,
    this.importDllToken,
    this.moduleName,
  );

  /// Creates a P/Invoke method representation object from a provided token.
  factory PinvokeMap.fromToken(Scope scope, int token) {
    assert(
      [
        TokenType.fieldDef,
        TokenType.methodDef,
      ].contains(TokenType.fromToken(token)),
      'Token $token is not a field or method definition token',
    );

    return using((arena) {
      final pdwMappingFlags = arena<DWORD>();
      final szImportName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchImportName = arena<ULONG>();
      final ptkImportDLL = arena<mdModuleRef>();
      final szModuleName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
      final pchModuleName = arena<ULONG>();

      scope.reader.getPinvokeMap(
        token,
        pdwMappingFlags,
        szImportName,
        stringBufferSize,
        pchImportName,
        ptkImportDLL,
      );

      String moduleName;
      try {
        scope.reader.getModuleRefProps(
          ptkImportDLL.value,
          szModuleName,
          stringBufferSize,
          pchModuleName,
        );
        moduleName = szModuleName.toDartString();
      } on WindowsException {
        moduleName = '';
      }

      return PinvokeMap(
        scope,
        token,
        pdwMappingFlags.value,
        szImportName.toDartString(),
        ptkImportDLL.value,
        moduleName,
      );
    });
  }

  final int importDllToken;
  final String importName;
  final String moduleName;

  final int _attributes;

  /// Returns true if each member name is used as specified.
  bool get isNoMangle => _attributes & pmNoMangle == pmNoMangle;

  /// Returns true if the callee is allowed to call the Win32 SetLastError
  /// function before returning from the attributed method.
  bool get supportsLastError =>
      _attributes & pmSupportsLastError == pmSupportsLastError;

  /// Returns details of the string marshalling convention used for this member.
  StringMarshalConvention get stringMarshalConvention => switch (_attributes &
      pmCharSetMask) {
    pmCharSetNotSpec => StringMarshalConvention.notSpecified,
    pmCharSetAnsi => StringMarshalConvention.ansi,
    pmCharSetUnicode => StringMarshalConvention.unicode,
    pmCharSetAuto => StringMarshalConvention.auto,
    _ =>
      throw const WinmdException(
        'Unable to identify string marshal convention.',
      ),
  };

  /// Returns the preferred convention for mapping of Unicode characters that
  /// lack an exact match in the ANSI character set.
  BestFit get bestFitConvention => switch (_attributes & pmBestFitMask) {
    pmBestFitUseAssem => BestFit.useAssem,
    pmBestFitEnabled => BestFit.enabled,
    pmBestFitDisabled => BestFit.disabled,
    _ => throw const WinmdException('Unable to identify best fit convention.'),
  };

  /// Returns the preferred convention for how the interop marshaler should
  /// respond when it encounters an unmappable character.
  ThrowOnUnmappableChar get throwOnUnmappableCharConvention =>
      switch (_attributes & pmThrowOnUnmappableCharMask) {
        pmThrowOnUnmappableCharUseAssem => ThrowOnUnmappableChar.useAssem,
        pmThrowOnUnmappableCharEnabled => ThrowOnUnmappableChar.enabled,
        pmThrowOnUnmappableCharDisabled => ThrowOnUnmappableChar.disabled,
        _ =>
          throw const WinmdException(
            'Unable to identify convention for handling unmappable characters.',
          ),
      };

  /// Returns the calling convention.
  CallingConvention get callingConvention => switch (_attributes &
      pmCallConvMask) {
    pmCallConvWinapi => CallingConvention.winApi,
    pmCallConvCdecl => CallingConvention.cdecl,
    pmCallConvStdcall => CallingConvention.stdcall,
    pmCallConvThiscall => CallingConvention.thiscall,
    pmCallConvFastcall => CallingConvention.fastcall,
    _ => throw const WinmdException('Unable to identify calling convention.'),
  };
}
