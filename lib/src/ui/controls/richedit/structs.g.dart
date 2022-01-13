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
import '../../../graphics/gdi/structs.g.dart';
import '../../../ui/controls/richedit/structs.g.dart';
import '../../../ui/controls/structs.g.dart';
import '../../../ui/controls/richedit/callbacks.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/ole/IOleObject.dart';
import '../../../system/com/structuredstorage/IStorage.dart';
import '../../../system/ole/IOleClientSite.dart';
import '../../../system/com/structs.g.dart';
import '../../../system/com/IStream.dart';

/// {@category Struct}
class BIDIOPTIONS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint16()
  external int wMask;

  @Uint16()
  external int wEffects;
}

/// {@category Struct}
class CARET_INFO extends Union {
  @IntPtr()
  external int hbitmap;

  @Int32()
  external int caretFlags;
}

/// {@category Struct}
class CHANGENOTIFY extends Struct {
  @Int32()
  external int dwChangeType;

  external Pointer pvCookieData;
}

/// {@category Struct}
class CHARFORMAT2 extends Struct {
  external CHARFORMAT AnonymousBase_richedit_L711_C23;

  @Uint16()
  external int wWeight;

  @Int16()
  external int sSpacing;

  @Uint32()
  external int crBackColor;

  @Uint32()
  external int lcid;

  external _CHARFORMAT2W__Anonymous_e__Union Anonymous;

  @Int16()
  external int sStyle;

  @Uint16()
  external int wKerning;

  @Uint8()
  external int bUnderlineType;

  @Uint8()
  external int bAnimation;

  @Uint8()
  external int bRevAuthor;

  @Uint8()
  external int bUnderlineColor;
}

/// {@category Struct}
class _CHARFORMAT2W__Anonymous_e__Union extends Union {
  @Uint32()
  external int dwReserved;

  @Uint32()
  external int dwCookie;
}

extension CHARFORMAT2W_Extension on CHARFORMAT2 {
  int get dwReserved => this.Anonymous.dwReserved;
  set dwReserved(int value) => this.Anonymous.dwReserved = value;

  int get dwCookie => this.Anonymous.dwCookie;
  set dwCookie(int value) => this.Anonymous.dwCookie = value;
}

/// {@category Struct}
class CHARFORMAT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwEffects;

  @Int32()
  external int yHeight;

  @Int32()
  external int yOffset;

  @Uint32()
  external int crTextColor;

  @Uint8()
  external int bCharSet;

  @Uint8()
  external int bPitchAndFamily;

  @Array(32)
  external Array<Uint16> _szFaceName;

  String get szFaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szFaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFaceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szFaceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CHARRANGE extends Struct {
  @Int32()
  external int cpMin;

  @Int32()
  external int cpMax;
}

/// {@category Struct}
class CLIPBOARDFORMAT extends Struct {
  external NMHDR nmhdr;

  @Uint16()
  external int cf;
}

/// {@category Struct}
class COMPCOLOR extends Struct {
  @Uint32()
  external int crText;

  @Uint32()
  external int crBackground;

  @Uint32()
  external int dwEffects;
}

/// {@category Struct}
class EDITSTREAM extends Struct {
  @IntPtr()
  external int dwCookie;

  @Uint32()
  external int dwError;

  external Pointer<NativeFunction<EDITSTREAMCALLBACK>> pfnCallback;
}

/// {@category Struct}
class ENCORRECTTEXT extends Struct {
  external NMHDR nmhdr;

  external CHARRANGE chrg;

  @Uint16()
  external int seltyp;
}

/// {@category Struct}
class ENDCOMPOSITIONNOTIFY extends Struct {
  external NMHDR nmhdr;

  @Uint32()
  external int dwCode;
}

/// {@category Struct}
class ENDROPFILES extends Struct {
  external NMHDR nmhdr;

  @IntPtr()
  external int hDrop;

  @Int32()
  external int cp;

  @Int32()
  external int fProtected;
}

