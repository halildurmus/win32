// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API. If you add a
// new struct, make sure you also add a line to struct_sizes.cpp and
// struct_sizes.dart to ensure that the C size matches the Dart representation.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'com/IDispatch.dart';
import 'com/IUnknown.dart';
import 'combase.dart';
import 'oleaut32.dart';
import 'structs.g.dart';

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

/// Contains the window class attributes that are registered by the
/// RegisterClass function.
///
/// {@category Struct}
class WNDCLASS extends Struct {
  @Uint32()
  external int style;

  external Pointer<NativeFunction<WindowProc>> lpfnWndProc;

  @Int32()
  external int cbClsExtra;

  @Int32()
  external int cbWndExtra;

  @IntPtr()
  external int hInstance;

  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int hCursor;

  @IntPtr()
  external int hbrBackground;

  external Pointer<Utf16> lpszMenuName;
  external Pointer<Utf16> lpszClassName;
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

/// Contains information about the current computer system. This includes the
/// architecture and type of the processor, the number of processors in the
/// system, the page size, and other such information.
///
/// {@category Struct}
class SYSTEM_INFO extends Struct {
  @Uint16()
  external int wProcessorArchitecture;

  @Uint16()
  external int wReserved;

  @Uint32()
  external int dwPageSize;

  external Pointer lpMinimumApplicationAddress;
  external Pointer lpMaximumApplicationAddress;

  @IntPtr()
  external int dwActiveProcessorMask;

  @Uint32()
  external int dwNumberOfProcessors;

  @Uint32()
  external int dwProcessorType;

  @Uint32()
  external int dwAllocationGranularity;

  @Uint16()
  external int wProcessorLevel;

  @Uint16()
  external int wProcessorRevision;
}

// typedef struct {
//   GUID  PowerSetting;
//   DWORD DataLength;
//   UCHAR Data[1];
// } POWERBROADCAST_SETTING, *PPOWERBROADCAST_SETTING;

/// Sent with a power setting event and contains data about the specific change.
///
/// {@category Struct}
class POWERBROADCAST_SETTING extends Struct {
  external GUID PowerSetting;
  @Uint32()
  external int DataLength;
  @Uint8()
  external int Data;
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

/// Contains information about the current state of the system battery.
///
/// {@category Struct}
class SYSTEM_BATTERY_STATE extends Struct {
  @Uint8()
  external int AcOnLine;
  @Uint8()
  external int BatteryPresent;
  @Uint8()
  external int Charging;
  @Uint8()
  external int Discharging;

  @Uint8()
  external int Spare1a;
  @Uint8()
  external int Spare1b;
  @Uint8()
  external int Spare1c;

  @Uint8()
  external int Tag;

  @Uint32()
  external int MaxCapacity;
  @Uint32()
  external int RemainingCapacity;
  @Uint32()
  external int Rate;
  @Uint32()
  external int EstimatedTime;

  @Uint32()
  external int DefaultAlert1;
  @Uint32()
  external int DefaultAlert2;
}

// typedef struct _STARTUPINFOEXW {
//   STARTUPINFOW                 StartupInfo;
//   LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList;
// } STARTUPINFOEXW, *LPSTARTUPINFOEXW;

/// Specifies the window station, desktop, standard handles, and attributes for
/// a new process. It is used with the CreateProcess and CreateProcessAsUser
/// functions.
///
/// {@category Struct}
class STARTUPINFOEX extends Struct {
  external STARTUPINFO StartupInfo;
  external Pointer lpAttributeList;
}

// struct tagVARIANT
//    {
//        VARTYPE vt;
//        WORD wReserved1;
//        WORD wReserved2;
//        WORD wReserved3;
//        union
//            {
//            LONGLONG llVal;
//            LONG lVal;
//            BYTE bVal;
//            SHORT iVal;
//            ...
//    } ;

/// The VARIANT type is used in Win32 to represent a dynamic type. It is
/// represented as a struct containing a union of the types that could be
/// stored.
///
/// VARIANTs must be initialized with [VariantInit] before their use.

/// {@category Struct}

class VARIANT extends Struct {
  // The size of a union type equals the largest member it can contain, which in
  // the case of VARIANT is a struct of two pointers (BRECORD).

  @Uint16()
  external int vt;
  @Uint16()
  external int wReserved1;
  @Uint16()
  external int wReserved2;
  @Uint16()
  external int wReserved3;

  // LONGLONG -> __int64 -> Int64
  int get llVal => _data;
  set llVal(int val) => _data = val;

  // LONG -> long -> Int32
  int get lVal => ((_data & 0xFFFFFFFF00000000) >> 32).toSigned(32);
  set lVal(int val) => _data = (val.toUnsigned(32) << 32);

  // BYTE => unsigned char => Uint8
  int get bVal => ((_data & 0xFF00000000000000) >> 56).toUnsigned(8);
  set bVal(int val) => _data = val << 56;

  // SHORT => short => Int16
  int get iVal => ((_data & 0xFFFF000000000000) >> 48).toSigned(16);
  set iVal(int val) => _data = (val.toUnsigned(16) << 48);

  // BSTR => OLECHAR* => Pointer<Utf16>
  Pointer<Utf16> get bstrVal => Pointer<Utf16>.fromAddress(_data);
  set bstrVal(Pointer<Utf16> val) => _data = val.address;

  // FLOAT => float => double
  double get fltVal =>
      (ByteData(4)..setUint32(0, (_data & 0xFFFFFFFF00000000) >> 32))
          .getFloat32(0);
  set fltVal(double val) =>
      (ByteData(4)..setFloat32(0, val)).getUint32(0) << 32;

  // DOUBLE => double => double
  double get dblVal => (ByteData(8)..setUint64(0, _data)).getFloat64(0);
  set dblVal(double val) => (ByteData(8)..setFloat64(0, val)).getUint64(0);

  // IUnknown
  IUnknown get punkVal => IUnknown(Pointer<COMObject>.fromAddress(_data));
  set punkVal(IUnknown val) => _data = val.ptr.address;

  // IDispatch
  IDispatch get pdispVal => IDispatch(Pointer<COMObject>.fromAddress(_data));
  set pdispVal(IDispatch val) => _data = val.ptr.address;

  // BYTE*
  Pointer<Uint8> get pbVal => Pointer<Uint8>.fromAddress(_data);
  set pbVal(Pointer<Uint8> val) => _data = val.address;

  // SHORT*
  Pointer<Int16> get piVal => Pointer<Int16>.fromAddress(_data);
  set piVal(Pointer<Int16> val) => _data = val.address;

  // LONG*
  Pointer<Int32> get plVal => Pointer<Int32>.fromAddress(_data);
  set plVal(Pointer<Int32> val) => _data = val.address;

  // LONGLONG*
  Pointer<Int64> get pllVal => Pointer<Int64>.fromAddress(_data);
  set pllVal(Pointer<Int64> val) => _data = val.address;

  // FLOAT*
  Pointer<Float> get pfltVal => Pointer<Float>.fromAddress(_data);
  set pfltVal(Pointer<Float> val) => _data = val.address;

  // DOUBLE*
  Pointer<Double> get pdblVal => Pointer<Double>.fromAddress(_data);
  set pdblVal(Pointer<Double> val) => _data = val.address;

  Pointer get byref => Pointer.fromAddress(_data);
  set byref(Pointer val) => _data = val.address;

  // CHAR -> char -> Int8
  int get cVal => (_data & 0xFF00000000000000) >> 56.toSigned(8);
  set cVal(int val) => _data = (val.toUnsigned(8) << 56);

  // USHORT -> unsigned short -> Uint16
  int get uiVal => ((_data & 0xFFFF000000000000) >> 48).toUnsigned(16);
  set uiVal(int val) => _data = val << 48;

  // ULONG -> unsigned long -> Uint32
  int get ulVal => ((_data & 0xFFFFFFFF00000000) >> 32).toUnsigned(32);
  set ulVal(int val) => _data = val << 32;

  // ULONGLONG -> unsigned long long -> Uint64
  int get ullVal => _data;
  set ullVal(int val) => _data;

  // INT -> int -> Int32
  int get intVal => ((_data & 0xFFFFFFFF00000000) >> 32).toSigned(32);
  set intVal(int val) => _data = (val.toUnsigned(32) << 32);

  // UINT -> unsigned int -> Uint32
  int get uintVal => ((_data & 0xFFFFFFFF00000000) >> 32).toUnsigned(32);
  set uintVal(int val) => _data = val << 32;

  @Uint64()
  external int _data;
  @IntPtr()
  external int _data2;
}

// typedef struct _COMDLG_FILTERSPEC {
//   LPCWSTR pszName;
//   LPCWSTR pszSpec;
// } COMDLG_FILTERSPEC;

/// Used generically to filter elements.
///
/// {@category Struct}
class COMDLG_FILTERSPEC extends Struct {
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszSpec;
}

// typedef struct tagACCEL {
//     BYTE   fVirt;               /* Also called the flags field */
//     WORD   key;
//     WORD  cmd;
// } ACCEL, *LPACCEL;

/// Defines an accelerator key used in an accelerator table.
///
/// {@category Struct}
class ACCEL extends Struct {
  @Uint8()
  external int fVirt;
  @Uint16()
  external int key;
  @Uint16()
  external int cmd;
}

// typedef struct tagLASTINPUTINFO {
//   UINT  cbSize;
//   DWORD dwTime;
// } LASTINPUTINFO, *PLASTINPUTINFO;

/// Contains the time of the last input.
///
/// {@category Struct}
class LASTINPUTINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwTime;
}

const PHYSICAL_MONITOR_DESCRIPTION_SIZE = 128;

// typedef struct _PHYSICAL_MONITOR {
//   HANDLE hPhysicalMonitor;
//   WCHAR  szPhysicalMonitorDescription[PHYSICAL_MONITOR_DESCRIPTION_SIZE];
// } PHYSICAL_MONITOR, *LPPHYSICAL_MONITOR;

/// Contains a handle and text description corresponding to a physical monitor.
///
/// {@category Struct}
class PHYSICAL_MONITOR extends Struct {
  @IntPtr()
  external int hPhysicalMonitor;
  @Uint64()
  external int _szPhysicalMonitorDescription0;
  @Uint64()
  external int _szPhysicalMonitorDescription1;
  @Uint64()
  external int _szPhysicalMonitorDescription2;
  @Uint64()
  external int _szPhysicalMonitorDescription3;
  @Uint64()
  external int _szPhysicalMonitorDescription4;
  @Uint64()
  external int _szPhysicalMonitorDescription5;
  @Uint64()
  external int _szPhysicalMonitorDescription6;
  @Uint64()
  external int _szPhysicalMonitorDescription7;
  @Uint64()
  external int _szPhysicalMonitorDescription8;
  @Uint64()
  external int _szPhysicalMonitorDescription9;
  @Uint64()
  external int _szPhysicalMonitorDescription10;
  @Uint64()
  external int _szPhysicalMonitorDescription11;
  @Uint64()
  external int _szPhysicalMonitorDescription12;
  @Uint64()
  external int _szPhysicalMonitorDescription13;
  @Uint64()
  external int _szPhysicalMonitorDescription14;
  @Uint64()
  external int _szPhysicalMonitorDescription15;
  @Uint64()
  external int _szPhysicalMonitorDescription16;
  @Uint64()
  external int _szPhysicalMonitorDescription17;
  @Uint64()
  external int _szPhysicalMonitorDescription18;
  @Uint64()
  external int _szPhysicalMonitorDescription19;
  @Uint64()
  external int _szPhysicalMonitorDescription20;
  @Uint64()
  external int _szPhysicalMonitorDescription21;
  @Uint64()
  external int _szPhysicalMonitorDescription22;
  @Uint64()
  external int _szPhysicalMonitorDescription23;
  @Uint64()
  external int _szPhysicalMonitorDescription24;
  @Uint64()
  external int _szPhysicalMonitorDescription25;
  @Uint64()
  external int _szPhysicalMonitorDescription26;
  @Uint64()
  external int _szPhysicalMonitorDescription27;
  @Uint64()
  external int _szPhysicalMonitorDescription28;
  @Uint64()
  external int _szPhysicalMonitorDescription29;
  @Uint64()
  external int _szPhysicalMonitorDescription30;
  @Uint64()
  external int _szPhysicalMonitorDescription31;

