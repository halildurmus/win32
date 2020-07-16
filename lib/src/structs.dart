// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API

import 'dart:ffi';
import 'dart:math' show min;
import 'dart:typed_data';
import 'package:ffi/ffi.dart';

import 'constants.dart';
import 'string.dart';

// typedef struct tagWNDCLASSW {
//   UINT      style;
//   WNDPROC   lpfnWndProc;
//   int       cbClsExtra;
//   int       cbWndExtra;
//   HINSTANCE hInstance;
//   HICON     hIcon;
//   HCURSOR   hCursor;
//   HBRUSH    hbrBackground;
//   LPCWSTR   lpszMenuName;
//   LPCWSTR   lpszClassName;
// } WNDCLASSW, *PWNDCLASSW, *NPWNDCLASSW, *LPWNDCLASSW;

/// WNDCLASS
///
/// {@category Struct}
class WNDCLASS extends Struct {
  @Uint32()
  int style;

  Pointer<NativeFunction> lpfnWndProc;

  @Int32()
  int cbClsExtra;

  @Int32()
  int cbWndExtra;

  @IntPtr()
  int hInstance;

  @IntPtr()
  int hIcon;

  @IntPtr()
  int hCursor;

  @IntPtr()
  int hbrBackground;

  Pointer<Utf16> lpszMenuName;
  Pointer<Utf16> lpszClassName;

  factory WNDCLASS.allocate() => allocate<WNDCLASS>().ref
    ..style = 0
    ..lpfnWndProc = nullptr
    ..cbClsExtra = 0
    ..cbWndExtra = 0
    ..hInstance = 0
    ..hIcon = 0
    ..hCursor = 0
    ..hbrBackground = 0
    ..lpszMenuName = nullptr
    ..lpszClassName = nullptr;
}

// typedef struct _SYSTEM_INFO {
//   union {
//     DWORD dwOemId;
//     struct {
//       WORD wProcessorArchitecture;
//       WORD wReserved;
//     } DUMMYSTRUCTNAME;
//   } DUMMYUNIONNAME;
//   DWORD     dwPageSize;
//   LPVOID    lpMinimumApplicationAddress;
//   LPVOID    lpMaximumApplicationAddress;
//   DWORD_PTR dwActiveProcessorMask;
//   DWORD     dwNumberOfProcessors;
//   DWORD     dwProcessorType;
//   DWORD     dwAllocationGranularity;
//   WORD      wProcessorLevel;
//   WORD      wProcessorRevision;
// } SYSTEM_INFO, *LPSYSTEM_INFO;

/// SYSTEM_INFO
///
/// {@category Struct}
class SYSTEM_INFO extends Struct {
  @Uint16()
  int wProcessorArchitecture;

  @Uint16()
  int wReserved;

  @Uint32()
  int dwPageSize;

  Pointer lpMinimumApplicationAddress;
  Pointer lpMaximumApplicationAddress;

  @IntPtr()
  int dwActiveProcessorMask;

  @Uint32()
  int dwNumberOfProcessors;

  @Uint32()
  int dwProcessorType;

  @Uint32()
  int dwAllocationGranularity;

  @Uint16()
  int wProcessorLevel;

  @Uint16()
  int wProcessorRevision;

  factory SYSTEM_INFO.allocate() => allocate<SYSTEM_INFO>().ref
    ..wProcessorArchitecture = 0
    ..wReserved = 0
    ..dwPageSize = 0
    ..lpMaximumApplicationAddress = nullptr
    ..lpMaximumApplicationAddress = nullptr
    ..dwActiveProcessorMask = 0
    ..dwNumberOfProcessors = 0
    ..dwProcessorType = 0
    ..dwAllocationGranularity = 0
    ..wProcessorLevel = 0
    ..wProcessorRevision = 0;
}

// typedef struct _PROCESS_INFORMATION {
//   HANDLE hProcess;
//   HANDLE hThread;
//   DWORD  dwProcessId;
//   DWORD  dwThreadId;
// } PROCESS_INFORMATION, *PPROCESS_INFORMATION, *LPPROCESS_INFORMATION;
class PROCESS_INFORMATION extends Struct {
  @IntPtr()
  int hProcess;
  @IntPtr()
  int hThread;
  @Uint32()
  int dwProcessId;
  @Uint32()
  int dwThreadId;

  factory PROCESS_INFORMATION.allocate() => allocate<PROCESS_INFORMATION>().ref
    ..hProcess = 0
    ..hThread = 0
    ..dwProcessId = 0
    ..dwThreadId = 0;
}

// typedef struct _STARTUPINFOW {
//   DWORD  cb;
//   LPWSTR lpReserved;
//   LPWSTR lpDesktop;
//   LPWSTR lpTitle;
//   DWORD  dwX;
//   DWORD  dwY;
//   DWORD  dwXSize;
//   DWORD  dwYSize;
//   DWORD  dwXCountChars;
//   DWORD  dwYCountChars;
//   DWORD  dwFillAttribute;
//   DWORD  dwFlags;
//   WORD   wShowWindow;
//   WORD   cbReserved2;
//   LPBYTE lpReserved2;
//   HANDLE hStdInput;
//   HANDLE hStdOutput;
//   HANDLE hStdError;
// } STARTUPINFOW, *LPSTARTUPINFOW;

/// STARTUPINFO
///
/// {@category Struct}
class STARTUPINFO extends Struct {
  @Uint32()
  int cb;
  Pointer<Utf16> lpReserved;
  Pointer<Utf16> lpDesktop;
  Pointer<Utf16> lpTitle;
  @Uint32()
  int dwX;
  @Uint32()
  int dwY;
  @Uint32()
  int dwXSize;
  @Uint32()
  int dwYSize;
  @Uint32()
  int dwXCountChars;
  @Uint32()
  int dwYCountChars;
  @Uint32()
  int dwFillAttribute;
  @Uint32()
  int dwFlags;
  @Uint16()
  int wShowWindow;
  @Uint16()
  int cbReserved2;
  Pointer<Uint8> lpReserved2;
  @IntPtr()
  int hStdInput;
  @IntPtr()
  int hStdOutput;
  @IntPtr()
  int hStdError;

  factory STARTUPINFO.allocate() => allocate<STARTUPINFO>().ref
    ..cb = sizeOf<STARTUPINFO>()
    ..lpReserved = nullptr
    ..lpDesktop = nullptr
    ..lpTitle = nullptr
    ..dwX = 0
    ..dwY = 0
    ..dwXSize = 0
    ..dwYSize = 0
    ..dwXCountChars = 0
    ..dwYCountChars = 0
    ..dwFillAttribute = 0
    ..dwFlags = 0
    ..wShowWindow = 0
    ..cbReserved2 = 0
    ..lpReserved2 = nullptr
    ..hStdInput = 0
    ..hStdOutput = 0
    ..hStdError = 0;
}

// typedef struct _SYSTEM_POWER_STATUS {
//   BYTE  ACLineStatus;
//   BYTE  BatteryFlag;
//   BYTE  BatteryLifePercent;
//   BYTE  SystemStatusFlag;
//   DWORD BatteryLifeTime;
//   DWORD BatteryFullLifeTime;
// } SYSTEM_POWER_STATUS, *LPSYSTEM_POWER_STATUS;

/// SYSTEM_POWER_STATUS
///
/// {@category Struct}
class SYSTEM_POWER_STATUS extends Struct {
  @Uint8()
  int ACLineStatus;
  @Uint8()
  int BatteryFlag;
  @Uint8()
  int BatteryLifePercent;
  @Uint8()
  int SystemStatusFlag;
  @Uint32()
  int BatteryLifeTime;
  @Uint32()
  int BatteryFullLifeTime;

  factory SYSTEM_POWER_STATUS.allocate() => allocate<SYSTEM_POWER_STATUS>().ref
    ..ACLineStatus = 0
    ..BatteryFlag = 0
    ..BatteryLifePercent = 0
    ..SystemStatusFlag = 0
    ..BatteryLifeTime = 0
    ..BatteryFullLifeTime = 0;
}

// typedef struct {
//     BOOLEAN             AcOnLine;
//     BOOLEAN             BatteryPresent;
//     BOOLEAN             Charging;
//     BOOLEAN             Discharging;
//     BOOLEAN             Spare1[3];

//     BYTE                Tag;

