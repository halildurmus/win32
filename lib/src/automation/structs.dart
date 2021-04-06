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

class BSTR extends Struct {
  external Pointer<Uint16> Value;
}

class SAFEARRAYBOUND extends Struct {
  @Uint32() external int cElements;
  @Int32() external int lLbound;
}

class _wireSAFEARR_BSTR extends Struct {
  @Uint32() external int Size;
  external Pointer<Pointer<FLAGGED_WORD_BLOB>> aBstr;
}

class _wireSAFEARR_UNKNOWN extends Struct {
  @Uint32() external int Size;
  external Pointer<Pointer> apUnknown;
}

class _wireSAFEARR_DISPATCH extends Struct {
  @Uint32() external int Size;
  external Pointer<Pointer> apDispatch;
}

class _wireSAFEARR_VARIANT extends Struct {
  @Uint32() external int Size;
  external Pointer<Pointer<_wireVARIANT>> aVariant;
}

class _wireSAFEARR_BRECORD extends Struct {
  @Uint32() external int Size;
  external Pointer<Pointer<_wireBRECORD>> aRecord;
}

class _wireSAFEARR_HAVEIID extends Struct {
  @Uint32() external int Size;
  external Pointer<Pointer> apUnknown;
  external GUID iid;
}

class _wireSAFEARRAY_UNION extends Struct {
  @Uint32() external int sfType;
  @Uint32() external int u;
}

class _wireSAFEARRAY extends Struct {
  @Uint16() external int cDims;
  @Uint16() external int fFeatures;
  @Uint32() external int cbElements;
  @Uint32() external int cLocks;
  external _wireSAFEARRAY_UNION uArrayStructs;
  @Array(1)
  external Array<SAFEARRAYBOUND> rgsabound;
}

class SAFEARRAY extends Struct {
  @Uint16() external int cDims;
  @Uint16() external int fFeatures;
  @Uint32() external int cbElements;
  @Uint32() external int cLocks;
  external Pointer pvData;
  @Array(1)
  external Array<SAFEARRAYBOUND> rgsabound;
}

class VARIANT extends Struct {
  @Uint32() external int Anonymous;
}

class _wireBRECORD extends Struct {
  @Uint32() external int fFlags;
  @Uint32() external int clSize;
  external Pointer pRecInfo;
  external Pointer<Uint8> pRecord;
}

class _wireVARIANT extends Struct {
  @Uint32() external int clSize;
  @Uint32() external int rpcReserved;
  @Uint16() external int vt;
  @Uint16() external int wReserved1;
  @Uint16() external int wReserved2;
  @Uint16() external int wReserved3;
  @Uint32() external int Anonymous;
}

class TYPEDESC extends Struct {
  @Uint32() external int Anonymous;
  @Uint16() external int vt;
}

class ARRAYDESC extends Struct {
  external TYPEDESC tdescElem;
  @Uint16() external int cDims;
  @Array(1)
  external Array<SAFEARRAYBOUND> rgbounds;
}

class PARAMDESCEX extends Struct {
  @Uint32() external int cBytes;
  external VARIANT varDefaultValue;
}

class PARAMDESC extends Struct {
  external Pointer<PARAMDESCEX> pparamdescex;
  @Uint16() external int wParamFlags;
}

class IDLDESC extends Struct {
  @IntPtr() external int dwReserved;
  @Uint16() external int wIDLFlags;
}

class ELEMDESC extends Struct {
  external TYPEDESC tdesc;
  @Uint32() external int Anonymous;
}

class TYPEATTR extends Struct {
  external GUID guid;
  @Uint32() external int lcid;
  @Uint32() external int dwReserved;
  @Int32() external int memidConstructor;
  @Int32() external int memidDestructor;
  external Pointer<Utf16> lpstrSchema;
  @Uint32() external int cbSizeInstance;
  @Uint32() external int typekind;
  @Uint16() external int cFuncs;
  @Uint16() external int cVars;
  @Uint16() external int cImplTypes;
  @Uint16() external int cbSizeVft;
  @Uint16() external int cbAlignment;
  @Uint16() external int wTypeFlags;
  @Uint16() external int wMajorVerNum;
  @Uint16() external int wMinorVerNum;
  external TYPEDESC tdescAlias;
  external IDLDESC idldescType;
}

class DISPPARAMS extends Struct {
  external Pointer<VARIANT> rgvarg;
  external Pointer<Int32> rgdispidNamedArgs;
  @Uint32() external int cArgs;
  @Uint32() external int cNamedArgs;
}

class EXCEPINFO extends Struct {
  @Uint16() external int wCode;
  @Uint16() external int wReserved;
  external Pointer<Utf16> bstrSource;
  external Pointer<Utf16> bstrDescription;
  external Pointer<Utf16> bstrHelpFile;
  @Uint32() external int dwHelpContext;
  external Pointer pvReserved;
  external Pointer<NativeFunction<ExcepInfoProc>> pfnDeferredFillIn;
  @Int32() external int scode;
}

