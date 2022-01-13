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
import '../../ui/tabletpc/IDynamicRenderer.dart';
import '../../ui/controls/structs.g.dart';
import '../../ui/tabletpc/IInkCursor.dart';
import '../../ui/tabletpc/IInkStrokes.dart';
import '../../specialTypes.dart';
import '../../ui/tabletpc/IInkRecognitionResult.dart';
import '../../ui/tabletpc/IInkStrokeDisp.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/structs.g.dart';

/// {@category Struct}
class CHARACTER_RANGE extends Struct {
  @Uint16()
  external int wcLow;

  @Uint16()
  external int cChars;
}

/// {@category Struct}
class DYNAMIC_RENDERER_CACHED_DATA extends Struct {
  @Int32()
  external int strokeId;

  external Pointer<COMObject> dynamicRenderer;
}

/// {@category Struct}
class FLICK_DATA extends Struct {
  @Int32()
  external int bitfield;
}

/// {@category Struct}
class FLICK_POINT extends Struct {
  @Int32()
  external int bitfield;
}

/// {@category Struct}
class GESTURE_DATA extends Struct {
  @Int32()
  external int gestureId;

  @Int32()
  external int recoConfidence;

  @Int32()
  external int strokeCount;
}

/// {@category Struct}
class IEC_GESTUREINFO extends Struct {
  external NMHDR nmhdr;

  external Pointer<COMObject> Cursor;

  external Pointer<COMObject> Strokes;

  external VARIANT Gestures;
}

/// {@category Struct}
class IEC_RECOGNITIONRESULTINFO extends Struct {
  external NMHDR nmhdr;

  external Pointer<COMObject> RecognitionResult;
}

/// {@category Struct}
class IEC_STROKEINFO extends Struct {
  external NMHDR nmhdr;

  external Pointer<COMObject> Cursor;

  external Pointer<COMObject> Stroke;
}

/// {@category Struct}
class INKMETRIC extends Struct {
  @Int32()
  external int iHeight;

  @Int32()
  external int iFontAscent;

  @Int32()
  external int iFontDescent;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int color;
}

/// {@category Struct}
class InkRecoGuide extends Struct {
  external RECT rectWritingBox;

  external RECT rectDrawnBox;

  @Int32()
  external int cRows;

  @Int32()
  external int cColumns;

  @Int32()
  external int midline;
}

/// {@category Struct}
class LATTICE_METRICS extends Struct {
  external LINE_SEGMENT lsBaseline;

  @Int16()
  external int iMidlineOffset;
}

/// {@category Struct}
class LINE_SEGMENT extends Struct {
  external POINT PtA;

  external POINT PtB;
}

/// {@category Struct}
class PACKET_DESCRIPTION extends Struct {
  @Uint32()
  external int cbPacketSize;

  @Uint32()
  external int cPacketProperties;

  external Pointer<PACKET_PROPERTY> pPacketProperties;

  @Uint32()
  external int cButtons;

  external Pointer<GUID> pguidButtons;
}

/// {@category Struct}
class PACKET_PROPERTY extends Struct {
  external GUID guid;

  external PROPERTY_METRICS PropertyMetrics;
}

/// {@category Struct}
class PROPERTY_METRICS extends Struct {
  @Int32()
  external int nLogicalMin;

  @Int32()
  external int nLogicalMax;

  @Int32()
  external int Units;

  @Float()
  external double fResolution;
}

/// {@category Struct}
class RECO_ATTRS extends Struct {
  @Uint32()
  external int dwRecoCapabilityFlags;

  @Array(32)
  external Array<Uint16> _awcVendorName;

  String get awcVendorName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_awcVendorName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set awcVendorName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _awcVendorName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _awcFriendlyName;

  String get awcFriendlyName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_awcFriendlyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set awcFriendlyName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _awcFriendlyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> awLanguageId;
}

/// {@category Struct}
class RECO_GUIDE extends Struct {
  @Int32()
  external int xOrigin;

  @Int32()
  external int yOrigin;

  @Int32()
  external int cxBox;

  @Int32()
  external int cyBox;

  @Int32()
  external int cxBase;

  @Int32()
  external int cyBase;

  @Int32()
  external int cHorzBox;

  @Int32()
  external int cVertBox;

  @Int32()
  external int cyMid;
}

/// {@category Struct}
class RECO_LATTICE extends Struct {
  @Uint32()
  external int ulColumnCount;

  external Pointer<RECO_LATTICE_COLUMN> pLatticeColumns;

  @Uint32()
  external int ulPropertyCount;

  external Pointer<GUID> pGuidProperties;

  @Uint32()
  external int ulBestResultColumnCount;

  external Pointer<Uint32> pulBestResultColumns;

  external Pointer<Uint32> pulBestResultIndexes;
}

/// {@category Struct}
class RECO_LATTICE_COLUMN extends Struct {
  @Uint32()
  external int key;

  external RECO_LATTICE_PROPERTIES cpProp;

  @Uint32()
  external int cStrokes;

  external Pointer<Uint32> pStrokes;

  @Uint32()
  external int cLatticeElements;

  external Pointer<RECO_LATTICE_ELEMENT> pLatticeElements;
}

/// {@category Struct}
class RECO_LATTICE_ELEMENT extends Struct {
  @Int32()
  external int score;

  @Uint16()
  external int type;

  external Pointer<Uint8> pData;

  @Uint32()
  external int ulNextColumn;

  @Uint32()
  external int ulStrokeNumber;

  external RECO_LATTICE_PROPERTIES epProp;
}

/// {@category Struct}
class RECO_LATTICE_PROPERTIES extends Struct {
  @Uint32()
  external int cProperties;

  external Pointer<Pointer<RECO_LATTICE_PROPERTY>> apProps;
}

/// {@category Struct}
class RECO_LATTICE_PROPERTY extends Struct {
  external GUID guidProperty;

  @Uint16()
  external int cbPropertyValue;

  external Pointer<Uint8> pPropertyValue;
}

/// {@category Struct}
class RECO_RANGE extends Struct {
  @Uint32()
  external int iwcBegin;

  @Uint32()
  external int cCount;
}

/// {@category Struct}
class STROKE_RANGE extends Struct {
  @Uint32()
  external int iStrokeBegin;

  @Uint32()
  external int iStrokeEnd;
}

/// {@category Struct}
class SYSTEM_EVENT_DATA extends Struct {
  @Uint8()
  external int bModifier;

  @Uint16()
  external int wKey;

  @Int32()
  external int xPos;

  @Int32()
  external int yPos;

  @Uint8()
  external int bCursorMode;

  @Uint32()
  external int dwButtonState;
}

/// {@category Struct}
class StylusInfo extends Struct {
  @Uint32()
  external int tcid;

  @Uint32()
  external int cid;

  @Int32()
  external int bIsInvertedCursor;
}