//     DWORD               MaxCapacity;
//     DWORD               RemainingCapacity;
//     DWORD               Rate;
//     DWORD               EstimatedTime;

//     DWORD               DefaultAlert1;
//     DWORD               DefaultAlert2;
// } SYSTEM_BATTERY_STATE, *PSYSTEM_BATTERY_STATE;
class SYSTEM_BATTERY_STATE extends Struct {
  @Uint8()
  int AcOnLine;
  @Uint8()
  int BatteryPresent;
  @Uint8()
  int Charging;
  @Uint8()
  int Discharging;

  @Uint8()
  int Spare1a;
  @Uint8()
  int Spare1b;
  @Uint8()
  int Spare1c;

  @Uint8()
  int Tag;

  @Uint32()
  int MaxCapacity;
  @Uint32()
  int RemainingCapacity;
  @Uint32()
  int Rate;
  @Uint32()
  int EstimatedTime;

  @Uint32()
  int DefaultAlert1;
  @Uint32()
  int DefaultAlert2;

  factory SYSTEM_BATTERY_STATE.allocate() =>
      allocate<SYSTEM_BATTERY_STATE>().ref
        ..AcOnLine = 0
        ..BatteryPresent = 0
        ..Charging = 0
        ..Discharging = 0
        ..Spare1a = 0
        ..Spare1b = 0
        ..Spare1c = 0
        ..Tag = 0
        ..MaxCapacity = 0
        ..RemainingCapacity = 0
        ..Rate = 0
        ..EstimatedTime = 0
        ..DefaultAlert1 = 0
        ..DefaultAlert2 = 0;
}

// typedef struct _STARTUPINFOEXW {
//   STARTUPINFOW                 StartupInfo;
//   LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList;
// } STARTUPINFOEXW, *LPSTARTUPINFOEXW;

/// STARTUPINFOEX
///
/// {@category Struct}
class STARTUPINFOEX extends Struct {
  @Uint32()
  int cb;
  Pointer<Utf16> lpReserved;
  Pointer<Utf16> lpDesktop;
  Pointer<Utf16> lpTitle;
  @Uint32()
  int dwX;
  @Uint32()
  int dwY;
  @Uint32()
  int dwXSize;
  @Uint32()
  int dwYSize;
  @Uint32()
  int dwXCountChars;
  @Uint32()
  int dwYCountChars;
  @Uint32()
  int dwFillAttribute;
  @Uint32()
  int dwFlags;
  @Uint16()
  int wShowWindow;
  @Uint16()
  int cbReserved2;
  Pointer<Uint8> lpReserved2;
  @IntPtr()
  int hStdInput;
  @IntPtr()
  int hStdOutput;
  @IntPtr()
  int hStdError;
  Pointer lpAttributeList;

  factory STARTUPINFOEX.allocate() => allocate<STARTUPINFOEX>().ref
    ..cb = sizeOf<STARTUPINFOEX>()
    ..lpReserved = nullptr
    ..lpDesktop = nullptr
    ..lpTitle = nullptr
    ..dwX = 0
    ..dwY = 0
    ..dwXSize = 0
    ..dwYSize = 0
    ..dwXCountChars = 0
    ..dwYCountChars = 0
    ..dwFillAttribute = 0
    ..dwFlags = 0
    ..wShowWindow = 0
    ..cbReserved2 = 0
    ..lpReserved2 = nullptr
    ..hStdInput = 0
    ..hStdOutput = 0
    ..hStdError = 0
    ..lpAttributeList = nullptr;
}

// typedef struct _SECURITY_ATTRIBUTES {
//   DWORD  nLength;
//   LPVOID lpSecurityDescriptor;
//   BOOL   bInheritHandle;
// } SECURITY_ATTRIBUTES, *PSECURITY_ATTRIBUTES, *LPSECURITY_ATTRIBUTES;

/// SECURITY_ATTRIBUTES
///
/// {@category Struct}
class SECURITY_ATTRIBUTES extends Struct {
  @Uint32()
  int nLength;

  Pointer<Void> lpSecurityDescriptor;

  @Int32()
  int bInheritHandle;
}

// typedef struct _SECURITY_DESCRIPTOR {
//   BYTE                        Revision;
//   BYTE                        Sbz1;
//   SECURITY_DESCRIPTOR_CONTROL Control;
//   PSID                        Owner;
//   PSID                        Group;
//   PACL                        Sacl;
//   PACL                        Dacl;
// } SECURITY_DESCRIPTOR, *PISECURITY_DESCRIPTOR;

/// SECURITY_DESCRIPTOR
///
/// {@category Struct}
class SECURITY_DESCRIPTOR extends Struct {
  @Uint8()
  int Revision;

  @Uint8()
  int Sbz1;

  @Int16()
  int Control;

  Pointer<IntPtr> Owner;
  Pointer<IntPtr> Group;
  Pointer<IntPtr> Sacl;
  Pointer<IntPtr> Dacl;

  factory SECURITY_DESCRIPTOR.allocate() => allocate<SECURITY_DESCRIPTOR>().ref
    ..Revision = 0
    ..Sbz1 = 0
    ..Control = 0
    ..Owner = nullptr
    ..Group = nullptr
    ..Sacl = nullptr
    ..Dacl = nullptr;
}

// typedef struct tagSOLE_AUTHENTICATION_SERVICE {
//   DWORD   dwAuthnSvc;
//   DWORD   dwAuthzSvc;
//   OLECHAR *pPrincipalName;
//   HRESULT hr;
// } SOLE_AUTHENTICATION_SERVICE;

/// SOLE_AUTHENTICATION_SERVICE
///
/// {@category Struct}
class SOLE_AUTHENTICATION_SERVICE extends Struct {
  @Uint32()
  int dwAuthnSvc;

  @Uint32()
  int dwAuthzSvc;

  Pointer<Utf16> pPrincipalName;

  @Int32()
  int hr;

  factory SOLE_AUTHENTICATION_SERVICE.allocate() =>
      allocate<SOLE_AUTHENTICATION_SERVICE>().ref
        ..dwAuthnSvc = 0
        ..dwAuthzSvc = 0
        ..pPrincipalName = nullptr
        ..hr = 0;
}

// The VARIANT type is used in Win32 to represent a dynamic type. It is
// represented as a struct containing a union of the types that could be
// stored. At the time this code was authored, Dart FFI does not support union
// types. However, in many scenarios, it is possible to guarantee that the
// returned value will be a Pointer, and so this struct is available for that
// usage. This class will be replaced as/when FFI supports a more comprehensive
// projection of this type.

/// VARIANT_POINTER
///
/// {@category Struct}
class VARIANT_POINTER extends Struct {
  @Int16()
  int vt;
  @Int16()
  int wReserved1;
  @Int16()
  int wReserved2;
  @Int16()
  int wReserved3;

  Pointer<IntPtr> ptr;

  factory VARIANT_POINTER.allocate() => allocate<VARIANT_POINTER>().ref
    ..vt = 0
    ..wReserved1 = 0
    ..wReserved2 = 0
    ..wReserved3 = 0
    ..ptr = nullptr;
}

// typedef struct _COMDLG_FILTERSPEC {
//   LPCWSTR pszName;
//   LPCWSTR pszSpec;
// } COMDLG_FILTERSPEC;

/// COMDLG_FILTERSPEC
///
/// {@category Struct}
class COMDLG_FILTERSPEC extends Struct {
  Pointer<Utf16> pszName;
  Pointer<Utf16> pszSpec;

  factory COMDLG_FILTERSPEC.allocate() => allocate<COMDLG_FILTERSPEC>().ref
    ..pszName = nullptr
    ..pszSpec = nullptr;
}

// typedef struct tagACCEL {
//     BYTE   fVirt;               /* Also called the flags field */
//     WORD   key;
//     WORD  cmd;
// } ACCEL, *LPACCEL;

/// ACCEL
///
/// {@category Struct}
class ACCEL extends Struct {
  @Uint8()
  int fVirt;
  @Uint16()
  int key;
  @Uint16()
  int cmd;

  factory ACCEL.allocate() => allocate<ACCEL>().ref
    ..fVirt = 0
    ..key = 0
    ..cmd = 0;
}

// typedef struct tagMONITORINFO {
//   DWORD cbSize;
//   RECT  rcMonitor;
//   RECT  rcWork;
//   DWORD dwFlags;
// } MONITORINFO, *LPMONITORINFO;

