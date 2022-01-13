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
import '../../ui/controls/structs.g.dart';
import '../../data/htmlhelp/structs.g.dart';
import '../../specialTypes.dart';

/// {@category Struct}
class COLUMNSTATUS extends Struct {
  @Int32()
  external int cPropCount;

  @Int32()
  external int cPropsLoaded;
}

/// {@category Struct}
class CProperty extends Struct {
  @Uint32()
  external int dwPropID;

  @Uint32()
  external int cbData;

  @Uint32()
  external int dwType;

  external _CProperty__Anonymous_e__Union Anonymous;

  @Int32()
  external int fPersist;
}

/// {@category Struct}
class _CProperty__Anonymous_e__Union extends Union {
  external Pointer<Utf16> lpszwData;

  external Pointer lpvData;

  @Uint32()
  external int dwValue;
}

extension CProperty_Extension on CProperty {
  Pointer<Utf16> get lpszwData => this.Anonymous.lpszwData;
  set lpszwData(Pointer<Utf16> value) => this.Anonymous.lpszwData = value;

  Pointer get lpvData => this.Anonymous.lpvData;
  set lpvData(Pointer value) => this.Anonymous.lpvData = value;

  int get dwValue => this.Anonymous.dwValue;
  set dwValue(int value) => this.Anonymous.dwValue = value;
}

/// {@category Struct}
class HHNTRACK extends Struct {
  external NMHDR hdr;

  external Pointer<Utf8> pszCurUrl;

  @Int32()
  external int idAction;

  external Pointer<HH_WINTYPE> phhWinType;
}

/// {@category Struct}
class HHN_NOTIFY extends Struct {
  external NMHDR hdr;

  external Pointer<Utf8> pszUrl;
}

/// {@category Struct}
class HH_AKLINK extends Struct {
  @Int32()
  external int cbStruct;

  @Int32()
  external int fReserved;

  external Pointer<Int8> pszKeywords;

  external Pointer<Int8> pszUrl;

  external Pointer<Int8> pszMsgText;

  external Pointer<Int8> pszMsgTitle;

  external Pointer<Int8> pszWindow;

  @Int32()
  external int fIndexOnFail;
}

/// {@category Struct}
class HH_ENUM_CAT extends Struct {
  @Int32()
  external int cbStruct;

  external Pointer<Utf8> pszCatName;

  external Pointer<Utf8> pszCatDescription;
}

/// {@category Struct}
class HH_ENUM_IT extends Struct {
  @Int32()
  external int cbStruct;

  @Int32()
  external int iType;

  external Pointer<Utf8> pszCatName;

  external Pointer<Utf8> pszITName;

  external Pointer<Utf8> pszITDescription;
}

/// {@category Struct}
class HH_FTS_QUERY extends Struct {
  @Int32()
  external int cbStruct;

  @Int32()
  external int fUniCodeStrings;

  external Pointer<Int8> pszSearchQuery;

  @Int32()
  external int iProximity;

  @Int32()
  external int fStemmedSearch;

  @Int32()
  external int fTitleOnly;

  @Int32()
  external int fExecute;

  external Pointer<Int8> pszWindow;
}

/// {@category Struct}
class HH_GLOBAL_PROPERTY extends Struct {
  @Int32()
  external int id;

  external VARIANT $var;
}

/// {@category Struct}
class HH_POPUP extends Struct {
  @Int32()
  external int cbStruct;

  @IntPtr()
  external int hinst;

  @Uint32()
  external int idString;

  external Pointer<Int8> pszText;

  external POINT pt;

  @Uint32()
  external int clrForeground;

  @Uint32()
  external int clrBackground;

  external RECT rcMargins;

  external Pointer<Int8> pszFont;
}

/// {@category Struct}
class HH_SET_INFOTYPE extends Struct {
  @Int32()
  external int cbStruct;

  external Pointer<Utf8> pszCatName;

  external Pointer<Utf8> pszInfoTypeName;
}

/// {@category Struct}
class HH_WINTYPE extends Struct {
  @Int32()
  external int cbStruct;

  @Int32()
  external int fUniCodeStrings;

  external Pointer<Int8> pszType;

  @Uint32()
  external int fsValidMembers;

  @Uint32()
  external int fsWinProperties;

  external Pointer<Int8> pszCaption;

  @Uint32()
  external int dwStyles;

  @Uint32()
  external int dwExStyles;

  external RECT rcWindowPos;

  @Int32()
  external int nShowState;

  @IntPtr()
  external int hwndHelp;

  @IntPtr()
  external int hwndCaller;

  external Pointer<Uint32> paInfoTypes;

  @IntPtr()
  external int hwndToolBar;

  @IntPtr()
  external int hwndNavigation;

  @IntPtr()
  external int hwndHTML;

  @Int32()
  external int iNavWidth;

  external RECT rcHTML;

  external Pointer<Int8> pszToc;

  external Pointer<Int8> pszIndex;

  external Pointer<Int8> pszFile;

  external Pointer<Int8> pszHome;

  @Uint32()
  external int fsToolBarFlags;

  @Int32()
  external int fNotExpanded;

  @Int32()
  external int curNavType;

  @Int32()
  external int tabpos;

  @Int32()
  external int idNotify;

  @Array(20)
  external Array<Uint8> tabOrder;

  @Int32()
  external int cHistory;

  external Pointer<Int8> pszJump1;

  external Pointer<Int8> pszJump2;

  external Pointer<Int8> pszUrlJump1;

  external Pointer<Int8> pszUrlJump2;

  external RECT rcMinSize;

  @Int32()
  external int cbInfoTypes;

  external Pointer<Int8> pszCustomTabs;
}

/// {@category Struct}
class IITGroup extends Opaque {}

/// {@category Struct}
class IITQuery extends Opaque {}

/// {@category Struct}
class IITStopWordList extends Opaque {}

/// {@category Struct}
class ROWSTATUS extends Struct {
  @Int32()
  external int lRowFirst;

  @Int32()
  external int cRows;

  @Int32()
  external int cProperties;

  @Int32()
  external int cRowsTotal;
}
