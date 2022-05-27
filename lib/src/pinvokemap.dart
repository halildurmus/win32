import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/enums.dart';
import 'enums.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'utils/exception.dart';

/// A P/Invoke method representation.
class PinvokeMap extends TokenObject {
  final int importDllToken;
  final String importName;
  final String moduleName;

  final int _attributes;

  const PinvokeMap(super.scope, super.token, this._attributes, this.importName,
      this.importDllToken, this.moduleName);

  /// Creates a P/Invoke method representation object from a provided token.
  factory PinvokeMap.fromToken(Scope scope, int token) => using((Arena arena) {
        final pdwMappingFlags = arena<DWORD>();
        final szImportName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
        final pchImportName = arena<ULONG>();
        final ptkImportDLL = arena<mdModuleRef>();
        final szModuleName = arena<WCHAR>(stringBufferSize).cast<Utf16>();
        final pchModuleName = arena<ULONG>();

        final reader = scope.reader;
        var hr = reader.GetPinvokeMap(token, pdwMappingFlags, szImportName,
            stringBufferSize, pchImportName, ptkImportDLL);
        if (SUCCEEDED(hr)) {
          hr = reader.GetModuleRefProps(ptkImportDLL.value, szModuleName,
              stringBufferSize, pchModuleName);

          final moduleName = SUCCEEDED(hr) ? szModuleName.toDartString() : '';

          return PinvokeMap(scope, token, pdwMappingFlags.value,
              szImportName.toDartString(), ptkImportDLL.value, moduleName);
        } else {
          throw WindowsException(hr);
        }
      });

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
