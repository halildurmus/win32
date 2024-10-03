// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// Inline Win32 APIs that cannot be wrapped with FFI.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'constants.dart';
import 'constants_nodoc.dart';
import 'enums.g.dart';
import 'macros.dart';
import 'structs.g.dart';
import 'utils.dart';
import 'variant.dart';
import 'win32/kernel32.g.dart';
import 'win32/propsys.g.dart';
import 'win32/user32.g.dart';
import 'win32/uxtheme.g.dart';

/// Creates an overlapped, pop-up, or child window. It specifies the window
/// class, window title, window style, and (optionally) the initial position and
/// size of the window. The function also specifies the window's parent or
/// owner, if any, and the window's menu.
///
/// ```c
/// HWND CreateWindowW(
///   LPCWSTR   lpClassName,
///   LPCWSTR   lpWindowName,
///   DWORD     dwStyle,
///   int       X,
///   int       Y,
///   int       nWidth,
///   int       nHeight,
///   HWND      hWndParent,
///   HMENU     hMenu,
///   HINSTANCE hInstance,
///   LPVOID    lpParam
/// );
/// ```
///
/// {@category user32}
int CreateWindow(
        Pointer<Utf16> lpClassName,
        Pointer<Utf16> lpWindowName,
        int dwStyle,
        int X,
        int Y,
        int nWidth,
        int nHeight,
        int hWndParent,
        int hMenu,
        int hInstance,
        Pointer lpParam) =>
    CreateWindowEx(0, lpClassName, lpWindowName, dwStyle, X, Y, nWidth, nHeight,
        hWndParent, hMenu, hInstance, lpParam);

/// Creates a modal dialog box from a dialog box template in memory.
/// DialogBoxIndirect does not return control until the specified callback
/// function terminates the modal dialog box by calling the EndDialog function.
///
/// DialogBoxIndirect is implemented as a call to the DialogBoxIndirectParam
/// function.
///
/// ```c
/// void DialogBoxIndirectW(
///    hInstance,
///    lpTemplate,
///    hWndParent,
///    lpDialogFunc
/// );
/// ```
/// {@category user32}
void DialogBoxIndirect(int hInstance, Pointer<DLGTEMPLATE> lpTemplate,
        int hWndParent, Pointer<NativeFunction<DLGPROC>> lpDialogFunc) =>
    DialogBoxIndirectParam(hInstance, lpTemplate, hWndParent, lpDialogFunc, 0);

/// Retrieves a pseudo-handle that you can use as a shorthand way to refer to
/// the access token associated with a process.
///
/// {@category advapi32}
int GetCurrentProcessToken() => -4.toUnsigned(32);

/// Retrieves a pseudo-handle that you can use as a shorthand way to refer to
/// the impersonation token that was assigned to the current thread.
///
/// {@category advapi32}
int GetCurrentThreadToken() => -5.toUnsigned(32);

/// Retrieves a pseudo-handle that you can use as a shorthand way to refer to
/// the impersonation token that was assigned to the current thread.
///
/// {@category advapi32}
int GetCurrentThreadEffectiveToken() => -6.toUnsigned(32);

/// Indicates if the current OS version matches, or is greater than, the
/// provided version information. This function is useful in confirming a
/// version of Windows Server that doesn't share a version number with a client
/// release.
///
/// {@category version}
int IsWindowsVersionOrGreater(
    int wMajorVersion, int wMinorVersion, int wServicePackMajor) {
  final dwlConditionMask = VerSetConditionMask(
    VerSetConditionMask(
      VerSetConditionMask(0, VER_FLAGS.VER_MAJORVERSION, VER_GREATER_EQUAL),
      VER_FLAGS.VER_MINORVERSION,
      VER_GREATER_EQUAL,
    ),
    VER_FLAGS.VER_SERVICEPACKMAJOR,
    VER_GREATER_EQUAL,
  );

  final osvi = calloc<OSVERSIONINFOEX>()
    ..ref.dwMajorVersion = wMajorVersion
    ..ref.dwMinorVersion = wMinorVersion
    ..ref.wServicePackMajor = wServicePackMajor;

  try {
    return VerifyVersionInfo(
      osvi,
      VER_FLAGS.VER_MAJORVERSION |
          VER_FLAGS.VER_MINORVERSION |
          VER_FLAGS.VER_SERVICEPACKMAJOR,
      dwlConditionMask,
    );
  } finally {
    free(osvi);
  }
}

const _WIN32_WINNT_WINTHRESHOLD = 0x0A00;

/// Indicates if the current OS version matches, or is greater than, the Windows
/// 10 version.
///
/// {@category version}
int IsWindows10OrGreater() => IsWindowsVersionOrGreater(
    HIBYTE(_WIN32_WINNT_WINTHRESHOLD), LOBYTE(_WIN32_WINNT_WINTHRESHOLD), 0);

/// Indicates if the current OS is a Windows Server release. Applications that
/// need to distinguish between server and client versions of Windows should
/// call this function.
///
/// {@category version}
int IsWindowsServer() {
  final osvi = calloc<OSVERSIONINFOEX>()..ref.wProductType = VER_NT_SERVER;
  final dwlConditionMask =
      VerSetConditionMask(0, VER_FLAGS.VER_PRODUCT_TYPE, VER_EQUAL);

  try {
    return VerifyVersionInfo(
      osvi,
      VER_FLAGS.VER_PRODUCT_TYPE,
      dwlConditionMask,
    );
  } finally {
    free(osvi);
  }
}

/// Specifies whether a specified PROPVARIANT structure is a string type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/propvarutil/nf-propvarutil-ispropvariantstring>.
int IsPropVariantString(Pointer<PROPVARIANT> propvar) =>
    PropVariantToStringWithDefault(propvar, nullptr) != nullptr ? TRUE : FALSE;

/// Sets attributes to control how visual styles are applied to a specified
/// window.
///
/// {@category uxtheme}
int SetWindowThemeNonClientAttributes(int hwnd, int dwMask, int dwAttributes) {
  final wta = calloc<WTA_OPTIONS>()
    ..ref.dwFlags = dwAttributes
    ..ref.dwMask = dwMask;
  try {
    return SetWindowThemeAttribute(
      hwnd,
      WINDOWTHEMEATTRIBUTETYPE.WTA_NONCLIENT,
      wta,
      sizeOf<WTA_OPTIONS>(),
    );
  } finally {
    free(wta);
  }
}

/// Fills a block of memory with a specified value.
///
/// {@category kernel32}
void FillMemory(Pointer destination, int length, int fill) {
  final ptr = destination.cast<Uint8>();
  for (var i = 0; i < length; i++) {
    ptr[i] = fill;
  }
}

/// Fills a block of memory with zeros.
///
/// {@category kernel32}
void ZeroMemory(Pointer destination, int length) =>
    FillMemory(destination, length, 0);