  String get szPhysicalMonitorDescription =>
      String.fromCharCodes(Uint64List.fromList([
        _szPhysicalMonitorDescription0, _szPhysicalMonitorDescription1,
        _szPhysicalMonitorDescription2, _szPhysicalMonitorDescription3, //
        _szPhysicalMonitorDescription4, _szPhysicalMonitorDescription5,
        _szPhysicalMonitorDescription6, _szPhysicalMonitorDescription7,
        _szPhysicalMonitorDescription8, _szPhysicalMonitorDescription9,
        _szPhysicalMonitorDescription10, _szPhysicalMonitorDescription11,
        _szPhysicalMonitorDescription12, _szPhysicalMonitorDescription13,
        _szPhysicalMonitorDescription14, _szPhysicalMonitorDescription15,
        _szPhysicalMonitorDescription16, _szPhysicalMonitorDescription17,
        _szPhysicalMonitorDescription18, _szPhysicalMonitorDescription19,
        _szPhysicalMonitorDescription20, _szPhysicalMonitorDescription21,
        _szPhysicalMonitorDescription22, _szPhysicalMonitorDescription23,
        _szPhysicalMonitorDescription24, _szPhysicalMonitorDescription25,
        _szPhysicalMonitorDescription26, _szPhysicalMonitorDescription27,
        _szPhysicalMonitorDescription28, _szPhysicalMonitorDescription29,
        _szPhysicalMonitorDescription30, _szPhysicalMonitorDescription31
      ]).buffer.asUint16List());
}

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

/// Contains information the ChooseColor function uses to initialize the Color
/// dialog box. After the user closes the dialog box, the system returns
/// information about the user's selection in this structure.
///
/// {@category Struct}
class CHOOSECOLOR extends Struct {
  @Uint32()
  external int lStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hInstance;

  /// COLORREF is a DWORD that contains RGB values in the form 0x00bbggrr
  @Int32()
  external int rgbResult;

  /// COLORREF is a DWORD that contains RGB values in the form 0x00bbggrr
  external Pointer<Uint32> lpCustColors;

  @Uint32()
  external int Flags;

  @IntPtr()
  external int lCustData;

  external Pointer<IntPtr> lpfnHook;
  external Pointer<Uint16> lpTemplateName;
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

/// Contains information that the FindText and ReplaceText functions use to
/// initialize the Find and Replace dialog boxes. The FINDMSGSTRING registered
/// message uses this structure to pass the user's search or replacement input
/// to the owner window of a Find or Replace dialog box.
///
/// {@category Struct}
class FINDREPLACE extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int Flags;
  external Pointer<Utf16> lpstrFindWhat;
  external Pointer<Utf16> lpstrReplaceWith;
  @Uint16()
  external int wFindWhatLen;
  @Uint16()
  external int wReplaceWithLen;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<DlgProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
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

/// Contains information that the ChooseFont function uses to initialize the
/// Font dialog box. After the user closes the dialog box, the system returns
/// information about the user's selection in this structure.
///
/// {@category Struct}
class CHOOSEFONT extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hDC;

  external Pointer<LOGFONT> lpLogFont;

  @Int32()
  external int iPointSize;

  @Uint32()
  external int Flags;

  @Int32()
  external int rgbColors;
  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<DlgProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpszStyle;
  @Uint16()
  external int nFontType;
  @Uint16()
  external int reserved;
  @Int32()
  external int nSizeMin;
  @Int32()
  external int nSizeMax;
}

// typedef struct _STRRET {
//   UINT  uType;
//   union {
//     LPWSTR pOleStr;
//     UINT   uOffset;
//     char   cStr[260];
//   } DUMMYUNIONNAME;
// } STRRET;

/// Contains strings returned from the IShellFolder interface methods.
///
/// {@category Struct}
class STRRET extends Struct {
  @Uint32()
  external int uType;

  int get uOffset => _cStr0;

  @Uint32()
  external int _cStr0;
  @Uint32()
  external int _cStr1;
  @Uint32()
  external int _cStr2;
  @Uint32()
  external int _cStr3;
  @Uint32()
  external int _cStr4;
  @Uint32()
  external int _cStr5;
  @Uint32()
  external int _cStr6;
  @Uint32()
  external int _cStr7;
  @Uint32()
  external int _cStr8;
  @Uint32()
  external int _cStr9;
  @Uint32()
  external int _cStr10;
  @Uint32()
  external int _cStr11;
  @Uint32()
  external int _cStr12;
  @Uint32()
  external int _cStr13;
  @Uint32()
  external int _cStr14;
  @Uint32()
  external int _cStr15;
  @Uint32()
  external int _cStr16;
  @Uint32()
  external int _cStr17;
  @Uint32()
  external int _cStr18;
  @Uint32()
  external int _cStr19;
  @Uint32()
  external int _cStr20;
  @Uint32()
  external int _cStr21;
  @Uint32()
  external int _cStr22;
  @Uint32()
  external int _cStr23;
  @Uint32()
  external int _cStr24;
  @Uint32()
  external int _cStr25;
  @Uint32()
  external int _cStr26;
  @Uint32()
  external int _cStr27;
  @Uint32()
  external int _cStr28;
  @Uint32()
  external int _cStr29;
  @Uint32()
  external int _cStr30;
  @Uint32()
  external int _cStr31;
  @Uint32()
  external int _cStr32;
  @Uint32()
  external int _cStr33;
  @Uint32()
  external int _cStr34;
  @Uint32()
  external int _cStr35;
  @Uint32()
  external int _cStr36;
  @Uint32()
  external int _cStr37;
  @Uint32()
  external int _cStr38;
  @Uint32()
  external int _cStr39;
  @Uint32()
  external int _cStr40;
  @Uint32()
  external int _cStr41;
  @Uint32()
  external int _cStr42;
  @Uint32()
  external int _cStr43;
  @Uint32()
  external int _cStr44;
  @Uint32()
  external int _cStr45;
  @Uint32()
  external int _cStr46;
  @Uint32()
  external int _cStr47;
  @Uint32()
  external int _cStr48;
  @Uint32()
  external int _cStr49;
  @Uint32()
  external int _cStr50;
  @Uint32()
  external int _cStr51;
  @Uint32()
  external int _cStr52;
  @Uint32()
  external int _cStr53;
  @Uint32()
  external int _cStr54;
  @Uint32()
  external int _cStr55;
  @Uint32()
  external int _cStr56;
  @Uint32()
  external int _cStr57;
  @Uint32()
  external int _cStr58;
  @Uint32()
  external int _cStr59;
  @Uint32()
  external int _cStr60;
  @Uint32()
  external int _cStr61;
  @Uint32()
  external int _cStr62;
  @Uint32()
  external int _cStr63;
  @Uint32()
  external int _cStr64;

  String get cStr => String.fromCharCodes(Uint32List.fromList([
        _cStr0, _cStr1, _cStr2, _cStr3, //
        _cStr4, _cStr5, _cStr6, _cStr7,
        _cStr8, _cStr9, _cStr10, _cStr11,
        _cStr12, _cStr13, _cStr14, _cStr15,
        _cStr16, _cStr17, _cStr18, _cStr19,
        _cStr20, _cStr21, _cStr22, _cStr23,
        _cStr24, _cStr25, _cStr26, _cStr27,
        _cStr28, _cStr29, _cStr30, _cStr31,
        _cStr32, _cStr33, _cStr34, _cStr35,
        _cStr36, _cStr37, _cStr38, _cStr39,
        _cStr40, _cStr41, _cStr42, _cStr43,
        _cStr44, _cStr45, _cStr46, _cStr47,
        _cStr48, _cStr49, _cStr50, _cStr51,
        _cStr52, _cStr53, _cStr54, _cStr55,
        _cStr56, _cStr57, _cStr58, _cStr59,
        _cStr60, _cStr61, _cStr62, _cStr63,
        _cStr64
      ]).buffer.asUint16List());
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

/// Contains information that the GetOpenFileName and GetSaveFileName functions
/// use to initialize an Open or Save As dialog box. After the user closes the
/// dialog box, the system returns information about the user's selection in
/// this structure.
///
/// {@category Struct}
class OPENFILENAME extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;

  external Pointer<Utf16> lpstrFilter;
  external Pointer<Utf16> lpstrCustomFilter;

  @Uint32()
  external int nMaxCustFilter;
  @Uint32()
  external int nFilterIndex;

  external Pointer<Utf16> lpstrFile;
  @Uint32()
  external int nMaxFile;

  external Pointer<Utf16> lpstrFileTitle;
  @Uint32()
  external int nMaxFileTitle;

  external Pointer<Utf16> lpstrInitialDir;
  external Pointer<Utf16> lpstrTitle;

  @Uint32()
  external int Flags;
  @Uint16()
  external int nFileOffset;
  @Uint16()
  external int nFileExtension;

  external Pointer<Utf16> lpstrDefExt;

  @IntPtr()
  external int lCustData;

  external Pointer<NativeFunction<DlgProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
  external Pointer<Void> pvReserved;

  @Uint32()
  external int dwReserved;
  @Uint32()
  external int FlagsEx;
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

/// The LOGFONT structure defines the attributes of a font.
///
/// {@category Struct}
class LOGFONT extends Struct {
  @Int32()
  external int lfHeight;
  @Int32()
  external int lfWidth;
  @Int32()
  external int lfEscapement;
  @Int32()
  external int lfOrientation;
  @Int32()
  external int lfWeight;
  @Uint8()
  external int lfItalic;
  @Uint8()
  external int lfUnderline;
  @Uint8()
  external int lfStrikeOut;
  @Uint8()
  external int lfCharSet;
  @Uint8()
  external int lfOutPrecision;
  @Uint8()
  external int lfClipPrecision;
  @Uint8()
  external int lfQuality;
  @Uint8()
  external int lfPitchAndFamily;

  // Need to use @Int32() here, both because of the lack of fixed-size
  // arrays, and because @Int64() doesn't line up with word boundaries
  @Uint32()
  external int _lfFaceName0;
  @Uint32()
  external int _lfFaceName1;
  @Uint32()
  external int _lfFaceName2;
  @Uint32()
  external int _lfFaceName3;
  @Uint32()
  external int _lfFaceName4;
  @Uint32()
  external int _lfFaceName5;
  @Uint32()
  external int _lfFaceName6;
  @Uint32()
  external int _lfFaceName7;
  @Uint32()
  external int _lfFaceName8;
  @Uint32()
  external int _lfFaceName9;
  @Uint32()
  external int _lfFaceName10;
  @Uint32()
  external int _lfFaceName11;
  @Uint32()
  external int _lfFaceName12;
  @Uint32()
  external int _lfFaceName13;
  @Uint32()
  external int _lfFaceName14;
  @Uint32()
  external int _lfFaceName15;

  String get lfFaceName => String.fromCharCodes(Uint32List.fromList([
        _lfFaceName0, _lfFaceName1, _lfFaceName2, _lfFaceName3, //
        _lfFaceName4, _lfFaceName5, _lfFaceName6, _lfFaceName7,
        _lfFaceName8, _lfFaceName9, _lfFaceName10, _lfFaceName11,
        _lfFaceName12, _lfFaceName13, _lfFaceName14, _lfFaceName15,
      ]).buffer.asUint16List());
}

// typedef struct tagENUMLOGFONTEXW {
//   LOGFONTW elfLogFont;
//   WCHAR    elfFullName[LF_FULLFACESIZE];
//   WCHAR    elfStyle[LF_FACESIZE];
//   WCHAR    elfScript[LF_FACESIZE];
// } ENUMLOGFONTEXW, *LPENUMLOGFONTEXW;

/// The ENUMLOGFONTEX structure contains information about an enumerated font.
///
/// {@category Struct}
class ENUMLOGFONTEX extends Struct {
  external LOGFONT elfLogFont;

  @Uint32()
  external int _elfFullName0;
  @Uint32()
  external int _elfFullName1;
  @Uint32()
  external int _elfFullName2;
  @Uint32()
  external int _elfFullName3;
  @Uint32()
  external int _elfFullName4;
  @Uint32()
  external int _elfFullName5;
  @Uint32()
  external int _elfFullName6;
  @Uint32()
  external int _elfFullName7;
  @Uint32()
  external int _elfFullName8;
  @Uint32()
  external int _elfFullName9;
  @Uint32()
  external int _elfFullName10;
  @Uint32()
  external int _elfFullName11;
  @Uint32()
  external int _elfFullName12;
  @Uint32()
  external int _elfFullName13;
  @Uint32()
  external int _elfFullName14;
  @Uint32()
  external int _elfFullName15;
  @Uint32()
  external int _elfFullName16;
  @Uint32()
  external int _elfFullName17;
  @Uint32()
  external int _elfFullName18;
  @Uint32()
  external int _elfFullName19;
  @Uint32()
  external int _elfFullName20;
  @Uint32()
  external int _elfFullName21;
  @Uint32()
  external int _elfFullName22;
  @Uint32()
  external int _elfFullName23;
  @Uint32()
  external int _elfFullName24;
  @Uint32()
  external int _elfFullName25;
  @Uint32()
  external int _elfFullName26;
  @Uint32()
  external int _elfFullName27;
  @Uint32()
  external int _elfFullName28;
  @Uint32()
  external int _elfFullName29;
  @Uint32()
  external int _elfFullName30;
  @Uint32()
  external int _elfFullName31;

