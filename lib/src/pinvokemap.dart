import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/constants.dart';
import 'scope.dart';
import 'type_aliases.dart';
import 'utils/exception.dart';

/// Convention for marshalling P/Invoke function strings.
enum StringMarshalConvention { notSpecified, ansi, unicode, auto }

/// Convention for mapping Unicode characters in P/Invoke calls.
enum BestFit { useAssem, enabled, disabled }

/// Convention for how the interop marshaler should respond to an unmappable
/// character.
enum ThrowOnUnmappableChar { useAssem, enabled, disabled }

/// Platform calling convention.
enum CallingConvention { winApi, cdecl, stdcall, thiscall, fastcall }

/// A P/Invoke method representation.
class PinvokeMap extends TokenObject {
  final int importDllToken;
  final String importName;
  final String moduleName;

  final int _attributes;

  const PinvokeMap(Scope scope, int token, this._attributes, this.importName,
      this.importDllToken, this.moduleName)
      : super(scope, token);

  /// Creates a P/Invoke method representation object from a provided token.
  factory PinvokeMap.fromToken(Scope scope, int token) {
    final pdwMappingFlags = calloc<DWORD>();
    final szImportName = wsalloc(MAX_STRING_SIZE);
    final pchImportName = calloc<ULONG>();
    final ptkImportDLL = calloc<mdModuleRef>();
    final szModuleName = wsalloc(MAX_STRING_SIZE);
    final pchModuleName = calloc<ULONG>();

    try {
      final reader = scope.reader;
      var hr = reader.GetPinvokeMap(token, pdwMappingFlags, szImportName,
          MAX_STRING_SIZE, pchImportName, ptkImportDLL);
      if (SUCCEEDED(hr)) {
        hr = reader.GetModuleRefProps(
            ptkImportDLL.value, szModuleName, MAX_STRING_SIZE, pchModuleName);

        final moduleName = SUCCEEDED(hr) ? szModuleName.toDartString() : '';

        return PinvokeMap(scope, token, pdwMappingFlags.value,
            szImportName.toDartString(), ptkImportDLL.value, moduleName);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      free(pdwMappingFlags);
      free(szImportName);
      free(pchImportName);
      free(ptkImportDLL);
    }
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
  StringMarshalConvention get stringMarshalConvention {
    switch (_attributes & CorPinvokeMap.pmCharSetMask) {
      case CorPinvokeMap.pmCharSetNotSpec:
        return StringMarshalConvention.notSpecified;
      case CorPinvokeMap.pmCharSetAnsi:
        return StringMarshalConvention.ansi;
      case CorPinvokeMap.pmCharSetUnicode:
        return StringMarshalConvention.unicode;
      case CorPinvokeMap.pmCharSetAuto:
        return StringMarshalConvention.auto;
      default:
        throw WinmdException('Unable to identify string marshal convention.');
    }
  }

  /// Returns the preferred convention for mapping of Unicode characters that
  /// lack an exact match in the ANSI character set.
  BestFit get bestFitConvention {
    switch (_attributes & CorPinvokeMap.pmBestFitMask) {
      case CorPinvokeMap.pmBestFitUseAssem:
        return BestFit.useAssem;
      case CorPinvokeMap.pmBestFitEnabled:
        return BestFit.enabled;
      case CorPinvokeMap.pmBestFitDisabled:
        return BestFit.disabled;
      default:
        throw WinmdException('Unable to identify best fit convention.');
    }
  }

  /// Returns the preferred convention for how the interop marshaler should
  /// respond when it encounters an unmappable character.
  ThrowOnUnmappableChar get throwOnUnmappableCharConvention {
    switch (_attributes & CorPinvokeMap.pmThrowOnUnmappableCharMask) {
      case CorPinvokeMap.pmThrowOnUnmappableCharUseAssem:
        return ThrowOnUnmappableChar.useAssem;
      case CorPinvokeMap.pmThrowOnUnmappableCharEnabled:
        return ThrowOnUnmappableChar.enabled;
      case CorPinvokeMap.pmThrowOnUnmappableCharDisabled:
        return ThrowOnUnmappableChar.disabled;
      default:
        throw WinmdException(
            'Unable to identify convention for handling unmappable characters.');
    }
  }

  /// Returns the calling convention.
  CallingConvention get callingConvention {
    switch (_attributes & CorPinvokeMap.pmCallConvMask) {
      case CorPinvokeMap.pmCallConvWinapi:
        return CallingConvention.winApi;
      case CorPinvokeMap.pmCallConvCdecl:
        return CallingConvention.cdecl;
      case CorPinvokeMap.pmCallConvStdcall:
        return CallingConvention.stdcall;
      case CorPinvokeMap.pmCallConvThiscall:
        return CallingConvention.thiscall;
      case CorPinvokeMap.pmCallConvFastcall:
        return CallingConvention.fastcall;
      default:
        throw WinmdException('Unable to identify calling convention.');
    }
  }
}
