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

  @Array(128)
  external Array<Uint16> _szPhysicalMonitorDescription;

  String get szPhysicalMonitorDescription {
    final charCodes = <int>[];
    for (var i = 0; i < PHYSICAL_MONITOR_DESCRIPTION_SIZE; i++) {
      charCodes.add(_szPhysicalMonitorDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }
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

  @Array(32)
  external Array<Uint16> _lfFaceName;

  String get lfFaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_lfFaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }
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

  @Array(64)
  external Array<Uint16> _elfFullName;

  String get elfFullName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_elfFullName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  @Array(32)
  external Array<Uint16> _elfStyle;

  String get elfStyle {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfStyle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  @Array(32)
  external Array<Uint16> _elfScript;

  String get elfScript {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfScript[i]);
    }
    return String.fromCharCodes(charCodes);
  }
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

  @Array(32)
  external Array<Uint8> rgbReserved;
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
@Packed(4)
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

// typedef struct _SHITEMID
//     {
//     USHORT cb;
//     BYTE abID[ 1 ];
//     }

/// Defines an item identifier.
///
/// {@category Struct}
@Packed(1)
class SHITEMID extends Struct {
  @Uint16()
  external int cb;
  @Uint8()
  external int abID;
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

/// The TASKDIALOGCONFIG structure contains information used to display a task
/// dialog. The TaskDialogIndirect function uses this structure.
///
/// {@category Struct}
@Packed(4)
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

  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }
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

  @Array(248)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }
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

  @Array(248)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  @Uint32()
  external int ulClassOfDevice;
  @Uint16()
  external int lmpSubversion;
  @Uint16()
  external int manufacturer;
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
  @Array(16)
  external Array<Uint8> _pin;
  @Int8()
  external int pinLength;

  Uint8List get pin {
    final pin = <int>[];
    for (var i = 0; i < 16; i++) {
      pin.add(_pin[i]);
    }
    return Uint8List.fromList(pin);
  }

  set pin(Uint8List value) {
    final paddedList = List<int>.from(value);
    while (paddedList.length < 16) {
      paddedList.add(0);
    }

    for (var i = 0; i < 16; i++) {
      _pin[i] = paddedList[i];
    }
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

  @Array(260)
  external Array<Uint16> _cFileName;

  String get cFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_cFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  @Array(14)
  external Array<Uint16> _cAlternateFileName;

  String get cAlternateFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_cAlternateFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }
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

  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  @Uint32()
  external int dwFormats;

  @Uint16()
  external int wChannels;

  @Uint16()
  external int wReserved1;

  @Int32()
  external int dwSupport;
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

  @Array(128)
  external Array<Uint16> _szTip;

  String get szTip {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szTip[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTip(String value) {
    // Pad with null characters
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szTip[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwStateMask;
  @Array(256)
  external Array<Uint16> _szInfo;

  String get szInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInfo(String value) {
    // Pad with null characters
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int uTimeout;

  // This field is in a UNION with uTimeout, so we define it as the same.
  int get uVersion => uTimeout;
  set uVersion(int value) => uTimeout = value;

  @Array(64)
  external Array<Uint16> _szInfoTitle;

  String get szInfoTitle {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szInfoTitle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInfoTitle(String value) {
    // Pad with null characters
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szInfoTitle[i] = stringToStore.codeUnitAt(i);
    }
  }

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
