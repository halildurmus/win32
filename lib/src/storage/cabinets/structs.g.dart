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
import '../../storage/cabinets/structs.g.dart';

/// {@category Struct}
class CCAB extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int cbFolderThresh;

  @Uint32()
  external int cbReserveCFHeader;

  @Uint32()
  external int cbReserveCFFolder;

  @Uint32()
  external int cbReserveCFData;

  @Int32()
  external int iCab;

  @Int32()
  external int iDisk;

  @Int32()
  external int fFailOnIncompressible;

  @Uint16()
  external int setID;

  @Array(256)
  external Array<Uint8> szDisk;

  @Array(256)
  external Array<Uint8> szCab;

  @Array(256)
  external Array<Uint8> szCabPath;
}

/// {@category Struct}
class ERF extends Struct {
  @Int32()
  external int erfOper;

  @Int32()
  external int erfType;

  @Int32()
  external int fError;
}

/// {@category Struct}
class FDICABINETINFO extends Struct {
  @Int32()
  external int cbCabinet;

  @Uint16()
  external int cFolders;

  @Uint16()
  external int cFiles;

  @Uint16()
  external int setID;

  @Uint16()
  external int iCabinet;

  @Int32()
  external int fReserve;

  @Int32()
  external int hasprev;

  @Int32()
  external int hasnext;
}

/// {@category Struct}
class FDIDECRYPT extends Struct {
  @Int32()
  external int fdidt;

  external Pointer pvUser;

  external _FDIDECRYPT__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _FDIDECRYPT__Anonymous_e__Union extends Union {
  external _FDIDECRYPT__Anonymous_e__Union__cabinet_e__Struct cabinet;

  external _FDIDECRYPT__Anonymous_e__Union__folder_e__Struct folder;

  external _FDIDECRYPT__Anonymous_e__Union__decrypt_e__Struct decrypt;
}

/// {@category Struct}
class _FDIDECRYPT__Anonymous_e__Union__cabinet_e__Struct extends Struct {
  external Pointer pHeaderReserve;

  @Uint16()
  external int cbHeaderReserve;

  @Uint16()
  external int setID;

  @Int32()
  external int iCabinet;
}

extension FDIDECRYPT__Anonymous_e__Union_Extension on FDIDECRYPT {
  Pointer get pHeaderReserve => this.Anonymous.cabinet.pHeaderReserve;
  set pHeaderReserve(Pointer value) =>
      this.Anonymous.cabinet.pHeaderReserve = value;

  int get cbHeaderReserve => this.Anonymous.cabinet.cbHeaderReserve;
  set cbHeaderReserve(int value) =>
      this.Anonymous.cabinet.cbHeaderReserve = value;

  int get setID => this.Anonymous.cabinet.setID;
  set setID(int value) => this.Anonymous.cabinet.setID = value;

  int get iCabinet => this.Anonymous.cabinet.iCabinet;
  set iCabinet(int value) => this.Anonymous.cabinet.iCabinet = value;
}

/// {@category Struct}
class _FDIDECRYPT__Anonymous_e__Union__folder_e__Struct extends Struct {
  external Pointer pFolderReserve;

  @Uint16()
  external int cbFolderReserve;

  @Uint16()
  external int iFolder;
}

extension FDIDECRYPT__Anonymous_e__Union_Extension_1 on FDIDECRYPT {
  Pointer get pFolderReserve => this.Anonymous.folder.pFolderReserve;
  set pFolderReserve(Pointer value) =>
      this.Anonymous.folder.pFolderReserve = value;

  int get cbFolderReserve => this.Anonymous.folder.cbFolderReserve;
  set cbFolderReserve(int value) =>
      this.Anonymous.folder.cbFolderReserve = value;

  int get iFolder => this.Anonymous.folder.iFolder;
  set iFolder(int value) => this.Anonymous.folder.iFolder = value;
}

/// {@category Struct}
class _FDIDECRYPT__Anonymous_e__Union__decrypt_e__Struct extends Struct {
  external Pointer pDataReserve;

  @Uint16()
  external int cbDataReserve;

  external Pointer pbData;

  @Uint16()
  external int cbData;

  @Int32()
  external int fSplit;

  @Uint16()
  external int cbPartial;
}

extension FDIDECRYPT__Anonymous_e__Union_Extension_2 on FDIDECRYPT {
  Pointer get pDataReserve => this.Anonymous.decrypt.pDataReserve;
  set pDataReserve(Pointer value) =>
      this.Anonymous.decrypt.pDataReserve = value;

  int get cbDataReserve => this.Anonymous.decrypt.cbDataReserve;
  set cbDataReserve(int value) => this.Anonymous.decrypt.cbDataReserve = value;

  Pointer get pbData => this.Anonymous.decrypt.pbData;
  set pbData(Pointer value) => this.Anonymous.decrypt.pbData = value;

  int get cbData => this.Anonymous.decrypt.cbData;
  set cbData(int value) => this.Anonymous.decrypt.cbData = value;

  int get fSplit => this.Anonymous.decrypt.fSplit;
  set fSplit(int value) => this.Anonymous.decrypt.fSplit = value;

  int get cbPartial => this.Anonymous.decrypt.cbPartial;
  set cbPartial(int value) => this.Anonymous.decrypt.cbPartial = value;
}

extension FDIDECRYPT_Extension on FDIDECRYPT {
  _FDIDECRYPT__Anonymous_e__Union__cabinet_e__Struct get cabinet =>
      this.Anonymous.cabinet;
  set cabinet(_FDIDECRYPT__Anonymous_e__Union__cabinet_e__Struct value) =>
      this.Anonymous.cabinet = value;

  _FDIDECRYPT__Anonymous_e__Union__folder_e__Struct get folder =>
      this.Anonymous.folder;
  set folder(_FDIDECRYPT__Anonymous_e__Union__folder_e__Struct value) =>
      this.Anonymous.folder = value;

  _FDIDECRYPT__Anonymous_e__Union__decrypt_e__Struct get decrypt =>
      this.Anonymous.decrypt;
  set decrypt(_FDIDECRYPT__Anonymous_e__Union__decrypt_e__Struct value) =>
      this.Anonymous.decrypt = value;
}

/// {@category Struct}
class FDINOTIFICATION extends Struct {
  @Int32()
  external int cb;

  external Pointer<Utf8> psz1;

  external Pointer<Utf8> psz2;

  external Pointer<Utf8> psz3;

  external Pointer pv;

  @IntPtr()
  external int hf;

  @Uint16()
  external int date;

  @Uint16()
  external int time;

  @Uint16()
  external int attribs;

  @Uint16()
  external int setID;

  @Uint16()
  external int iCabinet;

  @Uint16()
  external int iFolder;

  @Int32()
  external int fdie;
}

/// {@category Struct}
class FDISPILLFILE extends Struct {
  @Array(2)
  external Array<Uint8> ach;

  @Int32()
  external int cbFile;
}