  String get elfFullName => String.fromCharCodes(Uint32List.fromList([
        _elfFullName0, _elfFullName1, _elfFullName2, _elfFullName3, //
        _elfFullName4, _elfFullName5, _elfFullName6, _elfFullName7,
        _elfFullName8, _elfFullName9, _elfFullName10, _elfFullName11,
        _elfFullName12, _elfFullName13, _elfFullName14, _elfFullName15,
        _elfFullName16, _elfFullName17, _elfFullName18, _elfFullName19,
        _elfFullName20, _elfFullName21, _elfFullName22, _elfFullName23,
        _elfFullName24, _elfFullName25, _elfFullName26, _elfFullName27,
        _elfFullName28, _elfFullName29, _elfFullName30, _elfFullName31
      ]).buffer.asUint16List());

  @Uint32()
  external int _elfStyle0;
  @Uint32()
  external int _elfStyle1;
  @Uint32()
  external int _elfStyle2;
  @Uint32()
  external int _elfStyle3;
  @Uint32()
  external int _elfStyle4;
  @Uint32()
  external int _elfStyle5;
  @Uint32()
  external int _elfStyle6;
  @Uint32()
  external int _elfStyle7;
  @Uint32()
  external int _elfStyle8;
  @Uint32()
  external int _elfStyle9;
  @Uint32()
  external int _elfStyle10;
  @Uint32()
  external int _elfStyle11;
  @Uint32()
  external int _elfStyle12;
  @Uint32()
  external int _elfStyle13;
  @Uint32()
  external int _elfStyle14;
  @Uint32()
  external int _elfStyle15;
  String get elfStyle => String.fromCharCodes(Uint32List.fromList([
        _elfStyle0, _elfStyle1, _elfStyle2, _elfStyle3, //
        _elfStyle4, _elfStyle5, _elfStyle6, _elfStyle7,
        _elfStyle8, _elfStyle9, _elfStyle10, _elfStyle11,
        _elfStyle12, _elfStyle13, _elfStyle14, _elfStyle15,
      ]).buffer.asUint16List());

  @Uint32()
  external int _elfScript0;
  @Uint32()
  external int _elfScript1;
  @Uint32()
  external int _elfScript2;
  @Uint32()
  external int _elfScript3;
  @Uint32()
  external int _elfScript4;
  @Uint32()
  external int _elfScript5;
  @Uint32()
  external int _elfScript6;
  @Uint32()
  external int _elfScript7;
  @Uint32()
  external int _elfScript8;
  @Uint32()
  external int _elfScript9;
  @Uint32()
  external int _elfScript10;
  @Uint32()
  external int _elfScript11;
  @Uint32()
  external int _elfScript12;
  @Uint32()
  external int _elfScript13;
  @Uint32()
  external int _elfScript14;
  @Uint32()
  external int _elfScript15;

  String get elfScript => String.fromCharCodes(Uint32List.fromList([
        _elfScript0, _elfScript1, _elfScript2, _elfScript3, //
        _elfScript4, _elfScript5, _elfScript6, _elfScript7,
        _elfScript8, _elfScript9, _elfScript10, _elfScript11,
        _elfScript12, _elfScript13, _elfScript14, _elfScript15,
      ]).buffer.asUint16List());
}

// typedef struct tagPAINTSTRUCT {
//   HDC  hdc;
//   BOOL fErase;
//   RECT rcPaint;
//   BOOL fRestore;
//   BOOL fIncUpdate;
//   BYTE rgbReserved[32];
// } PAINTSTRUCT, *PPAINTSTRUCT, *NPPAINTSTRUCT, *LPPAINTSTRUCT;

/// The PAINTSTRUCT structure contains information for an application. This
/// information can be used to paint the client area of a window owned by that
/// application.
///
/// {@category Struct}
class PAINTSTRUCT extends Struct {
  @IntPtr()
  external int hdc;
  @Int32()
  external int fErase;

  external RECT rcPaint;

  @Int32()
  external int fRestore;
  @Int32()
  external int fIncUpdate;
  @Uint64()
  external int rgb1;
  @Uint64()
  external int rgb2;
  @Uint64()
  external int rgb3;
  @Uint64()
  external int rgb4;
}

// typedef struct tagINPUT {
//   DWORD type;
//   union {
//     MOUSEINPUT    mi;
//     KEYBDINPUT    ki;
//     HARDWAREINPUT hi;
//   } DUMMYUNIONNAME;
// } INPUT, *PINPUT, *LPINPUT;

/// Used by SendInput to store information for synthesizing input events such as
/// keystrokes, mouse movement, and mouse clicks.
///
/// {@category Struct}
class INPUT extends Struct {
  // 28 bytes on 32-bit, 40 bytes on 64-bit
  @Uint32()
  external int type;
  @Int32()
  external int _data0;
  @IntPtr()
  external int _data1;
  @IntPtr()
  external int _data2;
  @IntPtr()
  external int _data3;
  @Uint64()
  external int _data4;
}

extension PointerINPUTExtension on Pointer<INPUT> {
  // Location adjusts for padding on 32-bit or 64-bit
  MOUSEINPUT get mi =>
      MOUSEINPUT(cast<Uint8>().elementAt(sizeOf<IntPtr>()).cast());
  KEYBDINPUT get ki =>
      KEYBDINPUT(cast<Uint8>().elementAt(sizeOf<IntPtr>()).cast());
  HARDWAREINPUT get hi =>
      HARDWAREINPUT(cast<Uint8>().elementAt(sizeOf<IntPtr>()).cast());
}

// typedef struct tagMOUSEINPUT {
//   LONG      dx;
//   LONG      dy;
//   DWORD     mouseData;
//   DWORD     dwFlags;
//   DWORD     time;
//   ULONG_PTR dwExtraInfo;
// } MOUSEINPUT, *PMOUSEINPUT, *LPMOUSEINPUT;

/// Contains information about a simulated mouse event.
///
/// {@category Struct}
class MOUSEINPUT {
  Pointer<Uint32> ptr;

  MOUSEINPUT(this.ptr);

  int get dx => ptr.value;
  int get dy => ptr.elementAt(1).value;

  set dx(int value) => ptr.value = value;
  set dy(int value) => ptr.elementAt(1).value = value;

  int get mouseData => ptr.elementAt(2).value;
  int get dwFlags => ptr.elementAt(3).value;
  int get time => ptr.elementAt(4).value;
  int get dwExtraInfo => ptr.elementAt(5).value;

  set mouseData(int value) => ptr.elementAt(2).value = value;
  set dwFlags(int value) => ptr.elementAt(3).value = value;
  set time(int value) => ptr.elementAt(4).value = value;
  set dwExtraInfo(int value) => ptr.elementAt(5).value = value;
}

// typedef struct tagKEYBDINPUT {
//   WORD      wVk;
//   WORD      wScan;
//   DWORD     dwFlags;
//   DWORD     time;
//   ULONG_PTR dwExtraInfo;
// } KEYBDINPUT, *PKEYBDINPUT, *LPKEYBDINPUT;

/// Contains information about a simulated keyboard event.
///
/// {@category Struct}
class KEYBDINPUT {
  Pointer<Uint16> ptr;

  KEYBDINPUT(this.ptr);

  int get wVk => ptr.value;
  int get wScan => ptr.elementAt(1).value;
  int get dwFlags => ptr.elementAt(2).cast<Uint32>().value;
  int get time => ptr.elementAt(4).cast<Uint32>().value;
  int get dwExtraInfo => ptr.elementAt(6).cast<IntPtr>().value;

  set wVk(int value) => ptr.value = value;
  set wScan(int value) => ptr.elementAt(1).value = value;
  set dwFlags(int value) => ptr.elementAt(2).cast<Uint32>().value = value;
  set time(int value) => ptr.elementAt(4).cast<Uint32>().value = value;
  set dwExtraInfo(int value) => ptr.elementAt(6).cast<IntPtr>().value = value;
}

// typedef struct tagHARDWAREINPUT {
//   DWORD uMsg;
//   WORD  wParamL;
//   WORD  wParamH;
// } HARDWAREINPUT, *PHARDWAREINPUT, *LPHARDWAREINPUT;

/// Contains information about a simulated message generated by an input device
/// other than a keyboard or mouse.
///
/// {@category Struct}
class HARDWAREINPUT {
  Pointer<Uint16> ptr;

  HARDWAREINPUT(this.ptr);

  int get uMsg => ptr.cast<Uint32>().value;
  int get wParamL => ptr.elementAt(2).value;
  int get wParamH => ptr.elementAt(3).value;

  set uMsg(int value) => ptr.cast<Uint32>().value = value;
  set wParamL(int value) => ptr.elementAt(2).value = value;
  set wParamH(int value) => ptr.elementAt(3).value = value;
}

// typedef struct _SHELLEXECUTEINFOW {
//   DWORD     cbSize;
//   ULONG     fMask;
//   HWND      hwnd;
//   LPCWSTR   lpVerb;
//   LPCWSTR   lpFile;
//   LPCWSTR   lpParameters;
//   LPCWSTR   lpDirectory;
//   int       nShow;
//   HINSTANCE hInstApp;
//   void      *lpIDList;
//   LPCWSTR   lpClass;
//   HKEY      hkeyClass;
//   DWORD     dwHotKey;
//   union {
//     HANDLE hIcon;
//     HANDLE hMonitor;
//   } DUMMYUNIONNAME;
//   HANDLE    hProcess;
// } SHELLEXECUTEINFOW, *LPSHELLEXECUTEINFOW;

/// Contains information used by ShellExecuteEx.
///
/// {@category Struct}
class SHELLEXECUTEINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @IntPtr()
  external int hwnd;

  external Pointer<Utf16> lpVerb;
  external Pointer<Utf16> lpFile;
  external Pointer<Utf16> lpParameters;
  external Pointer<Utf16> lpDirectory;

  @Int32()
  external int nShow;
  @IntPtr()
  external int hInstApp;
  external Pointer lpIDList;
  external Pointer<Utf16> lpClass;
  @IntPtr()
  external int hkeyClass;
  @Uint32()
  external int dwHotKey;
  @IntPtr()
  external int hIcon;

  int get hMonitor => hIcon;
  set hMonitor(int val) => hIcon = val;

  @IntPtr()
  external int hProcess;
}

// typedef struct _GUID {
//     unsigned long  Data1;
//     unsigned short Data2;
//     unsigned short Data3;
//     unsigned char  Data4[ 8 ];
// } GUID;

/// Represents a globally unique identifier (GUID).
///
/// {@category Struct}
class GUID extends Struct {
  @Uint32()
  external int Data1;
  @Uint16()
  external int Data2;
  @Uint16()
  external int Data3;
  @Uint64()
  external int Data4;

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

  /// Create GUID from common {FDD39AD0-238F-46AF-ADB4-6C85480369C7} format
  void setGUID(String guidString) {
    assert(guidString.length == 38);
    Data1 = int.parse(guidString.substring(1, 9), radix: 16);
    Data2 = int.parse(guidString.substring(10, 14), radix: 16);
    Data3 = int.parse(guidString.substring(15, 19), radix: 16);

    // Final component is pushed on the stack in reverse order per x64
    // calling convention.
    final rawString = guidString.substring(35, 37) +
        guidString.substring(33, 35) +
        guidString.substring(31, 33) +
        guidString.substring(29, 31) +
        guidString.substring(27, 29) +
        guidString.substring(25, 27) +
        guidString.substring(22, 24) +
        guidString.substring(20, 22);

    // We need to split this to avoid overflowing a signed int.parse()
    Data4 = (int.parse(rawString.substring(0, 4), radix: 16) << 48) +
        int.parse(rawString.substring(4, 16), radix: 16);
  }
}

// typedef struct tagBITMAPFILEHEADER {
//   WORD  bfType;
//   DWORD bfSize;
//   WORD  bfReserved1;
//   WORD  bfReserved2;
//   DWORD bfOffBits;
// } BITMAPFILEHEADER, *LPBITMAPFILEHEADER, *PBITMAPFILEHEADER;

/// The BITMAPFILEHEADER structure contains information about the type, size,
/// and layout of a file that contains a DIB.
///
/// {@category Struct}
class BITMAPFILEHEADER extends Struct {
  @Uint16()
  external int bfType;
  @Uint16()
  external int _bfSizeLo;
  @Uint16()
  external int _bfSizeHi;
  @Uint16()
  external int bfReserved1;
  @Uint16()
  external int bfReserved2;
  @Uint16()
  external int _bfOffBitsLo;
  @Uint16()
  external int _bfOffBitsHi;

