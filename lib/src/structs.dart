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
// VARIANT.
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
import 'constants.dart';
import 'oleaut32.dart';
import 'structs.g.dart';

/// The PRINTER_NOTIFY_INFO_DATA structure identifies a job or printer
/// information field and provides the current data for that field.
///
/// {@category Struct}
class PRINTER_NOTIFY_INFO_DATA extends Struct {
  @Uint16()
  external int Type;
  @Uint16()
  external int Field;
  @Uint32()
  external int Reserved;
  @Uint32()
  external int Id;
  // TODO: Check packing
  @Uint32()
  external int _pack;
  @Uint32()
  external int cbBuf;
  @Uint32()
  external int _pack2;
  external Pointer pBuf;
}

/// Contains information about a communications driver.
///
/// {@category Struct}
@Packed(2)
class COMMPROP extends Struct {
  @Uint16()
  external int wPacketLength;
  @Uint16()
  external int wPacketVersion;
  @Uint32()
  external int dwServiceMask;
  @Uint32()
  external int dwReserved1;
  @Uint32()
  external int dwMaxTxQueue;
  @Uint32()
  external int dwMaxRxQueue;
  @Uint32()
  external int dwMaxBaud;
  @Uint32()
  external int dwProvSubType;
  @Uint32()
  external int dwProvCapabilities;
  @Uint32()
  external int dwSettableParams;
  @Uint32()
  external int dwSettableBaud;
  @Uint16()
  external int wSettableData;
  @Uint32()
  external int wSettableStopParity;
  @Uint32()
  external int dwCurrentTxQueue;
  @Uint32()
  external int dwCurrentRxQueue;
  @Uint32()
  external int dwProvSpec1;
  @Uint32()
  external int dwProvSpec2;
  @Array(1)
  external Array<Uint16> _wcProvChar;