/// MONITORINFO
///
/// {@category Struct}
class MONITORINFO extends Struct {
  @Uint32()
  int cbSize;
  @Int32()
  int rcMonitorLeft;
  @Int32()
  int rcMonitorTop;
  @Int32()
  int rcMonitorRight;
  @Int32()
  int rcMonitorBottom;
  @Int32()
  int rcWorkLeft;
  @Int32()
  int rcWorkTop;
  @Int32()
  int rcWorkRight;
  @Int32()
  int rcWorkBottom;
  @Uint32()
  int dwFlags;

  factory MONITORINFO.allocate() => allocate<MONITORINFO>().ref
    ..cbSize = sizeOf<MONITORINFO>()
    ..rcMonitorLeft = 0
    ..rcMonitorTop = 0
    ..rcMonitorRight = 0
    ..rcMonitorBottom = 0
    ..rcWorkLeft = 0
    ..rcWorkTop = 0
    ..rcWorkRight = 0
    ..rcWorkBottom = 0
    ..dwFlags = 0;
}

// In the following struct, COLORREF is a DWORD that contains RGB values
// in the form 0x00bbggrr

// typedef struct tagCHOOSECOLORW {
//   DWORD        lStructSize;
//   HWND         hwndOwner;
//   HWND         hInstance;
//   COLORREF     rgbResult;
//   COLORREF     *lpCustColors;
//   DWORD        Flags;
//   LPARAM       lCustData;
//   LPCCHOOKPROC lpfnHook;
//   LPCWSTR      lpTemplateName;
// } CHOOSECOLORW, *LPCHOOSECOLORW;

/// CHOOSECOLOR
///
/// {@category Struct}
class CHOOSECOLOR extends Struct {
  @Uint32()
  int lStructSize;

  @IntPtr()
  int hwndOwner;

  @IntPtr()
  int hInstance;

  @Int32()
  int rgbResult;

  Pointer<Uint32> lpCustColors;

  @Uint32()
  int Flags;

  @IntPtr()
  int lCustData;

  Pointer<IntPtr> lpfnHook;
  Pointer<Uint16> lpTemplateName;

  factory CHOOSECOLOR.allocate() => allocate<CHOOSECOLOR>().ref
    ..lStructSize = sizeOf<CHOOSECOLOR>()
    ..hwndOwner = NULL
    ..hInstance = NULL
    ..rgbResult = 0
    ..lpCustColors = allocate<Uint32>(count: 16)
    ..Flags = 0
    ..lCustData = 0
    ..lpfnHook = nullptr
    ..lpTemplateName = nullptr;
}

// typedef struct tagFINDREPLACEW {
//   DWORD        lStructSize;
//   HWND         hwndOwner;
//   HINSTANCE    hInstance;
//   DWORD        Flags;
//   LPWSTR       lpstrFindWhat;
//   LPWSTR       lpstrReplaceWith;
//   WORD         wFindWhatLen;
//   WORD         wReplaceWithLen;
//   LPARAM       lCustData;
//   LPFRHOOKPROC lpfnHook;
//   LPCWSTR      lpTemplateName;
// } FINDREPLACEW, *LPFINDREPLACEW;

/// FINDREPLACE
///
/// {@category Struct}
class FINDREPLACE extends Struct {
  @Uint32()
  int lStructSize;
  @IntPtr()
  int hwndOwner;
  @IntPtr()
  int hInstance;
  @Uint32()
  int Flags;
  Pointer<Utf16> lpstrFindWhat;
  Pointer<Utf16> lpstrReplaceWith;
  @Uint16()
  int wFindWhatLen;
  @Uint16()
  int wReplaceWithLen;
  @IntPtr()
  int lCustData;
  Pointer<NativeFunction> lpfnHook;
  Pointer<Utf16> lpTemplateName;

  factory FINDREPLACE.allocate() => allocate<FINDREPLACE>().ref
    ..lStructSize = 0
    ..hwndOwner = 0
    ..hInstance = 0
    ..Flags = 0
    ..lpstrFindWhat = nullptr
    ..lpstrReplaceWith = nullptr
    ..wFindWhatLen = 0
    ..wReplaceWithLen = 0
    ..lCustData = 0
    ..lpfnHook = nullptr
    ..lpTemplateName = nullptr;
}

// typedef struct tagCHOOSEFONTW {
//   DWORD        lStructSize;
//   HWND         hwndOwner;
//   HDC          hDC;
//   LPLOGFONTW   lpLogFont;
//   INT          iPointSize;
//   DWORD        Flags;
//   COLORREF     rgbColors;
//   LPARAM       lCustData;
//   LPCFHOOKPROC lpfnHook;
//   LPCWSTR      lpTemplateName;
//   HINSTANCE    hInstance;
//   LPWSTR       lpszStyle;
//   WORD         nFontType;
//   WORD         ___MISSING_ALIGNMENT__;
//   INT          nSizeMin;
//   INT          nSizeMax;
// } CHOOSEFONTW;

/// CHOOSEFONT
///
/// {@category Struct}
class CHOOSEFONT extends Struct {
  @Uint32()
  int lStructSize;
  @IntPtr()
  int hwndOwner;
  @IntPtr()
  int hDC;

  Pointer<LOGFONT> lpLogFont;

  @Int32()
  int iPointSize;

  @Uint32()
  int Flags;

  @Int32()
  int rgbColors;
  @IntPtr()
  int lCustData;

  Pointer<NativeFunction> lpfnHook;
  Pointer<Utf16> lpTemplateName;
  @IntPtr()
  int hInstance;
  Pointer<Utf16> lpszStyle;
  @Uint16()
  int nFontType;
  @Uint16()
  int reserved;
  @Int32()
  int nSizeMin;
  @Int32()
  int nSizeMax;

  factory CHOOSEFONT.allocate() => allocate<CHOOSEFONT>().ref
    ..lStructSize = 0
    ..hwndOwner = 0
    ..hDC = 0
    ..lpLogFont = nullptr
    ..iPointSize = 0
    ..Flags = 0
    ..rgbColors = 0
    ..lCustData = 0
    ..lpfnHook = nullptr
    ..lpTemplateName = nullptr
    ..hInstance = 0
    ..lpszStyle = nullptr
    ..nFontType = 0
    ..reserved = 0
    ..nSizeMin = 0
    ..nSizeMax = 0;
}

// typedef struct tagOFNW {
//    DWORD        lStructSize;
//    HWND         hwndOwner;
//    HINSTANCE    hInstance;
//    LPCWSTR      lpstrFilter;
//    LPWSTR       lpstrCustomFilter;
//    DWORD        nMaxCustFilter;
//    DWORD        nFilterIndex;
//    LPWSTR       lpstrFile;
//    DWORD        nMaxFile;
//    LPWSTR       lpstrFileTitle;
//    DWORD        nMaxFileTitle;
//    LPCWSTR      lpstrInitialDir;
//    LPCWSTR      lpstrTitle;
//    DWORD        Flags;
//    WORD         nFileOffset;
//    WORD         nFileExtension;
//    LPCWSTR      lpstrDefExt;
//    LPARAM       lCustData;
//    LPOFNHOOKPROC lpfnHook;
//    LPCWSTR      lpTemplateName;
//    void *        pvReserved;
//    DWORD        dwReserved;
//    DWORD        FlagsEx;
// } OPENFILENAMEW, *LPOPENFILENAMEW;

/// OPENFILENAME
///
/// {@category Struct}
class OPENFILENAME extends Struct {
  @Uint32()
  int lStructSize;
  @IntPtr()
  int hwndOwner;
  @IntPtr()
  int hInstance;

  Pointer<Utf16> lpstrFilter;
  Pointer<Utf16> lpstrCustomFilter;

  @Uint32()
  int nMaxCustFilter;
  @Uint32()
  int nFilterIndex;

  Pointer<Utf16> lpstrFile;
  @Uint32()
  int nMaxFile;

  Pointer<Utf16> lpstrFileTitle;
  @Uint32()
  int nMaxFileTitle;

  Pointer<Utf16> lpstrInitialDir;
  Pointer<Utf16> lpstrTitle;

  @Uint32()
  int Flags;
  @Uint16()
  int nFileOffset;
  @Uint16()
  int nFileExtension;

