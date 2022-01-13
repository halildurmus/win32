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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../ui/windowsandmessaging/structs.g.dart';
import '../../../ui/input/ime/structs.g.dart';
import '../../../globalization/structs.g.dart';
import '../../../graphics/gdi/structs.g.dart';

/// {@category Struct}
class APPLETIDLIST extends Struct {
  @Int32()
  external int count;

  external Pointer<GUID> pIIDList;
}

/// {@category Struct}
class APPLYCANDEXPARAM extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> lpwstrDisplay;

  external Pointer<Utf16> lpwstrReading;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class CANDIDATEFORM extends Struct {
  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwStyle;

  external POINT ptCurrentPos;

  external RECT rcArea;
}

/// {@category Struct}
class CANDIDATEINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCount;

  @Array(32)
  external Array<Uint32> dwOffset;

  @Uint32()
  external int dwPrivateSize;

  @Uint32()
  external int dwPrivateOffset;
}

/// {@category Struct}
class CANDIDATELIST extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwStyle;

  @Uint32()
  external int dwCount;

  @Uint32()
  external int dwSelection;

  @Uint32()
  external int dwPageStart;

  @Uint32()
  external int dwPageSize;

  @Array(1)
  external Array<Uint32> dwOffset;
}

/// {@category Struct}
class COMPOSITIONFORM extends Struct {
  @Uint32()
  external int dwStyle;

  external POINT ptCurrentPos;

  external RECT rcArea;
}

/// {@category Struct}
class COMPOSITIONSTRING extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCompReadAttrLen;

  @Uint32()
  external int dwCompReadAttrOffset;

  @Uint32()
  external int dwCompReadClauseLen;

  @Uint32()
  external int dwCompReadClauseOffset;

  @Uint32()
  external int dwCompReadStrLen;

  @Uint32()
  external int dwCompReadStrOffset;

  @Uint32()
  external int dwCompAttrLen;

  @Uint32()
  external int dwCompAttrOffset;

  @Uint32()
  external int dwCompClauseLen;

  @Uint32()
  external int dwCompClauseOffset;

  @Uint32()
  external int dwCompStrLen;

  @Uint32()
  external int dwCompStrOffset;

  @Uint32()
  external int dwCursorPos;

  @Uint32()
  external int dwDeltaStart;

  @Uint32()
  external int dwResultReadClauseLen;

  @Uint32()
  external int dwResultReadClauseOffset;

  @Uint32()
  external int dwResultReadStrLen;

  @Uint32()
  external int dwResultReadStrOffset;

  @Uint32()
  external int dwResultClauseLen;

  @Uint32()
  external int dwResultClauseOffset;

  @Uint32()
  external int dwResultStrLen;

  @Uint32()
  external int dwResultStrOffset;

  @Uint32()
  external int dwPrivateSize;

  @Uint32()
  external int dwPrivateOffset;
}

/// {@category Struct}
class GUIDELINE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwLevel;

  @Uint32()
  external int dwIndex;

  @Uint32()
  external int dwStrLen;

  @Uint32()
  external int dwStrOffset;

  @Uint32()
  external int dwPrivateSize;

  @Uint32()
  external int dwPrivateOffset;
}

/// {@category Struct}
class IMEAPPLETCFG extends Struct {
  @Uint32()
  external int dwConfig;

  @Array(64)
  external Array<Uint16> _wchTitle;

