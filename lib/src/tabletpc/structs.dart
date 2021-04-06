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

class HRECOALT extends Struct {
  @IntPtr()
  external int Value;
}

class HRECOCONTEXT extends Struct {
  @IntPtr()
  external int Value;
}

class HRECOGNIZER extends Struct {
  @IntPtr()
  external int Value;
}

class HRECOLATTICE extends Struct {
  @IntPtr()
  external int Value;
}

class HRECOWORDLIST extends Struct {
  @IntPtr()
  external int Value;
}

class InkDisp extends Struct {}

class InkOverlay extends Struct {}

class InkPicture extends Struct {}

class InkCollector extends Struct {}

class InkDrawingAttributes extends Struct {}

class InkRectangle extends Struct {}

class InkRenderer extends Struct {}

class InkTransform extends Struct {}

class InkRecognizers extends Struct {}

class InkRecognizerContext extends Struct {}

class InkRecognizerGuide extends Struct {}

class InkTablets extends Struct {}

class InkWordList extends Struct {}

class InkStrokes extends Struct {}

class Ink extends Struct {}

class SketchInk extends Struct {}

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

class STROKE_RANGE extends Struct {
  @Uint32()
  external int iStrokeBegin;
  @Uint32()
  external int iStrokeEnd;
}

class PROPERTY_METRICS extends Struct {
  @Int32()
  external int nLogicalMin;
  @Int32()
  external int nLogicalMax;
  @Uint32()
  external int Units;
  @Float()
  external double fResolution;
}

class PACKET_PROPERTY extends Struct {
  external GUID guid;
  external PROPERTY_METRICS PropertyMetrics;
}

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

class InkDivider extends Struct {}

class HandwrittenTextInsertion extends Struct {}

class PenInputPanel extends Struct {}

class TextInputPanel extends Struct {}

class PenInputPanel_Internal extends Struct {}

class FLICK_POINT extends Struct {
  @Int32()
  external int _bitfield;
}

class FLICK_DATA extends Struct {
  @Int32()
  external int _bitfield;
}

class InkEdit extends Struct {}

class IEC_STROKEINFO extends Struct {
  external NMHDR nmhdr;
  external IInkCursor Cursor;
  external IInkStrokeDisp Stroke;
}

class IEC_GESTUREINFO extends Struct {
  external NMHDR nmhdr;
  external IInkCursor Cursor;
  external IInkStrokes Strokes;
  external VARIANT Gestures;
}

class IEC_RECOGNITIONRESULTINFO extends Struct {
  external NMHDR nmhdr;
  external IInkRecognitionResult RecognitionResult;
}

class MathInputControl extends Struct {}

class RealTimeStylus extends Struct {}

class DynamicRenderer extends Struct {}

class GestureRecognizer extends Struct {}

class StrokeBuilder extends Struct {}

class StylusInfo extends Struct {
  @Uint32()
  external int tcid;
  @Uint32()
  external int cid;
  @Int32()
  external int bIsInvertedCursor;
}

class GESTURE_DATA extends Struct {
  @Int32()
  external int gestureId;
  @Int32()
  external int recoConfidence;
  @Int32()
  external int strokeCount;
}

class DYNAMIC_RENDERER_CACHED_DATA extends Struct {
  @Int32()
  external int strokeId;
  external Pointer dynamicRenderer;
}

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

class RECO_ATTRS extends Struct {
  @Uint32()
  external int dwRecoCapabilityFlags;
  @Array(32)
  external Array<Uint16> awcVendorName;
  @Array(64)
  external Array<Uint16> awcFriendlyName;
  @Array(64)
  external Array<Uint16> awLanguageId;
}

class RECO_RANGE extends Struct {
  @Uint32()
  external int iwcBegin;
  @Uint32()
  external int cCount;
}

class LINE_SEGMENT extends Struct {
  external POINT PtA;
  external POINT PtB;
}

class LATTICE_METRICS extends Struct {
  external LINE_SEGMENT lsBaseline;
  @Int16()
  external int iMidlineOffset;
}

class RECO_LATTICE_PROPERTY extends Struct {
  external GUID guidProperty;
  @Uint16()
  external int cbPropertyValue;
  external Pointer<Uint8> pPropertyValue;
}

class RECO_LATTICE_PROPERTIES extends Struct {
  @Uint32()
  external int cProperties;
  external Pointer<Pointer<RECO_LATTICE_PROPERTY>> apProps;
}

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

class CHARACTER_RANGE extends Struct {
  @Uint16()
  external int wcLow;
  @Uint16()
  external int cChars;
}

class TipAutoCompleteClient extends Struct {}