  Pointer<Utf16> lpstrDefExt;

  @IntPtr()
  int lCustData;

  Pointer<NativeFunction> lpfnHook;
  Pointer<Utf16> lpTemplateName;
  Pointer<Void> pvReserved;

  @Uint32()
  int dwReserved;
  @Uint32()
  int FlagsEx;

  factory OPENFILENAME.allocate() => allocate<OPENFILENAME>().ref
    ..lStructSize = 0
    ..hwndOwner = 0
    ..hInstance = 0
    ..lpstrFilter = nullptr
    ..lpstrCustomFilter = nullptr
    ..nMaxCustFilter = 0
    ..nFilterIndex = 0
    ..lpstrFile = nullptr
    ..nMaxFile = 0
    ..lpstrFileTitle = nullptr
    ..nMaxFileTitle = 0
    ..lpstrInitialDir = nullptr
    ..lpstrTitle = nullptr
    ..Flags = 0
    ..nFileOffset = 0
    ..nFileExtension = 0
    ..lpstrDefExt = nullptr
    ..lCustData = 0
    ..lpfnHook = nullptr
    ..lpTemplateName = nullptr
    ..pvReserved = nullptr
    ..dwReserved = 0
    ..FlagsEx = 0;
}

// typedef struct {
//         lfHeight;
//         lfWidth;
//         lfEscapement;
//         lfOrientation;
//         lfWeight;
//   BYTE  lfItalic;
//   BYTE  lfUnderline;
//   BYTE  lfStrikeOut;
//   BYTE  lfCharSet;
//   BYTE  lfOutPrecision;
//   BYTE  lfClipPrecision;
//   BYTE  lfQuality;
//   BYTE  lfPitchAndFamily;
//   WCHAR lfFaceName[LF_FACESIZE];
// } LOGFONTW;

/// LOGFONT
///
/// {@category Struct}
class LOGFONT extends Struct {
  @Int32()
  int lfHeight;
  @Int32()
  int lfWidth;
  @Int32()
  int lfEscapement;
  @Int32()
  int lfOrientation;
  @Int32()
  int lfWeight;
  @Uint8()
  int lfItalic;
  @Uint8()
  int lfUnderline;
  @Uint8()
  int lfStrikeOut;
  @Uint8()
  int lfCharSet;
  @Uint8()
  int lfOutPrecision;
  @Uint8()
  int lfClipPrecision;
  @Uint8()
  int lfQuality;
  @Uint8()
  int lfPitchAndFamily;

  // Need to use @Int32() here, both because of the lack of fixed-size
  // arrays, and because @Int64() doesn't line up with word boundaries
  @Int32()
  int lfFaceName1;
  @Int32()
  int lfFaceName2;
  @Int32()
  int lfFaceName3;
  @Int32()
  int lfFaceName4;
  @Int32()
  int lfFaceName5;
  @Int32()
  int lfFaceName6;
  @Int32()
  int lfFaceName7;
  @Int32()
  int lfFaceName8;
  @Int32()
  int lfFaceName9;
  @Int32()
  int lfFaceName10;
  @Int32()
  int lfFaceName11;
  @Int32()
  int lfFaceName12;
  @Int32()
  int lfFaceName13;
  @Int32()
  int lfFaceName14;
  @Int32()
  int lfFaceName15;
  @Int32()
  int lfFaceName16;

  Pointer<Utf16> get lfFaceName =>
      addressOf.cast<Uint8>().elementAt(28).cast<Utf16>();

  factory LOGFONT.allocate() => allocate<LOGFONT>().ref
    ..lfHeight = 0
    ..lfWidth = 0
    ..lfEscapement = 0
    ..lfOrientation = 0
    ..lfWeight = 0
    ..lfItalic = 0
    ..lfUnderline = 0
    ..lfStrikeOut = 0
    ..lfCharSet = 0
    ..lfOutPrecision = 0
    ..lfClipPrecision = 0
    ..lfQuality = 0
    ..lfPitchAndFamily = 0
    ..lfFaceName1 = 0
    ..lfFaceName2 = 0
    ..lfFaceName3 = 0
    ..lfFaceName4 = 0
    ..lfFaceName5 = 0
    ..lfFaceName6 = 0
    ..lfFaceName7 = 0
    ..lfFaceName8 = 0
    ..lfFaceName9 = 0
    ..lfFaceName10 = 0
    ..lfFaceName11 = 0
    ..lfFaceName12 = 0
    ..lfFaceName13 = 0
    ..lfFaceName14 = 0
    ..lfFaceName15 = 0
    ..lfFaceName16 = 0;
}

// typedef struct tagENUMLOGFONTEXW {
//   LOGFONTW elfLogFont;
//   WCHAR    elfFullName[LF_FULLFACESIZE];
//   WCHAR    elfStyle[LF_FACESIZE];
//   WCHAR    elfScript[LF_FACESIZE];
// } ENUMLOGFONTEXW, *LPENUMLOGFONTEXW;
class ENUMLOGFONTEX extends Struct {
  LOGFONT get elfLogFont => addressOf.cast<LOGFONT>().ref;

  String get elfFullName => addressOf
      .cast<Uint8>()
      .elementAt(sizeOf<LOGFONT>())
      .cast<Utf16>()
      .unpackString(LF_FULLFACESIZE);

  String get elfStyle => addressOf
      .cast<Uint8>()
      .elementAt(sizeOf<LOGFONT>() + LF_FULLFACESIZE * 2)
      .cast<Utf16>()
      .unpackString(LF_FACESIZE);

  String get elfScript => addressOf
      .cast<Uint8>()
      .elementAt(sizeOf<LOGFONT>() + ((LF_FULLFACESIZE + LF_FACESIZE) * 2))
      .cast<Utf16>()
      .unpackString(LF_FACESIZE);
}

// typedef struct tagCREATESTRUCTW {
//   LPVOID    lpCreateParams;
//   HINSTANCE hInstance;
//   HMENU     hMenu;
//   HWND      hwndParent;
//   int       cy;
//   int       cx;
//   int       y;
//   int       x;
//   LONG      style;
//   LPCWSTR   lpszName;
//   LPCWSTR   lpszClass;
//   DWORD     dwExStyle;
// } CREATESTRUCTW, *LPCREATESTRUCTW;

/// CREATESTRUCT
///
/// {@category Struct}
class CREATESTRUCT extends Struct {
  Pointer<Void> lpCreateParams;

  @IntPtr()
  int hInstance;
  @IntPtr()
  int hMenu;
  @IntPtr()
  int hwndParent;
  @Int32()
  int cy;
  @Int32()
  int cx;
  @Int32()
  int y;
  @Int32()
  int x;
  @Int32()
  int style;

  Pointer<Utf16> lpszName;
  Pointer<Utf16> lpszClass;

  @Uint32()
  int dwExStyle;

  factory CREATESTRUCT.allocate() => allocate<CREATESTRUCT>().ref
    ..lpCreateParams = nullptr
    ..hInstance = 0
    ..hMenu = 0
    ..hwndParent = 0
    ..cy = 0
    ..cx = 0
    ..y = 0
    ..x = 0
    ..style = 0
    ..lpszName = nullptr
    ..lpszClass = nullptr
    ..dwExStyle = 0;
}

// typedef struct tagMSG {
//   HWND   hwnd;
//   UINT   message;
//   WPARAM wParam;
//   LPARAM lParam;
//   DWORD  time;
//   POINT  pt;
//   DWORD  lPrivate;
// } MSG, *PMSG, *NPMSG, *LPMSG;

/// MSG
///
/// {@category Struct}
class MSG extends Struct {
  @IntPtr()
  int hwnd;

  @Uint32()
  int message;

  @IntPtr()
  int wParam;

  @IntPtr()
  int lParam;

  @Uint32()
  int time;

  @Int32()
  int ptX;

  @Int32()
  int ptY;

  @Uint32()
  int lPrivate;

  factory MSG.allocate() => allocate<MSG>().ref
    ..hwnd = 0
    ..message = 0
    ..wParam = 0
    ..lParam = 0
    ..time = 0
    ..ptX = 0
    ..ptY = 0
    ..lPrivate = 0;
}

// typedef struct tagSIZE {
//   LONG cx;
//   LONG cy;
// } SIZE, *PSIZE;