  String get wchTitle {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_wchTitle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wchTitle(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _wchTitle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _wchTitleFontFace;

  String get wchTitleFontFace {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wchTitleFontFace[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wchTitleFontFace(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wchTitleFontFace[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwCharSet;

  @Int32()
  external int iCategory;

  @IntPtr()
  external int hIcon;

  @Uint16()
  external int langID;

  @Uint16()
  external int dummy;

  @IntPtr()
  external int lReserved1;
}

/// {@category Struct}
class IMEAPPLETUI extends Struct {
  @IntPtr()
  external int hwnd;

  @Uint32()
  external int dwStyle;

  @Int32()
  external int width;

  @Int32()
  external int height;

  @Int32()
  external int minWidth;

  @Int32()
  external int minHeight;

  @Int32()
  external int maxWidth;

  @Int32()
  external int maxHeight;

  @IntPtr()
  external int lReserved1;

  @IntPtr()
  external int lReserved2;
}

/// {@category Struct}
class IMECHARINFO extends Struct {
  @Uint16()
  external int wch;

  @Uint32()
  external int dwCharInfo;
}

/// {@category Struct}
class IMECHARPOSITION extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwCharPos;

  external POINT pt;

  @Uint32()
  external int cLineHeight;

  external RECT rcDocument;
}

/// {@category Struct}
class IMECOMPOSITIONSTRINGINFO extends Struct {
  @Int32()
  external int iCompStrLen;

  @Int32()
  external int iCaretPos;

  @Int32()
  external int iEditStart;

  @Int32()
  external int iEditLen;

  @Int32()
  external int iTargetStart;

  @Int32()
  external int iTargetLen;
}

/// {@category Struct}
class IMEDLG extends Struct {
  @Int32()
  external int cbIMEDLG;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf16> lpwstrWord;

  @Int32()
  external int nTabId;
}

/// {@category Struct}
class IMEDP extends Struct {
  external IMEWRD wrdModifier;

  external IMEWRD wrdModifiee;

  @Int32()
  external int relID;
}

/// {@category Struct}
class IMEINFO extends Struct {
  @Uint32()
  external int dwPrivateDataSize;

  @Uint32()
  external int fdwProperty;

  @Uint32()
  external int fdwConversionCaps;

  @Uint32()
  external int fdwSentenceCaps;

  @Uint32()
  external int fdwUICaps;

  @Uint32()
  external int fdwSCSCaps;

  @Uint32()
  external int fdwSelectCaps;
}

/// {@category Struct}
class IMEITEM extends Struct {
  @Int32()
  external int cbSize;

  @Int32()
  external int iType;

  external Pointer lpItemData;
}

/// {@category Struct}
class IMEITEMCANDIDATE extends Struct {
  @Uint32()
  external int uCount;

  @Array(1)
  external Array<IMEITEM> imeItem;
}

/// {@category Struct}
class IMEKMS extends Struct {
  @Int32()
  external int cbSize;

  @IntPtr()
  external int hIMC;

  @Uint32()
  external int cKeyList;

  external Pointer<IMEKMSKEY> pKeyList;
}

/// {@category Struct}
@Packed(1)
class IMEKMSFUNCDESC extends Struct {
  @Int32()
  external int cbSize;

  @Uint16()
  external int idLang;

  @Uint32()
  external int dwControl;

  @Array(128)
  external Array<Uint16> _pwszDescription;

  String get pwszDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_pwszDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pwszDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _pwszDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class IMEKMSINIT extends Struct {
  @Int32()
  external int cbSize;

  @IntPtr()
  external int hWnd;
}

/// {@category Struct}
class IMEKMSINVK extends Struct {
  @Int32()
  external int cbSize;

  @IntPtr()
  external int hIMC;

  @Uint32()
  external int dwControl;
}

/// {@category Struct}
@Packed(1)
class IMEKMSKEY extends Struct {
  @Uint32()
  external int dwStatus;

  @Uint32()
  external int dwCompStatus;

  @Uint32()
  external int dwVKEY;

  external _IMEKMSKEY__Anonymous1_e__Union Anonymous1;

  external _IMEKMSKEY__Anonymous2_e__Union Anonymous2;
}

/// {@category Struct}
@Packed(1)
class _IMEKMSKEY__Anonymous1_e__Union extends Union {
  @Uint32()
  external int dwControl;

  @Uint32()
  external int dwNotUsed;
}

extension IMEKMSKEY_Extension on IMEKMSKEY {
  int get dwControl => this.Anonymous1.dwControl;
  set dwControl(int value) => this.Anonymous1.dwControl = value;

  int get dwNotUsed => this.Anonymous1.dwNotUsed;
  set dwNotUsed(int value) => this.Anonymous1.dwNotUsed = value;
}

/// {@category Struct}
@Packed(1)
class _IMEKMSKEY__Anonymous2_e__Union extends Union {
  @Array(31)
  external Array<Uint16> _pwszDscr;

  String get pwszDscr {
    final charCodes = <int>[];
    for (var i = 0; i < 31; i++) {
      charCodes.add(_pwszDscr[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pwszDscr(String value) {
    final stringToStore = value.padRight(31, '\x00');
    for (var i = 0; i < 31; i++) {
      _pwszDscr[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(31)
  external Array<Uint16> _pwszNoUse;

  String get pwszNoUse {
    final charCodes = <int>[];
    for (var i = 0; i < 31; i++) {
      charCodes.add(_pwszNoUse[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set pwszNoUse(String value) {
    final stringToStore = value.padRight(31, '\x00');
    for (var i = 0; i < 31; i++) {
      _pwszNoUse[i] = stringToStore.codeUnitAt(i);
    }
  }
}

extension IMEKMSKEY_Extension_1 on IMEKMSKEY {
  String get pwszDscr => this.Anonymous2.pwszDscr;
  set pwszDscr(String value) => this.Anonymous2.pwszDscr = value;

  String get pwszNoUse => this.Anonymous2.pwszNoUse;
  set pwszNoUse(String value) => this.Anonymous2.pwszNoUse = value;
}

/// {@category Struct}
class IMEKMSKMP extends Struct {
  @Int32()
  external int cbSize;

  @IntPtr()
  external int hIMC;

  @Uint16()
  external int idLang;

  @Uint16()
  external int wVKStart;

  @Uint16()
  external int wVKEnd;

  @Int32()
  external int cKeyList;

  external Pointer<IMEKMSKEY> pKeyList;
}

/// {@category Struct}
class IMEKMSNTFY extends Struct {
  @Int32()
  external int cbSize;

  @IntPtr()
  external int hIMC;

  @Int32()
  external int fSelect;
}

/// {@category Struct}
class IMEMENUITEMINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fType;

  @Uint32()
  external int fState;

  @Uint32()
  external int wID;

  @IntPtr()
  external int hbmpChecked;

  @IntPtr()
  external int hbmpUnchecked;

  @Uint32()
  external int dwItemData;

  @Array(80)
  external Array<Uint16> _szString;

  String get szString {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szString(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @IntPtr()
  external int hbmpItem;
}

/// {@category Struct}
class IMESHF extends Struct {
  @Uint16()
  external int cbShf;

  @Uint16()
  external int verDic;

  @Array(48)
  external Array<Uint8> szTitle;

  @Array(256)
  external Array<Uint8> szDescription;

  @Array(128)
  external Array<Uint8> szCopyright;
}

/// {@category Struct}
class IMESTRINGCANDIDATE extends Struct {
  @Uint32()
  external int uCount;

  @Array(1)
  external Array<Pointer<Utf16>> lpwstr;
}

/// {@category Struct}
class IMESTRINGCANDIDATEINFO extends Struct {
  @Uint32()
  external int dwFarEastId;

  external Pointer<tabIMEFAREASTINFO> lpFarEastInfo;

  @Uint32()
  external int fInfoMask;

  @Int32()
  external int iSelIndex;

  @Uint32()
  external int uCount;

  @Array(1)
  external Array<Pointer<Utf16>> lpwstr;
}

/// {@category Struct}
class IMEWRD extends Struct {
  external Pointer<Utf16> pwchReading;

  external Pointer<Utf16> pwchDisplay;

  external _IMEWRD__Anonymous_e__Union Anonymous;

  @Array(2)
  external Array<Uint32> rgulAttrs;

  @Int32()
  external int cbComment;

  @Int32()
  external int uct;

  external Pointer pvComment;
}

/// {@category Struct}
@Packed(1)
class _IMEWRD__Anonymous_e__Union extends Union {
  @Uint32()
  external int ulPos;

  external _IMEWRD__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _IMEWRD__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int nPos1;

  @Uint16()
  external int nPos2;
}

extension IMEWRD__Anonymous_e__Union_Extension on IMEWRD {
  int get nPos1 => this.Anonymous.Anonymous.nPos1;
  set nPos1(int value) => this.Anonymous.Anonymous.nPos1 = value;

  int get nPos2 => this.Anonymous.Anonymous.nPos2;
  set nPos2(int value) => this.Anonymous.Anonymous.nPos2 = value;
}

extension IMEWRD_Extension on IMEWRD {
  int get ulPos => this.Anonymous.ulPos;
  set ulPos(int value) => this.Anonymous.ulPos = value;

  _IMEWRD__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(_IMEWRD__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class INPUTCONTEXT extends Struct {
  @IntPtr()
  external int hWnd;

  @Int32()
  external int fOpen;

  external POINT ptStatusWndPos;

  external POINT ptSoftKbdPos;

  @Uint32()
  external int fdwConversion;

  @Uint32()
  external int fdwSentence;

  external _INPUTCONTEXT__lfFont_e__Union lfFont;

  external COMPOSITIONFORM cfCompForm;

  @Array(4)
  external Array<CANDIDATEFORM> cfCandForm;

  @IntPtr()
  external int hCompStr;

  @IntPtr()
  external int hCandInfo;

  @IntPtr()
  external int hGuideLine;

  @IntPtr()
  external int hPrivate;

  @Uint32()
  external int dwNumMsgBuf;

  @IntPtr()
  external int hMsgBuf;

  @Uint32()
  external int fdwInit;

  @Array(3)
  external Array<Uint32> dwReserve;
}

/// {@category Struct}
class _INPUTCONTEXT__lfFont_e__Union extends Union {
  external LOGFONT A;

  external LOGFONT W;
}

extension INPUTCONTEXT_Extension on INPUTCONTEXT {
  LOGFONT get A => this.lfFont.A;
  set A(LOGFONT value) => this.lfFont.A = value;

  LOGFONT get W => this.lfFont.W;
  set W(LOGFONT value) => this.lfFont.W = value;
}

/// {@category Struct}
class MORRSLT extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pwchOutput;

  @Uint16()
  external int cchOutput;

  external _MORRSLT__Anonymous1_e__Union Anonymous1;

  external _MORRSLT__Anonymous2_e__Union Anonymous2;

  external Pointer<Uint16> pchInputPos;

  external Pointer<Uint16> pchOutputIdxWDD;

  external _MORRSLT__Anonymous3_e__Union Anonymous3;

  external Pointer<Uint16> paMonoRubyPos;

  external Pointer<WDD> pWDD;

  @Int32()
  external int cWDD;

  external Pointer pPrivate;

  @Array(1)
  external Array<Uint16> _BLKBuff;

  String get BLKBuff {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_BLKBuff[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set BLKBuff(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _BLKBuff[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class _MORRSLT__Anonymous1_e__Union extends Union {
  external Pointer<Utf16> pwchRead;

  external Pointer<Utf16> pwchComp;
}

extension MORRSLT_Extension on MORRSLT {
  Pointer<Utf16> get pwchRead => this.Anonymous1.pwchRead;
  set pwchRead(Pointer<Utf16> value) => this.Anonymous1.pwchRead = value;

  Pointer<Utf16> get pwchComp => this.Anonymous1.pwchComp;
  set pwchComp(Pointer<Utf16> value) => this.Anonymous1.pwchComp = value;
}

/// {@category Struct}
@Packed(1)
class _MORRSLT__Anonymous2_e__Union extends Union {
  @Uint16()
  external int cchRead;

  @Uint16()
  external int cchComp;
}

extension MORRSLT_Extension_1 on MORRSLT {
  int get cchRead => this.Anonymous2.cchRead;
  set cchRead(int value) => this.Anonymous2.cchRead = value;

  int get cchComp => this.Anonymous2.cchComp;
  set cchComp(int value) => this.Anonymous2.cchComp = value;
}

/// {@category Struct}
@Packed(1)
class _MORRSLT__Anonymous3_e__Union extends Union {
  external Pointer<Uint16> pchReadIdxWDD;

  external Pointer<Uint16> pchCompIdxWDD;
}

extension MORRSLT_Extension_2 on MORRSLT {
  Pointer<Uint16> get pchReadIdxWDD => this.Anonymous3.pchReadIdxWDD;
  set pchReadIdxWDD(Pointer<Uint16> value) =>
      this.Anonymous3.pchReadIdxWDD = value;

  Pointer<Uint16> get pchCompIdxWDD => this.Anonymous3.pchCompIdxWDD;
  set pchCompIdxWDD(Pointer<Uint16> value) =>
      this.Anonymous3.pchCompIdxWDD = value;
}

/// {@category Struct}
@Packed(1)
class POSTBL extends Struct {
  @Uint16()
  external int nPos;

  external Pointer<Uint8> szName;
}

/// {@category Struct}
class RECONVERTSTRING extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwStrLen;

  @Uint32()
  external int dwStrOffset;

  @Uint32()
  external int dwCompStrLen;

  @Uint32()
  external int dwCompStrOffset;

  @Uint32()
  external int dwTargetStrLen;

  @Uint32()
  external int dwTargetStrOffset;
}

/// {@category Struct}
class REGISTERWORD extends Struct {
  external Pointer<Utf16> lpReading;

  external Pointer<Utf16> lpWord;
}

/// {@category Struct}
class SOFTKBDDATA extends Struct {
  @Uint32()
  external int uCount;

  @Array(256)
  external Array<Uint16> wCode;
}

/// {@category Struct}
class STYLEBUF extends Struct {
  @Uint32()
  external int dwStyle;

  @Array(32)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class TRANSMSG extends Struct {
  @Uint32()
  external int message;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class TRANSMSGLIST extends Struct {
  @Uint32()
  external int uMsgCount;

  @Array(1)
  external Array<TRANSMSG> TransMsg;
}

/// {@category Struct}
@Packed(1)
class WDD extends Struct {
  @Uint16()
  external int wDispPos;

  external _WDD__Anonymous1_e__Union Anonymous1;

  @Uint16()
  external int cchDisp;

  external _WDD__Anonymous2_e__Union Anonymous2;

  @Uint32()
  external int WDD_nReserve1;

  @Uint16()
  external int nPos;

  @Uint16()
  external int bitfield;

  external Pointer pReserved;
}

/// {@category Struct}
@Packed(1)
class _WDD__Anonymous1_e__Union extends Union {
  @Uint16()
  external int wReadPos;

  @Uint16()
  external int wCompPos;
}

extension WDD_Extension on WDD {
  int get wReadPos => this.Anonymous1.wReadPos;
  set wReadPos(int value) => this.Anonymous1.wReadPos = value;

  int get wCompPos => this.Anonymous1.wCompPos;
  set wCompPos(int value) => this.Anonymous1.wCompPos = value;
}

/// {@category Struct}
@Packed(1)
class _WDD__Anonymous2_e__Union extends Union {
  @Uint16()
  external int cchRead;

  @Uint16()
  external int cchComp;
}

extension WDD_Extension_1 on WDD {
  int get cchRead => this.Anonymous2.cchRead;
  set cchRead(int value) => this.Anonymous2.cchRead = value;

  int get cchComp => this.Anonymous2.cchComp;
  set cchComp(int value) => this.Anonymous2.cchComp = value;
}

/// {@category Struct}
class tabIMEFAREASTINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwType;

  @Array(1)
  external Array<Uint32> dwData;
}

/// {@category Struct}
class tabIMESTRINGINFO extends Struct {
  @Uint32()
  external int dwFarEastId;

  external Pointer<Utf16> lpwstr;
}
