// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
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
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class VERSIONEDSTREAM extends Struct {
  external GUID guidVersion;
  external Pointer pStream;
}

class CAC extends Struct {
  @Uint32() external int cElems;
  external Pointer<Int8> pElems;
}

class CAUB extends Struct {
  @Uint32() external int cElems;
  external Pointer<Uint8> pElems;
}

class CAI extends Struct {
  @Uint32() external int cElems;
  external Pointer<Int16> pElems;
}

class CAUI extends Struct {
  @Uint32() external int cElems;
  external Pointer<Uint16> pElems;
}

class CAL extends Struct {
  @Uint32() external int cElems;
  external Pointer<Int32> pElems;
}

class CAUL extends Struct {
  @Uint32() external int cElems;
  external Pointer<Uint32> pElems;
}

class CAFLT extends Struct {
  @Uint32() external int cElems;
  external Pointer<Float> pElems;
}

class CADBL extends Struct {
  @Uint32() external int cElems;
  external Pointer<Double> pElems;
}

class CACY extends Struct {
  @Uint32() external int cElems;
  external Pointer<CY> pElems;
}

class CADATE extends Struct {
  @Uint32() external int cElems;
  external Pointer<Double> pElems;
}

class CABSTR extends Struct {
  @Uint32() external int cElems;
  external Pointer<Pointer<Utf16>> pElems;
}

class CABSTRBLOB extends Struct {
  @Uint32() external int cElems;
  external Pointer<BSTRBLOB> pElems;
}

class CABOOL extends Struct {
  @Uint32() external int cElems;
  external Pointer<Int16> pElems;
}

class CASCODE extends Struct {
  @Uint32() external int cElems;
  external Pointer<Int32> pElems;
}

class CAPROPVARIANT extends Struct {
  @Uint32() external int cElems;
  external Pointer<PROPVARIANT> pElems;
}

class CAH extends Struct {
  @Uint32() external int cElems;
  external Pointer<Int64> pElems;
}

class CAUH extends Struct {
  @Uint32() external int cElems;
  external Pointer<Uint64> pElems;
}

class CALPSTR extends Struct {
  @Uint32() external int cElems;
  external Pointer<Pointer<Utf8>> pElems;
}

class CALPWSTR extends Struct {
  @Uint32() external int cElems;
  external Pointer<Pointer<Utf16>> pElems;
}

class CAFILETIME extends Struct {
  @Uint32() external int cElems;
  external Pointer<FILETIME> pElems;
}

class CACLIPDATA extends Struct {
  @Uint32() external int cElems;
  external Pointer<CLIPDATA> pElems;
}

class CACLSID extends Struct {
  @Uint32() external int cElems;
  external Pointer<GUID> pElems;
}

class STATPROPSTG extends Struct {
  external Pointer<Utf16> lpwstrName;
  @Uint32() external int propid;
  @Uint16() external int vt;
}

class STATPROPSETSTG extends Struct {
  external GUID fmtid;
  external GUID clsid;
  @Uint32() external int grfFlags;
  external FILETIME mtime;
  external FILETIME ctime;
  external FILETIME atime;
  @Uint32() external int dwOSVersion;
}

class STGOPTIONS extends Struct {
  @Uint16() external int usVersion;
  @Uint16() external int reserved;
  @Uint32() external int ulSectorSize;
  external Pointer<Utf16> pwcsTemplateFile;
}

class PMemoryAllocator extends Struct {
}

class JET_INDEXID extends Struct {
  @Uint32() external int cbStruct;
  external __ubyte__ rgbIndexId;
}

class JET_RSTMAP_A extends Struct {
  external Pointer<Int8> szDatabaseName;
  external Pointer<Int8> szNewDatabaseName;
}

class JET_RSTMAP_W extends Struct {
  external Pointer<Utf16> szDatabaseName;
  external Pointer<Utf16> szNewDatabaseName;
}

class JET_SNPROG extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int cunitDone;
  @Uint32() external int cunitTotal;
}

class JET_OBJECTINFO extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int objtyp;
  @Double() external double dtCreate;
  @Double() external double dtUpdate;
  @Uint32() external int grbit;
  @Uint32() external int flags;
  @Uint32() external int cRecord;
  @Uint32() external int cPage;
}