/// SIZE
///
/// {@category Struct}
class SIZE extends Struct {
  @Int32()
  int cx;

  @Int32()
  int cy;

  factory SIZE.allocate() => allocate<SIZE>().ref
    ..cx = 0
    ..cy = 0;
}

// typedef struct tagMINMAXINFO {
//   POINT ptReserved;
//   POINT ptMaxSize;
//   POINT ptMaxPosition;
//   POINT ptMinTrackSize;
//   POINT ptMaxTrackSize;
// } MINMAXINFO, *PMINMAXINFO, *LPMINMAXINFO;

/// MINMAXINFO
///
/// {@category Struct}
class MINMAXINFO extends Struct {
  @Int32()
  int ptReservedX;
  @Int32()
  int ptReservedY;

  @Int32()
  int ptMaxSizeX;
  @Int32()
  int ptMaxSizeY;

  @Int32()
  int ptMaxPositionX;
  @Int32()
  int ptMaxPositionY;

  @Int32()
  int ptMinTrackSizeX;
  @Int32()
  int ptMinTrackSizeY;

  @Int32()
  int ptMaxTrackSizeX;
  @Int32()
  int ptMaxTrackSizeY;
}

// typedef struct tagPOINT {
//   LONG x;
//   LONG y;
// } POINT, *PPOINT, *NPPOINT, *LPPOINT;

/// POINT
///
/// {@category Struct}
class POINT extends Struct {
  @Int32()
  int x;

  @Int32()
  int y;

  factory POINT.allocate() => allocate<POINT>().ref
    ..x = 0
    ..y = 0;
}

// typedef struct tagPAINTSTRUCT {
//   HDC  hdc;
//   BOOL fErase;
//   RECT rcPaint;
//   BOOL fRestore;
//   BOOL fIncUpdate;
//   BYTE rgbReserved[32];
// } PAINTSTRUCT, *PPAINTSTRUCT, *NPPAINTSTRUCT, *LPPAINTSTRUCT;

/// PAINTSTRUCT
///
/// {@category Struct}
class PAINTSTRUCT extends Struct {
  @IntPtr()
  int hdc;
  @Int32()
  int fErase;
  @Int32()
  int rcPaintL;
  @Int32()
  int rcPaintT;
  @Int32()
  int rcPaintR;
  @Int32()
  int rcPaintB;
  @Int32()
  int fRestore;
  @Int32()
  int fIncUpdate;
  @Uint64()
  int rgb1;
  @Uint64()
  int rgb2;
  @Uint64()
  int rgb3;
  @Uint64()
  int rgb4;

  factory PAINTSTRUCT.allocate() => allocate<PAINTSTRUCT>().ref
    ..hdc = 0
    ..fErase = 0
    ..rcPaintL = 0
    ..rcPaintT = 0
    ..rcPaintR = 0
    ..rcPaintB = 0
    ..fRestore = 0
    ..fIncUpdate = 0
    ..rgb1 = 0
    ..rgb2 = 0
    ..rgb3 = 0
    ..rgb4 = 0;
}

// typedef struct tagRECT {
//   LONG left;
//   LONG top;
//   LONG right;
//   LONG bottom;
// } RECT, *PRECT, *NPRECT, *LPRECT;

/// RECT
///
/// {@category Struct}
class RECT extends Struct {
  @Int32()
  int left;
  @Int32()
  int top;
  @Int32()
  int right;
  @Int32()
  int bottom;

  factory RECT.allocate() => allocate<RECT>().ref
    ..left = 0
    ..top = 0
    ..right = 0
    ..bottom = 0;
}

// typedef struct tagINPUT {
//   DWORD type;
//   union {
//     MOUSEINPUT    mi;
//     KEYBDINPUT    ki;
//     HARDWAREINPUT hi;
//   } DUMMYUNIONNAME;
// } INPUT, *PINPUT, *LPINPUT;

// We embed this type directly into the union types below, since nested structs
// are unavailable in Dart FFI at present.

// BUG: Unfortunately this is broken on 32-bit Dart at present.

// typedef struct tagMOUSEINPUT {
//   LONG      dx;
//   LONG      dy;
//   DWORD     mouseData;
//   DWORD     dwFlags;
//   DWORD     time;
//   ULONG_PTR dwExtraInfo;
// } MOUSEINPUT, *PMOUSEINPUT, *LPMOUSEINPUT;

/// MOUSEINPUT
///
/// {@category Struct}
class MOUSEINPUT extends Struct {
  @Uint32()
  int type;

  @Int32()
  int padding;

  @Int32()
  int dx;
  @Int32()
  int dy;

  @Uint32()
  int mouseData;

  @Uint32()
  int dwFlags;

  @Uint32()
  int time;

  Pointer<Uint32> dwExtraInfo;

  factory MOUSEINPUT.allocate() => allocate<MOUSEINPUT>().ref
    ..type = INPUT_MOUSE
    ..dx = 0
    ..dy = 0
    ..mouseData = 0
    ..dwFlags = 0
    ..time = 0
    ..dwExtraInfo = nullptr;
}

// typedef struct tagKEYBDINPUT {
//   WORD      wVk;
//   WORD      wScan;
//   DWORD     dwFlags;
//   DWORD     time;
//   ULONG_PTR dwExtraInfo;
// } KEYBDINPUT, *PKEYBDINPUT, *LPKEYBDINPUT;

/// KEYBDINPUT
///
/// {@category Struct}
class KEYBDINPUT extends Struct {
  @Int32()
  int type;

  @Int32()
  int padding1;

  @Uint16()
  int wVk;

  @Uint16()
  int wScan;

  @Uint32()
  int dwFlags;

  @Uint32()
  int time;

  Pointer<Uint32> dwExtraInfo;

  @Int64()
  int padding2;

  factory KEYBDINPUT.allocate() => allocate<KEYBDINPUT>().ref
    ..type = INPUT_KEYBOARD
    ..wVk = 0
    ..wScan = 0
    ..dwFlags = 0
    ..time = 0
    ..dwExtraInfo = nullptr;
}

// typedef struct tagHARDWAREINPUT {
//   DWORD uMsg;
//   WORD  wParamL;
//   WORD  wParamH;
// } HARDWAREINPUT, *PHARDWAREINPUT, *LPHARDWAREINPUT;

/// HARDWAREINPUT
///
/// {@category Struct}
class HARDWAREINPUT extends Struct {
  @Int32()
  int type;

  @Int32()
  int padding;

  @Uint32()
  int uMsg;

  @Uint16()
  int wParamL;
  @Uint16()
  int wParamH;

  factory HARDWAREINPUT.allocate() => allocate<HARDWAREINPUT>().ref
    ..type = INPUT_HARDWARE
    ..uMsg = 0
    ..wParamL = 0
    ..wParamH = 0;
}

// typedef struct tagTEXTMETRICW {
//   LONG  tmHeight;
//   LONG  tmAscent;
//   LONG  tmDescent;
//   LONG  tmInternalLeading;
//   LONG  tmExternalLeading;
//   LONG  tmAveCharWidth;
//   LONG  tmMaxCharWidth;
//   LONG  tmWeight;
//   LONG  tmOverhang;
//   LONG  tmDigitizedAspectX;
//   LONG  tmDigitizedAspectY;
//   WCHAR tmFirstChar;
//   WCHAR tmLastChar;
//   WCHAR tmDefaultChar;
//   WCHAR tmBreakChar;
//   BYTE  tmItalic;
//   BYTE  tmUnderlined;
//   BYTE  tmStruckOut;
//   BYTE  tmPitchAndFamily;
//   BYTE  tmCharSet;
// } TEXTMETRICW, *PTEXTMETRICW, *NPTEXTMETRICW, *LPTEXTMETRICW;

/// TEXTMETRIC
///
/// {@category Struct}
class TEXTMETRIC extends Struct {
  @Int32()
  int tmHeight;
  @Int32()
  int tmAscent;
  @Int32()
  int tmDescent;
  @Int32()
  int tmInternalLeading;
  @Int32()
  int tmExternalLeading;
  @Int32()
  int tmAveCharWidth;
  @Int32()
  int tmMaxCharWidth;
  @Int32()
  int tmWeight;
  @Int32()
  int tmOverhang;
  @Int32()
  int tmDigitizedAspectX;
  @Int32()
  int tmDigitizedAspectY;
  @Int16()
  int tmFirstChar;
  @Int16()
  int tmLastChar;
  @Int16()
  int tmDefaultChar;
  @Int16()
  int tmBreakChar;
  @Uint8()
  int tmItalic;
  @Uint8()
  int tmUnderlined;
  @Uint8()
  int tmStruckOut;
  @Uint8()
  int tmPitchAndFamily;
  @Uint8()
  int tmCharSet;

