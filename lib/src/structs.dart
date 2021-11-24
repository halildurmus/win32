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

/// The PRINTER_NOTIFY_INFO_DATA structure identifies a job or printer
/// information field and provides the current data for that field.
///
/// {@category Struct}
class PRINTER_NOTIFY_INFO_DATA extends Struct {
  // TODO: Nested Union
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

/// The DEVMODE data structure contains information about the
/// initialization and environment of a printer or a display device.
///
/// {@category Struct}
class DEVMODE extends Struct {
  // TODO: Nested Union
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
  // TODO: Union

  @Array(4)
  external Array<Uint8> s_b;
}

/// Contains information about a heap element. The HeapWalk function uses a
/// PROCESS_HEAP_ENTRY structure to enumerate the elements of a heap.
///
/// {@category Struct}
class PROCESS_HEAP_ENTRY extends Struct {
  // TODO: Nested Union

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

// typedef struct _GUID {
//     unsigned long  Data1;
//     unsigned short Data2;
//     unsigned short Data3;
//     unsigned char  Data4[ 8 ];
// } GUID;

/// Represents a globally unique identifier (GUID).
///
/// {@category Struct}
// @Packed(4)
// class GUID extends Struct {
//   @Uint32()
//   external int Data1;
//   @Uint16()
//   external int Data2;
//   @Uint16()
//   external int Data3;
//   @Uint64()
//   external int Data4;

//   /// Print GUID in common {FDD39AD0-238F-46AF-ADB4-6C85480369C7} format
//   @override
//   String toString() {
//     final comp1 = (Data4 & 0xFF).toRadixString(16).padLeft(2, '0') +
//         ((Data4 & 0xFF00) >> 8).toRadixString(16).padLeft(2, '0');

//     // This is hacky as all get-out :)
//     final comp2 = ((Data4 & 0xFF0000) >> 16).toRadixString(16).padLeft(2, '0') +
//         ((Data4 & 0xFF000000) >> 24).toRadixString(16).padLeft(2, '0') +
//         ((Data4 & 0xFF00000000) >> 32).toRadixString(16).padLeft(2, '0') +
//         ((Data4 & 0xFF0000000000) >> 40).toRadixString(16).padLeft(2, '0') +
//         ((Data4 & 0xFF000000000000) >> 48).toRadixString(16).padLeft(2, '0') +
//         (BigInt.from(Data4 & 0xFF00000000000000).toUnsigned(64) >> 56)
//             .toRadixString(16)
//             .padLeft(2, '0');

//     return '{${Data1.toRadixString(16).padLeft(8, '0').toUpperCase()}-'
//         '${Data2.toRadixString(16).padLeft(4, '0').toUpperCase()}-'
//         '${Data3.toRadixString(16).padLeft(4, '0').toUpperCase()}-'
//         '${comp1.toUpperCase()}-'
//         '${comp2.toUpperCase()}}';
//   }

//   /// Create GUID from common {FDD39AD0-238F-46AF-ADB4-6C85480369C7} format
//   void setGUID(String guidString) {
//     assert(guidString.length == 38);
//     Data1 = int.parse(guidString.substring(1, 9), radix: 16);
//     Data2 = int.parse(guidString.substring(10, 14), radix: 16);
//     Data3 = int.parse(guidString.substring(15, 19), radix: 16);

//     // Final component is pushed on the stack in reverse order per x64
//     // calling convention.
//     final rawString = guidString.substring(35, 37) +
//         guidString.substring(33, 35) +
//         guidString.substring(31, 33) +
//         guidString.substring(29, 31) +
//         guidString.substring(27, 29) +
//         guidString.substring(25, 27) +
//         guidString.substring(22, 24) +
//         guidString.substring(20, 22);

//     // We need to split this to avoid overflowing a signed int.parse()
//     Data4 = (int.parse(rawString.substring(0, 4), radix: 16) << 48) +
//         int.parse(rawString.substring(4, 16), radix: 16);
//   }
// }

// Pointer<GUID> GUIDFromString(String guid) => calloc<GUID>()..ref.setGUID(guid);

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
//     ULONG ulButtons;
//     struct {
//       USHORT usButtonFlags;
//       USHORT usButtonData;
//     } DUMMYSTRUCTNAME;
//   } DUMMYUNIONNAME;
//   ULONG  ulRawButtons;
//   LONG   lLastX;
//   LONG   lLastY;
//   ULONG  ulExtraInformation;
// } RAWMOUSE, *PRAWMOUSE, *LPRAWMOUSE;
class _RAWMOUSE_Anonymous_0 extends Struct {
  @Uint16()
  external int usButtonFlags;
  @Uint16()
  external int usButtonData;
}

class _RAWMOUSE_Anonymous_1 extends Union {
  @Uint32()
  external int ulButtons;
  external _RAWMOUSE_Anonymous_0 _DUMMYSTRUCTNAME;
}

/// Contains information about the state of the mouse.
///
/// {@category Struct}
class RAWMOUSE extends Struct {
  @Uint16()
  external int usFlags;
  external _RAWMOUSE_Anonymous_1 _DUMMYUNIONNAME;
  @Uint32()
  external int ulRawButtons;
  @Int32()
  external int lLastX;
  @Int32()
  external int lLastY;
  @Uint32()
  external int ulExtraInformation;

  int get usButtonFlags => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonFlags;
  set usButtonFlags(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonFlags = value;
  int get usButtonData => _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonData;
  set usButtonData(int value) =>
      _DUMMYUNIONNAME._DUMMYSTRUCTNAME.usButtonData = value;
}