  String get wcProvChar {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wcProvChar[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wcProvChar(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wcProvChar[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// The DEVMODE data structure contains information about the
/// initialization and environment of a printer or a display device.
///
/// {@category Struct}
class DEVMODE extends Struct {
  @Array(32)
  external Array<Uint16> dmDeviceName;
  @Uint16()
  external int dmSpecVersion;
  @Uint16()
  external int dmDriverVersion;
  @Uint16()
  external int dmSize;
  @Uint16()
  external int dmDriverExtra;
  @Uint32()
  external int dmFields;
  @Uint16()
  external int dmOrientation;
  @Uint16()
  external int dmPaperSize;
  @Uint16()
  external int dmPaperLength;
  @Uint16()
  external int dmPaperWidth;
  @Uint16()
  external int dmScale;
  @Uint16()
  external int dmCopies;
  @Uint16()
  external int dmDefaultSource;
  @Uint16()
  external int dmPrintQuality;
  @Int16()
  external int dmColor;
  @Int16()
  external int dmDuplex;
  @Int16()
  external int dmYResolution;
  @Int16()
  external int dmTTOption;
  @Int16()
  external int dmCollate;
  @Array(32)
  external Array<Uint16> dmFormName;
  @Uint16()
  external int dmLogPixels;
  @Uint32()
  external int dmBitsPerPel;
  @Uint32()
  external int dmPelsWidth;
  @Uint32()
  external int dmPelsHeight;
  @Uint32()
  external int dmDisplayFlags;
  @Uint32()
  external int dmDisplayFrequency;
  @Uint32()
  external int dmICMMethod;
  @Uint32()
  external int dmICMIntent;
  @Uint32()
  external int dmMediaType;
  @Uint32()
  external int dmDitherType;
  @Uint32()
  external int dmReserved1;
  @Uint32()
  external int dmReserved2;
  @Uint32()
  external int dmPanningWidth;
  @Uint32()
  external int dmPanningHeight;
}

/// The IN_ADDR structure represents an IPv4 Internet address.
///
/// {@category Struct}
class IN_ADDR extends Struct {
  @Array(4)
  external Array<Uint8> s_b;
}

/// Contains information about a heap element. The HeapWalk function uses a
/// PROCESS_HEAP_ENTRY structure to enumerate the elements of a heap.
///
/// {@category Struct}
class PROCESS_HEAP_ENTRY extends Struct {
  external Pointer lpData;
  @Uint32()
  external int cbData;
  @Uint8()
  external int cbOverhead;
  @Uint8()
  external int iRegionIndex;
  @Uint16()
  external int wFlags;
  @Uint32()
  external int dwCommittedSize;
  @Uint32()
  external int dwUnCommittedSize;
  external Pointer lpFirstBlock;
  external Pointer lpLastBlock;
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

class _SYSTEM_INFO_Anonymous_1 extends Struct {
  @Uint16()
  external int wProcessorArchitecture;
  @Uint16()
  external int wReserved;
}

class _SYSTEM_INFO_Anonymous_0 extends Union {
  @Uint32()
  external int dwOemId;

  external _SYSTEM_INFO_Anonymous_1 _DUMMYSTRUCTNAME;
}

/// Contains information about the current computer system. This includes the
/// architecture and type of the processor, the number of processors in the
/// system, the page size, and other such information.
///
/// {@category Struct}
class SYSTEM_INFO extends Struct {
  external _SYSTEM_INFO_Anonymous_0 _DUMMYUNIONNAME;

  int get dwOemId => _DUMMYUNIONNAME.dwOemId;
  set dwOemId(int value) => _DUMMYUNIONNAME.dwOemId = value;

  int get wProcessorArchitecture =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wProcessorArchitecture;
  int get wReserved => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wReserved;
  set wProcessorArchitecture(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wProcessorArchitecture = value;
  set wReserved(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.wReserved = value;

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

class _VARIANT_Anonymous_3 extends Struct {
  external Pointer pvRecord;
  external Pointer<COMObject> pRecInfo;
}

class _VARIANT_Anonymous_2 extends Union {
  @Int64()
  external int llVal;
  @Int32()
  external int lVal;
  @Uint8()
  external int bVal;
  @Int16()
  external int iVal;
  @Float()
  external double fltVal;
  @Double()
  external double dblVal;
  @Int16()
  external int boolVal;
  @Int16()
  external int __OBSOLETE__VARIANT_BOOL;
  @Int32()
  external int scode;

  // .field /* 040182CB */ [0] public valuetype [Windows.Win32.winmd]Windows.Win32.System.Com.CY cyVal
  @Double()
  external double date;
  external Pointer<Utf16> bstrVal;
  external Pointer<COMObject> punkVal;
  external Pointer<COMObject> pdispVal;
  // .field /* 040182D0 */ [0] public valuetype [Windows.Win32.winmd]Windows.Win32.System.Com.SAFEARRAY* parray
  external Pointer<Uint8> pbVal;
  external Pointer<Int16> piVal;
  external Pointer<Int32> plVal;
  external Pointer<Int64> pllVal;
  external Pointer<Float> pfltVal;
  external Pointer<Double> pdblVal;
  external Pointer<Int16> pboolVal;
  external Pointer<Int16> __OBSOLETE__VARIANT_PBOOL;
  external Pointer<Int32> pscode;
  // .field /* 040182DA */ [0] public valuetype [Windows.Win32.winmd]Windows.Win32.System.Com.CY* pcyVal
  external Pointer<Double> pdate;
  external Pointer<Pointer<Utf16>> pbstrVal;
  external Pointer<Pointer<COMObject>> ppunkVal;
  external Pointer<Pointer<COMObject>> ppdispVal;
  // .field /* 040182DF */ [0] public valuetype [Windows.Win32.winmd]Windows.Win32.System.Com.SAFEARRAY** pparray
  external Pointer<VARIANT> pvarVal;
  external Pointer byref;
  @Int8()
  external int cVal;
  @Uint16()
  external int uiVal;
  @Uint32()
  external int ulVal;
  @Uint64()
  external int ullVal;
  @Int32()
  external int intVal;
  @Uint32()
  external int uintVal;
  // .field /* 040182E8 */ [0] public valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.DECIMAL* pdecVal
  external Pointer<Int8> pcVal;
  external Pointer<Uint16> puiVal;
  external Pointer<Uint32> pulVal;
  external Pointer<Uint64> pullVal;
  external Pointer<Int32> pintVal;
  external Pointer<Uint32> puintVal;
  external _VARIANT_Anonymous_3 __VARIANT_NAME_4;
}

class _VARIANT_Anonymous_1 extends Struct {
  @Uint16()
  external int vt;
  @Uint16()
  external int wReserved1;
  @Uint16()
  external int wReserved2;
  @Uint16()
  external int wReserved3;
  external _VARIANT_Anonymous_2 __VARIANT_NAME_3;
}

class _VARIANT_Anonymous_0 extends Union {
  external _VARIANT_Anonymous_1 __VARIANT_NAME_2;
  // .field /* 040182BC */ [0] public valuetype [Windows.Win32.winmd]Windows.Win32.Foundation.DECIMAL decVal
}

/// {@category Struct}
class VARIANT extends Struct {
  // The size of a union type equals the largest member it can contain, which in
  // the case of VARIANT is a struct of two pointers (BRECORD).

  external _VARIANT_Anonymous_0 __VARIANT_NAME_1;

  int get vt => __VARIANT_NAME_1.__VARIANT_NAME_2.vt;
  set vt(int value) => __VARIANT_NAME_1.__VARIANT_NAME_2.vt = value;

  // LONGLONG -> __int64 -> Int64
  int get llVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.llVal;
  set llVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.llVal = value;

  // LONG -> long -> Int32
  int get lVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.lVal;
  set lVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.lVal = value;

  // BYTE => unsigned char => Uint8
  int get bVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bVal;
  set bVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bVal = value;

  // SHORT => short => Int16
  int get iVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.iVal;
  set iVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.iVal = value;

  // FLOAT => float => double
  double get fltVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.fltVal;
  set fltVal(double value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.fltVal = value;

  // DOUBLE => double => double
  double get dblVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.dblVal;
  set dblVal(double value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.dblVal = value;

  // VARIANT_BOOL => Int16
  bool get boolVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.boolVal ==
      VARIANT_TRUE;
  set boolVal(bool value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.boolVal =
          value ? VARIANT_TRUE : VARIANT_FALSE;

  // BSTR => OLECHAR* => Pointer<Utf16>
  Pointer<Utf16> get bstrVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bstrVal;
  set bstrVal(Pointer<Utf16> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.bstrVal = value;

  // IUnknown
  IUnknown get punkVal =>
      IUnknown(__VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.punkVal);
  set punkVal(IUnknown value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.punkVal = value.ptr;

  // IDispatch
  IDispatch get pdispVal =>
      IDispatch(__VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdispVal);
  set pdispVal(IDispatch value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdispVal = value.ptr;

  // BYTE*
  Pointer<Uint8> get pbVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pbVal;
  set pbVal(Pointer<Uint8> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pbVal = value;

  // SHORT*
  Pointer<Int16> get piVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.piVal;
  set piVal(Pointer<Int16> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.piVal = value;

  // LONG*
  Pointer<Int32> get plVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.plVal;
  set plVal(Pointer<Int32> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.plVal = value;

  // LONGLONG*
  Pointer<Int64> get pllVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pllVal;
  set pllVal(Pointer<Int64> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pllVal = value;

  // FLOAT*
  Pointer<Float> get pfltVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pfltVal;
  set pfltVal(Pointer<Float> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pfltVal = value;

  // DOUBLE*
  Pointer<Double> get pdblVal =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdblVal;
  set pdblVal(Pointer<Double> value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.pdblVal = value;

  Pointer get byref => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.byref;
  set byref(Pointer value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.byref = value;

  // // CHAR -> char -> Int8
  int get cVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.cVal;
  set cVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.cVal = value;

  // // USHORT -> unsigned short -> Uint16
  int get uiVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uiVal;
  set uiVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uiVal = value;

  // // ULONG -> unsigned long -> Uint32
  int get ulVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ulVal;
  set ulVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ulVal = value;

  // // ULONGLONG -> unsigned long long -> Uint64
  int get ullVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ullVal;
  set ullVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.ullVal = value;

  // // INT -> int -> Int32
  int get intVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.intVal;
  set intVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.intVal = value;

  // // UINT -> unsigned int -> Uint32
  int get uintVal => __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uintVal;
  set uintVal(int value) =>
      __VARIANT_NAME_1.__VARIANT_NAME_2.__VARIANT_NAME_3.uintVal = value;
}

// typedef struct tagTYPEDESC {
//   union {
//     struct tagTYPEDESC *lptdesc;
//     struct tagARRAYDESC *lpadesc;
//     HREFTYPE hreftype;
//   } DUMMYUNIONNAME;
//   VARTYPE vt;
// } TYPEDESC;

/// Describes the type of a variable, the return type of a function, or the type
/// of a function parameter.
///
/// {@category Struct}
class TYPEDESC extends Struct {
  external Pointer lptdesc;

  @Uint16()
  external int vt;

  Pointer get lpadesc => lptdesc;
  int get hreftype => lptdesc.cast<Uint32>().value;
}

// typedef struct tagELEMDESC {
//   TYPEDESC tdesc;
//   union {
//     IDLDESC   idldesc;
//     PARAMDESC paramdesc;
//   } DUMMYUNIONNAME;
// } ELEMDESC, *LPELEMDESC;

/// Contains the type description and process-transfer information for a
/// variable, a function, or a function parameter.
///
/// {@category Struct}
class ELEMDESC extends Struct {
  external TYPEDESC tdesc;
  external IDLDESC idldesc;
  // Waiting on union types
  //   PARAMDESC get paramdesc => idldesc.cast<PARAMDESC>().value;
}

// typedef struct tagVARDESC {
//   MEMBERID memid;
//   LPOLESTR lpstrSchema;
//   union {
//     ULONG   oInst;
//     VARIANT *lpvarValue;
//   } DUMMYUNIONNAME;
//   ELEMDESC elemdescVar;
//   WORD     wVarFlags;
//   VARKIND  varkind;
// } VARDESC, *LPVARDESC;

/// Describes a variable, constant, or data member.
///
/// {@category Struct}
class VARDESC extends Struct {
  @Uint32()
  external int memid;
  external Pointer<Utf16> lpstrSchema;
  external Pointer<VARIANT> lpvarValue;
  int get oInst => lpvarValue.cast<Uint32>().value;
  external ELEMDESC elemdescVar;
  @Uint16()
  external int wVarFlags;
  @Uint32()
  external int varkind;
}

// typedef struct _STRRET {
//   UINT  uType;
//   union {
//     LPWSTR pOleStr;
//     UINT   uOffset;
//     char   cStr[260];
//   } DUMMYUNIONNAME;
// } STRRET;

class _STRRET_Anonymous_0 extends Union {
  external Pointer<Utf16> pOleStr;
  @Uint32()
  external int uOffset;
  @Array(260)
  external Array<Uint8> cStr;
}

/// Contains strings returned from the IShellFolder interface methods.
///
/// {@category Struct}
class STRRET extends Struct {
  @Uint32()
  external int uType;

  external _STRRET_Anonymous_0 _DUMMYUNIONNAME;

  Pointer<Utf16> get pOleStr => _DUMMYUNIONNAME.pOleStr;
  set pOleStr(Pointer<Utf16> value) => _DUMMYUNIONNAME.pOleStr = value;

  int get uOffset => _DUMMYUNIONNAME.uOffset;
  set uOffset(int value) => _DUMMYUNIONNAME.uOffset = value;

  Array<Uint8> get cStr => _DUMMYUNIONNAME.cStr;
  set cStr(Array<Uint8> value) => _DUMMYUNIONNAME.cStr = value;
}

// typedef struct tagINPUT {
//   DWORD type;
//   union {
//     MOUSEINPUT    mi;
//     KEYBDINPUT    ki;
//     HARDWAREINPUT hi;
//   } DUMMYUNIONNAME;
// } INPUT, *PINPUT, *LPINPUT;

class _INPUT_Anonymous_0 extends Union {
  external MOUSEINPUT mi;
  external KEYBDINPUT ki;
  external HARDWAREINPUT hi;
}

/// Contains information about a simulated keyboard event.
///
/// {@category Struct}
class KEYBDINPUT extends Struct {
  // TODO: Fix type parser to detect this correctly
  @Uint16()
  external int wVk;
  @Uint16()
  external int wScan;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int time;
  @IntPtr()
  external int dwExtraInfo;
}

/// Used by SendInput to store information for synthesizing input events such as
/// keystrokes, mouse movement, and mouse clicks.
///
/// {@category Struct}
class INPUT extends Struct {
  // 28 bytes on 32-bit, 40 bytes on 64-bit
  @Uint32()
  external int type;

  external _INPUT_Anonymous_0 _DUMMYUNIONNAME;

  MOUSEINPUT get mi => _DUMMYUNIONNAME.mi;
  KEYBDINPUT get ki => _DUMMYUNIONNAME.ki;
  HARDWAREINPUT get hi => _DUMMYUNIONNAME.hi;

  set mi(MOUSEINPUT value) => _DUMMYUNIONNAME.mi = value;
  set ki(KEYBDINPUT value) => _DUMMYUNIONNAME.ki = value;
  set hi(HARDWAREINPUT value) => _DUMMYUNIONNAME.hi = value;
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

Pointer<GUID> GUIDFromString(String guid) => calloc<GUID>()..ref.setGUID(guid);

/// Represents package settings used to create a package.
///
/// {@category Struct}
class APPX_PACKAGE_SETTINGS extends Struct {
  @Int32()
  external int forceZip32;
  external Pointer hashMethod;
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

class _OVERLAPPED_Anonymous_1 extends Struct {
  @Uint32()
  external int Offset;
  @Uint32()
  external int OffsetHigh;
}

class _OVERLAPPED_Anonymous_0 extends Union {
  external _OVERLAPPED_Anonymous_1 _DUMMYSTRUCTNAME;
  external Pointer pointer;
}

/// Contains information used in asynchronous (or overlapped) input and output
/// (I/O).
///
/// {@category Struct}
class OVERLAPPED extends Struct {
  @IntPtr()
  external int Internal;

  @IntPtr()
  external int InternalHigh;

  external _OVERLAPPED_Anonymous_0 _DUMMYUNIONNAME;

  int get Offset => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.Offset;
  int get OffsetHigh => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.OffsetHigh;

  set Offset(int value) => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.Offset = value;
  set OffsetHigh(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.OffsetHigh = value;

  Pointer get pointer => _DUMMYUNIONNAME.pointer;
  set pointer(Pointer value) => _DUMMYUNIONNAME.pointer = value;

  @IntPtr()
  external int hEvent;
}

// typedef struct _WLAN_RAW_DATA_LIST {
//     DWORD dwTotalSize;
//     DWORD dwNumberOfItems;
//     struct {
//         // the beginning of the data blob
//         // the offset is w.r.t. the beginning of the entry
//         DWORD dwDataOffset;
//         // size of the data blob
//         DWORD dwDataSize;
//     } DataList[1];
// } WLAN_RAW_DATA_LIST, *PWLAN_RAW_DATA_LIST;

class _DataList extends Struct {
  @Uint32()
  external int dwDataOffset;
  @Uint32()
  external int dwDataSize;
}

/// The WLAN_RAW_DATA_LIST structure contains raw data in the form of an
/// array of data blobs that are used by some Native Wifi functions.
///
/// {@category Struct}
class WLAN_RAW_DATA_LIST extends Struct {
  @Uint32()
  external int dwTotalSize;
  @Uint32()
  external int dwNumberOfItems;
  @Array(1)
  external Array<_DataList> DataList;
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

/// The PROPSPEC structure is used by many of the methods of
/// IPropertyStorage to specify a property either by its property
/// identifier (ID) or the associated string name.
///
/// {@category Struct}
class PROPSPEC extends Struct {
  @Uint32()
  external int ulKind;

  external Pointer<Uint16> lpwstr;
}

/// The PROPVARIANT structure is used in the ReadMultiple and WriteMultiple
/// methods of IPropertyStorage to define the type tag and the value of a
/// property in a property set.
///
/// {@category Struct}
class PROPVARIANT extends Struct {
  @Uint16()
  external int vt;
  @Uint16()
  external int wReserved1;
  @Uint16()
  external int wReserved2;
  @Uint16()
  external int wReserved3;
  @IntPtr()
  external int val1;
  @IntPtr()
  external int val2;
}

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

class _NOTIFYICONDATA_Anonymous_0 extends Union {
  @Uint32()
  external int uTimeout;
  @Uint32()
  external int uVersion;
}

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

  external _NOTIFYICONDATA_Anonymous_0 _DUMMYUNIONNAME;

  int get uTimeout => _DUMMYUNIONNAME.uTimeout;
  int get uVersion => _DUMMYUNIONNAME.uVersion;
  set uTimeout(int value) => _DUMMYUNIONNAME.uTimeout = value;
  set uVersion(int value) => _DUMMYUNIONNAME.uVersion = value;

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