  factory TEXTMETRIC.allocate() => allocate<TEXTMETRIC>().ref
    ..tmHeight = 0
    ..tmAscent = 0
    ..tmDescent = 0
    ..tmInternalLeading = 0
    ..tmExternalLeading = 0
    ..tmAveCharWidth = 0
    ..tmMaxCharWidth = 0
    ..tmWeight = 0
    ..tmOverhang = 0
    ..tmDigitizedAspectX = 0
    ..tmDigitizedAspectY = 0
    ..tmFirstChar = 0
    ..tmLastChar = 0
    ..tmDefaultChar = 0
    ..tmBreakChar = 0
    ..tmItalic = 0
    ..tmUnderlined = 0
    ..tmStruckOut = 0
    ..tmPitchAndFamily = 0
    ..tmCharSet = 0;
}

// typedef struct tagSCROLLINFO {
//   UINT cbSize;
//   UINT fMask;
//   int  nMin;
//   int  nMax;
//   UINT nPage;
//   int  nPos;
//   int  nTrackPos;
// } SCROLLINFO, *LPSCROLLINFO;

/// SCROLLINFO
///
/// {@category Struct}
class SCROLLINFO extends Struct {
  @Uint32()
  int cbSize;
  @Uint32()
  int fMask;
  @Int32()
  int nMin;
  @Int32()
  int nMax;
  @Uint32()
  int nPage;
  @Int32()
  int nPos;
  @Int32()
  int nTrackPos;

  factory SCROLLINFO.allocate() => allocate<SCROLLINFO>().ref
    ..cbSize = 0
    ..fMask = 0
    ..nMin = 0
    ..nMax = 0
    ..nPage = 0
    ..nPos = 0
    ..nTrackPos = 0;
}

// *** COM STRUCTS ***

// typedef struct _GUID {
//     unsigned long  Data1;
//     unsigned short Data2;
//     unsigned short Data3;
//     unsigned char  Data4[ 8 ];
// } GUID;

/// GUID
///
/// {@category Struct}
class GUID extends Struct {
  @Uint32()
  int Data1;
  @Uint16()
  int Data2;
  @Uint16()
  int Data3;
  @Uint64()
  int Data4;

  factory GUID.allocate() => allocate<GUID>().ref
    ..Data1 = 0
    ..Data2 = 0
    ..Data3 = 0
    ..Data4 = 0;

  /// Create GUID from common {FDD39AD0-238F-46AF-ADB4-6C85480369C7} format
  factory GUID.fromString(String guidString) {
    assert(guidString.length == 38);
    final guid = allocate<GUID>().ref;
    guid.Data1 = int.parse('${guidString.substring(1, 9)}', radix: 16);
    guid.Data2 = int.parse('${guidString.substring(10, 14)}', radix: 16);
    guid.Data3 = int.parse('${guidString.substring(15, 19)}', radix: 16);

    // final component is pushed on the stack in reverse order per x64
    // calling convention. This is a funky workaround until FFI supports
    // passing structs by value.
    final rawString = guidString.substring(35, 37) +
        guidString.substring(33, 35) +
        guidString.substring(31, 33) +
        guidString.substring(29, 31) +
        guidString.substring(27, 29) +
        guidString.substring(25, 27) +
        guidString.substring(22, 24) +
        guidString.substring(20, 22);

    // We need to split this to avoid overflowing a signed int.parse()
    guid.Data4 = (int.parse('${rawString.substring(0, 4)}', radix: 16) << 48) +
        int.parse('${rawString.substring(4, 16)}', radix: 16);

    return guid;
  }

  /// Print GUID in common {FDD39AD0-238F-46AF-ADB4-6C85480369C7} format
  @override
  String toString() {
    final comp1 = (Data4 & 0xFF).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF00) >> 8).toRadixString(16).padLeft(2, '0');

    // This is hacky as all get-out :)
    final comp2 = ((Data4 & 0xFF0000) >> 16).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF000000) >> 24).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF00000000) >> 32).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF0000000000) >> 40).toRadixString(16).padLeft(2, '0') +
        ((Data4 & 0xFF000000000000) >> 48).toRadixString(16).padLeft(2, '0') +
        (BigInt.from(Data4 & 0xFF00000000000000).toUnsigned(64) >> 56)
            .toRadixString(16)
            .padLeft(2, '0');

    return '{${Data1.toRadixString(16).padLeft(8, '0').toUpperCase()}-'
        '${Data2.toRadixString(16).padLeft(4, '0').toUpperCase()}-'
        '${Data3.toRadixString(16).padLeft(4, '0').toUpperCase()}-'
        '${comp1.toUpperCase()}-'
        '${comp2.toUpperCase()}}';
  }
}

// *** CONSOLE STRUCTS ***

// Dart FFI does not yet have support for nested structs, so there's extra
// work necessary to unpack parameters like COORD and SMALL_RECT. The Dart
// issue for this work is https://github.com/dart-lang/sdk/issues/37271.

// typedef struct tagBITMAPINFO {
//   BITMAPINFOHEADER bmiHeader;
//   RGBQUAD          bmiColors[1];
// } BITMAPINFO, *LPBITMAPINFO, *PBITMAPINFO;
//
// typedef struct tagBITMAPINFOHEADER {
//   DWORD biSize;
//   LONG  biWidth;
//   LONG  biHeight;
//   WORD  biPlanes;
//   WORD  biBitCount;
//   DWORD biCompression;
//   DWORD biSizeImage;
//   LONG  biXPelsPerMeter;
//   LONG  biYPelsPerMeter;
//   DWORD biClrUsed;
//   DWORD biClrImportant;
// } BITMAPINFOHEADER, *PBITMAPINFOHEADER;
//
// typedef struct tagRGBQUAD {
//   BYTE rgbBlue;
//   BYTE rgbGreen;
//   BYTE rgbRed;
//   BYTE rgbReserved;
// } RGBQUAD;

/// BITMAPINFO
///
/// {@category Struct}
class BITMAPINFO extends Struct {
  @Uint32()
  int biSize;
  @Int32()
  int biWidth;
  @Int32()
  int biHeight;
  @Uint16()
  int biPlanes;
  @Uint16()
  int biBitCount;
  @Uint32()
  int biCompression;
  @Uint32()
  int biSizeImage;
  @Int32()
  int biXPelsPerMeter;
  @Int32()
  int biYPelsPerMeter;
  @Uint32()
  int biClrUsed;
  @Uint32()
  int biClrImportant;
  @Uint8()
  int rgbBlue;
  @Uint8()
  int rgbGreen;
  @Uint8()
  int rgbRed;
  @Uint8()
  int rgbReserved;

  factory BITMAPINFO.allocate() => allocate<BITMAPINFO>().ref
    ..biSize = 44 // default to single element RGBQUAD
    ..biWidth = 0
    ..biHeight = 0
    ..biPlanes = 0
    ..biBitCount = 0
    ..biCompression = 0
    ..biSizeImage = 0
    ..biXPelsPerMeter = 0
    ..biYPelsPerMeter = 0
    ..biClrUsed = 0
    ..biClrImportant = 0
    ..rgbBlue = 0
    ..rgbGreen = 0
    ..rgbRed = 0
    ..rgbReserved = 0;
}

// typedef struct _FILETIME {
//     DWORD dwLowDateTime;
//     DWORD dwHighDateTime;
// } FILETIME, *PFILETIME, *LPFILETIME;

/// FILETIME
///
/// {@category Struct}
class FILETIME extends Struct {
  @Uint32()
  int dwLowDateTime;
  @Uint32()
  int dwHighDateTime;

  factory FILETIME.allocate() => allocate<FILETIME>().ref
    ..dwLowDateTime = 0
    ..dwHighDateTime = 0;
}