/// {@category Struct}
class ENLINK extends Struct {
  external NMHDR nmhdr;

  @Uint32()
  external int msg;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;

  external CHARRANGE chrg;
}

/// {@category Struct}
class ENLOWFIRTF extends Struct {
  external NMHDR nmhdr;

  external Pointer<Utf8> szControl;
}

/// {@category Struct}
class ENOLEOPFAILED extends Struct {
  external NMHDR nmhdr;

  @Int32()
  external int iob;

  @Int32()
  external int lOper;

  @Int32()
  external int hr;
}

/// {@category Struct}
class ENPROTECTED extends Struct {
  external NMHDR nmhdr;

  @Uint32()
  external int msg;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;

  external CHARRANGE chrg;
}

/// {@category Struct}
class ENSAVECLIPBOARD extends Struct {
  external NMHDR nmhdr;

  @Int32()
  external int cObjectCount;

  @Int32()
  external int cch;
}

/// {@category Struct}
class FINDTEXTEX extends Struct {
  external CHARRANGE chrg;

  external Pointer<Utf16> lpstrText;

  external CHARRANGE chrgText;
}

/// {@category Struct}
class FINDTEXT extends Struct {
  external CHARRANGE chrg;

  external Pointer<Utf16> lpstrText;
}

/// {@category Struct}
class FORMATRANGE extends Struct {
  @IntPtr()
  external int hdc;

  @IntPtr()
  external int hdcTarget;

  external RECT rc;

  external RECT rcPage;

  external CHARRANGE chrg;
}

/// {@category Struct}
class GETCONTEXTMENUEX extends Struct {
  external CHARRANGE chrg;

  @Uint32()
  external int dwFlags;

  external POINT pt;

  external Pointer pvReserved;
}

/// {@category Struct}
class GETTEXTEX extends Struct {
  @Uint32()
  external int cb;

  @Uint32()
  external int flags;

  @Uint32()
  external int codepage;

  external Pointer<Utf8> lpDefaultChar;

  external Pointer<Int32> lpUsedDefChar;
}

/// {@category Struct}
class GETTEXTLENGTHEX extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int codepage;
}

/// {@category Struct}
@Packed(4)
class HYPHENATEINFO extends Struct {
  @Int16()
  external int cbSize;

  @Int16()
  external int dxHyphenateZone;

  @IntPtr()
  external int pfnHyphenate;
}

/// {@category Struct}
class IMECOMPTEXT extends Struct {
  @Int32()
  external int cb;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class MSGFILTER extends Struct {
  external NMHDR nmhdr;

  @Uint32()
  external int msg;

  @IntPtr()
  external int wParam;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class OBJECTPOSITIONS extends Struct {
  external NMHDR nmhdr;

  @Int32()
  external int cObjectCount;

  external Pointer<Int32> pcpPositions;
}

/// {@category Struct}
class PARAFORMAT extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  @Uint16()
  external int wNumbering;

  external _PARAFORMAT__Anonymous_e__Union Anonymous;

  @Int32()
  external int dxStartIndent;

  @Int32()
  external int dxRightIndent;

  @Int32()
  external int dxOffset;

  @Uint16()
  external int wAlignment;

  @Int16()
  external int cTabCount;

  @Array(32)
  external Array<Uint32> rgxTabs;
}

/// {@category Struct}
class _PARAFORMAT__Anonymous_e__Union extends Union {
  @Uint16()
  external int wReserved;

  @Uint16()
  external int wEffects;
}

extension PARAFORMAT_Extension on PARAFORMAT {
  int get wReserved => this.Anonymous.wReserved;
  set wReserved(int value) => this.Anonymous.wReserved = value;

  int get wEffects => this.Anonymous.wEffects;
  set wEffects(int value) => this.Anonymous.wEffects = value;
}

/// {@category Struct}
class PARAFORMAT2 extends Struct {
  external PARAFORMAT AnonymousBase_richedit_L1149_C22;