class JET_OBJECTLIST extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int tableid;
  @Uint32() external int cRecord;
  @Uint32() external int columnidcontainername;
  @Uint32() external int columnidobjectname;
  @Uint32() external int columnidobjtyp;
  @Uint32() external int columniddtCreate;
  @Uint32() external int columniddtUpdate;
  @Uint32() external int columnidgrbit;
  @Uint32() external int columnidflags;
  @Uint32() external int columnidcRecord;
  @Uint32() external int columnidcPage;
}

class JET_COLUMNLIST extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int tableid;
  @Uint32() external int cRecord;
  @Uint32() external int columnidPresentationOrder;
  @Uint32() external int columnidcolumnname;
  @Uint32() external int columnidcolumnid;
  @Uint32() external int columnidcoltyp;
  @Uint32() external int columnidCountry;
  @Uint32() external int columnidLangid;
  @Uint32() external int columnidCp;
  @Uint32() external int columnidCollate;
  @Uint32() external int columnidcbMax;
  @Uint32() external int columnidgrbit;
  @Uint32() external int columnidDefault;
  @Uint32() external int columnidBaseTableName;
  @Uint32() external int columnidBaseColumnName;
  @Uint32() external int columnidDefinitionName;
}

class JET_COLUMNDEF extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int columnid;
  @Uint32() external int coltyp;
  @Uint16() external int wCountry;
  @Uint16() external int langid;
  @Uint16() external int cp;
  @Uint16() external int wCollate;
  @Uint32() external int cbMax;
  @Uint32() external int grbit;
}

class JET_COLUMNBASE_A extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int columnid;
  @Uint32() external int coltyp;
  @Uint16() external int wCountry;
  @Uint16() external int langid;
  @Uint16() external int cp;
  @Uint16() external int wFiller;
  @Uint32() external int cbMax;
  @Uint32() external int grbit;
  external __byte__ szBaseTableName;
  external __byte__ szBaseColumnName;
}

class JET_COLUMNBASE_W extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int columnid;
  @Uint32() external int coltyp;
  @Uint16() external int wCountry;
  @Uint16() external int langid;
  @Uint16() external int cp;
  @Uint16() external int wFiller;
  @Uint32() external int cbMax;
  @Uint32() external int grbit;
  external __ushort__ szBaseTableName;
  external __ushort__ szBaseColumnName;
}

class JET_INDEXLIST extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int tableid;
  @Uint32() external int cRecord;
  @Uint32() external int columnidindexname;
  @Uint32() external int columnidgrbitIndex;
  @Uint32() external int columnidcKey;
  @Uint32() external int columnidcEntry;
  @Uint32() external int columnidcPage;
  @Uint32() external int columnidcColumn;
  @Uint32() external int columnidiColumn;
  @Uint32() external int columnidcolumnid;
  @Uint32() external int columnidcoltyp;
  @Uint32() external int columnidCountry;
  @Uint32() external int columnidLangid;
  @Uint32() external int columnidCp;
  @Uint32() external int columnidCollate;
  @Uint32() external int columnidgrbitColumn;
  @Uint32() external int columnidcolumnname;
  @Uint32() external int columnidLCMapFlags;
}

class JET_COLUMNCREATE_A extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Int8> szColumnName;
  @Uint32() external int coltyp;
  @Uint32() external int cbMax;
  @Uint32() external int grbit;
  external Pointer pvDefault;
  @Uint32() external int cbDefault;
  @Uint32() external int cp;
  @Uint32() external int columnid;
  @Int32() external int err;
}

class JET_COLUMNCREATE_W extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> szColumnName;
  @Uint32() external int coltyp;
  @Uint32() external int cbMax;
  @Uint32() external int grbit;
  external Pointer pvDefault;
  @Uint32() external int cbDefault;
  @Uint32() external int cp;
  @Uint32() external int columnid;
  @Int32() external int err;
}

class JET_USERDEFINEDDEFAULT_A extends Struct {
  external Pointer<Int8> szCallback;
  external Pointer<Uint8> pbUserData;
  @Uint32() external int cbUserData;
  external Pointer<Int8> szDependantColumns;
}

class JET_USERDEFINEDDEFAULT_W extends Struct {
  external Pointer<Utf16> szCallback;
  external Pointer<Uint8> pbUserData;
  @Uint32() external int cbUserData;
  external Pointer<Utf16> szDependantColumns;
}

class JET_CONDITIONALCOLUMN_A extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Int8> szColumnName;
  @Uint32() external int grbit;
}

class JET_CONDITIONALCOLUMN_W extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> szColumnName;
  @Uint32() external int grbit;
}

