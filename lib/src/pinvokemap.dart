import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'utils.dart';
import 'win32.dart';

enum StringMarshalConvention { notSpecified, ansi, unicode, auto }

enum BestFit { useAssem, enabled, disabled }

enum ThrowOnUnmappableChar { useAssem, enabled, disabled }

enum CallingConvention { winApi, cdecl, stdcall, thiscall, fastcall }

class PinvokeMap extends TokenObject {
  final int _attributes;
  final String importName;
  final int importDllToken;
  final String moduleName;

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

  const PinvokeMap(IMetaDataImport2 reader, int token, this._attributes,
      this.importName, this.importDllToken, this.moduleName)
      : super(reader, token);

  factory PinvokeMap.fromToken(IMetaDataImport2 reader, int token) {
    final pdwMappingFlags = calloc<DWORD>();
    final szImportName = stralloc(MAX_STRING_SIZE);
    final pchImportName = calloc<ULONG>();
    final ptkImportDLL = calloc<mdModuleRef>();
    final szModuleName = stralloc(MAX_STRING_SIZE);
    final pchModuleName = calloc<ULONG>();

    try {
      var hr = reader.GetPinvokeMap(token, pdwMappingFlags, szImportName,
          MAX_STRING_SIZE, pchImportName, ptkImportDLL);
      if (SUCCEEDED(hr)) {
        hr = reader.GetModuleRefProps(
            ptkImportDLL.value, szModuleName, MAX_STRING_SIZE, pchModuleName);

        final moduleName = SUCCEEDED(hr) ? szModuleName.toDartString() : '';

        return PinvokeMap(reader, token, pdwMappingFlags.value,
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
}