  int get bfSize => (_bfSizeHi << 16) + _bfSizeLo;

  set bfSize(int value) {
    _bfSizeHi = (value & 0xFFFF0000) >> 16;
    _bfSizeLo = value & 0xFFFF;
  }

  int get bfOffBits => (_bfOffBitsHi << 16) + _bfOffBitsLo;

  set bfOffBits(int value) {
    _bfOffBitsHi = (value & 0xFFFF0000) >> 16;
    _bfOffBitsLo = value & 0xFFFF;
  }
}

// typedef struct _SHITEMID
//     {
//     USHORT cb;
//     BYTE abID[ 1 ];
//     }

/// Defines an item identifier.
///
/// {@category Struct}
class SHITEMID extends Struct {
  // Splitting this is necessary becaue otherwise Dart allocates the struct as 4
  // bytes.
  @Uint8()
  external int _cb_hi;
  @Uint8()
  external int _cb_lo;
  @Uint8()
  external int abID;

  int get cb => (_cb_hi << 8) + _cb_lo;
  set cb(int value) {
    _cb_hi = (value & 0xFF00) >> 8;
    _cb_lo = value & 0x00FF;
  }
}

// typedef struct _CHAR_INFO {
//   union {
//     WCHAR UnicodeChar;
//     CHAR  AsciiChar;
//   } Char;
//   WORD  Attributes;
// } CHAR_INFO, *PCHAR_INFO;

/// Specifies a Unicode or ANSI character and its attributes. This structure is
/// used by console functions to read from and write to a console screen buffer.
///
/// {@category Struct}
class CHAR_INFO extends Struct {
  @Int16()
  external int UnicodeChar;

  @Int16()
  external int Attributes;
}

// typedef struct {
//   DWORD style;
//   DWORD dwExtendedStyle;
//   WORD  cdit;
//   short x;
//   short y;
//   short cx;
//   short cy;
// } DLGTEMPLATE;

/// Defines the dimensions and style of a dialog box. This structure, always the
/// first in a standard template for a dialog box, also specifies the number of
/// controls in the dialog box and therefore specifies the number of subsequent
/// DLGITEMTEMPLATE structures in the template.
///
/// {@category Struct}
class DLGTEMPLATE extends Struct {
  // Work around struct packing issues in Dart
  @Uint16()
  external int _styleLo;
  @Uint16()
  external int _styleHi;
  @Uint16()
  external int _dwExtendedStyleLo;
  @Uint16()
  external int _dwExtendedStyleHi;

  @Uint16()
  external int cdit;
  @Uint16()
  external int x;
  @Uint16()
  external int y;
  @Uint16()
  external int cx;
  @Uint16()
  external int cy;

  int get style => (_styleHi << 16) + _styleLo;
  int get dwExtendedStyle => (_dwExtendedStyleHi << 16) + _dwExtendedStyleLo;

  set style(int value) {
    _styleHi = (value & 0xFFFF0000) >> 16;
    _styleLo = value & 0xFFFF;
  }

  set dwExtendedStyle(int value) {
    _dwExtendedStyleHi = (value & 0xFFFF0000) >> 16;
    _dwExtendedStyleLo = value & 0xFFFF;
  }
}

/// Defines the dimensions and style of a control in a dialog box. One or more
/// of these structures are combined with a DLGTEMPLATE structure to form a
/// standard template for a dialog box.
///
/// {@category Struct}
class DLGITEMTEMPLATE extends Struct {
  // Work around struct packing issues in Dart
  @Uint16()
  external int _styleLo;
  @Uint16()
  external int _styleHi;
  @Uint16()
  external int _dwExtendedStyleLo;
  @Uint16()
  external int _dwExtendedStyleHi;

  @Int16()
  external int x;

  @Int16()
  external int y;

  @Int16()
  external int cx;

  @Int16()
  external int cy;

  @Uint16()
  external int id;

  int get style => (_styleHi << 16) + _styleLo;
  int get dwExtendedStyle => (_dwExtendedStyleHi << 16) + _dwExtendedStyleLo;

  set style(int value) {
    _styleHi = (value & 0xFFFF0000) >> 16;
    _styleLo = value & 0xFFFF;
  }

  set dwExtendedStyle(int value) {
    _dwExtendedStyleHi = (value & 0xFFFF0000) >> 16;
    _dwExtendedStyleLo = value & 0xFFFF;
  }
}

// typedef struct _TASKDIALOGCONFIG {
//   UINT                           cbSize;
//   HWND                           hwndParent;
//   HINSTANCE                      hInstance;
//   TASKDIALOG_FLAGS               dwFlags;
//   TASKDIALOG_COMMON_BUTTON_FLAGS dwCommonButtons;
//   PCWSTR                         pszWindowTitle;
//   union {
//     HICON  hMainIcon;
//     PCWSTR pszMainIcon;
//   } DUMMYUNIONNAME;
//   PCWSTR                         pszMainInstruction;

//   PCWSTR                         pszContent;
//   UINT                           cButtons;
//   const TASKDIALOG_BUTTON        *pButtons;
//   int                            nDefaultButton;
//   UINT                           cRadioButtons;
//   const TASKDIALOG_BUTTON        *pRadioButtons;
//   int                            nDefaultRadioButton;
//   PCWSTR                         pszVerificationText;
//   PCWSTR                         pszExpandedInformation;
//   PCWSTR                         pszExpandedControlText;
//   PCWSTR                         pszCollapsedControlText;
//   union {
//     HICON  hFooterIcon;
//     PCWSTR pszFooterIcon;
//   } DUMMYUNIONNAME2;
//   PCWSTR                         pszFooter;
//   PFTASKDIALOGCALLBACK           pfCallback;
//   LONG_PTR                       lpCallbackData;
//   UINT                           cxWidth;
// } TASKDIALOGCONFIG;

// This struct is packed (#include <pshpack1.h> before the struct declaration in
// CommCtrl.h. Unfortunately Dart FFI does not yet support packed structs
// (https://github.com/dart-lang/sdk/issues/38158), so this cannot yet be used.

/// The TASKDIALOGCONFIG structure contains information used to display a task
/// dialog. The TaskDialogIndirect function uses this structure.
///
/// {@category Struct}
class TASKDIALOGCONFIG extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hwndParent;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwCommonButtons;
  external Pointer<Utf16> pszWindowTitle;
  @IntPtr()
  external int hMainIcon;

  external Pointer<Utf16> pszMainInstruction;
  external Pointer<Utf16> pszContent;

  @Uint32()
  external int cButtons;

  external Pointer<TASKDIALOG_BUTTON> pButtons;

  @Int32()
  external int nDefaultButton;
  @Uint32()
  external int cRadioButtons;

  external Pointer<TASKDIALOG_BUTTON> pRadioButtons;

  @Int32()
  external int nDefaultRadioButton;

  external Pointer<Utf16> pszVerificationText;
  external Pointer<Utf16> pszExpandedInformation;
  external Pointer<Utf16> pszExpandedControlText;
  external Pointer<Utf16> pszCollapsedControlText;

  @IntPtr()
  external int hFooterIcon;

  external Pointer<Utf16> pszFooter;
  external Pointer<NativeFunction<TaskDialogCallbackProc>> pfCallback;

  @IntPtr()
  external int lpCallbackData;
  @Uint32()
  external int cxWidth;
}

// typedef struct _OSVERSIONINFOW {
//   DWORD dwOSVersionInfoSize;
//   DWORD dwMajorVersion;
//   DWORD dwMinorVersion;
//   DWORD dwBuildNumber;
//   DWORD dwPlatformId;
//   WCHAR szCSDVersion[128];
// } OSVERSIONINFOW, *POSVERSIONINFOW, *LPOSVERSIONINFOW, RTL_OSVERSIONINFOW, *PRTL_OSVERSIONINFOW;

/// Contains operating system version information. The information includes
/// major and minor version numbers, a build number, a platform identifier, and
/// descriptive text about the operating system. This structure is used with the
/// GetVersionEx function.
///
/// {@category Struct}
class OSVERSIONINFO extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;

  // These fields are never used directly, but ensure that sizeOf returns at
  // least the right size, so heap allocations are sufficient.
  @Uint32()
  external int _szCSDVersion0;
  @Uint32()
  external int _szCSDVersion1;
  @Uint32()
  external int _szCSDVersion2;
  @Uint32()
  external int _szCSDVersion3;
  @Uint32()
  external int _szCSDVersion4;
  @Uint32()
  external int _szCSDVersion5;
  @Uint32()
  external int _szCSDVersion6;
  @Uint32()
  external int _szCSDVersion7;
  @Uint32()
  external int _szCSDVersion8;
  @Uint32()
  external int _szCSDVersion9;
  @Uint32()
  external int _szCSDVersion10;
  @Uint32()
  external int _szCSDVersion11;
  @Uint32()
  external int _szCSDVersion12;
  @Uint32()
  external int _szCSDVersion13;
  @Uint32()
  external int _szCSDVersion14;
  @Uint32()
  external int _szCSDVersion15;
  @Uint32()
  external int _szCSDVersion16;
  @Uint32()
  external int _szCSDVersion17;
  @Uint32()
  external int _szCSDVersion18;
  @Uint32()
  external int _szCSDVersion19;
  @Uint32()
  external int _szCSDVersion20;
  @Uint32()
  external int _szCSDVersion21;
  @Uint32()
  external int _szCSDVersion22;
  @Uint32()
  external int _szCSDVersion23;
  @Uint32()
  external int _szCSDVersion24;
  @Uint32()
  external int _szCSDVersion25;
  @Uint32()
  external int _szCSDVersion26;
  @Uint32()
  external int _szCSDVersion27;
  @Uint32()
  external int _szCSDVersion28;
  @Uint32()
  external int _szCSDVersion29;
  @Uint32()
  external int _szCSDVersion30;
  @Uint32()
  external int _szCSDVersion31;
  @Uint32()
  external int _szCSDVersion32;
  @Uint32()
  external int _szCSDVersion33;
  @Uint32()
  external int _szCSDVersion34;
  @Uint32()
  external int _szCSDVersion35;
  @Uint32()
  external int _szCSDVersion36;
  @Uint32()
  external int _szCSDVersion37;
  @Uint32()
  external int _szCSDVersion38;
  @Uint32()
  external int _szCSDVersion39;
  @Uint32()
  external int _szCSDVersion40;
  @Uint32()
  external int _szCSDVersion41;
  @Uint32()
  external int _szCSDVersion42;
  @Uint32()
  external int _szCSDVersion43;
  @Uint32()
  external int _szCSDVersion44;
  @Uint32()
  external int _szCSDVersion45;
  @Uint32()
  external int _szCSDVersion46;
  @Uint32()
  external int _szCSDVersion47;
  @Uint32()
  external int _szCSDVersion48;
  @Uint32()
  external int _szCSDVersion49;
  @Uint32()
  external int _szCSDVersion50;
  @Uint32()
  external int _szCSDVersion51;
  @Uint32()
  external int _szCSDVersion52;
  @Uint32()
  external int _szCSDVersion53;
  @Uint32()
  external int _szCSDVersion54;
  @Uint32()
  external int _szCSDVersion55;
  @Uint32()
  external int _szCSDVersion56;
  @Uint32()
  external int _szCSDVersion57;
  @Uint32()
  external int _szCSDVersion58;
  @Uint32()
  external int _szCSDVersion59;
  @Uint32()
  external int _szCSDVersion60;
  @Uint32()
  external int _szCSDVersion61;
  @Uint32()
  external int _szCSDVersion62;
  @Uint32()
  external int _szCSDVersion63;

  String get szCSDVersion => String.fromCharCodes(Uint32List.fromList([
        _szCSDVersion0, _szCSDVersion1, _szCSDVersion2, _szCSDVersion3, //
        _szCSDVersion4, _szCSDVersion5, _szCSDVersion6, _szCSDVersion7,
        _szCSDVersion8, _szCSDVersion9, _szCSDVersion10, _szCSDVersion11,
        _szCSDVersion12, _szCSDVersion13, _szCSDVersion14, _szCSDVersion15,
        _szCSDVersion16, _szCSDVersion17, _szCSDVersion18, _szCSDVersion19,
        _szCSDVersion20, _szCSDVersion21, _szCSDVersion22, _szCSDVersion23,
        _szCSDVersion24, _szCSDVersion25, _szCSDVersion26, _szCSDVersion27,
        _szCSDVersion28, _szCSDVersion29, _szCSDVersion30, _szCSDVersion31,
        _szCSDVersion32, _szCSDVersion33, _szCSDVersion34, _szCSDVersion35,
        _szCSDVersion36, _szCSDVersion37, _szCSDVersion38, _szCSDVersion39,
        _szCSDVersion40, _szCSDVersion41, _szCSDVersion42, _szCSDVersion43,
        _szCSDVersion44, _szCSDVersion45, _szCSDVersion46, _szCSDVersion47,
        _szCSDVersion48, _szCSDVersion49, _szCSDVersion50, _szCSDVersion51,
        _szCSDVersion52, _szCSDVersion53, _szCSDVersion54, _szCSDVersion55,
        _szCSDVersion56, _szCSDVersion57, _szCSDVersion58, _szCSDVersion59,
        _szCSDVersion60, _szCSDVersion61, _szCSDVersion62, _szCSDVersion63
      ]).buffer.asUint16List());
}