class JET_UNICODEINDEX extends Struct {
  @Uint32() external int lcid;
  @Uint32() external int dwMapFlags;
}

class JET_UNICODEINDEX2 extends Struct {
  external Pointer<Utf16> szLocaleName;
  @Uint32() external int dwMapFlags;
}

class JET_TUPLELIMITS extends Struct {
  @Uint32() external int chLengthMin;
  @Uint32() external int chLengthMax;
  @Uint32() external int chToIndexMax;
  @Uint32() external int cchIncrement;
  @Uint32() external int ichStart;
}

class JET_SPACEHINTS extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int ulInitialDensity;
  @Uint32() external int cbInitial;
  @Uint32() external int grbit;
  @Uint32() external int ulMaintDensity;
  @Uint32() external int ulGrowth;
  @Uint32() external int cbMinExtent;
  @Uint32() external int cbMaxExtent;
}

class JET_TABLECREATE_A extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Int8> szTableName;
  external Pointer<Int8> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_A> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE_A> rgindexcreate;
  @Uint32() external int cIndexes;
  @Uint32() external int grbit;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_TABLECREATE_W extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> szTableName;
  external Pointer<Utf16> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE_> rgindexcreate;
  @Uint32() external int cIndexes;
  @Uint32() external int grbit;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_TABLECREATE2_A extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Int8> szTableName;
  external Pointer<Int8> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_A> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE_A> rgindexcreate;
  @Uint32() external int cIndexes;
  external Pointer<Int8> szCallback;
  @Uint32() external int cbtyp;
  @Uint32() external int grbit;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_TABLECREATE2_W extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> szTableName;
  external Pointer<Utf16> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE_> rgindexcreate;
  @Uint32() external int cIndexes;
  external Pointer<Utf16> szCallback;
  @Uint32() external int cbtyp;
  @Uint32() external int grbit;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_TABLECREATE3_A extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Int8> szTableName;
  external Pointer<Int8> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_A> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE2_A> rgindexcreate;
  @Uint32() external int cIndexes;
  external Pointer<Int8> szCallback;
  @Uint32() external int cbtyp;
  @Uint32() external int grbit;
  external Pointer<JET_SPACEHINTS> pSeqSpacehints;
  external Pointer<JET_SPACEHINTS> pLVSpacehints;
  @Uint32() external int cbSeparateLV;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_TABLECREATE3_W extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> szTableName;
  external Pointer<Utf16> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE2_> rgindexcreate;
  @Uint32() external int cIndexes;
  external Pointer<Utf16> szCallback;
  @Uint32() external int cbtyp;
  @Uint32() external int grbit;
  external Pointer<JET_SPACEHINTS> pSeqSpacehints;
  external Pointer<JET_SPACEHINTS> pLVSpacehints;
  @Uint32() external int cbSeparateLV;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_TABLECREATE4_A extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Int8> szTableName;
  external Pointer<Int8> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_A> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE3_A> rgindexcreate;
  @Uint32() external int cIndexes;
  external Pointer<Int8> szCallback;
  @Uint32() external int cbtyp;
  @Uint32() external int grbit;
  external Pointer<JET_SPACEHINTS> pSeqSpacehints;
  external Pointer<JET_SPACEHINTS> pLVSpacehints;
  @Uint32() external int cbSeparateLV;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_TABLECREATE4_W extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<Utf16> szTableName;
  external Pointer<Utf16> szTemplateTableName;
  @Uint32() external int ulPages;
  @Uint32() external int ulDensity;
  external Pointer<JET_COLUMNCREATE_> rgcolumncreate;
  @Uint32() external int cColumns;
  external Pointer<JET_INDEXCREATE3_> rgindexcreate;
  @Uint32() external int cIndexes;
  external Pointer<Utf16> szCallback;
  @Uint32() external int cbtyp;
  @Uint32() external int grbit;
  external Pointer<JET_SPACEHINTS> pSeqSpacehints;
  external Pointer<JET_SPACEHINTS> pLVSpacehints;
  @Uint32() external int cbSeparateLV;
  @Uint32() external int tableid;
  @Uint32() external int cCreated;
}

class JET_OPENTEMPORARYTABLE extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<JET_COLUMNDEF> prgcolumndef;
  @Uint32() external int ccolumn;
  external Pointer<JET_UNICODEINDEX> pidxunicode;
  @Uint32() external int grbit;
  external Pointer<Uint32> prgcolumnid;
  @Uint32() external int cbKeyMost;
  @Uint32() external int cbVarSegMac;
  @Uint32() external int tableid;
}

