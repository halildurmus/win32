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
import '../../system/kernel/callbacks.g.dart';

/// {@category Struct}
class CSTRING extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  external Pointer<Utf8> Buffer;
}

/// {@category Struct}
class EXCEPTION_REGISTRATION_RECORD extends Struct {
  external Pointer<EXCEPTION_REGISTRATION_RECORD> Next;

  external Pointer<NativeFunction<EXCEPTION_ROUTINE>> Handler;
}

/// {@category Struct}
class FLOATING_SAVE_AREA extends Struct {
  @Uint32()
  external int ControlWord;

  @Uint32()
  external int StatusWord;

  @Uint32()
  external int TagWord;

  @Uint32()
  external int ErrorOffset;

  @Uint32()
  external int ErrorSelector;

  @Uint32()
  external int DataOffset;

  @Uint32()
  external int DataSelector;

  @Array(80)
  external Array<Uint8> RegisterArea;

  @Uint32()
  external int Cr0NpxState;
}

/// {@category Struct}
class LIST_ENTRY extends Struct {
  external Pointer<LIST_ENTRY> Flink;

  external Pointer<LIST_ENTRY> Blink;
}

/// {@category Struct}
class LIST_ENTRY32 extends Struct {
  @Uint32()
  external int Flink;

  @Uint32()
  external int Blink;
}

/// {@category Struct}
class LIST_ENTRY64 extends Struct {
  @Uint64()
  external int Flink;

  @Uint64()
  external int Blink;
}

/// {@category Struct}
class NT_TIB extends Struct {
  external Pointer<EXCEPTION_REGISTRATION_RECORD> ExceptionList;

  external Pointer StackBase;

  external Pointer StackLimit;

  external Pointer SubSystemTib;

  external _NT_TIB__Anonymous_e__Union Anonymous;

  external Pointer ArbitraryUserPointer;

  external Pointer<NT_TIB> Self;
}

/// {@category Struct}
class _NT_TIB__Anonymous_e__Union extends Union {
  external Pointer FiberData;

  @Uint32()
  external int Version;
}

extension NT_TIB_Extension on NT_TIB {
  Pointer get FiberData => this.Anonymous.FiberData;
  set FiberData(Pointer value) => this.Anonymous.FiberData = value;

  int get Version => this.Anonymous.Version;
  set Version(int value) => this.Anonymous.Version = value;
}

/// {@category Struct}
class OBJECTID extends Struct {
  external GUID Lineage;

  @Uint32()
  external int Uniquifier;
}

/// {@category Struct}
class OBJECT_ATTRIBUTES32 extends Struct {
  @Uint32()
  external int Length;

  @Uint32()
  external int RootDirectory;

  @Uint32()
  external int ObjectName;

  @Uint32()
  external int Attributes;

  @Uint32()
  external int SecurityDescriptor;

  @Uint32()
  external int SecurityQualityOfService;
}

/// {@category Struct}
class OBJECT_ATTRIBUTES64 extends Struct {
  @Uint32()
  external int Length;

  @Uint64()
  external int RootDirectory;

  @Uint64()
  external int ObjectName;

  @Uint32()
  external int Attributes;

  @Uint64()
  external int SecurityDescriptor;

  @Uint64()
  external int SecurityQualityOfService;
}

/// {@category Struct}
class PROCESSOR_NUMBER extends Struct {
  @Uint16()
  external int Group;

  @Uint8()
  external int Number;

  @Uint8()
  external int Reserved;
}

/// {@category Struct}
class QUAD extends Struct {
  external _QUAD__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _QUAD__Anonymous_e__Union extends Union {
  @Int64()
  external int UseThisFieldToCopy;

  @Double()
  external double DoNotUseThisField;
}

extension QUAD_Extension on QUAD {
  int get UseThisFieldToCopy => this.Anonymous.UseThisFieldToCopy;
  set UseThisFieldToCopy(int value) =>
      this.Anonymous.UseThisFieldToCopy = value;

  double get DoNotUseThisField => this.Anonymous.DoNotUseThisField;
  set DoNotUseThisField(double value) =>
      this.Anonymous.DoNotUseThisField = value;
}

/// {@category Struct}
class RTL_BALANCED_NODE extends Struct {
  external _RTL_BALANCED_NODE__Anonymous1_e__Union Anonymous1;