  @Int32()
  external int dySpaceBefore;

  @Int32()
  external int dySpaceAfter;

  @Int32()
  external int dyLineSpacing;

  @Int16()
  external int sStyle;

  @Uint8()
  external int bLineSpacingRule;

  @Uint8()
  external int bOutlineLevel;

  @Uint16()
  external int wShadingWeight;

  @Uint16()
  external int wShadingStyle;

  @Uint16()
  external int wNumberingStart;

  @Uint16()
  external int wNumberingStyle;

  @Uint16()
  external int wNumberingTab;

  @Uint16()
  external int wBorderSpace;

  @Uint16()
  external int wBorderWidth;

  @Uint16()
  external int wBorders;
}

/// {@category Struct}
class PUNCTUATION extends Struct {
  @Uint32()
  external int iSize;

  external Pointer<Utf8> szPunctuation;
}

/// {@category Struct}
class REOBJECT extends Struct {
  @Uint32()
  external int cbStruct;

  @Int32()
  external int cp;

  external GUID clsid;

  external Pointer<COMObject> poleobj;

  external Pointer<COMObject> pstg;

  external Pointer<COMObject> polesite;

  external SIZE sizel;

  @Uint32()
  external int dvaspect;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwUser;
}

/// {@category Struct}
class REPASTESPECIAL extends Struct {
  @Int32()
  external int dwAspect;

  @IntPtr()
  external int dwParam;
}

/// {@category Struct}
class REQRESIZE extends Struct {
  external NMHDR nmhdr;

  external RECT rc;
}

/// {@category Struct}
class RICHEDIT_IMAGE_PARAMETERS extends Struct {
  @Int32()
  external int xWidth;

  @Int32()
  external int yHeight;

  @Int32()
  external int Ascent;

  @Uint32()
  external int Type;

  external Pointer<Utf16> pwszAlternateText;

  external Pointer<COMObject> pIStream;
}

/// {@category Struct}
class SELCHANGE extends Struct {
  external NMHDR nmhdr;

  external CHARRANGE chrg;

  @Uint16()
  external int seltyp;
}

/// {@category Struct}
class SETTEXTEX extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int codepage;
}

/// {@category Struct}
class TABLECELLPARMS extends Struct {
  @Int32()
  external int dxWidth;

  @Uint16()
  external int bitfield;

  @Uint16()
  external int wShading;

  @Int16()
  external int dxBrdrLeft;

  @Int16()
  external int dyBrdrTop;

  @Int16()
  external int dxBrdrRight;

  @Int16()
  external int dyBrdrBottom;

  @Uint32()
  external int crBrdrLeft;

  @Uint32()
  external int crBrdrTop;

  @Uint32()
  external int crBrdrRight;

  @Uint32()
  external int crBrdrBottom;

  @Uint32()
  external int crBackPat;

  @Uint32()
  external int crForePat;
}

/// {@category Struct}
class TABLEROWPARMS extends Struct {
  @Uint8()
  external int cbRow;

  @Uint8()
  external int cbCell;

  @Uint8()
  external int cCell;

  @Uint8()
  external int cRow;

  @Int32()
  external int dxCellMargin;

  @Int32()
  external int dxIndent;

  @Int32()
  external int dyHeight;

  @Uint32()
  external int bitfield;

  @Int32()
  external int cpStartRow;

  @Uint8()
  external int bTableLevel;

  @Uint8()
  external int iCell;
}

/// {@category Struct}
class TEXTRANGE extends Struct {
  external CHARRANGE chrg;

  external Pointer<Utf16> lpstrText;
}

/// {@category Struct}
class grouptypingchange extends Struct {
  external NMHDR nmhdr;

  @Int32()
  external int fGroupTyping;
}

/// {@category Struct}
class hyphresult extends Struct {
  @Int32()
  external int khyph;

  @Int32()
  external int ichHyph;

  @Uint16()
  external int chHyph;
}