class FUNCDESC extends Struct {
  @Int32() external int memid;
  external Pointer<Int32> lprgscode;
  external Pointer<ELEMDESC> lprgelemdescParam;
  @Uint32() external int funckind;
  @Uint32() external int invkind;
  @Uint32() external int callconv;
  @Int16() external int cParams;
  @Int16() external int cParamsOpt;
  @Int16() external int oVft;
  @Int16() external int cScodes;
  external ELEMDESC elemdescFunc;
  @Uint16() external int wFuncFlags;
}

class VARDESC extends Struct {
  @Int32() external int memid;
  external Pointer<Utf16> lpstrSchema;
  @Uint32() external int Anonymous;
  external ELEMDESC elemdescVar;
  @Uint16() external int wVarFlags;
  @Uint32() external int varkind;
}

class CLEANLOCALSTORAGE extends Struct {
  external Pointer pInterface;
  external Pointer pStorage;
  @Uint32() external int flags;
}

class CUSTDATAITEM extends Struct {
  external GUID guid;
  external VARIANT varValue;
}

class CUSTDATA extends Struct {
  @Uint32() external int cCustData;
  external Pointer<CUSTDATAITEM> prgCustData;
}

class BINDPTR extends Struct {
  external Pointer<FUNCDESC> lpfuncdesc;
  external Pointer<VARDESC> lpvardesc;
  external Pointer lptcomp;
}

class TLIBATTR extends Struct {
  external GUID guid;
  @Uint32() external int lcid;
  @Uint32() external int syskind;
  @Uint16() external int wMajorVerNum;
  @Uint16() external int wMinorVerNum;
  @Uint16() external int wLibFlags;
}

class NUMPARSE extends Struct {
  @Int32() external int cDig;
  @Uint32() external int dwInFlags;
  @Uint32() external int dwOutFlags;
  @Int32() external int cchUsed;
  @Int32() external int nBaseShift;
  @Int32() external int nPwr10;
}

class UDATE extends Struct {
  external SYSTEMTIME st;
  @Uint16() external int wDayOfYear;
}

class PARAMDATA extends Struct {
  external Pointer<Utf16> szName;
  @Uint16() external int vt;
}

class METHODDATA extends Struct {
  external Pointer<Utf16> szName;
  external Pointer<PARAMDATA> ppdata;
  @Int32() external int dispid;
  @Uint32() external int iMeth;
  @Uint32() external int cc;
  @Uint32() external int cArgs;
  @Uint16() external int wFlags;
  @Uint16() external int vtReturn;
}

class INTERFACEDATA extends Struct {
  external Pointer<METHODDATA> pmethdata;
  @Uint32() external int cMembers;
}

class WiaDevMgr extends Struct {
}

class WiaLog extends Struct {
}

class WIA_RAW_HEADER extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int HeaderSize;
  @Uint32() external int XRes;
  @Uint32() external int YRes;
  @Uint32() external int XExtent;
  @Uint32() external int YExtent;
  @Uint32() external int BytesPerLine;
  @Uint32() external int BitsPerPixel;
  @Uint32() external int ChannelsPerPixel;
  @Uint32() external int DataType;
  @Array(8)
  external Array<Uint8> BitsPerChannel;
  @Uint32() external int Compression;
  @Uint32() external int PhotometricInterp;
  @Uint32() external int LineOrder;
  @Uint32() external int RawDataOffset;
  @Uint32() external int RawDataSize;
  @Uint32() external int PaletteOffset;
  @Uint32() external int PaletteSize;
}

class WIA_BARCODE_INFO extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Type;
  @Uint32() external int Page;
  @Uint32() external int Confidence;
  @Uint32() external int XOffset;
  @Uint32() external int YOffset;
  @Uint32() external int Rotation;
  @Uint32() external int Length;
  @Array(1)
  external Array<Uint16> Text;
}

class WIA_BARCODES extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Count;
  @Array(1)
  external Array<WIA_BARCODE_INFO> Barcodes;
}

class WIA_PATCH_CODE_INFO extends Struct {
  @Uint32() external int Type;
}

class WIA_PATCH_CODES extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint32() external int Count;
  @Array(1)
  external Array<WIA_PATCH_CODE_INFO> PatchCodes;
}

class WIA_MICR_INFO extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Page;
  @Uint32() external int Length;
  @Array(1)
  external Array<Uint16> Text;
}

class WIA_MICR extends Struct {
  @Uint32() external int Tag;
  @Uint32() external int Version;
  @Uint32() external int Size;
  @Uint16() external int Placeholder;
  @Uint16() external int Reserved;
  @Uint32() external int Count;
  @Array(1)
  external Array<WIA_MICR_INFO> Micr;
}