// typedef struct _BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS {
//   BLUETOOTH_DEVICE_INFO                 deviceInfo;
//   BLUETOOTH_AUTHENTICATION_METHOD       authenticationMethod;
//   BLUETOOTH_IO_CAPABILITY               ioCapability;
//   BLUETOOTH_AUTHENTICATION_REQUIREMENTS authenticationRequirements;
//   union {
//     ULONG Numeric_Value;
//     ULONG Passkey;
//   };
// } BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS, *PBLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS;

/// The BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS structure contains specific
/// configuration information about the Bluetooth device responding to an
/// authentication request.
///
/// /// {@category Struct}
class BLUETOOTH_AUTHENTICATION_CALLBACK_PARAMS extends Struct {
  external BLUETOOTH_DEVICE_INFO deviceInfo;
  @Uint32()
  external int authenticationMethod;
  @Uint32()
  external int ioCapability;
  @Uint32()
  external int authenticationRequirements;
  @Uint32()
  external int Numeric_Value;

  int get Passkey => Numeric_Value;
  set Passkey(int value) => Numeric_Value = value;
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
// } BLUETOOTH_DEVICE_INFO;

/// The BLUETOOTH_DEVICE_INFO structure provides information about a Bluetooth
/// device.
///
/// {@category Struct}
class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int dwSize;
  @Uint64()
  external int Address;
  @Uint32()
  external int ulClassofDevice;
  @Int32()
  external int fConnected;
  @Int32()
  external int fRemembered;
  @Int32()
  external int fAuthenticated;

  external SYSTEMTIME stLastSeen;
  external SYSTEMTIME stLastUsed;

  @Uint64()
  external int _szName0;
  @Uint64()
  external int _szName1;
  @Uint64()
  external int _szName2;
  @Uint64()
  external int _szName3;
  @Uint64()
  external int _szName4;
  @Uint64()
  external int _szName5;
  @Uint64()
  external int _szName6;
  @Uint64()
  external int _szName7;
  @Uint64()
  external int _szName8;
  @Uint64()
  external int _szName9;
  @Uint64()
  external int _szName10;
  @Uint64()
  external int _szName11;
  @Uint64()
  external int _szName12;
  @Uint64()
  external int _szName13;
  @Uint64()
  external int _szName14;
  @Uint64()
  external int _szName15;
  @Uint64()
  external int _szName16;
  @Uint64()
  external int _szName17;
  @Uint64()
  external int _szName18;
  @Uint64()
  external int _szName19;
  @Uint64()
  external int _szName20;
  @Uint64()
  external int _szName21;
  @Uint64()
  external int _szName22;
  @Uint64()
  external int _szName23;
  @Uint64()
  external int _szName24;
  @Uint64()
  external int _szName25;
  @Uint64()
  external int _szName26;
  @Uint64()
  external int _szName27;
  @Uint64()
  external int _szName28;
  @Uint64()
  external int _szName29;
  @Uint64()
  external int _szName30;
  @Uint64()
  external int _szName31;
  @Uint64()
  external int _szName32;
  @Uint64()
  external int _szName33;
  @Uint64()
  external int _szName34;
  @Uint64()
  external int _szName35;
  @Uint64()
  external int _szName36;
  @Uint64()
  external int _szName37;
  @Uint64()
  external int _szName38;
  @Uint64()
  external int _szName39;
  @Uint64()
  external int _szName40;
  @Uint64()
  external int _szName41;
  @Uint64()
  external int _szName42;
  @Uint64()
  external int _szName43;
  @Uint64()
  external int _szName44;
  @Uint64()
  external int _szName45;
  @Uint64()
  external int _szName46;
  @Uint64()
  external int _szName47;
  @Uint64()
  external int _szName48;
  @Uint64()
  external int _szName49;
  @Uint64()
  external int _szName50;
  @Uint64()
  external int _szName51;
  @Uint64()
  external int _szName52;
  @Uint64()
  external int _szName53;
  @Uint64()
  external int _szName54;
  @Uint64()
  external int _szName55;
  @Uint64()
  external int _szName56;
  @Uint64()
  external int _szName57;
  @Uint64()
  external int _szName58;
  @Uint64()
  external int _szName59;
  @Uint64()
  external int _szName60;
  @Uint64()
  external int _szName61;

  String get szName => String.fromCharCodes(Uint64List.fromList([
        _szName0, _szName1, _szName2, _szName3, //
        _szName4, _szName5, _szName6, _szName7,
        _szName8, _szName9, _szName10, _szName11,
        _szName12, _szName13, _szName14, _szName15,
        _szName16, _szName17, _szName18, _szName19,
        _szName20, _szName21, _szName22, _szName23,
        _szName24, _szName25, _szName26, _szName27,
        _szName28, _szName29, _szName30, _szName31,
        _szName32, _szName33, _szName34, _szName35,
        _szName36, _szName37, _szName38, _szName39,
        _szName40, _szName41, _szName42, _szName43,
        _szName44, _szName45, _szName46, _szName47,
        _szName48, _szName49, _szName50, _szName51,
        _szName52, _szName53, _szName54, _szName55,
        _szName56, _szName57, _szName58, _szName59,
        _szName60, _szName61
      ]).buffer.asUint16List());
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

/// The BLUETOOTH_DEVICE_SEARCH_PARAMS structure specifies search criteria for
/// Bluetooth device searches.
///
/// {@category Struct}
class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  @Int32()
  external int dwSize;
  @Int32()
  external int fReturnAuthenticated;
  @Int32()
  external int fReturnRemembered;
  @Int32()
  external int fReturnUnknown;
  @Int32()
  external int fReturnConnected;
  @Int32()
  external int fIssueInquiry;
  @Uint8()
  external int cTimeoutMultiplier;
  @IntPtr()
  external int hRadio;
}

// typedef struct _BLUETOOTH_ADDRESS {
//   union {
//     BTH_ADDR ullLong;
//     BYTE     rgBytes[6];
//   };
// } BLUETOOTH_ADDRESS;

/// The BLUETOOTH_ADDRESS structure provides the address of a Bluetooth device.
///
/// {@category Struct}
class BLUETOOTH_ADDRESS extends Struct {
  @Uint64()
  external int ullLong;

  List<int> get rgBytes => [
        (ullLong & 0xFF),
        (ullLong & 0xFF00) >> 8,
        (ullLong & 0xFF0000) >> 16,
        (ullLong & 0xFF000000) >> 24,
        (ullLong & 0xFF00000000) >> 32,
        (ullLong & 0xFF0000000000) >> 40
      ];
}

// // typedef struct _BLUETOOTH_RADIO_INFO {
//   DWORD             dwSize;
//   BLUETOOTH_ADDRESS address;
//   WCHAR             szName[BLUETOOTH_MAX_NAME_SIZE];
//   ULONG             ulClassofDevice;
//   USHORT            lmpSubversion;
//   USHORT            manufacturer;
// } BLUETOOTH_RADIO_INFO, *PBLUETOOTH_RADIO_INFO;

/// The BLUETOOTH_RADIO_INFO structure contains information about a Bluetooth
/// radio.
///
/// {@category Struct}
class BLUETOOTH_RADIO_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external BLUETOOTH_ADDRESS address;

  // WCHAR szName[ BLUETOOTH_MAX_NAME_SIZE ];
  @Uint64()
  external int _szName0;
  @Uint64()
  external int _szName1;
  @Uint64()
  external int _szName2;
  @Uint64()
  external int _szName3;
  @Uint64()
  external int _szName4;
  @Uint64()
  external int _szName5;
  @Uint64()
  external int _szName6;
  @Uint64()
  external int _szName7;
  @Uint64()
  external int _szName8;
  @Uint64()
  external int _szName9;
  @Uint64()
  external int _szName10;
  @Uint64()
  external int _szName11;
  @Uint64()
  external int _szName12;
  @Uint64()
  external int _szName13;
  @Uint64()
  external int _szName14;
  @Uint64()
  external int _szName15;
  @Uint64()
  external int _szName16;
  @Uint64()
  external int _szName17;
  @Uint64()
  external int _szName18;
  @Uint64()
  external int _szName19;
  @Uint64()
  external int _szName20;
  @Uint64()
  external int _szName21;
  @Uint64()
  external int _szName22;
  @Uint64()
  external int _szName23;
  @Uint64()
  external int _szName24;
  @Uint64()
  external int _szName25;
  @Uint64()
  external int _szName26;
  @Uint64()
  external int _szName27;
  @Uint64()
  external int _szName28;
  @Uint64()
  external int _szName29;
  @Uint64()
  external int _szName30;
  @Uint64()
  external int _szName31;
  @Uint64()
  external int _szName32;
  @Uint64()
  external int _szName33;
  @Uint64()
  external int _szName34;
  @Uint64()
  external int _szName35;
  @Uint64()
  external int _szName36;
  @Uint64()
  external int _szName37;
  @Uint64()
  external int _szName38;
  @Uint64()
  external int _szName39;
  @Uint64()
  external int _szName40;
  @Uint64()
  external int _szName41;
  @Uint64()
  external int _szName42;
  @Uint64()
  external int _szName43;
  @Uint64()
  external int _szName44;
  @Uint64()
  external int _szName45;
  @Uint64()
  external int _szName46;
  @Uint64()
  external int _szName47;
  @Uint64()
  external int _szName48;
  @Uint64()
  external int _szName49;
  @Uint64()
  external int _szName50;
  @Uint64()
  external int _szName51;
  @Uint64()
  external int _szName52;
  @Uint64()
  external int _szName53;
  @Uint64()
  external int _szName54;
  @Uint64()
  external int _szName55;
  @Uint64()
  external int _szName56;
  @Uint64()
  external int _szName57;
  @Uint64()
  external int _szName58;
  @Uint64()
  external int _szName59;
  @Uint64()
  external int _szName60;
  @Uint64()
  external int _szName61;

  @Uint32()
  external int ulClassOfDevice;
  @Uint16()
  external int lmpSubversion;
  @Uint16()
  external int manufacturer;

  String get szName => String.fromCharCodes(Uint64List.fromList([
        _szName0, _szName1, _szName2, _szName3, //
        _szName4, _szName5, _szName6, _szName7,
        _szName8, _szName9, _szName10, _szName11,
        _szName12, _szName13, _szName14, _szName15,
        _szName16, _szName17, _szName18, _szName19,
        _szName20, _szName21, _szName22, _szName23,
        _szName24, _szName25, _szName26, _szName27,
        _szName28, _szName29, _szName30, _szName31,
        _szName32, _szName33, _szName34, _szName35,
        _szName36, _szName37, _szName38, _szName39,
        _szName40, _szName41, _szName42, _szName43,
        _szName44, _szName45, _szName46, _szName47,
        _szName48, _szName49, _szName50, _szName51,
        _szName52, _szName53, _szName54, _szName55,
        _szName56, _szName57, _szName58, _szName59,
        _szName60, _szName61
      ]).buffer.asUint16List());
}

// typedef struct _BLUETOOTH_PIN_INFO {
//   UCHAR pin[BTH_MAX_PIN_SIZE];
//   UCHAR pinLength;
// } BLUETOOTH_PIN_INFO, *PBLUETOOTH_PIN_INFO;

/// The BLUETOOTH_PIN_INFO structure contains information used for
/// authentication via PIN.
///
/// {@category Struct}
class BLUETOOTH_PIN_INFO extends Struct {
  @Int8()
  external int _pin0;
  @Int8()
  external int _pin1;
  @Int8()
  external int _pin2;
  @Int8()
  external int _pin3;
  @Int8()
  external int _pin4;
  @Int8()
  external int _pin5;
  @Int8()
  external int _pin6;
  @Int8()
  external int _pin7;
  @Int8()
  external int _pin8;
  @Int8()
  external int _pin9;
  @Int8()
  external int _pin10;
  @Int8()
  external int _pin11;
  @Int8()
  external int _pin12;
  @Int8()
  external int _pin13;
  @Int8()
  external int _pin14;
  @Int8()
  external int _pin15;
  @Int8()
  external int pinLength;