// typedef struct KNOWNFOLDER_DEFINITION
//     {
//     KF_CATEGORY category;
//     LPWSTR pszName;
//     LPWSTR pszDescription;
//     KNOWNFOLDERID fidParent;
//     LPWSTR pszRelativePath;
//     LPWSTR pszParsingName;
//     LPWSTR pszTooltip;
//     LPWSTR pszLocalizedName;
//     LPWSTR pszIcon;
//     LPWSTR pszSecurity;
//     DWORD dwAttributes;
//     KF_DEFINITION_FLAGS kfdFlags;
//     FOLDERTYPEID ftidType;
//     } 	KNOWNFOLDER_DEFINITION;

/// KNOWNFOLDER_DEFINITION
///
/// {@category Struct}
class KNOWNFOLDER_DEFINITION extends Struct {
  @Int32()
  int category;
  Pointer<Utf16> pszName;
  Pointer<Utf16> pszDescription;

  @Uint32()
  int fidParent_guid1;
  @Uint16()
  int fidParent_guid2;
  @Uint16()
  int fidParent_guid3;
  @Uint64()
  int fidParent_guid4;

  Pointer<Utf16> pszRelativePath;
  Pointer<Utf16> pszParsingName;
  Pointer<Utf16> pszTooltip;
  Pointer<Utf16> pszLocalizedName;
  Pointer<Utf16> pszIcon;
  Pointer<Utf16> pszSecurity;

  @Uint32()
  int dwAttributes;
  @Uint32()
  int kfdFlags;

  @Uint32()
  int ftidType_guid1;
  @Uint16()
  int ftidType_guid2;
  @Uint16()
  int ftidType_guid3;
  @Uint64()
  int ftidType_guid4;

  factory KNOWNFOLDER_DEFINITION.allocate() =>
      allocate<KNOWNFOLDER_DEFINITION>().ref
        ..category = 0
        ..pszName = nullptr
        ..pszDescription = nullptr
        ..fidParent_guid1 = 0
        ..fidParent_guid2 = 0
        ..fidParent_guid3 = 0
        ..fidParent_guid4 = 0
        ..pszRelativePath = nullptr
        ..pszParsingName = nullptr
        ..pszTooltip = nullptr
        ..pszLocalizedName = nullptr
        ..pszIcon = nullptr
        ..pszSecurity = nullptr
        ..dwAttributes = 0
        ..kfdFlags = 0
        ..ftidType_guid1 = 0
        ..ftidType_guid2 = 0
        ..ftidType_guid3 = 0
        ..ftidType_guid4 = 0;
}

// typedef struct _SHITEMID
//     {
//     USHORT cb;
//     BYTE abID[ 1 ];
//     }

/// SHITEMID
///
/// {@category Struct}
class SHITEMID extends Struct {
  @Uint16()
  int cb;
  @Uint8()
  int abID;

  factory SHITEMID.allocate() => allocate<SHITEMID>().ref
    ..cb = 0
    ..abID = 0;
}

// typedef struct tagDISPPARAMS {
//   VARIANTARG *rgvarg;
//   DISPID     *rgdispidNamedArgs;
//   UINT       cArgs;
//   UINT       cNamedArgs;
// } DISPPARAMS;

/// DISPPARAMS
///
/// {@category Struct}
class DISPPARAMS extends Struct {
  Pointer rgvarg;
  Pointer<Int32> rgdispidNamedArgs;

  @Int16()
  int cArgs;

  @Int16()
  int cNamedArgs;

  factory DISPPARAMS.allocate() => allocate<DISPPARAMS>().ref
    ..rgvarg = nullptr
    ..rgdispidNamedArgs = nullptr
    ..cArgs = 0
    ..cNamedArgs = 0;
}

// *** CONSOLE STRUCTS ***

// typedef struct _CONSOLE_CURSOR_INFO {
//   DWORD dwSize;
//   BOOL  bVisible;
// } CONSOLE_CURSOR_INFO, *PCONSOLE_CURSOR_INFO;

/// CONSOLE_CURSOR_INFO
///
/// {@category Struct}
class CONSOLE_CURSOR_INFO extends Struct {
  @Uint32()
  int dwSize;
  @Int32()
  int bVisible;

  factory CONSOLE_CURSOR_INFO.allocate() => allocate<CONSOLE_CURSOR_INFO>().ref
    ..dwSize = 0
    ..bVisible = 0;
}

// typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
//   COORD      dwSize;
//   COORD      dwCursorPosition;
//   WORD       wAttributes;
//   SMALL_RECT srWindow;
//   COORD      dwMaximumWindowSize;
// } CONSOLE_SCREEN_BUFFER_INFO;

/// CONSOLE_SCREEN_BUFFER_INFO
///
/// {@category Struct}
class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  @Int16()
  int dwSizeX;

  @Int16()
  int dwSizeY;

  @Int16()
  int dwCursorPositionX;
  @Int16()
  int dwCursorPositionY;

  @Uint16()
  int wAttributes;

  @Int16()
  int srWindowLeft;
  @Int16()
  int srWindowTop;
  @Int16()
  int srWindowRight;
  @Int16()
  int srWindowBottom;

  @Int16()
  int dwMaximumWindowSizeX;
  @Int16()
  int dwMaximumWindowSizeY;

  factory CONSOLE_SCREEN_BUFFER_INFO.allocate() =>
      allocate<CONSOLE_SCREEN_BUFFER_INFO>().ref
        ..dwSizeX = 0
        ..dwSizeY = 0
        ..dwCursorPositionX = 0
        ..dwCursorPositionY = 0
        ..wAttributes = 0
        ..srWindowLeft = 0
        ..srWindowTop = 0
        ..srWindowRight = 0
        ..srWindowBottom = 0
        ..dwMaximumWindowSizeX = 0
        ..dwMaximumWindowSizeY = 0;
}

// typedef struct _CONSOLE_SELECTION_INFO {
//   DWORD      dwFlags;
//   COORD      dwSelectionAnchor;
//   SMALL_RECT srSelection;
// } CONSOLE_SELECTION_INFO, *PCONSOLE_SELECTION_INFO;

/// CONSOLE_SELECTION_INFO
///
/// {@category Struct}
class CONSOLE_SELECTION_INFO extends Struct {
  @Uint32()
  int dwFlags;

  @Int16()
  int dwSelectionAnchorX;
  @Int16()
  int dwSelectionAnchorY;

  @Int16()
  int srSelectionLeft;
  @Int16()
  int srSelectionTop;
  @Int16()
  int srSelectionRight;
  @Int16()
  int srSelectionBottom;

  factory CONSOLE_SELECTION_INFO.allocate() =>
      allocate<CONSOLE_SELECTION_INFO>().ref
        ..dwFlags = 0
        ..dwSelectionAnchorX = 0
        ..dwSelectionAnchorY = 0
        ..srSelectionLeft = 0
        ..srSelectionTop = 0
        ..srSelectionRight = 0
        ..srSelectionBottom = 0;
}

// typedef struct _COORD {
//   SHORT X;
//   SHORT Y;
// } COORD, *PCOORD;

/// COORD
///
/// {@category Struct}
class COORD extends Struct {
  @Int16()
  int X;

  @Int16()
  int Y;

  factory COORD.allocate() => allocate<COORD>().ref
    ..X = 0
    ..Y = 0;
}

// typedef struct _CHAR_INFO {
//   union {
//     WCHAR UnicodeChar;
//     CHAR  AsciiChar;
//   } Char;
//   WORD  Attributes;
// } CHAR_INFO, *PCHAR_INFO;
class CHAR_INFO extends Struct {
  @Int16()
  int UnicodeChar;

  @Int16()
  int Attributes;

  factory CHAR_INFO.allocate() => allocate<CHAR_INFO>().ref
    ..UnicodeChar = 0
    ..Attributes = 0;
}

// typedef struct _SMALL_RECT {
//   SHORT Left;
//   SHORT Top;
//   SHORT Right;
//   SHORT Bottom;
// } SMALL_RECT;

/// SMALL_RECT
///
/// {@category Struct}
class SMALL_RECT extends Struct {
  @Int16()
  int Left;

  @Int16()
  int Top;

  @Int16()
  int Right;

  @Int16()
  int Bottom;

  factory SMALL_RECT.allocate() => allocate<SMALL_RECT>().ref
    ..Left = 0
    ..Top = 0
    ..Right = 0
    ..Bottom = 0;
}