class JET_OPENTEMPORARYTABLE2 extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<JET_COLUMNDEF> prgcolumndef;
  @Uint32() external int ccolumn;
  external Pointer<JET_UNICODEINDEX2> pidxunicode;
  @Uint32() external int grbit;
  external Pointer<Uint32> prgcolumnid;
  @Uint32() external int cbKeyMost;
  @Uint32() external int cbVarSegMac;
  @Uint32() external int tableid;
}

class JET_RETINFO extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int ibLongValue;
  @Uint32() external int itagSequence;
  @Uint32() external int columnidNextTagged;
}

class JET_SETINFO extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int ibLongValue;
  @Uint32() external int itagSequence;
}

class JET_RECPOS extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int centriesLT;
  @Uint32() external int centriesInRange;
  @Uint32() external int centriesTotal;
}

class JET_RECORDLIST extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int tableid;
  @Uint32() external int cRecord;
  @Uint32() external int columnidBookmark;
}

class JET_INDEXRANGE extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int tableid;
  @Uint32() external int grbit;
}

class JET_INDEX_COLUMN extends Struct {
  @Uint32() external int columnid;
  @Uint32() external int relop;
  external Pointer pv;
  @Uint32() external int cb;
  @Uint32() external int grbit;
}

class JET_INDEX_RANGE extends Struct {
  external Pointer<JET_INDEX_COLUMN> rgStartColumns;
  @Uint32() external int cStartColumns;
  external Pointer<JET_INDEX_COLUMN> rgEndColumns;
  @Uint32() external int cEndColumns;
}

class JET_LGPOS extends Struct {
  @Uint16() external int ib;
  @Uint16() external int isec;
  @Int32() external int lGeneration;
}

class JET_SIGNATURE extends Struct {
  @Uint32() external int ulRandom;
  external JET_LOGTIME logtimeCreate;
  external __byte__ szComputerName;
}

class JET_DBINFOMISC extends Struct {
  @Uint32() external int ulVersion;
  @Uint32() external int ulUpdate;
  external JET_SIGNATURE signDb;
  @Uint32() external int dbstate;
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
  @Uint32() external int fShadowingDisabled;
  @Uint32() external int fUpgradeDb;
  @Uint32() external int dwMajorVersion;
  @Uint32() external int dwMinorVersion;
  @Uint32() external int dwBuildNumber;
  @Int32() external int lSPNumber;
  @Uint32() external int cbPageSize;
}

class JET_DBINFOMISC2 extends Struct {
  @Uint32() external int ulVersion;
  @Uint32() external int ulUpdate;
  external JET_SIGNATURE signDb;
  @Uint32() external int dbstate;
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
  @Uint32() external int fShadowingDisabled;
  @Uint32() external int fUpgradeDb;
  @Uint32() external int dwMajorVersion;
  @Uint32() external int dwMinorVersion;
  @Uint32() external int dwBuildNumber;
  @Int32() external int lSPNumber;
  @Uint32() external int cbPageSize;
  @Uint32() external int genMinRequired;
  @Uint32() external int genMaxRequired;
  external JET_LOGTIME logtimeGenMaxCreate;
  @Uint32() external int ulRepairCount;
  external JET_LOGTIME logtimeRepair;
  @Uint32() external int ulRepairCountOld;
  @Uint32() external int ulECCFixSuccess;
  external JET_LOGTIME logtimeECCFixSuccess;
  @Uint32() external int ulECCFixSuccessOld;
  @Uint32() external int ulECCFixFail;
  external JET_LOGTIME logtimeECCFixFail;
  @Uint32() external int ulECCFixFailOld;
  @Uint32() external int ulBadChecksum;
  external JET_LOGTIME logtimeBadChecksum;
  @Uint32() external int ulBadChecksumOld;
}