  Uint8List get pin => Uint8List.fromList([
        _pin0, _pin1, _pin2, _pin3, //
        _pin4, _pin5, _pin6, _pin7,
        _pin8, _pin9, _pin10, _pin11,
        _pin12, _pin13, _pin14, _pin15
      ]);

  set pin(Uint8List value) {
    final length = value.length;
    _pin0 = (length >= 1 ? value[0] : 0);
    _pin1 = (length >= 2 ? value[1] : 0);
    _pin2 = (length >= 3 ? value[2] : 0);
    _pin3 = (length >= 4 ? value[3] : 0);
    _pin4 = (length >= 5 ? value[4] : 0);
    _pin5 = (length >= 6 ? value[5] : 0);
    _pin6 = (length >= 7 ? value[6] : 0);
    _pin7 = (length >= 8 ? value[7] : 0);
    _pin8 = (length >= 9 ? value[8] : 0);
    _pin9 = (length >= 10 ? value[9] : 0);
    _pin10 = (length >= 11 ? value[10] : 0);
    _pin11 = (length >= 12 ? value[11] : 0);
    _pin12 = (length >= 13 ? value[12] : 0);
    _pin13 = (length >= 14 ? value[13] : 0);
    _pin14 = (length >= 15 ? value[14] : 0);
    _pin15 = (length >= 16 ? value[15] : 0);
  }
}

// typedef struct _BLUETOOTH_OOB_DATA_INFO {
//   UCHAR C[16];
//   UCHAR R[16];
// } BLUETOOTH_OOB_DATA_INFO, *PBLUETOOTH_OOB_DATA_INFO;

/// The BLUETOOTH_OOB_DATA_INFO structure contains data used to authenticate
/// prior to establishing an Out-of-Band device pairing.
///
/// {@category Struct}
class BLUETOOTH_OOB_DATA_INFO extends Struct {
  @Int64()
  external int _data0;
  @Int64()
  external int _data1;
  @Int64()
  external int _data2;
  @Int64()
  external int _data3;

  Uint8List get C =>
      Uint64List.fromList([_data0, _data1]).buffer.asUint8List(0);
  set C(Uint8List val) {
    final val64 = val.buffer.asUint64List(0);
    _data0 = val64[0];
    _data1 = val64[1];
  }

  Uint8List get R =>
      Uint64List.fromList([_data2, _data3]).buffer.asUint8List(0);
  set R(Uint8List val) {
    final val64 = val.buffer.asUint64List(0);
    _data2 = val64[0];
    _data3 = val64[1];
  }
}

// typedef struct COR_FIELD_OFFSET
//     {
//     mdFieldDef ridOfField;
//     ULONG32 ulOffset;
//     } 	COR_FIELD_OFFSET;

/// Stores the offset, within a class, of the specified field.
///
/// {@category Struct}
class COR_FIELD_OFFSET extends Struct {
  @Uint32()
  external int ridOfField;

  @Uint32()
  external int ulOffset;
}

// typedef struct tagMCI_OPEN_PARMSW {
//     DWORD_PTR   dwCallback;
//     MCIDEVICEID wDeviceID;
//     LPCWSTR    lpstrDeviceType;
//     LPCWSTR    lpstrElementName;
//     LPCWSTR    lpstrAlias;
// } MCI_OPEN_PARMSW, *PMCI_OPEN_PARMSW, *LPMCI_OPEN_PARMSW;

/// The MCI_OPEN_PARMS structure contains information for the MCI_OPEN command.
///
/// {@category Struct}
class MCI_OPEN_PARMS extends Struct {
  @Uint32()
  external int _dwCallbackLo;
  @Uint32()
  external int _dwCallbackHi;

  Pointer<IntPtr> get dwCallback =>
      Pointer<IntPtr>.fromAddress((_dwCallbackHi << 16) + _dwCallbackLo);

  set dwCallback(Pointer<IntPtr> value) {
    _dwCallbackHi = (value.address & 0xFFFF0000) >> 16;
    _dwCallbackLo = value.address & 0xFFFF;
  }

  @Uint32()
  external int wDeviceID;

  @Uint32()
  external int _lpstrDeviceTypeLo;
  @Uint32()
  external int _lpstrDeviceTypeHi;

  Pointer<Utf16> get lpstrDeviceType => Pointer<Utf16>.fromAddress(
      (_lpstrDeviceTypeHi << 16) + _lpstrDeviceTypeLo);

  set lpstrDeviceType(Pointer<Utf16> value) {
    _lpstrDeviceTypeHi = (value.address & 0xFFFF0000) >> 16;
    _lpstrDeviceTypeLo = value.address & 0xFFFF;
  }

  @Uint32()
  external int _lpstrElementNameLo;
  @Uint32()
  external int _lpstrElementNameHi;

  Pointer<Utf16> get lpstrElementName => Pointer<Utf16>.fromAddress(
      (_lpstrElementNameHi << 16) + _lpstrElementNameLo);

  set lpstrElementName(Pointer<Utf16> value) {
    _lpstrElementNameHi = (value.address & 0xFFFF0000) >> 16;
    _lpstrElementNameLo = value.address & 0xFFFF;
  }

  @Uint32()
  external int _lpstrAliasLo;
  @Uint32()
  external int _lpstrAliasHi;

  Pointer<Utf16> get lpstrAlias =>
      Pointer<Utf16>.fromAddress((_lpstrAliasHi << 16) + _lpstrAliasLo);

  set lpstrAlias(Pointer<Utf16> value) {
    _lpstrAliasHi = (value.address & 0xFFFF0000) >> 16;
    _lpstrAliasLo = value.address & 0xFFFF;
  }
}

// typedef struct tagMCI_SEEK_PARMS {
//     DWORD_PTR   dwCallback;
//     DWORD       dwTo;
// } MCI_SEEK_PARMS, *PMCI_SEEK_PARMS, FAR *LPMCI_SEEK_PARMS;

/// The MCI_SEEK_PARMS structure contains positioning information for the
/// MCI_SEEK command.
///
/// {@category Struct}
class MCI_SEEK_PARMS extends Struct {
  @Uint32()
  external int _dwCallbackLo;
  @Uint32()
  external int _dwCallbackHi;
  @Uint32()
  external int dwTo;

  Pointer<IntPtr> get dwCallback =>
      Pointer<IntPtr>.fromAddress((_dwCallbackHi << 16) + _dwCallbackLo);

  set dwCallback(Pointer<IntPtr> value) {
    _dwCallbackHi = (value.address & 0xFFFF0000) >> 16;
    _dwCallbackLo = value.address & 0xFFFF;
  }
}

// typedef struct _OVERLAPPED {
//   ULONG_PTR Internal;
//   ULONG_PTR InternalHigh;
//   union {
//     struct {
//       DWORD Offset;
//       DWORD OffsetHigh;
//     } DUMMYSTRUCTNAME;
//     PVOID Pointer;
//   } DUMMYUNIONNAME;
//   HANDLE    hEvent;
// } OVERLAPPED, *LPOVERLAPPED;

/// Contains information used in asynchronous (or overlapped) input and output
/// (I/O).
///
/// {@category Struct}
class OVERLAPPED extends Struct {
  @IntPtr()
  external int Internal;

  @IntPtr()
  external int InternalHigh;

  external Pointer pointer;

  @IntPtr()
  external int hEvent;
}

// typedef struct _WIN32_FIND_DATAW {
//   DWORD    dwFileAttributes;
//   FILETIME ftCreationTime;
//   FILETIME ftLastAccessTime;
//   FILETIME ftLastWriteTime;
//   DWORD    nFileSizeHigh;
//   DWORD    nFileSizeLow;
//   DWORD    dwReserved0;
//   DWORD    dwReserved1;
//   WCHAR    cFileName[MAX_PATH];
//   WCHAR    cAlternateFileName[14];
// } WIN32_FIND_DATAW, *PWIN32_FIND_DATAW, *LPWIN32_FIND_DATAW;

/// Contains information about the file that is found by the FindFirstFile,
/// FindFirstFileEx, or FindNextFile function.
///
/// {@category Struct}
class WIN32_FIND_DATA extends Struct {
  @Uint32()
  external int dwFileAttributes;

  external FILETIME ftCreationTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastWriteTime;

  @Uint32()
  external int nFileSizeHigh;
  @Uint32()
  external int nFileSizeLow;
  @Uint32()
  external int dwReserved0;
  @Uint32()
  external int dwReserved1;

  // WCHAR cFileName[MAX_PATH];
  // (260 + 14) * 2 = 548 bytes)
  @Uint32()
  external int _cFileName0;
  @Uint32()
  external int _cFileName1;
  @Uint32()
  external int _cFileName2;
  @Uint32()
  external int _cFileName3;
  @Uint32()
  external int _cFileName4;
  @Uint32()
  external int _cFileName5;
  @Uint32()
  external int _cFileName6;
  @Uint32()
  external int _cFileName7;
  @Uint32()
  external int _cFileName8;
  @Uint32()
  external int _cFileName9;
  @Uint32()
  external int _cFileName10;
  @Uint32()
  external int _cFileName11;
  @Uint32()
  external int _cFileName12;
  @Uint32()
  external int _cFileName13;
  @Uint32()
  external int _cFileName14;
  @Uint32()
  external int _cFileName15;
  @Uint32()
  external int _cFileName16;
  @Uint32()
  external int _cFileName17;
  @Uint32()
  external int _cFileName18;
  @Uint32()
  external int _cFileName19;
  @Uint32()
  external int _cFileName20;
  @Uint32()
  external int _cFileName21;
  @Uint32()
  external int _cFileName22;
  @Uint32()
  external int _cFileName23;
  @Uint32()
  external int _cFileName24;
  @Uint32()
  external int _cFileName25;
  @Uint32()
  external int _cFileName26;
  @Uint32()
  external int _cFileName27;
  @Uint32()
  external int _cFileName28;
  @Uint32()
  external int _cFileName29;
  @Uint32()
  external int _cFileName30;
  @Uint32()
  external int _cFileName31;
  @Uint32()
  external int _cFileName32;
  @Uint32()
  external int _cFileName33;
  @Uint32()
  external int _cFileName34;
  @Uint32()
  external int _cFileName35;
  @Uint32()
  external int _cFileName36;
  @Uint32()
  external int _cFileName37;
  @Uint32()
  external int _cFileName38;
  @Uint32()
  external int _cFileName39;
  @Uint32()
  external int _cFileName40;
  @Uint32()
  external int _cFileName41;
  @Uint32()
  external int _cFileName42;
  @Uint32()
  external int _cFileName43;
  @Uint32()
  external int _cFileName44;
  @Uint32()
  external int _cFileName45;
  @Uint32()
  external int _cFileName46;
  @Uint32()
  external int _cFileName47;
  @Uint32()
  external int _cFileName48;
  @Uint32()
  external int _cFileName49;
  @Uint32()
  external int _cFileName50;
  @Uint32()
  external int _cFileName51;
  @Uint32()
  external int _cFileName52;
  @Uint32()
  external int _cFileName53;
  @Uint32()
  external int _cFileName54;
  @Uint32()
  external int _cFileName55;
  @Uint32()
  external int _cFileName56;
  @Uint32()
  external int _cFileName57;
  @Uint32()
  external int _cFileName58;
  @Uint32()
  external int _cFileName59;
  @Uint32()
  external int _cFileName60;
  @Uint32()
  external int _cFileName61;
  @Uint32()
  external int _cFileName62;
  @Uint32()
  external int _cFileName63;
  @Uint32()
  external int _cFileName64;
  @Uint32()
  external int _cFileName65;
  @Uint32()
  external int _cFileName66;
  @Uint32()
  external int _cFileName67;
  @Uint32()
  external int _cFileName68;
  @Uint32()
  external int _cFileName69;
  @Uint32()
  external int _cFileName70;
  @Uint32()
  external int _cFileName71;
  @Uint32()
  external int _cFileName72;
  @Uint32()
  external int _cFileName73;
  @Uint32()
  external int _cFileName74;
  @Uint32()
  external int _cFileName75;
  @Uint32()
  external int _cFileName76;
  @Uint32()
  external int _cFileName77;
  @Uint32()
  external int _cFileName78;
  @Uint32()
  external int _cFileName79;
  @Uint32()
  external int _cFileName80;
  @Uint32()
  external int _cFileName81;
  @Uint32()
  external int _cFileName82;
  @Uint32()
  external int _cFileName83;
  @Uint32()
  external int _cFileName84;
  @Uint32()
  external int _cFileName85;
  @Uint32()
  external int _cFileName86;
  @Uint32()
  external int _cFileName87;
  @Uint32()
  external int _cFileName88;
  @Uint32()
  external int _cFileName89;
  @Uint32()
  external int _cFileName90;
  @Uint32()
  external int _cFileName91;
  @Uint32()
  external int _cFileName92;
  @Uint32()
  external int _cFileName93;
  @Uint32()
  external int _cFileName94;
  @Uint32()
  external int _cFileName95;
  @Uint32()
  external int _cFileName96;
  @Uint32()
  external int _cFileName97;
  @Uint32()
  external int _cFileName98;
  @Uint32()
  external int _cFileName99;
  @Uint32()
  external int _cFileName100;
  @Uint32()
  external int _cFileName101;
  @Uint32()
  external int _cFileName102;
  @Uint32()
  external int _cFileName103;
  @Uint32()
  external int _cFileName104;
  @Uint32()
  external int _cFileName105;
  @Uint32()
  external int _cFileName106;
  @Uint32()
  external int _cFileName107;
  @Uint32()
  external int _cFileName108;
  @Uint32()
  external int _cFileName109;
  @Uint32()
  external int _cFileName110;
  @Uint32()
  external int _cFileName111;
  @Uint32()
  external int _cFileName112;
  @Uint32()
  external int _cFileName113;
  @Uint32()
  external int _cFileName114;
  @Uint32()
  external int _cFileName115;
  @Uint32()
  external int _cFileName116;
  @Uint32()
  external int _cFileName117;
  @Uint32()
  external int _cFileName118;
  @Uint32()
  external int _cFileName119;
  @Uint32()
  external int _cFileName120;
  @Uint32()
  external int _cFileName121;
  @Uint32()
  external int _cFileName122;
  @Uint32()
  external int _cFileName123;
  @Uint32()
  external int _cFileName124;
  @Uint32()
  external int _cFileName125;
  @Uint32()
  external int _cFileName126;
  @Uint32()
  external int _cFileName127;
  @Uint32()
  external int _cFileName128;
  @Uint32()
  external int _cFileName129;