// typedef struct _OSVERSIONINFOW {
//   DWORD dwOSVersionInfoSize;
//   DWORD dwMajorVersion;
//   DWORD dwMinorVersion;
//   DWORD dwBuildNumber;
//   DWORD dwPlatformId;
//   WCHAR szCSDVersion[128];
// } OSVERSIONINFOW, *POSVERSIONINFOW, *LPOSVERSIONINFOW, RTL_OSVERSIONINFOW, *PRTL_OSVERSIONINFOW;

const _OSVERSIONINFO_STRUCT_SIZE = (20 + (128 * 2));

/// OSVERSIONINFO
///
/// {@category Struct}
class OSVERSIONINFO extends Struct {
  @Uint32()
  int dwOSVersionInfoSize;
  @Uint32()
  int dwMajorVersion;
  @Uint32()
  int dwMinorVersion;
  @Uint32()
  int dwBuildNumber;
  @Uint32()
  int dwPlatformId;

  String get szCSDVersion =>
      addressOf.cast<Uint8>().elementAt(20).cast<Utf16>().unpackString(128);

  factory OSVERSIONINFO.allocate() =>
      allocate<Uint8>(count: _OSVERSIONINFO_STRUCT_SIZE)
          .cast<OSVERSIONINFO>()
          .ref
        ..dwOSVersionInfoSize = _OSVERSIONINFO_STRUCT_SIZE
        ..dwMajorVersion = 0
        ..dwMinorVersion = 0
        ..dwBuildNumber = 0
        ..dwPlatformId = 0
        ..addressOf.cast<Uint8>().elementAt(20).value = 0;
}

// typedef struct _BLUETOOTH_DEVICE_INFO {
//   DWORD             dwSize;
//   BLUETOOTH_ADDRESS Address;
//   ULONG             ulClassofDevice;
//   BOOL              fConnected;
//   BOOL              fRemembered;
//   BOOL              fAuthenticated;
//   SYSTEMTIME        stLastSeen;
//   SYSTEMTIME        stLastUsed;
//   WCHAR             szName[BLUETOOTH_MAX_NAME_SIZE];
// } BLUETOOTH_DEVICE_INFO_STRUCT;

/// BLUETOOTH_DEVICE_INFO
///
/// {@category Struct}
class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32()
  int dwSize;
  @Uint64()
  int Address;
  @Uint32()
  int ulClassofDevice;
  @Int32()
  int fConnected;
  @Int32()
  int fRemembered;
  @Int32()
  int fAuthenticated;

  // SYSTEMTIME is 128-bit
  @Int64()
  int stLastSeenDate;
  @Int64()
  int stLastSeenTime;

  // SYSTEMTIME is 128-bit
  @Int64()
  int stLastUsedDate;
  @Int64()
  int stLastUsedTime;

  String get szName => addressOf
      .cast<Uint8>()
      .elementAt(60)
      .cast<Utf16>()
      .unpackString(BLUETOOTH_MAX_NAME_SIZE);

  factory BLUETOOTH_DEVICE_INFO.allocate() =>
      allocate<Uint8>(count: 560).cast<BLUETOOTH_DEVICE_INFO>().ref
        ..dwSize = 560
        ..Address = 0
        ..ulClassofDevice = 0
        ..fConnected = 0
        ..fRemembered = 0
        ..fAuthenticated = 0
        ..stLastSeenDate = 0
        ..stLastSeenTime = 0
        ..stLastUsedDate = 0
        ..stLastUsedTime = 0;
}

// typedef struct _BLUETOOTH_DEVICE_SEARCH_PARAMS {
//   DWORD  dwSize;
//   BOOL   fReturnAuthenticated;
//   BOOL   fReturnRemembered;
//   BOOL   fReturnUnknown;
//   BOOL   fReturnConnected;
//   BOOL   fIssueInquiry;
//   UCHAR  cTimeoutMultiplier;
//   HANDLE hRadio;
// } BLUETOOTH_DEVICE_SEARCH_PARAMS;

/// BLUETOOTH_DEVICE_SEARCH_PARAMS
///
/// {@category Struct}
class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  @Int32()
  int dwSize;
  @Int32()
  int fReturnAuthenticated;
  @Int32()
  int fReturnRemembered;
  @Int32()
  int fReturnUnknown;
  @Int32()
  int fReturnConnected;
  @Int32()
  int fIssueInquiry;
  @Uint8()
  int cTimeoutMultiplier;
  @IntPtr()
  int hRadio;

  factory BLUETOOTH_DEVICE_SEARCH_PARAMS.allocate() =>
      allocate<BLUETOOTH_DEVICE_SEARCH_PARAMS>().ref
        ..dwSize = sizeOf<BLUETOOTH_DEVICE_SEARCH_PARAMS>()
        ..fReturnAuthenticated = 0
        ..fReturnRemembered = 0
        ..fReturnUnknown = 0
        ..fReturnConnected = 0
        ..fIssueInquiry = 0
        ..cTimeoutMultiplier = 0
        ..hRadio = 0;
}

// typedef struct BLUETOOTH_FIND_RADIO_PARAMS {
//   DWORD dwSize;
// } BLUETOOTH_FIND_RADIO_PARAMS;

/// BLUETOOTH_FIND_RADIO_PARAMS
///
/// {@category Struct}
class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  @Uint32()
  int dwSize;

  factory BLUETOOTH_FIND_RADIO_PARAMS.allocate() =>
      allocate<BLUETOOTH_FIND_RADIO_PARAMS>().ref
        ..dwSize = sizeOf<BLUETOOTH_FIND_RADIO_PARAMS>();
}

// typedef struct _BLUETOOTH_PIN_INFO {
//   UCHAR pin[BTH_MAX_PIN_SIZE];
//   UCHAR pinLength;
// } BLUETOOTH_PIN_INFO, *PBLUETOOTH_PIN_INFO;

/// BLUETOOTH_PIN_INFO
///
/// {@category Struct}
class BLUETOOTH_PIN_INFO extends Struct {
  int get pinLength =>
      addressOf.cast<Uint8>().elementAt(BTH_MAX_PIN_SIZE).value;

  set pinLength(int length) {
    addressOf.cast<Uint8>().elementAt(BTH_MAX_PIN_SIZE).value =
        min(length, BTH_MAX_PIN_SIZE);
  }

  String get pin =>
      String.fromCharCodes(addressOf.cast<Uint8>().asTypedList(pinLength));

  set pin(String pinString) {
    var pinData = Uint8List.fromList(pinString.codeUnits);

    // Set up to the length of the string, even if longer than pinLength, since
    // user may set pin then pinLength.
    for (var idx = 0; idx < min(pinData.length, BTH_MAX_PIN_SIZE); idx++) {
      addressOf.cast<Uint8>().elementAt(idx).value = pinData[idx];
    }
  }

  factory BLUETOOTH_PIN_INFO.allocate() {
    final structSize = BTH_MAX_PIN_SIZE + 1;
    final ptr = allocate<Uint8>(count: structSize);
    for (var idx = 0; idx < structSize; idx++) {
      ptr.elementAt(idx).value = 0;
    }
    return ptr.cast<BLUETOOTH_PIN_INFO>().ref;
  }
}

// typedef struct COR_FIELD_OFFSET
//     {
//     mdFieldDef ridOfField;
//     ULONG32 ulOffset;
//     } 	COR_FIELD_OFFSET;

/// COR_FIELD_OFFSET
///
/// {@category Struct}
class COR_FIELD_OFFSET extends Struct {
  @Uint32()
  int ridOfField;

  @Uint32()
  int ulOffset;

  factory COR_FIELD_OFFSET.allocate() => allocate<COR_FIELD_OFFSET>().ref
    ..ridOfField = 0
    ..ulOffset = 0;
}

// UNIMPLEMENTED CLASSES THAT ARE INCLUDED SO THAT COM OBJECTS CAN BE GENERATED

/// {@category Struct}
class EXCEPINFO extends Struct {}

/// {@category Struct}
class PROPERTYKEY extends Struct {}

/// {@category Struct}
class PROPVARIANT extends Struct {}

/// {@category Struct}
class SAFEARRAY extends Struct {}

/// {@category Struct}
class CLSID extends Struct {}

/// {@category Struct}
class NLM_SIMULATED_PROFILE_INFO extends Struct {}
