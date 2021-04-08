import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'base.dart';
import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'utils.dart';

enum StringMarshalConvention { NotSpecified, Ansi, Unicode, Auto }

enum BestFit { UseAssem, Enabled, Disabled }

enum ThrowOnUnmappableChar { UseAssem, Enabled, Disabled }

enum CallingConvention { WinApi, Cdecl, StdCall, ThisCall, FastCall }

class PinvokeMap extends TokenObject {
  final int attributes;
  final String importName;
  final int importDllToken;
  final String moduleName;

  /// Returns true if each member name is used as specified.
  bool get isNoMangle =>
      attributes & CorPinvokeMap.pmNoMangle == CorPinvokeMap.pmNoMangle;

  /// Returns true if the callee is allowed to call the Win32 SetLastError
  /// function before returning from the attributed method.
  bool get supportsLastError =>
      attributes & CorPinvokeMap.pmSupportsLastError ==
      CorPinvokeMap.pmSupportsLastError;

  StringMarshalConvention get stringMarshalConvention {
    switch (attributes & CorPinvokeMap.pmCharSetMask) {
      case CorPinvokeMap.pmCharSetNotSpec:
        return StringMarshalConvention.NotSpecified;
      case CorPinvokeMap.pmCharSetAnsi:
        return StringMarshalConvention.Ansi;
      case CorPinvokeMap.pmCharSetUnicode:
        return StringMarshalConvention.Unicode;
      case CorPinvokeMap.pmCharSetAuto:
        return StringMarshalConvention.Auto;
      default:
        throw WinmdException('Unable to identify string marshal convention.');
    }
  }

  BestFit get bestFitConvention {
    switch (attributes & CorPinvokeMap.pmBestFitMask) {
      case CorPinvokeMap.pmBestFitUseAssem:
        return BestFit.UseAssem;
      case CorPinvokeMap.pmBestFitEnabled:
        return BestFit.Enabled;
      case CorPinvokeMap.pmBestFitDisabled:
        return BestFit.Disabled;
      default:
        throw WinmdException('Unable to identify best fit convention.');
    }
  }

  ThrowOnUnmappableChar get throwOnUnmappableCharConvention {
    switch (attributes & CorPinvokeMap.pmThrowOnUnmappableCharMask) {
      case CorPinvokeMap.pmThrowOnUnmappableCharUseAssem:
        return ThrowOnUnmappableChar.UseAssem;
      case CorPinvokeMap.pmThrowOnUnmappableCharEnabled:
        return ThrowOnUnmappableChar.Enabled;
      case CorPinvokeMap.pmThrowOnUnmappableCharDisabled:
        return ThrowOnUnmappableChar.Disabled;
      default:
        throw WinmdException(
            'Unable to identify convention for handling unmappable characters.');
    }
  }

  CallingConvention get callingConvention {
    switch (attributes & CorPinvokeMap.pmCallConvMask) {
      case CorPinvokeMap.pmCallConvWinapi:
        return CallingConvention.WinApi;
      case CorPinvokeMap.pmCallConvCdecl:
        return CallingConvention.Cdecl;
      case CorPinvokeMap.pmCallConvStdcall:
        return CallingConvention.StdCall;
      case CorPinvokeMap.pmCallConvThiscall:
        return CallingConvention.ThisCall;
      case CorPinvokeMap.pmCallConvFastcall:
        return CallingConvention.FastCall;
      default:
        throw WinmdException('Unable to identify calling convention.');
    }
  }

  const PinvokeMap(IMetaDataImport2 reader, int token, this.attributes,
      this.importName, this.importDllToken, this.moduleName)
      : super(reader, token);

  factory PinvokeMap.fromToken(IMetaDataImport2 reader, int token) {
    final pdwMappingFlags = calloc<Uint32>();
    final szImportName = calloc<Uint16>(256).cast<Utf16>();
    final pchImportName = calloc<Uint32>();
    final ptkImportDLL = calloc<Uint32>();
    final szModuleName = calloc<Uint16>(256).cast<Utf16>();
    final pchModuleName = calloc<Uint32>();

    try {
      var hr = reader.GetPinvokeMap(token, pdwMappingFlags, szImportName, 256,
          pchImportName, ptkImportDLL);
      if (SUCCEEDED(hr)) {
        hr = reader.GetModuleRefProps(
            ptkImportDLL.value, szModuleName, 256, pchModuleName);

        final moduleName = SUCCEEDED(hr) ? szModuleName.toDartString() : '';

        return PinvokeMap(reader, token, pdwMappingFlags.value,
            szImportName.toDartString(), ptkImportDLL.value, moduleName);
      } else {
        throw WindowsException(hr);
      }
    } finally {
      calloc.free(pdwMappingFlags);
      calloc.free(szImportName);
      calloc.free(pchImportName);
      calloc.free(ptkImportDLL);
    }
  }
}
