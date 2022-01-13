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
import '../../storage/jet/structs.g.dart';
import '../../storage/structuredstorage/structs.g.dart';
import '../../storage/jet/callbacks.g.dart';

/// {@category Struct}
class CONVERT_ extends Struct {
  external Pointer<Utf16> szOldDll;

  external _CONVERT_W__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _CONVERT_W__Anonymous_e__Union extends Union {
  @Uint32()
  external int fFlags;

  external _CONVERT_W__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _CONVERT_W__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension CONVERT_W__Anonymous_e__Union_Extension on CONVERT_ {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension CONVERT_W_Extension on CONVERT_ {
  int get fFlags => this.Anonymous.fFlags;
  set fFlags(int value) => this.Anonymous.fFlags = value;

  _CONVERT_W__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_CONVERT_W__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class JET_BKINFO extends Struct {
  external JET_LGPOS lgposMark;

  external _JET_BKINFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int genLow;

  @Uint32()
  external int genHigh;
}

/// {@category Struct}
class _JET_BKINFO__Anonymous_e__Union extends Union {
  external JET_LOGTIME logtimeMark;

  external JET_BKLOGTIME bklogtimeMark;
}

extension JET_BKINFO_Extension on JET_BKINFO {
  JET_LOGTIME get logtimeMark => this.Anonymous.logtimeMark;
  set logtimeMark(JET_LOGTIME value) => this.Anonymous.logtimeMark = value;

  JET_BKLOGTIME get bklogtimeMark => this.Anonymous.bklogtimeMark;
  set bklogtimeMark(JET_BKLOGTIME value) =>
      this.Anonymous.bklogtimeMark = value;
}

/// {@category Struct}
class JET_BKLOGTIME extends Struct {
  @Uint8()
  external int bSeconds;

  @Uint8()
  external int bMinutes;

  @Uint8()
  external int bHours;

  @Uint8()
  external int bDay;

  @Uint8()
  external int bMonth;

  @Uint8()
  external int bYear;

  external _JET_BKLOGTIME__Anonymous1_e__Union Anonymous1;

  external _JET_BKLOGTIME__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _JET_BKLOGTIME__Anonymous1_e__Union extends Union {
  @Uint8()
  external int bFiller1;

  external _JET_BKLOGTIME__Anonymous1_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _JET_BKLOGTIME__Anonymous1_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension JET_BKLOGTIME__Anonymous1_e__Union_Extension on JET_BKLOGTIME {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension JET_BKLOGTIME_Extension on JET_BKLOGTIME {
  int get bFiller1 => this.Anonymous1.bFiller1;
  set bFiller1(int value) => this.Anonymous1.bFiller1 = value;

  _JET_BKLOGTIME__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(
          _JET_BKLOGTIME__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _JET_BKLOGTIME__Anonymous2_e__Union extends Union {
  @Uint8()
  external int bFiller2;

  external _JET_BKLOGTIME__Anonymous2_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _JET_BKLOGTIME__Anonymous2_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension JET_BKLOGTIME__Anonymous2_e__Union_Extension on JET_BKLOGTIME {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension JET_BKLOGTIME_Extension_1 on JET_BKLOGTIME {
  int get bFiller2 => this.Anonymous2.bFiller2;
  set bFiller2(int value) => this.Anonymous2.bFiller2 = value;

  _JET_BKLOGTIME__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(
          _JET_BKLOGTIME__Anonymous2_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class JET_COLUMNBASE_ extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int columnid;

  @Uint32()
  external int coltyp;

  @Uint16()
  external int wCountry;

  @Uint16()
  external int langid;

  @Uint16()
  external int cp;

  @Uint16()
  external int wFiller;

  @Uint32()
  external int cbMax;

  @Uint32()
  external int grbit;

  @Array(256)
  external Array<Uint16> _szBaseTableName;

  String get szBaseTableName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szBaseTableName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szBaseTableName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szBaseTableName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _szBaseColumnName;

  String get szBaseColumnName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szBaseColumnName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szBaseColumnName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szBaseColumnName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class JET_COLUMNCREATE_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szColumnName;

  @Uint32()
  external int coltyp;

  @Uint32()
  external int cbMax;

  @Uint32()
  external int grbit;

  external Pointer pvDefault;

  @Uint32()
  external int cbDefault;

  @Uint32()
  external int cp;

  @Uint32()
  external int columnid;

  @Int32()
  external int err;
}

/// {@category Struct}
class JET_COLUMNDEF extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int columnid;

  @Uint32()
  external int coltyp;

  @Uint16()
  external int wCountry;

  @Uint16()
  external int langid;

  @Uint16()
  external int cp;

  @Uint16()
  external int wCollate;

  @Uint32()
  external int cbMax;

  @Uint32()
  external int grbit;
}

/// {@category Struct}
class JET_COLUMNLIST extends Struct {
  @Uint32()
  external int cbStruct;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cRecord;

  @Uint32()
  external int columnidPresentationOrder;

  @Uint32()
  external int columnidcolumnname;

  @Uint32()
  external int columnidcolumnid;

  @Uint32()
  external int columnidcoltyp;

  @Uint32()
  external int columnidCountry;

  @Uint32()
  external int columnidLangid;

  @Uint32()
  external int columnidCp;

  @Uint32()
  external int columnidCollate;

  @Uint32()
  external int columnidcbMax;

  @Uint32()
  external int columnidgrbit;

  @Uint32()
  external int columnidDefault;

  @Uint32()
  external int columnidBaseTableName;

  @Uint32()
  external int columnidBaseColumnName;

  @Uint32()
  external int columnidDefinitionName;
}

/// {@category Struct}
class JET_COMMIT_ID extends Struct {
  external JET_SIGNATURE signLog;

  @Int32()
  external int reserved;

  @Int64()
  external int commitId;
}

/// {@category Struct}
class JET_CONDITIONALCOLUMN_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szColumnName;

  @Uint32()
  external int grbit;
}

/// {@category Struct}
class JET_DBINFOMISC extends Struct {
  @Uint32()
  external int ulVersion;

  @Uint32()
  external int ulUpdate;

  external JET_SIGNATURE signDb;

  @Uint32()
  external int dbstate;

  external JET_LGPOS lgposConsistent;

  external JET_LOGTIME logtimeConsistent;

  external JET_LOGTIME logtimeAttach;

  external JET_LGPOS lgposAttach;

  external JET_LOGTIME logtimeDetach;

  external JET_LGPOS lgposDetach;

  external JET_SIGNATURE signLog;

  external JET_BKINFO bkinfoFullPrev;

  external JET_BKINFO bkinfoIncPrev;

  external JET_BKINFO bkinfoFullCur;

  @Uint32()
  external int fShadowingDisabled;

  @Uint32()
  external int fUpgradeDb;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Int32()
  external int lSPNumber;

  @Uint32()
  external int cbPageSize;
}

/// {@category Struct}
class JET_DBINFOMISC2 extends Struct {
  @Uint32()
  external int ulVersion;

  @Uint32()
  external int ulUpdate;

  external JET_SIGNATURE signDb;

  @Uint32()
  external int dbstate;

  external JET_LGPOS lgposConsistent;

  external JET_LOGTIME logtimeConsistent;

  external JET_LOGTIME logtimeAttach;

  external JET_LGPOS lgposAttach;

  external JET_LOGTIME logtimeDetach;

  external JET_LGPOS lgposDetach;

  external JET_SIGNATURE signLog;

  external JET_BKINFO bkinfoFullPrev;

  external JET_BKINFO bkinfoIncPrev;

  external JET_BKINFO bkinfoFullCur;

  @Uint32()
  external int fShadowingDisabled;

  @Uint32()
  external int fUpgradeDb;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Int32()
  external int lSPNumber;

  @Uint32()
  external int cbPageSize;

  @Uint32()
  external int genMinRequired;

  @Uint32()
  external int genMaxRequired;

  external JET_LOGTIME logtimeGenMaxCreate;

  @Uint32()
  external int ulRepairCount;

  external JET_LOGTIME logtimeRepair;

  @Uint32()
  external int ulRepairCountOld;

  @Uint32()
  external int ulECCFixSuccess;

  external JET_LOGTIME logtimeECCFixSuccess;

  @Uint32()
  external int ulECCFixSuccessOld;

  @Uint32()
  external int ulECCFixFail;

  external JET_LOGTIME logtimeECCFixFail;

  @Uint32()
  external int ulECCFixFailOld;

  @Uint32()
  external int ulBadChecksum;

  external JET_LOGTIME logtimeBadChecksum;

  @Uint32()
  external int ulBadChecksumOld;
}

/// {@category Struct}
class JET_DBINFOMISC3 extends Struct {
  @Uint32()
  external int ulVersion;

  @Uint32()
  external int ulUpdate;

  external JET_SIGNATURE signDb;

  @Uint32()
  external int dbstate;

  external JET_LGPOS lgposConsistent;

  external JET_LOGTIME logtimeConsistent;

  external JET_LOGTIME logtimeAttach;

  external JET_LGPOS lgposAttach;

  external JET_LOGTIME logtimeDetach;

  external JET_LGPOS lgposDetach;

  external JET_SIGNATURE signLog;

  external JET_BKINFO bkinfoFullPrev;

  external JET_BKINFO bkinfoIncPrev;

  external JET_BKINFO bkinfoFullCur;

  @Uint32()
  external int fShadowingDisabled;

  @Uint32()
  external int fUpgradeDb;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Int32()
  external int lSPNumber;

  @Uint32()
  external int cbPageSize;

  @Uint32()
  external int genMinRequired;

  @Uint32()
  external int genMaxRequired;

  external JET_LOGTIME logtimeGenMaxCreate;

  @Uint32()
  external int ulRepairCount;

  external JET_LOGTIME logtimeRepair;

  @Uint32()
  external int ulRepairCountOld;

  @Uint32()
  external int ulECCFixSuccess;

  external JET_LOGTIME logtimeECCFixSuccess;

  @Uint32()
  external int ulECCFixSuccessOld;

  @Uint32()
  external int ulECCFixFail;

  external JET_LOGTIME logtimeECCFixFail;

  @Uint32()
  external int ulECCFixFailOld;

  @Uint32()
  external int ulBadChecksum;

  external JET_LOGTIME logtimeBadChecksum;

  @Uint32()
  external int ulBadChecksumOld;

  @Uint32()
  external int genCommitted;
}

/// {@category Struct}
class JET_DBINFOMISC4 extends Struct {
  @Uint32()
  external int ulVersion;

  @Uint32()
  external int ulUpdate;

  external JET_SIGNATURE signDb;

  @Uint32()
  external int dbstate;

  external JET_LGPOS lgposConsistent;

  external JET_LOGTIME logtimeConsistent;

  external JET_LOGTIME logtimeAttach;

  external JET_LGPOS lgposAttach;

  external JET_LOGTIME logtimeDetach;

  external JET_LGPOS lgposDetach;

  external JET_SIGNATURE signLog;

  external JET_BKINFO bkinfoFullPrev;

  external JET_BKINFO bkinfoIncPrev;

  external JET_BKINFO bkinfoFullCur;

  @Uint32()
  external int fShadowingDisabled;

  @Uint32()
  external int fUpgradeDb;

  @Uint32()
  external int dwMajorVersion;

  @Uint32()
  external int dwMinorVersion;

  @Uint32()
  external int dwBuildNumber;

  @Int32()
  external int lSPNumber;

  @Uint32()
  external int cbPageSize;

  @Uint32()
  external int genMinRequired;

  @Uint32()
  external int genMaxRequired;

  external JET_LOGTIME logtimeGenMaxCreate;

  @Uint32()
  external int ulRepairCount;

  external JET_LOGTIME logtimeRepair;

  @Uint32()
  external int ulRepairCountOld;

  @Uint32()
  external int ulECCFixSuccess;

  external JET_LOGTIME logtimeECCFixSuccess;

  @Uint32()
  external int ulECCFixSuccessOld;

  @Uint32()
  external int ulECCFixFail;

  external JET_LOGTIME logtimeECCFixFail;

  @Uint32()
  external int ulECCFixFailOld;

  @Uint32()
  external int ulBadChecksum;

  external JET_LOGTIME logtimeBadChecksum;

  @Uint32()
  external int ulBadChecksumOld;

  @Uint32()
  external int genCommitted;

  external JET_BKINFO bkinfoCopyPrev;

  external JET_BKINFO bkinfoDiffPrev;
}

/// {@category Struct}
class JET_DBINFOUPGRADE extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cbFilesizeLow;

  @Uint32()
  external int cbFilesizeHigh;

  @Uint32()
  external int cbFreeSpaceRequiredLow;

  @Uint32()
  external int cbFreeSpaceRequiredHigh;

  @Uint32()
  external int csecToUpgrade;

  external _JET_DBINFOUPGRADE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _JET_DBINFOUPGRADE__Anonymous_e__Union extends Union {
  @Uint32()
  external int ulFlags;

  external _JET_DBINFOUPGRADE__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
class _JET_DBINFOUPGRADE__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension JET_DBINFOUPGRADE__Anonymous_e__Union_Extension on JET_DBINFOUPGRADE {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension JET_DBINFOUPGRADE_Extension on JET_DBINFOUPGRADE {
  int get ulFlags => this.Anonymous.ulFlags;
  set ulFlags(int value) => this.Anonymous.ulFlags = value;

  _JET_DBINFOUPGRADE__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _JET_DBINFOUPGRADE__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class JET_ENUMCOLUMN extends Struct {
  @Uint32()
  external int columnid;

  @Int32()
  external int err;

  external _JET_ENUMCOLUMN__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _JET_ENUMCOLUMN__Anonymous_e__Union extends Union {
  external _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous1_e__Struct Anonymous1;

  external _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous2_e__Struct Anonymous2;
}

/// {@category Struct}
class _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous1_e__Struct extends Struct {
  @Uint32()
  external int cEnumColumnValue;

  external Pointer<JET_ENUMCOLUMNVALUE> rgEnumColumnValue;
}

extension JET_ENUMCOLUMN__Anonymous_e__Union_Extension on JET_ENUMCOLUMN {
  int get cEnumColumnValue => this.Anonymous.Anonymous1.cEnumColumnValue;
  set cEnumColumnValue(int value) =>
      this.Anonymous.Anonymous1.cEnumColumnValue = value;

  Pointer<JET_ENUMCOLUMNVALUE> get rgEnumColumnValue =>
      this.Anonymous.Anonymous1.rgEnumColumnValue;
  set rgEnumColumnValue(Pointer<JET_ENUMCOLUMNVALUE> value) =>
      this.Anonymous.Anonymous1.rgEnumColumnValue = value;
}

/// {@category Struct}
class _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous2_e__Struct extends Struct {
  @Uint32()
  external int cbData;

  external Pointer pvData;
}

extension JET_ENUMCOLUMN__Anonymous_e__Union_Extension_1 on JET_ENUMCOLUMN {
  int get cbData => this.Anonymous.Anonymous2.cbData;
  set cbData(int value) => this.Anonymous.Anonymous2.cbData = value;

  Pointer get pvData => this.Anonymous.Anonymous2.pvData;
  set pvData(Pointer value) => this.Anonymous.Anonymous2.pvData = value;
}

extension JET_ENUMCOLUMN_Extension on JET_ENUMCOLUMN {
  _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous1_e__Struct get Anonymous1 =>
      this.Anonymous.Anonymous1;
  set Anonymous1(
          _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous1_e__Struct value) =>
      this.Anonymous.Anonymous1 = value;

  _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous2_e__Struct get Anonymous2 =>
      this.Anonymous.Anonymous2;
  set Anonymous2(
          _JET_ENUMCOLUMN__Anonymous_e__Union__Anonymous2_e__Struct value) =>
      this.Anonymous.Anonymous2 = value;
}

/// {@category Struct}
class JET_ENUMCOLUMNID extends Struct {
  @Uint32()
  external int columnid;

  @Uint32()
  external int ctagSequence;

  external Pointer<Uint32> rgtagSequence;
}

/// {@category Struct}
class JET_ENUMCOLUMNVALUE extends Struct {
  @Uint32()
  external int itagSequence;

  @Int32()
  external int err;

  @Uint32()
  external int cbData;

  external Pointer pvData;
}

/// {@category Struct}
class JET_ERRINFOBASIC_ extends Struct {
  @Uint32()
  external int cbStruct;

  @Int32()
  external int errValue;

  @Int32()
  external int errcatMostSpecific;

  @Array(8)
  external Array<Uint8> rgCategoricalHierarchy;

  @Uint32()
  external int lSourceLine;

  @Array(64)
  external Array<Uint16> _rgszSourceFile;

  String get rgszSourceFile {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_rgszSourceFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set rgszSourceFile(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _rgszSourceFile[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class JET_INDEXCREATE2_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szIndexName;

  external Pointer<Utf16> szKey;

  @Uint32()
  external int cbKey;

  @Uint32()
  external int grbit;

  @Uint32()
  external int ulDensity;

  external _JET_INDEXCREATE2_W__Anonymous1_e__Union Anonymous1;

  external _JET_INDEXCREATE2_W__Anonymous2_e__Union Anonymous2;

  external Pointer<JET_CONDITIONALCOLUMN_> rgconditionalcolumn;

  @Uint32()
  external int cConditionalColumn;

  @Int32()
  external int err;

  @Uint32()
  external int cbKeyMost;

  external Pointer<JET_SPACEHINTS> pSpacehints;
}

/// {@category Struct}
class _JET_INDEXCREATE2_W__Anonymous1_e__Union extends Union {
  @Uint32()
  external int lcid;

  external Pointer<JET_UNICODEINDEX> pidxunicode;
}

extension JET_INDEXCREATE2_W_Extension on JET_INDEXCREATE2_ {
  int get lcid => this.Anonymous1.lcid;
  set lcid(int value) => this.Anonymous1.lcid = value;

  Pointer<JET_UNICODEINDEX> get pidxunicode => this.Anonymous1.pidxunicode;
  set pidxunicode(Pointer<JET_UNICODEINDEX> value) =>
      this.Anonymous1.pidxunicode = value;
}

/// {@category Struct}
class _JET_INDEXCREATE2_W__Anonymous2_e__Union extends Union {
  @Uint32()
  external int cbVarSegMac;

  external Pointer<JET_TUPLELIMITS> ptuplelimits;
}

extension JET_INDEXCREATE2_W_Extension_1 on JET_INDEXCREATE2_ {
  int get cbVarSegMac => this.Anonymous2.cbVarSegMac;
  set cbVarSegMac(int value) => this.Anonymous2.cbVarSegMac = value;

  Pointer<JET_TUPLELIMITS> get ptuplelimits => this.Anonymous2.ptuplelimits;
  set ptuplelimits(Pointer<JET_TUPLELIMITS> value) =>
      this.Anonymous2.ptuplelimits = value;
}

/// {@category Struct}
class JET_INDEXCREATE3_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szIndexName;

  external Pointer<Utf16> szKey;

  @Uint32()
  external int cbKey;

  @Uint32()
  external int grbit;

  @Uint32()
  external int ulDensity;

  external Pointer<JET_UNICODEINDEX2> pidxunicode;

  external _JET_INDEXCREATE3_W__Anonymous_e__Union Anonymous;

  external Pointer<JET_CONDITIONALCOLUMN_> rgconditionalcolumn;

  @Uint32()
  external int cConditionalColumn;

  @Int32()
  external int err;

  @Uint32()
  external int cbKeyMost;

  external Pointer<JET_SPACEHINTS> pSpacehints;
}

/// {@category Struct}
class _JET_INDEXCREATE3_W__Anonymous_e__Union extends Union {
  @Uint32()
  external int cbVarSegMac;

  external Pointer<JET_TUPLELIMITS> ptuplelimits;
}

extension JET_INDEXCREATE3_W_Extension on JET_INDEXCREATE3_ {
  int get cbVarSegMac => this.Anonymous.cbVarSegMac;
  set cbVarSegMac(int value) => this.Anonymous.cbVarSegMac = value;

  Pointer<JET_TUPLELIMITS> get ptuplelimits => this.Anonymous.ptuplelimits;
  set ptuplelimits(Pointer<JET_TUPLELIMITS> value) =>
      this.Anonymous.ptuplelimits = value;
}

/// {@category Struct}
class JET_INDEXCREATE_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szIndexName;

  external Pointer<Utf16> szKey;

  @Uint32()
  external int cbKey;

  @Uint32()
  external int grbit;

  @Uint32()
  external int ulDensity;

  external _JET_INDEXCREATE_W__Anonymous1_e__Union Anonymous1;

  external _JET_INDEXCREATE_W__Anonymous2_e__Union Anonymous2;

  external Pointer<JET_CONDITIONALCOLUMN_> rgconditionalcolumn;

  @Uint32()
  external int cConditionalColumn;

  @Int32()
  external int err;

  @Uint32()
  external int cbKeyMost;
}

/// {@category Struct}
class _JET_INDEXCREATE_W__Anonymous1_e__Union extends Union {
  @Uint32()
  external int lcid;

  external Pointer<JET_UNICODEINDEX> pidxunicode;
}

extension JET_INDEXCREATE_W_Extension on JET_INDEXCREATE_ {
  int get lcid => this.Anonymous1.lcid;
  set lcid(int value) => this.Anonymous1.lcid = value;

  Pointer<JET_UNICODEINDEX> get pidxunicode => this.Anonymous1.pidxunicode;
  set pidxunicode(Pointer<JET_UNICODEINDEX> value) =>
      this.Anonymous1.pidxunicode = value;
}

/// {@category Struct}
class _JET_INDEXCREATE_W__Anonymous2_e__Union extends Union {
  @Uint32()
  external int cbVarSegMac;

  external Pointer<JET_TUPLELIMITS> ptuplelimits;
}

extension JET_INDEXCREATE_W_Extension_1 on JET_INDEXCREATE_ {
  int get cbVarSegMac => this.Anonymous2.cbVarSegMac;
  set cbVarSegMac(int value) => this.Anonymous2.cbVarSegMac = value;

  Pointer<JET_TUPLELIMITS> get ptuplelimits => this.Anonymous2.ptuplelimits;
  set ptuplelimits(Pointer<JET_TUPLELIMITS> value) =>
      this.Anonymous2.ptuplelimits = value;
}

/// {@category Struct}
class JET_INDEXID extends Struct {
  @Uint32()
  external int cbStruct;

  @Array(16)
  external Array<Uint8> rgbIndexId;
}

/// {@category Struct}
class JET_INDEXLIST extends Struct {
  @Uint32()
  external int cbStruct;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cRecord;

  @Uint32()
  external int columnidindexname;

  @Uint32()
  external int columnidgrbitIndex;

  @Uint32()
  external int columnidcKey;

  @Uint32()
  external int columnidcEntry;

  @Uint32()
  external int columnidcPage;

  @Uint32()
  external int columnidcColumn;

  @Uint32()
  external int columnidiColumn;

  @Uint32()
  external int columnidcolumnid;

  @Uint32()
  external int columnidcoltyp;

  @Uint32()
  external int columnidCountry;

  @Uint32()
  external int columnidLangid;

  @Uint32()
  external int columnidCp;

  @Uint32()
  external int columnidCollate;

  @Uint32()
  external int columnidgrbitColumn;

  @Uint32()
  external int columnidcolumnname;

  @Uint32()
  external int columnidLCMapFlags;
}

/// {@category Struct}
class JET_INDEXRANGE extends Struct {
  @Uint32()
  external int cbStruct;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int grbit;
}

/// {@category Struct}
class JET_INDEX_COLUMN extends Struct {
  @Uint32()
  external int columnid;

  @Int32()
  external int relop;

  external Pointer pv;

  @Uint32()
  external int cb;

  @Uint32()
  external int grbit;
}

/// {@category Struct}
class JET_INDEX_RANGE extends Struct {
  external Pointer<JET_INDEX_COLUMN> rgStartColumns;

  @Uint32()
  external int cStartColumns;

  external Pointer<JET_INDEX_COLUMN> rgEndColumns;

  @Uint32()
  external int cEndColumns;
}

/// {@category Struct}
class JET_INSTANCE_INFO_ extends Struct {
  @IntPtr()
  external int hInstanceId;

  external Pointer<Utf16> szInstanceName;

  @IntPtr()
  external int cDatabases;

  external Pointer<Pointer<Uint16>> szDatabaseFileName;

  external Pointer<Pointer<Uint16>> szDatabaseDisplayName;

  external Pointer<Pointer<Uint16>> szDatabaseSLVFileName_Obsolete;
}

/// {@category Struct}
@Packed(1)
class JET_LGPOS extends Struct {
  @Uint16()
  external int ib;

  @Uint16()
  external int isec;

  @Int32()
  external int lGeneration;
}

/// {@category Struct}
class JET_LOGINFO_ extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int ulGenLow;

  @Uint32()
  external int ulGenHigh;

  @Array(4)
  external Array<Uint16> _szBaseName;

  String get szBaseName {
    final charCodes = <int>[];
    for (var i = 0; i < 4; i++) {
      charCodes.add(_szBaseName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szBaseName(String value) {
    final stringToStore = value.padRight(4, '\x00');
    for (var i = 0; i < 4; i++) {
      _szBaseName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class JET_LOGTIME extends Struct {
  @Uint8()
  external int bSeconds;

  @Uint8()
  external int bMinutes;

  @Uint8()
  external int bHours;

  @Uint8()
  external int bDay;

  @Uint8()
  external int bMonth;

  @Uint8()
  external int bYear;

  external _JET_LOGTIME__Anonymous1_e__Union Anonymous1;

  external _JET_LOGTIME__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
class _JET_LOGTIME__Anonymous1_e__Union extends Union {
  @Uint8()
  external int bFiller1;

  external _JET_LOGTIME__Anonymous1_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _JET_LOGTIME__Anonymous1_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension JET_LOGTIME__Anonymous1_e__Union_Extension on JET_LOGTIME {
  int get bitfield => this.Anonymous1.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous1.Anonymous.bitfield = value;
}

extension JET_LOGTIME_Extension on JET_LOGTIME {
  int get bFiller1 => this.Anonymous1.bFiller1;
  set bFiller1(int value) => this.Anonymous1.bFiller1 = value;

  _JET_LOGTIME__Anonymous1_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous1.Anonymous;
  set Anonymous(_JET_LOGTIME__Anonymous1_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous1.Anonymous = value;
}

/// {@category Struct}
class _JET_LOGTIME__Anonymous2_e__Union extends Union {
  @Uint8()
  external int bFiller2;

  external _JET_LOGTIME__Anonymous2_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _JET_LOGTIME__Anonymous2_e__Union__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension JET_LOGTIME__Anonymous2_e__Union_Extension on JET_LOGTIME {
  int get bitfield => this.Anonymous2.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous2.Anonymous.bitfield = value;
}

extension JET_LOGTIME_Extension_1 on JET_LOGTIME {
  int get bFiller2 => this.Anonymous2.bFiller2;
  set bFiller2(int value) => this.Anonymous2.bFiller2 = value;

  _JET_LOGTIME__Anonymous2_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous2.Anonymous;
  set Anonymous(_JET_LOGTIME__Anonymous2_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous2.Anonymous = value;
}

/// {@category Struct}
class JET_OBJECTINFO extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int objtyp;

  @Double()
  external double dtCreate;

  @Double()
  external double dtUpdate;

  @Uint32()
  external int grbit;

  @Uint32()
  external int flags;

  @Uint32()
  external int cRecord;

  @Uint32()
  external int cPage;
}

/// {@category Struct}
class JET_OBJECTLIST extends Struct {
  @Uint32()
  external int cbStruct;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cRecord;

  @Uint32()
  external int columnidcontainername;

  @Uint32()
  external int columnidobjectname;

  @Uint32()
  external int columnidobjtyp;

  @Uint32()
  external int columniddtCreate;

  @Uint32()
  external int columniddtUpdate;

  @Uint32()
  external int columnidgrbit;

  @Uint32()
  external int columnidflags;

  @Uint32()
  external int columnidcRecord;

  @Uint32()
  external int columnidcPage;
}

/// {@category Struct}
class JET_OPENTEMPORARYTABLE extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<JET_COLUMNDEF> prgcolumndef;

  @Uint32()
  external int ccolumn;

  external Pointer<JET_UNICODEINDEX> pidxunicode;

  @Uint32()
  external int grbit;

  external Pointer<Uint32> prgcolumnid;

  @Uint32()
  external int cbKeyMost;

  @Uint32()
  external int cbVarSegMac;

  @IntPtr()
  external int tableid;
}

/// {@category Struct}
class JET_OPENTEMPORARYTABLE2 extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<JET_COLUMNDEF> prgcolumndef;

  @Uint32()
  external int ccolumn;

  external Pointer<JET_UNICODEINDEX2> pidxunicode;

  @Uint32()
  external int grbit;

  external Pointer<Uint32> prgcolumnid;

  @Uint32()
  external int cbKeyMost;

  @Uint32()
  external int cbVarSegMac;

  @IntPtr()
  external int tableid;
}

/// {@category Struct}
class JET_OPERATIONCONTEXT extends Struct {
  @Uint32()
  external int ulUserID;

  @Uint8()
  external int nOperationID;

  @Uint8()
  external int nOperationType;

  @Uint8()
  external int nClientType;

  @Uint8()
  external int fFlags;
}

/// {@category Struct}
class JET_RBSINFOMISC extends Struct {
  @Int32()
  external int lRBSGeneration;

  external JET_LOGTIME logtimeCreate;

  external JET_LOGTIME logtimeCreatePrevRBS;

  @Uint32()
  external int ulMajor;

  @Uint32()
  external int ulMinor;

  @Uint64()
  external int cbLogicalFileSize;
}

/// {@category Struct}
class JET_RBSREVERTINFOMISC extends Struct {
  @Int32()
  external int lGenMinRevertStart;

  @Int32()
  external int lGenMaxRevertStart;

  @Int32()
  external int lGenMinRevertEnd;

  @Int32()
  external int lGenMaxRevertEnd;

  external JET_LOGTIME logtimeRevertFrom;

  @Uint64()
  external int cSecRevert;

  @Uint64()
  external int cPagesReverted;
}

/// {@category Struct}
class JET_RECORDLIST extends Struct {
  @Uint32()
  external int cbStruct;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cRecord;

  @Uint32()
  external int columnidBookmark;
}

/// {@category Struct}
class JET_RECPOS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int centriesLT;

  @Uint32()
  external int centriesInRange;

  @Uint32()
  external int centriesTotal;
}

/// {@category Struct}
class JET_RECSIZE extends Struct {
  @Uint64()
  external int cbData;

  @Uint64()
  external int cbLongValueData;

  @Uint64()
  external int cbOverhead;

  @Uint64()
  external int cbLongValueOverhead;

  @Uint64()
  external int cNonTaggedColumns;

  @Uint64()
  external int cTaggedColumns;

  @Uint64()
  external int cLongValues;

  @Uint64()
  external int cMultiValues;
}

/// {@category Struct}
class JET_RECSIZE2 extends Struct {
  @Uint64()
  external int cbData;

  @Uint64()
  external int cbLongValueData;

  @Uint64()
  external int cbOverhead;

  @Uint64()
  external int cbLongValueOverhead;

  @Uint64()
  external int cNonTaggedColumns;

  @Uint64()
  external int cTaggedColumns;

  @Uint64()
  external int cLongValues;

  @Uint64()
  external int cMultiValues;

  @Uint64()
  external int cCompressedColumns;

  @Uint64()
  external int cbDataCompressed;

  @Uint64()
  external int cbLongValueDataCompressed;
}

/// {@category Struct}
class JET_RETINFO extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int ibLongValue;

  @Uint32()
  external int itagSequence;

  @Uint32()
  external int columnidNextTagged;
}

/// {@category Struct}
class JET_RETRIEVECOLUMN extends Struct {
  @Uint32()
  external int columnid;

  external Pointer pvData;

  @Uint32()
  external int cbData;

  @Uint32()
  external int cbActual;

  @Uint32()
  external int grbit;

  @Uint32()
  external int ibLongValue;

  @Uint32()
  external int itagSequence;

  @Uint32()
  external int columnidNextTagged;

  @Int32()
  external int err;
}

/// {@category Struct}
class JET_RSTINFO_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<JET_RSTMAP_> rgrstmap;

  @Int32()
  external int crstmap;

  external JET_LGPOS lgposStop;

  external JET_LOGTIME logtimeStop;

  external Pointer<NativeFunction<JET_PFNSTATUS>> pfnStatus;
}

/// {@category Struct}
class JET_RSTMAP_ extends Struct {
  external Pointer<Utf16> szDatabaseName;

  external Pointer<Utf16> szNewDatabaseName;
}

/// {@category Struct}
class JET_SETCOLUMN extends Struct {
  @Uint32()
  external int columnid;

  external Pointer pvData;

  @Uint32()
  external int cbData;

  @Uint32()
  external int grbit;

  @Uint32()
  external int ibLongValue;

  @Uint32()
  external int itagSequence;

  @Int32()
  external int err;
}

/// {@category Struct}
class JET_SETINFO extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int ibLongValue;

  @Uint32()
  external int itagSequence;
}

/// {@category Struct}
class JET_SETSYSPARAM_ extends Struct {
  @Uint32()
  external int paramid;

  @IntPtr()
  external int lParam;

  external Pointer<Utf16> sz;

  @Int32()
  external int err;
}

/// {@category Struct}
class JET_SIGNATURE extends Struct {
  @Uint32()
  external int ulRandom;

  external JET_LOGTIME logtimeCreate;

  @Array(16)
  external Array<Uint8> szComputerName;
}

/// {@category Struct}
class JET_SNPROG extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cunitDone;

  @Uint32()
  external int cunitTotal;
}

/// {@category Struct}
class JET_SPACEHINTS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int ulInitialDensity;

  @Uint32()
  external int cbInitial;

  @Uint32()
  external int grbit;

  @Uint32()
  external int ulMaintDensity;

  @Uint32()
  external int ulGrowth;

  @Uint32()
  external int cbMinExtent;

  @Uint32()
  external int cbMaxExtent;
}

/// {@category Struct}
class JET_TABLECREATE2_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szTableName;

  external Pointer<Utf16> szTemplateTableName;

  @Uint32()
  external int ulPages;

  @Uint32()
  external int ulDensity;

  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;

  @Uint32()
  external int cColumns;

  external Pointer<JET_INDEXCREATE_> rgindexcreate;

  @Uint32()
  external int cIndexes;

  external Pointer<Utf16> szCallback;

  @Uint32()
  external int cbtyp;

  @Uint32()
  external int grbit;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cCreated;
}

/// {@category Struct}
class JET_TABLECREATE3_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szTableName;

  external Pointer<Utf16> szTemplateTableName;

  @Uint32()
  external int ulPages;

  @Uint32()
  external int ulDensity;

  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;

  @Uint32()
  external int cColumns;

  external Pointer<JET_INDEXCREATE2_> rgindexcreate;

  @Uint32()
  external int cIndexes;

  external Pointer<Utf16> szCallback;

  @Uint32()
  external int cbtyp;

  @Uint32()
  external int grbit;

  external Pointer<JET_SPACEHINTS> pSeqSpacehints;

  external Pointer<JET_SPACEHINTS> pLVSpacehints;

  @Uint32()
  external int cbSeparateLV;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cCreated;
}

/// {@category Struct}
class JET_TABLECREATE4_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szTableName;

  external Pointer<Utf16> szTemplateTableName;

  @Uint32()
  external int ulPages;

  @Uint32()
  external int ulDensity;

  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;

  @Uint32()
  external int cColumns;

  external Pointer<JET_INDEXCREATE3_> rgindexcreate;

  @Uint32()
  external int cIndexes;

  external Pointer<Utf16> szCallback;

  @Uint32()
  external int cbtyp;

  @Uint32()
  external int grbit;

  external Pointer<JET_SPACEHINTS> pSeqSpacehints;

  external Pointer<JET_SPACEHINTS> pLVSpacehints;

  @Uint32()
  external int cbSeparateLV;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cCreated;
}

/// {@category Struct}
class JET_TABLECREATE_ extends Struct {
  @Uint32()
  external int cbStruct;

  external Pointer<Utf16> szTableName;

  external Pointer<Utf16> szTemplateTableName;

  @Uint32()
  external int ulPages;

  @Uint32()
  external int ulDensity;

  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;

  @Uint32()
  external int cColumns;

  external Pointer<JET_INDEXCREATE_> rgindexcreate;

  @Uint32()
  external int cIndexes;

  @Uint32()
  external int grbit;

  @IntPtr()
  external int tableid;

  @Uint32()
  external int cCreated;
}

/// {@category Struct}
class JET_THREADSTATS extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cPageReferenced;

  @Uint32()
  external int cPageRead;

  @Uint32()
  external int cPagePreread;

  @Uint32()
  external int cPageDirtied;

  @Uint32()
  external int cPageRedirtied;

  @Uint32()
  external int cLogRecord;

  @Uint32()
  external int cbLogRecord;
}

/// {@category Struct}
class JET_THREADSTATS2 extends Struct {
  @Uint32()
  external int cbStruct;

  @Uint32()
  external int cPageReferenced;

  @Uint32()
  external int cPageRead;

  @Uint32()
  external int cPagePreread;

  @Uint32()
  external int cPageDirtied;

  @Uint32()
  external int cPageRedirtied;

  @Uint32()
  external int cLogRecord;

  @Uint32()
  external int cbLogRecord;

  @Uint64()
  external int cusecPageCacheMiss;

  @Uint32()
  external int cPageCacheMiss;
}

/// {@category Struct}
class JET_TUPLELIMITS extends Struct {
  @Uint32()
  external int chLengthMin;

  @Uint32()
  external int chLengthMax;

  @Uint32()
  external int chToIndexMax;

  @Uint32()
  external int cchIncrement;

  @Uint32()
  external int ichStart;
}

/// {@category Struct}
class JET_UNICODEINDEX extends Struct {
  @Uint32()
  external int lcid;

  @Uint32()
  external int dwMapFlags;
}

/// {@category Struct}
class JET_UNICODEINDEX2 extends Struct {
  external Pointer<Utf16> szLocaleName;

  @Uint32()
  external int dwMapFlags;
}

/// {@category Struct}
class JET_USERDEFINEDDEFAULT_ extends Struct {
  external Pointer<Utf16> szCallback;

  external Pointer<Uint8> pbUserData;

  @Uint32()
  external int cbUserData;

  external Pointer<Utf16> szDependantColumns;
}
