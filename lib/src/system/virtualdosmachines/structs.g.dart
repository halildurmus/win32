// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/kernel/structs.g.dart';

/// {@category Struct}
class GLOBALENTRY extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwAddress;

  @Uint32()
  external int dwBlockSize;

  @IntPtr()
  external int hBlock;

  @Uint16()
  external int wcLock;

  @Uint16()
  external int wcPageLock;

  @Uint16()
  external int wFlags;

  @Int32()
  external int wHeapPresent;

  @IntPtr()
  external int hOwner;

  @Uint16()
  external int wType;

  @Uint16()
  external int wData;

  @Uint32()
  external int dwNext;

  @Uint32()
  external int dwNextAlt;
}

/// {@category Struct}
class IMAGE_NOTE extends Struct {
  @Array(10)
  external Array<Uint8> Module;

  @Array(256)
  external Array<Uint8> FileName;

  @Uint16()
  external int hModule;

  @Uint16()
  external int hTask;
}

/// {@category Struct}
class MODULEENTRY extends Struct {
  @Uint32()
  external int dwSize;

  @Array(10)
  external Array<Uint8> szModule;

  @IntPtr()
  external int hModule;

  @Uint16()
  external int wcUsage;

  @Array(256)
  external Array<Uint8> szExePath;

  @Uint16()
  external int wNext;
}

/// {@category Struct}
class SEGMENT_NOTE extends Struct {
  @Uint16()
  external int Selector1;

  @Uint16()
  external int Selector2;

  @Uint16()
  external int Segment;

  @Array(10)
  external Array<Uint8> Module;

  @Array(256)
  external Array<Uint8> FileName;

  @Uint16()
  external int Type;

  @Uint32()
  external int Length;
}

/// {@category Struct}
class TEMP_BP_NOTE extends Struct {
  @Uint16()
  external int Seg;

  @Uint32()
  external int Offset;

  @Int32()
  external int bPM;
}

/// {@category Struct}
class VDMCONTEXT extends Struct {
  @Uint32()
  external int ContextFlags;

  @Uint32()
  external int Dr0;

  @Uint32()
  external int Dr1;

  @Uint32()
  external int Dr2;

  @Uint32()
  external int Dr3;

  @Uint32()
  external int Dr6;

  @Uint32()
  external int Dr7;

  external FLOATING_SAVE_AREA FloatSave;

  @Uint32()
  external int SegGs;

  @Uint32()
  external int SegFs;

  @Uint32()
  external int SegEs;

  @Uint32()
  external int SegDs;

  @Uint32()
  external int Edi;

  @Uint32()
  external int Esi;

  @Uint32()
  external int Ebx;

  @Uint32()
  external int Edx;

  @Uint32()
  external int Ecx;

  @Uint32()
  external int Eax;

  @Uint32()
  external int Ebp;

  @Uint32()
  external int Eip;

  @Uint32()
  external int SegCs;

  @Uint32()
  external int EFlags;

  @Uint32()
  external int Esp;

  @Uint32()
  external int SegSs;

  @Array(512)
  external Array<Uint8> ExtendedRegisters;
}

/// {@category Struct}
class VDMCONTEXT_WITHOUT_XSAVE extends Struct {
  @Uint32()
  external int ContextFlags;

  @Uint32()
  external int Dr0;

  @Uint32()
  external int Dr1;

  @Uint32()
  external int Dr2;

  @Uint32()
  external int Dr3;

  @Uint32()
  external int Dr6;

  @Uint32()
  external int Dr7;

  external FLOATING_SAVE_AREA FloatSave;

  @Uint32()
  external int SegGs;

  @Uint32()
  external int SegFs;

  @Uint32()
  external int SegEs;

  @Uint32()
  external int SegDs;

  @Uint32()
  external int Edi;

  @Uint32()
  external int Esi;

  @Uint32()
  external int Ebx;

  @Uint32()
  external int Edx;

  @Uint32()
  external int Ecx;

  @Uint32()
  external int Eax;

  @Uint32()
  external int Ebp;

  @Uint32()
  external int Eip;

  @Uint32()
  external int SegCs;

  @Uint32()
  external int EFlags;

  @Uint32()
  external int Esp;

  @Uint32()
  external int SegSs;
}

/// {@category Struct}
class VDMLDT_ENTRY extends Struct {
  @Uint16()
  external int LimitLow;

  @Uint16()
  external int BaseLow;

  external _VDMLDT_ENTRY__HighWord_e__Union HighWord;
}

/// {@category Struct}
class _VDMLDT_ENTRY__HighWord_e__Union extends Union {
  external _VDMLDT_ENTRY__HighWord_e__Union__Bytes_e__Struct Bytes;

  external _VDMLDT_ENTRY__HighWord_e__Union__Bits_e__Struct Bits;
}

/// {@category Struct}
class _VDMLDT_ENTRY__HighWord_e__Union__Bytes_e__Struct extends Struct {
  @Uint8()
  external int BaseMid;

  @Uint8()
  external int Flags1;

  @Uint8()
  external int Flags2;

  @Uint8()
  external int BaseHi;
}

extension VDMLDT_ENTRY__HighWord_e__Union_Extension on VDMLDT_ENTRY {
  int get BaseMid => this.HighWord.Bytes.BaseMid;
  set BaseMid(int value) => this.HighWord.Bytes.BaseMid = value;

  int get Flags1 => this.HighWord.Bytes.Flags1;
  set Flags1(int value) => this.HighWord.Bytes.Flags1 = value;

  int get Flags2 => this.HighWord.Bytes.Flags2;
  set Flags2(int value) => this.HighWord.Bytes.Flags2 = value;

  int get BaseHi => this.HighWord.Bytes.BaseHi;
  set BaseHi(int value) => this.HighWord.Bytes.BaseHi = value;
}

/// {@category Struct}
class _VDMLDT_ENTRY__HighWord_e__Union__Bits_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension VDMLDT_ENTRY__HighWord_e__Union_Extension_1 on VDMLDT_ENTRY {
  int get bitfield => this.HighWord.Bits.bitfield;
  set bitfield(int value) => this.HighWord.Bits.bitfield = value;
}

extension VDMLDT_ENTRY_Extension on VDMLDT_ENTRY {
  _VDMLDT_ENTRY__HighWord_e__Union__Bytes_e__Struct get Bytes =>
      this.HighWord.Bytes;
  set Bytes(_VDMLDT_ENTRY__HighWord_e__Union__Bytes_e__Struct value) =>
      this.HighWord.Bytes = value;

  _VDMLDT_ENTRY__HighWord_e__Union__Bits_e__Struct get Bits =>
      this.HighWord.Bits;
  set Bits(_VDMLDT_ENTRY__HighWord_e__Union__Bits_e__Struct value) =>
      this.HighWord.Bits = value;
}

/// {@category Struct}
class VDM_SEGINFO extends Struct {
  @Uint16()
  external int Selector;

  @Uint16()
  external int SegNumber;

  @Uint32()
  external int Length;

  @Uint16()
  external int Type;

  @Array(9)
  external Array<Uint8> ModuleName;

  @Array(255)
  external Array<Uint8> FileName;
}