  external _RTL_BALANCED_NODE__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _RTL_BALANCED_NODE__Anonymous1_e__Union extends Union {
  @Array(2)
  external Array<Pointer<RTL_BALANCED_NODE>> Children;

  external _RTL_BALANCED_NODE__Anonymous1_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _RTL_BALANCED_NODE__Anonymous1_e__Union__Anonymous_e__Struct
    extends Struct {
  external Pointer<RTL_BALANCED_NODE> Left;

  external Pointer<RTL_BALANCED_NODE> Right;
}

extension RTL_BALANCED_NODE__Anonymous1_e__Union_Extension
    on RTL_BALANCED_NODE {
  Pointer<RTL_BALANCED_NODE> get Left => this.Anonymous1.Anonymous.Left;
  set Left(Pointer<RTL_BALANCED_NODE> value) =>
      this.Anonymous1.Anonymous.Left = value;

  Pointer<RTL_BALANCED_NODE> get Right => this.Anonymous1.Anonymous.Right;
  set Right(Pointer<RTL_BALANCED_NODE> value) =>
      this.Anonymous1.Anonymous.Right = value;
}

extension RTL_BALANCED_NODE_Extension on RTL_BALANCED_NODE {
  Array<Pointer<RTL_BALANCED_NODE>> get Children => this.Anonymous1.Children;
  set Children(Array<Pointer<RTL_BALANCED_NODE>> value) =>
      this.Anonymous1.Children = value;

  _RTL_BALANCED_NODE__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(
          _RTL_BALANCED_NODE__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _RTL_BALANCED_NODE__Anonymous2_e__Union extends Union {
  @Uint8()
  external int bitfield;

  @IntPtr()
  external int ParentValue;
}

extension RTL_BALANCED_NODE_Extension_1 on RTL_BALANCED_NODE {
  int get bitfield => this.Anonymous2.bitfield;
  set bitfield(int value) => this.Anonymous2.bitfield = value;

  int get ParentValue => this.Anonymous2.ParentValue;
  set ParentValue(int value) => this.Anonymous2.ParentValue = value;
}

/// {@category Struct}
class SINGLE_LIST_ENTRY extends Struct {
  external Pointer<SINGLE_LIST_ENTRY> Next;
}

/// {@category Struct}
class SINGLE_LIST_ENTRY32 extends Struct {
  @Uint32()
  external int Next;
}

/// {@category Struct}
class SLIST_ENTRY extends Struct {
  external Pointer<SLIST_ENTRY> Next;
}

/// {@category Struct}
class SLIST_HEADER extends Union {
  external _SLIST_HEADER__Anonymous_e__Struct Anonymous;

  external _SLIST_HEADER__HeaderX64_e__Struct HeaderX64;
}

/// {@category Struct}
class _SLIST_HEADER__Anonymous_e__Struct extends Struct {
  @Uint64()
  external int Alignment;

  @Uint64()
  external int Region;
}

extension SLIST_HEADER_Extension on SLIST_HEADER {
  int get Alignment => this.Anonymous.Alignment;
  set Alignment(int value) => this.Anonymous.Alignment = value;

  int get Region => this.Anonymous.Region;
  set Region(int value) => this.Anonymous.Region = value;
}

/// {@category Struct}
class _SLIST_HEADER__HeaderX64_e__Struct extends Struct {
  @Uint64()
  external int bitfield1;

  @Uint64()
  external int bitfield2;
}

extension SLIST_HEADER_Extension_1 on SLIST_HEADER {
  int get bitfield1 => this.HeaderX64.bitfield1;
  set bitfield1(int value) => this.HeaderX64.bitfield1 = value;

  int get bitfield2 => this.HeaderX64.bitfield2;
  set bitfield2(int value) => this.HeaderX64.bitfield2 = value;
}

/// {@category Struct}
class STRING extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  external Pointer<Utf8> Buffer;
}

/// {@category Struct}
class STRING32 extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  @Uint32()
  external int Buffer;
}

/// {@category Struct}
class STRING64 extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int MaximumLength;

  @Uint64()
  external int Buffer;
}

/// {@category Struct}
class WNF_STATE_NAME extends Struct {
  @Array(2)
  external Array<Uint32> Data;
}
