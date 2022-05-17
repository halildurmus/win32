import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/constants.dart';
import 'scope.dart';
import 'token_object.dart';
import 'type_aliases.dart';
import 'utils/exception.dart';

/// Convention for marshalling P/Invoke function strings.
enum StringMarshalConvention {
  /// Reserved.
  notSpecified,

  /// Marshal strings as multiple-byte character strings.
  ansi,

  /// Marshal strings as Unicode 2-byte characters.
  unicode,

  /// Automatically marshal strings appropriately for the target operating
  /// system. The default is Unicode on Windows NT, Windows 2000, Windows XP,
  /// and the Windows Server 2003 family; the default is ANSI on Windows 98 and
  /// Windows Me.
  auto
}

/// Convention for mapping Unicode characters in P/Invoke calls.
enum BestFit {
  /// Reserved.
  useAssem,

  /// Perform best-fit mapping of Unicode characters that lack an exact match in
  /// the ANSI character set.
  enabled,

  /// Do not perform best-fit mapping of Unicode characters. In this case, all
  /// unmappable characters will be replaced by a ‘?’.
  disabled
}

/// Convention for how the interop marshaler should respond to an unmappable
/// character.
enum ThrowOnUnmappableChar {
  /// Reserved.
  useAssem,

  /// Throw an exception when the interop marshaler encounters an unmappable
  /// character.
  enabled,

  /// Do not throw an exception when the interop marshaler encounters an
  /// unmappable character.
  disabled
}

/// Platform calling convention.
enum CallingConvention {
  /// Use the default platform calling convention. For example, on Windows the
  /// default is StdCall and on Windows CE .NET it is Cdecl.
  winApi,

  /// Use the Cdecl calling convention. In this case, the caller cleans the
  /// stack. This enables calling functions with varargs (that is, functions
  /// that accept a variable number of parameters).
  cdecl,

  /// Use the StdCall calling convention. In this case, the callee cleans the
  /// stack. This is the default convention for calling unmanaged functions with
  /// platform invoke.
  stdcall,

  /// Use the ThisCall calling convention. In this case, the first parameter is
  /// the this pointer and is stored in register ECX. Other parameters are
  /// pushed on the stack. The ThisCall calling convention is used to call
  /// methods on classes exported from an unmanaged DLL.
  thiscall,

  /// Reserved.
  fastcall
}

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
        final szImportName = arena<WCHAR>(MAX_STRING_SIZE).cast<Utf16>();
        final pchImportName = arena<ULONG>();
        final ptkImportDLL = arena<mdModuleRef>();
        final szModuleName = arena<WCHAR>(MAX_STRING_SIZE).cast<Utf16>();
        final pchModuleName = arena<ULONG>();

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