  // WCHAR cFileName[MAX_PATH]; (260 * 2 = 520 / 4 = 130)
  String get cFileName => String.fromCharCodes(Uint32List.fromList([
        _cFileName0, _cFileName1, _cFileName2, _cFileName3, //
        _cFileName4, _cFileName5, _cFileName6, _cFileName7,
        _cFileName8, _cFileName9, _cFileName10, _cFileName11,
        _cFileName12, _cFileName13, _cFileName14, _cFileName15,
        _cFileName16, _cFileName17, _cFileName18, _cFileName19,
        _cFileName20, _cFileName21, _cFileName22, _cFileName23,
        _cFileName24, _cFileName25, _cFileName26, _cFileName27,
        _cFileName28, _cFileName29, _cFileName30, _cFileName31,
        _cFileName32, _cFileName33, _cFileName34, _cFileName35,
        _cFileName36, _cFileName37, _cFileName38, _cFileName39,
        _cFileName40, _cFileName41, _cFileName42, _cFileName43,
        _cFileName44, _cFileName45, _cFileName46, _cFileName47,
        _cFileName48, _cFileName49, _cFileName50, _cFileName51,
        _cFileName52, _cFileName53, _cFileName54, _cFileName55,
        _cFileName56, _cFileName57, _cFileName58, _cFileName59,
        _cFileName60, _cFileName61, _cFileName62, _cFileName63,
        _cFileName64, _cFileName65, _cFileName66, _cFileName67,
        _cFileName68, _cFileName69, _cFileName70, _cFileName71,
        _cFileName72, _cFileName73, _cFileName74, _cFileName75,
        _cFileName76, _cFileName77, _cFileName78, _cFileName79,
        _cFileName80, _cFileName81, _cFileName82, _cFileName83,
        _cFileName84, _cFileName85, _cFileName86, _cFileName87,
        _cFileName88, _cFileName89, _cFileName90, _cFileName91,
        _cFileName92, _cFileName93, _cFileName94, _cFileName95,
        _cFileName96, _cFileName97, _cFileName98, _cFileName99,
        _cFileName100, _cFileName101, _cFileName102, _cFileName103,
        _cFileName104, _cFileName105, _cFileName106, _cFileName107,
        _cFileName108, _cFileName109, _cFileName110, _cFileName111,
        _cFileName112, _cFileName113, _cFileName114, _cFileName115,
        _cFileName116, _cFileName117, _cFileName118, _cFileName119,
        _cFileName120, _cFileName121, _cFileName122, _cFileName123,
        _cFileName124, _cFileName125, _cFileName126, _cFileName127,
        _cFileName128, _cFileName129
      ]).buffer.asUint16List());

  // WCHAR cAlternateFileName[14];
  @Uint32()
  external int _cAlternateFileName0;
  @Uint32()
  external int _cAlternateFileName1;
  @Uint32()
  external int _cAlternateFileName2;
  @Uint32()
  external int _cAlternateFileName3;
  @Uint32()
  external int _cAlternateFileName4;
  @Uint32()
  external int _cAlternateFileName5;
  @Uint32()
  external int _cAlternateFileName6;

  String get cAlternateFileName => String.fromCharCodes(Uint32List.fromList([
        _cAlternateFileName0, _cAlternateFileName1,
        _cAlternateFileName2, _cAlternateFileName3, //
        _cAlternateFileName4, _cAlternateFileName5,
        _cAlternateFileName6
      ]).buffer.asUint16List());
}

// typedef struct tagWAVEOUTCAPSW {
//   WORD      wMid;
//   WORD      wPid;
//   MMVERSION vDriverVersion;
//   WCHAR     szPname[MAXPNAMELEN];
//   DWORD     dwFormats;
//   WORD      wChannels;
//   WORD      wReserved1;
//   DWORD     dwSupport;
// } WAVEOUTCAPSW, *PWAVEOUTCAPSW, *NPWAVEOUTCAPSW, *LPWAVEOUTCAPSW;

/// The WAVEOUTCAPS structure describes the capabilities of a waveform-audio
/// output device.
///
/// {@category Struct}
class WAVEOUTCAPS extends Struct {
  @Uint16()
  external int wMid;

  @Uint16()
  external int wPid;

  @Uint32()
  external int vDriverVersion;

  // Need to use @Uint32() here because of the lack of fixed-size arrays
  // MAXPNAMELEN is 32 (words)
  @Uint32()
  external int _szPname0;
  @Uint32()
  external int _szPname1;
  @Uint32()
  external int _szPname2;
  @Uint32()
  external int _szPname3;
  @Uint32()
  external int _szPname4;
  @Uint32()
  external int _szPname5;
  @Uint32()
  external int _szPname6;
  @Uint32()
  external int _szPname7;
  @Uint32()
  external int _szPname8;
  @Uint32()
  external int _szPname9;
  @Uint32()
  external int _szPname10;
  @Uint32()
  external int _szPname11;
  @Uint32()
  external int _szPname12;
  @Uint32()
  external int _szPname13;
  @Uint32()
  external int _szPname14;
  @Uint32()
  external int _szPname15;

  String get szPname => String.fromCharCodes(Uint32List.fromList([
        _szPname0, _szPname1, _szPname2, _szPname3, //
        _szPname4, _szPname5, _szPname6, _szPname7,
        _szPname8, _szPname9, _szPname10, _szPname11,
        _szPname12, _szPname13, _szPname14, _szPname15,
      ]).buffer.asUint16List());

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;

  @Int32()
  external int dwSupport;
}

// typedef struct tWAVEFORMATEX {
//   WORD  wFormatTag;
//   WORD  nChannels;
//   DWORD nSamplesPerSec;
//   DWORD nAvgBytesPerSec;
//   WORD  nBlockAlign;
//   WORD  wBitsPerSample;
//   WORD  cbSize;
// } WAVEFORMATEX, *PWAVEFORMATEX, *NPWAVEFORMATEX, *LPWAVEFORMATEX;

/// The WAVEFORMATEX structure defines the format of waveform-audio data. Only
/// format information common to all waveform-audio data formats is included in
/// this structure. For formats that require additional information, this
/// structure is included as the first member in another structure, along with
/// the additional information.
///
/// {@category Struct}
class WAVEFORMATEX extends Struct {
  @Uint16()
  external int wFormatTag;

  @Uint16()
  external int nChannels;

  // Work around overpadding by Dart FFI.
  @Uint16()
  external int _nSamplesPerSecHi;
  @Uint16()
  external int _nSamplesPerSecLo;

  @Uint16()
  external int _nAvgBytesPerSecHi;
  @Uint16()
  external int _nAvgBytesPerSecLo;

  @Uint16()
  external int nBlockAlign;

  @Uint16()
  external int wBitsPerSample;

  @Uint16()
  external int cbSize;

  int get nSamplesPerSec => (_nSamplesPerSecHi << 16) + _nSamplesPerSecLo;
  int get nAvgBytesPerSec => (_nAvgBytesPerSecHi << 16) + _nAvgBytesPerSecLo;

  set nSamplesPerSec(int value) {
    _nSamplesPerSecHi = (value & 0xFF00) << 16;
    _nSamplesPerSecLo = value & 0xFF;
  }

  set nAvgBytesPerSec(int value) {
    _nAvgBytesPerSecHi = (value & 0xFF00) << 16;
    _nAvgBytesPerSecLo = value & 0xFF;
  }
}

// typedef struct mmtime_tag {
//   UINT  wType;
//   union {
//     DWORD  ms;
//     DWORD  sample;
//     DWORD  cb;
//     DWORD  ticks;
//     struct {
//       BYTE hour;
//       BYTE min;
//       BYTE sec;
//       BYTE frame;
//       BYTE fps;
//       BYTE dummy;
//       BYTE pad[2];
//     } smpte;
//     struct {
//       DWORD songptrpos;
//     } midi;
//   } u;
// } MMTIME, *PMMTIME, *LPMMTIME;

class _smpte {
  final int hour;
  final int min;
  final int sec;
  final int frame;
  final int fps;
  final int dummy;

  const _smpte(this.hour, this.min, this.sec, this.frame, this.fps, this.dummy);
}

class _midi {
  final int songptrpos;

  const _midi(this.songptrpos);
}

/// The MMTIME structure contains timing information for different types of
/// multimedia data.
///
/// {@category Struct}
class MMTIME extends Struct {
  @Uint32()
  external int wType;

  @Uint32()
  external int ms;

  @Uint16()
  external int _valueExtra;

  @Uint16()
  external int _pad;

  int get sample => ms;
  int get cb => ms;
  int get ticks => ms;

  _smpte get smpte => _smpte((ms & 0xFF000000) << 24, (ms & 0xFF0000) << 16,
      (ms & 0xFF00) << 8, ms & 0xFF, (_valueExtra & 0xFF00) << 8, _valueExtra);
  _midi get midi => _midi(ms);

  set sample(int value) => ms = value;
  set cb(int value) => ms = value;
  set ticks(int value) => ms = value;
  set midi(_midi value) => ms = value.songptrpos;
}

// -----------------------------------------------------------------------------
// UNIMPLEMENTED OR PARTIALLY IMPLEMENTED CLASSES THAT ARE INCLUDED SO THAT COM
// OBJECTS CAN BE GENERATED
// -----------------------------------------------------------------------------

/// Describes an exception that occurred during IDispatch::Invoke.
///
/// {@category Struct}
class EXCEPINFO extends Opaque {}

/// The PROPVARIANT structure is used in the ReadMultiple and WriteMultiple
/// methods of IPropertyStorage to define the type tag and the value of a
/// property in a property set.
///
/// {@category Struct}
class PROPVARIANT extends Opaque {}

/// Used to specify values that are used by SetSimulatedProfileInfo to override
/// current internet connection profile values in an RDP Child Session to
/// support the simulation of specific metered internet connection conditions.
///
/// {@category Struct}
class NLM_SIMULATED_PROFILE_INFO extends Opaque {}

// typedef struct _NOTIFYICONDATAW {
//   DWORD cbSize;
//   HWND hWnd;
//   UINT uID;
//   UINT uFlags;
//   UINT uCallbackMessage;
//   HICON hIcon;
//   WCHAR  szTip[128];
//   DWORD dwState;
//   DWORD dwStateMask;
//   WCHAR  szInfo[256];
//   union {
//   UINT  uTimeout;
//   UINT  uVersion;
//   } DUMMYUNIONNAME;
//   WCHAR  szInfoTitle[64];
//   DWORD dwInfoFlags;
//   GUID guidItem;
//   HICON hBalloonIcon;
// } NOTIFYICONDATAW, *PNOTIFYICONDATAW;

// FFI support for packed structs https://github.com/dart-lang/sdk/issues/38158

