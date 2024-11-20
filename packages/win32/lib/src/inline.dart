// Inline Win32 APIs that cannot be wrapped with FFI.

// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:ffi';

import 'allocator.dart';
import 'constants.g.dart';
import 'enums.g.dart';
import 'extensions/pointer.dart';
import 'macros.dart';
import 'structs.g.dart';
import 'utils.dart';
import 'win32/kernel32.g.dart';
import 'win32/propsys.g.dart';
import 'win32/uxtheme.g.dart';

/// Retrieves a pseudo-handle that you can use as a shorthand way to refer to
/// the access token associated with a process.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentprocesstoken>.
@pragma('vm:prefer-inline')
int GetCurrentProcessToken() => -4;

/// Retrieves a pseudo-handle that you can use as a shorthand way to refer to
/// the impersonation token that was assigned to the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthreadtoken>.
@pragma('vm:prefer-inline')
int GetCurrentThreadToken() => -5;

/// Retrieves a pseudo-handle that you can use as a shorthand way to refer to
/// the impersonation token that was assigned to the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/processthreadsapi/nf-processthreadsapi-getcurrentthreadeffectivetoken>.
@pragma('vm:prefer-inline')
int GetCurrentThreadEffectiveToken() => -6;

/// Indicates if the current OS version matches, or is greater than, the
/// provided version information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsversionorgreater>.
bool IsWindowsVersionOrGreater(
  int wMajorVersion,
  int wMinorVersion,
  int wServicePackMajor,
) {
  final dwlConditionMask = VerSetConditionMask(
    VerSetConditionMask(
      VerSetConditionMask(0, VER_MAJORVERSION, VER_GREATER_EQUAL),
      VER_MINORVERSION,
      VER_GREATER_EQUAL,
    ),
    VER_SERVICEPACKMAJOR,
    VER_GREATER_EQUAL,
  );
  final osvi = loggingCalloc<OSVERSIONINFOEX>();
  osvi.ref
    ..dwMajorVersion = wMajorVersion
    ..dwMinorVersion = wMinorVersion
    ..wServicePackMajor = wServicePackMajor;
  try {
    return VerifyVersionInfo(
      osvi,
      VER_MAJORVERSION | VER_MINORVERSION | VER_SERVICEPACKMAJOR,
      dwlConditionMask,
    );
  } finally {
    free(osvi);
  }
}

//
// _WIN32_WINNT version constants
//
const _WIN32_WINNT_WINXP = 0x0501;
const _WIN32_WINNT_VISTA = 0x0600;
const _WIN32_WINNT_WIN7 = 0x0601;
const _WIN32_WINNT_WIN8 = 0x0602;
const _WIN32_WINNT_WINBLUE = 0x0603;

/// Indicates if the current OS version matches, or is greater than, the
/// Windows XP version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsxporgreater>.
@pragma('vm:prefer-inline')
bool IsWindowsXPOrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WINXP),
  LOBYTE(_WIN32_WINNT_WINXP),
  0,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows XP with Service Pack 1 (SP1) version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsxpsp1orgreater>.
@pragma('vm:prefer-inline')
bool IsWindowsXPSP1OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WINXP),
  LOBYTE(_WIN32_WINNT_WINXP),
  1,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows XP with Service Pack 2 (SP2) version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsxpsp2orgreater>.
@pragma('vm:prefer-inline')
bool IsWindowsXPSP2OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WINXP),
  LOBYTE(_WIN32_WINNT_WINXP),
  2,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows XP with Service Pack 3 (SP3) version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsxpsp3orgreater>.
@pragma('vm:prefer-inline')
bool IsWindowsXPSP3OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WINXP),
  LOBYTE(_WIN32_WINNT_WINXP),
  3,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows Vista version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsvistaorgreater>.
@pragma('vm:prefer-inline')
bool IsWindowsVistaOrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_VISTA),
  LOBYTE(_WIN32_WINNT_VISTA),
  0,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows Vista with Service Pack 1 (SP1) version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsvistasp1orgreater>.
@pragma('vm:prefer-inline')
bool IsWindowsVistaSP1OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_VISTA),
  LOBYTE(_WIN32_WINNT_VISTA),
  1,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows Vista with Service Pack 2 (SP2) version.
///
/// To learn more, see
/// <https://learn.microsoft.com/en-us/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsvistasp2orgreater>.
@pragma('vm:prefer-inline')
bool IsWindowsVistaSP2OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_VISTA),
  LOBYTE(_WIN32_WINNT_VISTA),
  2,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows 7 version.
///
/// To learn more, see
/// <https://learn.microsoft.com/en-us/windows/win32/api/versionhelpers/nf-versionhelpers-iswindows7orgreater>.
@pragma('vm:prefer-inline')
bool IsWindows7OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WIN7),
  LOBYTE(_WIN32_WINNT_WIN7),
  0,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows 7 with Service Pack 1 (SP1) version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindows7sp1orgreater>.
@pragma('vm:prefer-inline')
bool IsWindows7SP1OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WIN7),
  LOBYTE(_WIN32_WINNT_WIN7),
  1,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows 8 version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindows8orgreater>.
@pragma('vm:prefer-inline')
bool IsWindows8OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WIN8),
  LOBYTE(_WIN32_WINNT_WIN8),
  0,
);

/// Indicates if the current OS version matches, or is greater than, the
/// Windows 8.1 version.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindows8point1orgreater>.
@pragma('vm:prefer-inline')
bool IsWindows8Point1OrGreater() => IsWindowsVersionOrGreater(
  HIBYTE(_WIN32_WINNT_WINBLUE),
  LOBYTE(_WIN32_WINNT_WINBLUE),
  0,
);

/// Indicates if the current OS is a Windows Server release.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/versionhelpers/nf-versionhelpers-iswindowsserver>.
bool IsWindowsServer() {
  final osvi = loggingCalloc<OSVERSIONINFOEX>()
    ..ref.wProductType = VER_NT_SERVER;
  final dwlConditionMask = VerSetConditionMask(0, VER_PRODUCT_TYPE, VER_EQUAL);
  try {
    return VerifyVersionInfo(osvi, VER_PRODUCT_TYPE, dwlConditionMask);
  } finally {
    free(osvi);
  }
}

/// Specifies whether a specified [PROPVARIANT] structure is a string type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propvarutil/nf-propvarutil-ispropvariantstring>.
@pragma('vm:prefer-inline')
bool IsPropVariantString(Pointer<PROPVARIANT> propvar) =>
    !PropVariantToStringWithDefault(propvar, null).isNull;

/// Sets attributes to control how visual styles are applied to a specified
/// window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uxtheme/nf-uxtheme-setwindowthemenonclientattributes>.
void SetWindowThemeNonClientAttributes(int hwnd, int dwMask, int dwAttributes) {
  final wta = loggingCalloc<WTA_OPTIONS>();
  wta.ref
    ..dwFlags = dwAttributes
    ..dwMask = dwMask;
  try {
    SetWindowThemeAttribute(hwnd, WTA_NONCLIENT, wta, sizeOf<WTA_OPTIONS>());
  } finally {
    free(wta);
  }
}