class JET_DBINFOMISC3 extends Struct {
  @Uint32() external int ulVersion;
  @Uint32() external int ulUpdate;
  external JET_SIGNATURE signDb;
  @Uint32() external int dbstate;
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
  @Uint32() external int fShadowingDisabled;
  @Uint32() external int fUpgradeDb;
  @Uint32() external int dwMajorVersion;
  @Uint32() external int dwMinorVersion;
  @Uint32() external int dwBuildNumber;
  @Int32() external int lSPNumber;
  @Uint32() external int cbPageSize;
  @Uint32() external int genMinRequired;
  @Uint32() external int genMaxRequired;
  external JET_LOGTIME logtimeGenMaxCreate;
  @Uint32() external int ulRepairCount;
  external JET_LOGTIME logtimeRepair;
  @Uint32() external int ulRepairCountOld;
  @Uint32() external int ulECCFixSuccess;
  external JET_LOGTIME logtimeECCFixSuccess;
  @Uint32() external int ulECCFixSuccessOld;
  @Uint32() external int ulECCFixFail;
  external JET_LOGTIME logtimeECCFixFail;
  @Uint32() external int ulECCFixFailOld;
  @Uint32() external int ulBadChecksum;
  external JET_LOGTIME logtimeBadChecksum;
  @Uint32() external int ulBadChecksumOld;
  @Uint32() external int genCommitted;
}

class JET_DBINFOMISC4 extends Struct {
  @Uint32() external int ulVersion;
  @Uint32() external int ulUpdate;
  external JET_SIGNATURE signDb;
  @Uint32() external int dbstate;
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
  @Uint32() external int fShadowingDisabled;
  @Uint32() external int fUpgradeDb;
  @Uint32() external int dwMajorVersion;
  @Uint32() external int dwMinorVersion;
  @Uint32() external int dwBuildNumber;
  @Int32() external int lSPNumber;
  @Uint32() external int cbPageSize;
  @Uint32() external int genMinRequired;
  @Uint32() external int genMaxRequired;
  external JET_LOGTIME logtimeGenMaxCreate;
  @Uint32() external int ulRepairCount;
  external JET_LOGTIME logtimeRepair;
  @Uint32() external int ulRepairCountOld;
  @Uint32() external int ulECCFixSuccess;
  external JET_LOGTIME logtimeECCFixSuccess;
  @Uint32() external int ulECCFixSuccessOld;
  @Uint32() external int ulECCFixFail;
  external JET_LOGTIME logtimeECCFixFail;
  @Uint32() external int ulECCFixFailOld;
  @Uint32() external int ulBadChecksum;
  external JET_LOGTIME logtimeBadChecksum;
  @Uint32() external int ulBadChecksumOld;
  @Uint32() external int genCommitted;
  external JET_BKINFO bkinfoCopyPrev;
  external JET_BKINFO bkinfoDiffPrev;
}

class JET_THREADSTATS extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int cPageReferenced;
  @Uint32() external int cPageRead;
  @Uint32() external int cPagePreread;
  @Uint32() external int cPageDirtied;
  @Uint32() external int cPageRedirtied;
  @Uint32() external int cLogRecord;
  @Uint32() external int cbLogRecord;
}

class JET_THREADSTATS2 extends Struct {
  @Uint32() external int cbStruct;
  @Uint32() external int cPageReferenced;
  @Uint32() external int cPageRead;
  @Uint32() external int cPagePreread;
  @Uint32() external int cPageDirtied;
  @Uint32() external int cPageRedirtied;
  @Uint32() external int cLogRecord;
  @Uint32() external int cbLogRecord;
  @Uint64() external int cusecPageCacheMiss;
  @Uint32() external int cPageCacheMiss;
}

class JET_RSTINFO_A extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<JET_RSTMAP_A> rgrstmap;
  @Int32() external int crstmap;
  external JET_LGPOS lgposStop;
  external JET_LOGTIME logtimeStop;
  external JET_PFNSTATUS pfnStatus;
}

class JET_RSTINFO_W extends Struct {
  @Uint32() external int cbStruct;
  external Pointer<JET_RSTMAP_> rgrstmap;
  @Int32() external int crstmap;
  external JET_LGPOS lgposStop;
  external JET_LOGTIME logtimeStop;
  external JET_PFNSTATUS pfnStatus;
}

class JET_ERRINFOBASIC_W extends Struct {
  @Uint32() external int cbStruct;
  @Int32() external int errValue;
  @Uint32() external int errcatMostSpecific;
  external __ubyte__ rgCategoricalHierarchy;
  @Uint32() external int lSourceLine;
  external __ushort__ rgszSourceFile;
}

class JET_COMMIT_ID extends Struct {
  external JET_SIGNATURE signLog;
  @Int32() external int reserved;
  @Int64() external int commitId;
}

class JET_OPERATIONCONTEXT extends Struct {
  @Uint32() external int ulUserID;
  @Uint8() external int nOperationID;
  @Uint8() external int nOperationType;
  @Uint8() external int nClientType;
  @Uint8() external int fFlags;
}