/// The NOTIFYICONDATA contains information that the system needs to display
/// notifications in the notification area. Used by Shell_NotifyIcon.
///
/// {@category Struct}
class NOTIFYICONDATA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hWnd;

  @Uint32()
  external int uID;

  @Uint32()
  external int uFlags;

  @Uint32()
  external int uCallbackMessage;

  @IntPtr()
  external int hIcon;

  // WCHAR szTip[128]
  @Uint64()
  external int _szTip0;
  @Uint64()
  external int _szTip1;
  @Uint64()
  external int _szTip2;
  @Uint64()
  external int _szTip3;
  @Uint64()
  external int _szTip4;
  @Uint64()
  external int _szTip5;
  @Uint64()
  external int _szTip6;
  @Uint64()
  external int _szTip7;
  @Uint64()
  external int _szTip8;
  @Uint64()
  external int _szTip9;
  @Uint64()
  external int _szTip10;
  @Uint64()
  external int _szTip11;
  @Uint64()
  external int _szTip12;
  @Uint64()
  external int _szTip13;
  @Uint64()
  external int _szTip14;
  @Uint64()
  external int _szTip15;
  @Uint64()
  external int _szTip16;
  @Uint64()
  external int _szTip17;
  @Uint64()
  external int _szTip18;
  @Uint64()
  external int _szTip19;
  @Uint64()
  external int _szTip20;
  @Uint64()
  external int _szTip21;
  @Uint64()
  external int _szTip22;
  @Uint64()
  external int _szTip23;
  @Uint64()
  external int _szTip24;
  @Uint64()
  external int _szTip25;
  @Uint64()
  external int _szTip26;
  @Uint64()
  external int _szTip27;
  @Uint64()
  external int _szTip28;
  @Uint64()
  external int _szTip29;
  @Uint64()
  external int _szTip30;
  @Uint64()
  external int _szTip31;

  String get szTip => String.fromCharCodes(Uint64List.fromList([
        _szTip0, _szTip1, _szTip2, _szTip3, //
        _szTip4, _szTip5, _szTip6, _szTip7,
        _szTip8, _szTip9, _szTip10, _szTip11,
        _szTip12, _szTip13, _szTip14, _szTip15,
        _szTip16, _szTip17, _szTip18, _szTip19,
        _szTip20, _szTip21, _szTip22, _szTip23,
        _szTip24, _szTip25, _szTip26, _szTip27,
        _szTip28, _szTip29, _szTip30, _szTip31
      ]).buffer.asUint16List());

  set szTip(String value) {
    // Pad with null characters
    final stringToStore = value.padRight(128, '\x00');
    final byteData64 =
        Uint16List.fromList(stringToStore.codeUnits).buffer.asUint64List();

    _szTip0 = byteData64[0];
    _szTip1 = byteData64[1];
    _szTip2 = byteData64[2];
    _szTip3 = byteData64[3];
    _szTip4 = byteData64[4];
    _szTip5 = byteData64[5];
    _szTip6 = byteData64[6];
    _szTip7 = byteData64[7];
    _szTip8 = byteData64[8];
    _szTip9 = byteData64[9];
    _szTip10 = byteData64[10];
    _szTip11 = byteData64[11];
    _szTip12 = byteData64[12];
    _szTip13 = byteData64[13];
    _szTip14 = byteData64[14];
    _szTip15 = byteData64[15];
    _szTip16 = byteData64[16];
    _szTip17 = byteData64[17];
    _szTip18 = byteData64[18];
    _szTip19 = byteData64[19];
    _szTip20 = byteData64[20];
    _szTip21 = byteData64[21];
    _szTip22 = byteData64[22];
    _szTip23 = byteData64[23];
    _szTip24 = byteData64[24];
    _szTip25 = byteData64[25];
    _szTip26 = byteData64[26];
    _szTip27 = byteData64[27];
    _szTip28 = byteData64[28];
    _szTip29 = byteData64[29];
    _szTip30 = byteData64[30];
    _szTip31 = byteData64[31];
  }

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwStateMask;

  // WCHAR szInfo[256]
  @Uint64()
  external int _szInfo0;
  @Uint64()
  external int _szInfo1;
  @Uint64()
  external int _szInfo2;
  @Uint64()
  external int _szInfo3;
  @Uint64()
  external int _szInfo4;
  @Uint64()
  external int _szInfo5;
  @Uint64()
  external int _szInfo6;
  @Uint64()
  external int _szInfo7;
  @Uint64()
  external int _szInfo8;
  @Uint64()
  external int _szInfo9;
  @Uint64()
  external int _szInfo10;
  @Uint64()
  external int _szInfo11;
  @Uint64()
  external int _szInfo12;
  @Uint64()
  external int _szInfo13;
  @Uint64()
  external int _szInfo14;
  @Uint64()
  external int _szInfo15;
  @Uint64()
  external int _szInfo16;
  @Uint64()
  external int _szInfo17;
  @Uint64()
  external int _szInfo18;
  @Uint64()
  external int _szInfo19;
  @Uint64()
  external int _szInfo20;
  @Uint64()
  external int _szInfo21;
  @Uint64()
  external int _szInfo22;
  @Uint64()
  external int _szInfo23;
  @Uint64()
  external int _szInfo24;
  @Uint64()
  external int _szInfo25;
  @Uint64()
  external int _szInfo26;
  @Uint64()
  external int _szInfo27;
  @Uint64()
  external int _szInfo28;
  @Uint64()
  external int _szInfo29;
  @Uint64()
  external int _szInfo30;
  @Uint64()
  external int _szInfo31;
  @Uint64()
  external int _szInfo32;
  @Uint64()
  external int _szInfo33;
  @Uint64()
  external int _szInfo34;
  @Uint64()
  external int _szInfo35;
  @Uint64()
  external int _szInfo36;
  @Uint64()
  external int _szInfo37;
  @Uint64()
  external int _szInfo38;
  @Uint64()
  external int _szInfo39;
  @Uint64()
  external int _szInfo40;
  @Uint64()
  external int _szInfo41;
  @Uint64()
  external int _szInfo42;
  @Uint64()
  external int _szInfo43;
  @Uint64()
  external int _szInfo44;
  @Uint64()
  external int _szInfo45;
  @Uint64()
  external int _szInfo46;
  @Uint64()
  external int _szInfo47;
  @Uint64()
  external int _szInfo48;
  @Uint64()
  external int _szInfo49;
  @Uint64()
  external int _szInfo50;
  @Uint64()
  external int _szInfo51;
  @Uint64()
  external int _szInfo52;
  @Uint64()
  external int _szInfo53;
  @Uint64()
  external int _szInfo54;
  @Uint64()
  external int _szInfo55;
  @Uint64()
  external int _szInfo56;
  @Uint64()
  external int _szInfo57;
  @Uint64()
  external int _szInfo58;
  @Uint64()
  external int _szInfo59;
  @Uint64()
  external int _szInfo60;
  @Uint64()
  external int _szInfo61;
  @Uint64()
  external int _szInfo62;
  @Uint64()
  external int _szInfo63;

  String get szInfo => String.fromCharCodes(Uint64List.fromList([
        _szInfo0, _szInfo1, _szInfo2, _szInfo3, //
        _szInfo4, _szInfo5, _szInfo6, _szInfo7,
        _szInfo8, _szInfo9, _szInfo10, _szInfo11,
        _szInfo12, _szInfo13, _szInfo14, _szInfo15,
        _szInfo16, _szInfo17, _szInfo18, _szInfo19,
        _szInfo20, _szInfo21, _szInfo22, _szInfo23,
        _szInfo24, _szInfo25, _szInfo26, _szInfo27,
        _szInfo28, _szInfo29, _szInfo30, _szInfo31,
        _szInfo32, _szInfo33, _szInfo34, _szInfo35,
        _szInfo36, _szInfo37, _szInfo38, _szInfo39,
        _szInfo40, _szInfo41, _szInfo42, _szInfo43,
        _szInfo44, _szInfo45, _szInfo46, _szInfo47,
        _szInfo48, _szInfo49, _szInfo50, _szInfo51,
        _szInfo52, _szInfo53, _szInfo54, _szInfo55,
        _szInfo56, _szInfo57, _szInfo58, _szInfo59,
        _szInfo60, _szInfo61, _szInfo62, _szInfo63
      ]).buffer.asUint16List());

  @Uint32()
  external int uTimeout;

  // This field is in a UNION with uTimeout, so we define it as the same.
  int get uVersion => uTimeout;
  set uVersion(int value) => uTimeout = value;

  // WCHAR szInfoTitle[64]
  // Because Dart FFI has a tendency to align on IntPtr boundaries, we split this
  // carefully.
  @Uint32()
  external int _szInfoTitle0;
  @Uint32()
  external int _szInfoTitle1;
  @Uint32()
  external int _szInfoTitle2;
  @Uint32()
  external int _szInfoTitle3;
  @Uint32()
  external int _szInfoTitle4;
  @Uint32()
  external int _szInfoTitle5;
  @Uint32()
  external int _szInfoTitle6;
  @Uint32()
  external int _szInfoTitle7;
  @Uint32()
  external int _szInfoTitle8;
  @Uint32()
  external int _szInfoTitle9;
  @Uint32()
  external int _szInfoTitle10;
  @Uint32()
  external int _szInfoTitle11;
  @Uint32()
  external int _szInfoTitle12;
  @Uint32()
  external int _szInfoTitle13;
  @Uint32()
  external int _szInfoTitle14;
  @Uint32()
  external int _szInfoTitle15;
  @Uint32()
  external int _szInfoTitle16;
  @Uint32()
  external int _szInfoTitle17;
  @Uint32()
  external int _szInfoTitle18;
  @Uint32()
  external int _szInfoTitle19;
  @Uint32()
  external int _szInfoTitle20;
  @Uint32()
  external int _szInfoTitle21;
  @Uint32()
  external int _szInfoTitle22;
  @Uint32()
  external int _szInfoTitle23;
  @Uint32()
  external int _szInfoTitle24;
  @Uint32()
  external int _szInfoTitle25;
  @Uint32()
  external int _szInfoTitle26;
  @Uint32()
  external int _szInfoTitle27;
  @Uint32()
  external int _szInfoTitle28;
  @Uint32()
  external int _szInfoTitle29;
  @Uint32()
  external int _szInfoTitle30;
  @Uint32()
  external int _szInfoTitle31;

  String get szInfoTitle => String.fromCharCodes(Uint32List.fromList([
        _szInfoTitle0, _szInfoTitle1, _szInfoTitle2, _szInfoTitle3, //
        _szInfoTitle4, _szInfoTitle5, _szInfoTitle6, _szInfoTitle7,
        _szInfoTitle8, _szInfoTitle9, _szInfoTitle10, _szInfoTitle11,
        _szInfoTitle12, _szInfoTitle13, _szInfoTitle14, _szInfoTitle15,
        _szInfoTitle16, _szInfoTitle17, _szInfoTitle18, _szInfoTitle19,
        _szInfoTitle20, _szInfoTitle21, _szInfoTitle22, _szInfoTitle23,
        _szInfoTitle24, _szInfoTitle25, _szInfoTitle26, _szInfoTitle27,
        _szInfoTitle28, _szInfoTitle29, _szInfoTitle30, _szInfoTitle31
      ]).buffer.asUint16List());

  @Uint32()
  external int dwInfoFlags;

  external GUID guidItem;

  @IntPtr()
  external int hBalloonIcon;
}

// typedef struct _SYMBOL_INFOW {
//   ULONG   SizeOfStruct;
//   ULONG   TypeIndex;
//   ULONG64 Reserved[2];
//   ULONG   Index;
//   ULONG   Size;
//   ULONG64 ModBase;
//   ULONG   Flags;
//   ULONG64 Value;
//   ULONG64 Address;
//   ULONG   Register;
//   ULONG   Scope;
//   ULONG   Tag;
//   ULONG   NameLen;
//   ULONG   MaxNameLen;
//   WCHAR   Name[1];
// } SYMBOL_INFOW, *PSYMBOL_INFOW;

/// Contains symbol information.
///
/// {@category Struct}
class SYMBOL_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;
  @Uint32()
  external int TypeIndex;
  @Uint64()
  external int Reserved0;
  @Uint64()
  external int Reserved1;
  @Uint32()
  external int Index;
  @Uint32()
  external int Size;
  @Uint64()
  external int ModBase;
  @Uint32()
  external int Flags;
  @Uint64()
  external int Value;
  @Uint64()
  external int Address;
  @Uint32()
  external int Register;
  @Uint32()
  external int Scope;
  @Uint32()
  external int Tag;
  @Uint32()
  external int NameLen;
  @Uint32()
  external int MaxNameLen;
  @Uint16()
  external int Name;
}
