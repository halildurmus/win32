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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../specialTypes.dart';
import '../../ui/textservices/IAnchor.dart';

/// {@category Struct}
class TF_DA_COLOR extends Struct {
  @Int32()
  external int type;

  external _TF_DA_COLOR__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _TF_DA_COLOR__Anonymous_e__Union extends Union {
  @Int32()
  external int nIndex;

  @Uint32()
  external int cr;
}

extension TF_DA_COLOR_Extension on TF_DA_COLOR {
  int get nIndex => this.Anonymous.nIndex;
  set nIndex(int value) => this.Anonymous.nIndex = value;

  int get cr => this.Anonymous.cr;
  set cr(int value) => this.Anonymous.cr = value;
}

/// {@category Struct}
class TF_DISPLAYATTRIBUTE extends Struct {
  external TF_DA_COLOR crText;

  external TF_DA_COLOR crBk;

  @Int32()
  external int lsStyle;

  @Int32()
  external int fBoldLine;

  external TF_DA_COLOR crLine;

  @Int32()
  external int bAttr;
}

/// {@category Struct}
class TF_HALTCOND extends Struct {
  external Pointer<COMObject> pHaltRange;

  @Int32()
  external int aHaltPos;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class TF_INPUTPROCESSORPROFILE extends Struct {
  @Uint32()
  external int dwProfileType;

  @Uint16()
  external int langid;

  external GUID clsid;

  external GUID guidProfile;

  external GUID catid;

  @IntPtr()
  external int hklSubstitute;

  @Uint32()
  external int dwCaps;

  @IntPtr()
  external int hkl;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class TF_LANGBARITEMINFO extends Struct {
  external GUID clsidService;

  external GUID guidItem;

  @Uint32()
  external int dwStyle;

  @Uint32()
  external int ulSort;

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
class TF_LANGUAGEPROFILE extends Struct {
  external GUID clsid;

  @Uint16()
  external int langid;

  external GUID catid;

  @Int32()
  external int fActive;

  external GUID guidProfile;
}

/// {@category Struct}
class TF_LBBALLOONINFO extends Struct {
  @Int32()
  external int style;

  external Pointer<Utf16> bstrText;
}

/// {@category Struct}
class TF_LMLATTELEMENT extends Struct {
  @Uint32()
  external int dwFrameStart;

  @Uint32()
  external int dwFrameLen;

  @Uint32()
  external int dwFlags;

  external _TF_LMLATTELEMENT__Anonymous_e__Union Anonymous;

  external Pointer<Utf16> bstrText;
}

/// {@category Struct}
class _TF_LMLATTELEMENT__Anonymous_e__Union extends Union {
  @Int32()
  external int iCost;
}

extension TF_LMLATTELEMENT_Extension on TF_LMLATTELEMENT {
  int get iCost => this.Anonymous.iCost;
  set iCost(int value) => this.Anonymous.iCost = value;
}

/// {@category Struct}
class TF_PERSISTENT_PROPERTY_HEADER_ACP extends Struct {
  external GUID guidType;

  @Int32()
  external int ichStart;

  @Int32()
  external int cch;

  @Uint32()
  external int cb;

  @Uint32()
  external int dwPrivate;

  external GUID clsidTIP;
}

/// {@category Struct}
class TF_PRESERVEDKEY extends Struct {
  @Uint32()
  external int uVKey;

  @Uint32()
  external int uModifiers;
}

/// {@category Struct}
class TF_PROPERTYVAL extends Struct {
  external GUID guidId;

  external VARIANT varValue;
}

/// {@category Struct}
class TF_SELECTION extends Struct {
  external Pointer<COMObject> range;

  external TF_SELECTIONSTYLE style;
}

/// {@category Struct}
class TF_SELECTIONSTYLE extends Struct {
  @Int32()
  external int ase;

  @Int32()
  external int fInterimChar;
}

/// {@category Struct}
class TS_ATTRVAL extends Struct {
  external GUID idAttr;

  @Uint32()
  external int dwOverlapId;

  external VARIANT varValue;
}

/// {@category Struct}
class TS_RUNINFO extends Struct {
  @Uint32()
  external int uCount;

  @Int32()
  external int type;
}

/// {@category Struct}
class TS_SELECTIONSTYLE extends Struct {
  @Int32()
  external int ase;

  @Int32()
  external int fInterimChar;
}

/// {@category Struct}
class TS_SELECTION_ACP extends Struct {
  @Int32()
  external int acpStart;

  @Int32()
  external int acpEnd;

  external TS_SELECTIONSTYLE style;
}

/// {@category Struct}
class TS_SELECTION_ANCHOR extends Struct {
  external Pointer<COMObject> paStart;

  external Pointer<COMObject> paEnd;

  external TS_SELECTIONSTYLE style;
}

/// {@category Struct}
class TS_STATUS extends Struct {
  @Uint32()
  external int dwDynamicFlags;

  @Uint32()
  external int dwStaticFlags;
}

/// {@category Struct}
class TS_TEXTCHANGE extends Struct {
  @Int32()
  external int acpStart;

  @Int32()
  external int acpOldEnd;

  @Int32()
  external int acpNewEnd;
}