class JET_SETCOLUMN extends Struct {
  @Uint32() external int columnid;
  external Pointer pvData;
  @Uint32() external int cbData;
  @Uint32() external int grbit;
  @Uint32() external int ibLongValue;
  @Uint32() external int itagSequence;
  @Int32() external int err;
}

class JET_SETSYSPARAM_A extends Struct {
  @Uint32() external int paramid;
  @Uint32() external int lParam;
  external Pointer<Int8> sz;
  @Int32() external int err;
}

class JET_SETSYSPARAM_W extends Struct {
  @Uint32() external int paramid;
  @Uint32() external int lParam;
  external Pointer<Utf16> sz;
  @Int32() external int err;
}

class JET_RETRIEVECOLUMN extends Struct {
  @Uint32() external int columnid;
  external Pointer pvData;
  @Uint32() external int cbData;
  @Uint32() external int cbActual;
  @Uint32() external int grbit;
  @Uint32() external int ibLongValue;
  @Uint32() external int itagSequence;
  @Uint32() external int columnidNextTagged;
  @Int32() external int err;
}

class JET_ENUMCOLUMNID extends Struct {
  @Uint32() external int columnid;
  @Uint32() external int ctagSequence;
  external Pointer<Uint32> rgtagSequence;
}

class JET_ENUMCOLUMNVALUE extends Struct {
  @Uint32() external int itagSequence;
  @Int32() external int err;
  @Uint32() external int cbData;
  external Pointer pvData;
}

class JET_RECSIZE extends Struct {
  @Uint64() external int cbData;
  @Uint64() external int cbLongValueData;
  @Uint64() external int cbOverhead;
  @Uint64() external int cbLongValueOverhead;
  @Uint64() external int cNonTaggedColumns;
  @Uint64() external int cTaggedColumns;
  @Uint64() external int cLongValues;
  @Uint64() external int cMultiValues;
}

class JET_RECSIZE2 extends Struct {
  @Uint64() external int cbData;
  @Uint64() external int cbLongValueData;
  @Uint64() external int cbOverhead;
  @Uint64() external int cbLongValueOverhead;
  @Uint64() external int cNonTaggedColumns;
  @Uint64() external int cTaggedColumns;
  @Uint64() external int cLongValues;
  @Uint64() external int cMultiValues;
  @Uint64() external int cCompressedColumns;
  @Uint64() external int cbDataCompressed;
  @Uint64() external int cbLongValueDataCompressed;
}

class JET_LOGINFO_A extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int ulGenLow;
  @Uint32() external int ulGenHigh;
  external __byte__ szBaseName;
}

class JET_LOGINFO_W extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int ulGenLow;
  @Uint32() external int ulGenHigh;
  external __ushort__ szBaseName;
}

class JET_INSTANCE_INFO_A extends Struct {
  @Uint32() external int hInstanceId;
  external Pointer<Int8> szInstanceName;
  @Uint32() external int cDatabases;
  external Pointer<Pointer<Int8>> szDatabaseFileName;
  external Pointer<Pointer<Int8>> szDatabaseDisplayName;
  external Pointer<Pointer<Int8>> szDatabaseSLVFileName_Obsolete;
}

class JET_INSTANCE_INFO_W extends Struct {
  @Uint32() external int hInstanceId;
  external Pointer<Utf16> szInstanceName;
  @Uint32() external int cDatabases;
  external Pointer<Pointer<Uint16>> szDatabaseFileName;
  external Pointer<Pointer<Uint16>> szDatabaseDisplayName;
  external Pointer<Pointer<Uint16>> szDatabaseSLVFileName_Obsolete;
}

class STATSTG extends Struct {
  external Pointer<Utf16> pwcsName;
  @Uint32() external int type;
  @Uint64() external int cbSize;
  external FILETIME mtime;
  external FILETIME ctime;
  external FILETIME atime;
  @Uint32() external int grfMode;
  @Uint32() external int grfLocksSupported;
  external GUID clsid;
  @Uint32() external int grfStateBits;
  @Uint32() external int reserved;
}

class RemSNB extends Struct {
  @Uint32() external int ulCntStr;
  @Uint32() external int ulCntChar;
  external __ushort__ rgString;
}

class StorageLayout extends Struct {
  @Uint32() external int LayoutType;
  external Pointer<Utf16> pwcsElementName;
  @Int64() external int cOffset;
  @Int64() external int cBytes;
}

