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
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFace.dart';

/// {@category Struct}
class DWRITE_CARET_METRICS extends Struct {
  @Int16()
  external int slopeRise;

  @Int16()
  external int slopeRun;

  @Int16()
  external int offset;
}

/// {@category Struct}
class DWRITE_CLUSTER_METRICS extends Struct {
  @Float()
  external double width;

  @Uint16()
  external int length;

  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class DWRITE_COLOR_F extends Struct {
  @Float()
  external double r;

  @Float()
  external double g;

  @Float()
  external double b;

  @Float()
  external double a;
}

/// {@category Struct}
class DWRITE_COLOR_GLYPH_RUN extends Struct {
  external DWRITE_GLYPH_RUN glyphRun;

  external Pointer<DWRITE_GLYPH_RUN_DESCRIPTION> glyphRunDescription;

  @Float()
  external double baselineOriginX;

  @Float()
  external double baselineOriginY;

  external DWRITE_COLOR_F runColor;

  @Uint16()
  external int paletteIndex;
}

/// {@category Struct}
class DWRITE_COLOR_GLYPH_RUN1 extends Struct {
  external DWRITE_COLOR_GLYPH_RUN Base;

  @Uint32()
  external int glyphImageFormat;

  @Int32()
  external int measuringMode;
}

/// {@category Struct}
class DWRITE_FILE_FRAGMENT extends Struct {
  @Uint64()
  external int fileOffset;

  @Uint64()
  external int fragmentSize;
}

/// {@category Struct}
class DWRITE_FONT_AXIS_RANGE extends Struct {
  @Uint32()
  external int axisTag;

  @Float()
  external double minValue;

  @Float()
  external double maxValue;
}

/// {@category Struct}
class DWRITE_FONT_AXIS_VALUE extends Struct {
  @Uint32()
  external int axisTag;

  @Float()
  external double value;
}

/// {@category Struct}
class DWRITE_FONT_FEATURE extends Struct {
  @Uint32()
  external int nameTag;

  @Uint32()
  external int parameter;
}

/// {@category Struct}
class DWRITE_FONT_METRICS extends Struct {
  @Uint16()
  external int designUnitsPerEm;

  @Uint16()
  external int ascent;

  @Uint16()
  external int descent;

  @Int16()
  external int lineGap;

  @Uint16()
  external int capHeight;

  @Uint16()
  external int xHeight;

  @Int16()
  external int underlinePosition;

  @Uint16()
  external int underlineThickness;

  @Int16()
  external int strikethroughPosition;

  @Uint16()
  external int strikethroughThickness;
}

/// {@category Struct}
class DWRITE_FONT_METRICS1 extends Struct {
  external DWRITE_FONT_METRICS AnonymousBase_DWrite_1_L627_C38;

  @Int16()
  external int glyphBoxLeft;

  @Int16()
  external int glyphBoxTop;

  @Int16()
  external int glyphBoxRight;

  @Int16()
  external int glyphBoxBottom;

  @Int16()
  external int subscriptPositionX;

  @Int16()
  external int subscriptPositionY;

  @Int16()
  external int subscriptSizeX;

  @Int16()
  external int subscriptSizeY;

  @Int16()
  external int superscriptPositionX;

  @Int16()
  external int superscriptPositionY;

  @Int16()
  external int superscriptSizeX;

  @Int16()
  external int superscriptSizeY;

  @Int32()
  external int hasTypographicMetrics;
}

/// {@category Struct}
class DWRITE_FONT_PROPERTY extends Struct {
  @Int32()
  external int propertyId;

  external Pointer<Utf16> propertyValue;

  external Pointer<Utf16> localeName;
}

/// {@category Struct}
class DWRITE_GLYPH_IMAGE_DATA extends Struct {
  external Pointer imageData;

  @Uint32()
  external int imageDataSize;

  @Uint32()
  external int uniqueDataId;

  @Uint32()
  external int pixelsPerEm;

  external D2D_SIZE_U pixelSize;

  external POINT horizontalLeftOrigin;

  external POINT horizontalRightOrigin;

  external POINT verticalTopOrigin;

  external POINT verticalBottomOrigin;
}

/// {@category Struct}
class DWRITE_GLYPH_METRICS extends Struct {
  @Int32()
  external int leftSideBearing;

  @Uint32()
  external int advanceWidth;

  @Int32()
  external int rightSideBearing;

  @Int32()
  external int topSideBearing;

  @Uint32()
  external int advanceHeight;

  @Int32()
  external int bottomSideBearing;

  @Int32()
  external int verticalOriginY;
}

/// {@category Struct}
class DWRITE_GLYPH_OFFSET extends Struct {
  @Float()
  external double advanceOffset;

  @Float()
  external double ascenderOffset;
}

/// {@category Struct}
class DWRITE_GLYPH_RUN extends Struct {
  external Pointer<COMObject> fontFace;

  @Float()
  external double fontEmSize;

  @Uint32()
  external int glyphCount;

  external Pointer<Uint16> glyphIndices;

  external Pointer<Float> glyphAdvances;

  external Pointer<DWRITE_GLYPH_OFFSET> glyphOffsets;

  @Int32()
  external int isSideways;

  @Uint32()
  external int bidiLevel;
}

/// {@category Struct}
class DWRITE_GLYPH_RUN_DESCRIPTION extends Struct {
  external Pointer<Utf16> localeName;

  external Pointer<Utf16> string;

  @Uint32()
  external int stringLength;

  external Pointer<Uint16> clusterMap;

  @Uint32()
  external int textPosition;
}

/// {@category Struct}
class DWRITE_HIT_TEST_METRICS extends Struct {
  @Uint32()
  external int textPosition;

  @Uint32()
  external int length;

  @Float()
  external double left;

  @Float()
  external double top;

  @Float()
  external double width;

  @Float()
  external double height;

  @Uint32()
  external int bidiLevel;

  @Int32()
  external int isText;

  @Int32()
  external int isTrimmed;
}

/// {@category Struct}
class DWRITE_INLINE_OBJECT_METRICS extends Struct {
  @Float()
  external double width;

  @Float()
  external double height;

  @Float()
  external double baseline;

  @Int32()
  external int supportsSideways;
}

/// {@category Struct}
class DWRITE_JUSTIFICATION_OPPORTUNITY extends Struct {
  @Float()
  external double expansionMinimum;

  @Float()
  external double expansionMaximum;

  @Float()
  external double compressionMaximum;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class DWRITE_LINE_BREAKPOINT extends Struct {
  @Uint8()
  external int bitfield;
}

/// {@category Struct}
class DWRITE_LINE_METRICS extends Struct {
  @Uint32()
  external int length;

  @Uint32()
  external int trailingWhitespaceLength;

  @Uint32()
  external int newlineLength;

  @Float()
  external double height;

  @Float()
  external double baseline;

  @Int32()
  external int isTrimmed;
}

/// {@category Struct}
class DWRITE_LINE_METRICS1 extends Struct {
  external DWRITE_LINE_METRICS Base;

  @Float()
  external double leadingBefore;

  @Float()
  external double leadingAfter;
}

/// {@category Struct}
class DWRITE_LINE_SPACING extends Struct {
  @Int32()
  external int method;

  @Float()
  external double height;

  @Float()
  external double baseline;

  @Float()
  external double leadingBefore;

  @Int32()
  external int fontLineGapUsage;
}

/// {@category Struct}
class DWRITE_MATRIX extends Struct {
  @Float()
  external double m11;

  @Float()
  external double m12;

  @Float()
  external double m21;

  @Float()
  external double m22;

  @Float()
  external double dx;

  @Float()
  external double dy;
}

/// {@category Struct}
class DWRITE_OVERHANG_METRICS extends Struct {
  @Float()
  external double left;

  @Float()
  external double top;

  @Float()
  external double right;

  @Float()
  external double bottom;
}

/// {@category Struct}
class DWRITE_PANOSE extends Union {
  @Array(10)
  external Array<Uint8> values;

  @Uint8()
  external int familyKind;

  external _DWRITE_PANOSE__text_e__Struct text;

  external _DWRITE_PANOSE__script_e__Struct script;

  external _DWRITE_PANOSE__decorative_e__Struct decorative;

  external _DWRITE_PANOSE__symbol_e__Struct symbol;
}

/// {@category Struct}
class _DWRITE_PANOSE__text_e__Struct extends Struct {
  @Uint8()
  external int familyKind;

  @Uint8()
  external int serifStyle;

  @Uint8()
  external int weight;

  @Uint8()
  external int proportion;

  @Uint8()
  external int contrast;

  @Uint8()
  external int strokeVariation;

  @Uint8()
  external int armStyle;

  @Uint8()
  external int letterform;

  @Uint8()
  external int midline;

  @Uint8()
  external int xHeight;
}

extension DWRITE_PANOSE_Extension on DWRITE_PANOSE {
  int get familyKind => this.text.familyKind;
  set familyKind(int value) => this.text.familyKind = value;

  int get serifStyle => this.text.serifStyle;
  set serifStyle(int value) => this.text.serifStyle = value;

  int get weight => this.text.weight;
  set weight(int value) => this.text.weight = value;

  int get proportion => this.text.proportion;
  set proportion(int value) => this.text.proportion = value;

  int get contrast => this.text.contrast;
  set contrast(int value) => this.text.contrast = value;

  int get strokeVariation => this.text.strokeVariation;
  set strokeVariation(int value) => this.text.strokeVariation = value;

  int get armStyle => this.text.armStyle;
  set armStyle(int value) => this.text.armStyle = value;

  int get letterform => this.text.letterform;
  set letterform(int value) => this.text.letterform = value;

  int get midline => this.text.midline;
  set midline(int value) => this.text.midline = value;

  int get xHeight => this.text.xHeight;
  set xHeight(int value) => this.text.xHeight = value;
}

/// {@category Struct}
class _DWRITE_PANOSE__script_e__Struct extends Struct {
  @Uint8()
  external int familyKind;

  @Uint8()
  external int toolKind;

  @Uint8()
  external int weight;

  @Uint8()
  external int spacing;

  @Uint8()
  external int aspectRatio;

  @Uint8()
  external int contrast;

  @Uint8()
  external int scriptTopology;

  @Uint8()
  external int scriptForm;

  @Uint8()
  external int finials;

  @Uint8()
  external int xAscent;
}

extension DWRITE_PANOSE_Extension_1 on DWRITE_PANOSE {
  int get familyKind => this.script.familyKind;
  set familyKind(int value) => this.script.familyKind = value;

  int get toolKind => this.script.toolKind;
  set toolKind(int value) => this.script.toolKind = value;

  int get weight => this.script.weight;
  set weight(int value) => this.script.weight = value;

  int get spacing => this.script.spacing;
  set spacing(int value) => this.script.spacing = value;

  int get aspectRatio => this.script.aspectRatio;
  set aspectRatio(int value) => this.script.aspectRatio = value;

  int get contrast => this.script.contrast;
  set contrast(int value) => this.script.contrast = value;

  int get scriptTopology => this.script.scriptTopology;
  set scriptTopology(int value) => this.script.scriptTopology = value;

  int get scriptForm => this.script.scriptForm;
  set scriptForm(int value) => this.script.scriptForm = value;

  int get finials => this.script.finials;
  set finials(int value) => this.script.finials = value;

  int get xAscent => this.script.xAscent;
  set xAscent(int value) => this.script.xAscent = value;
}

/// {@category Struct}
class _DWRITE_PANOSE__decorative_e__Struct extends Struct {
  @Uint8()
  external int familyKind;

  @Uint8()
  external int decorativeClass;

  @Uint8()
  external int weight;

  @Uint8()
  external int aspect;

  @Uint8()
  external int contrast;

  @Uint8()
  external int serifVariant;

  @Uint8()
  external int fill;

  @Uint8()
  external int lining;

  @Uint8()
  external int decorativeTopology;

  @Uint8()
  external int characterRange;
}

extension DWRITE_PANOSE_Extension_2 on DWRITE_PANOSE {
  int get familyKind => this.decorative.familyKind;
  set familyKind(int value) => this.decorative.familyKind = value;

  int get decorativeClass => this.decorative.decorativeClass;
  set decorativeClass(int value) => this.decorative.decorativeClass = value;

  int get weight => this.decorative.weight;
  set weight(int value) => this.decorative.weight = value;

  int get aspect => this.decorative.aspect;
  set aspect(int value) => this.decorative.aspect = value;

  int get contrast => this.decorative.contrast;
  set contrast(int value) => this.decorative.contrast = value;

  int get serifVariant => this.decorative.serifVariant;
  set serifVariant(int value) => this.decorative.serifVariant = value;

  int get fill => this.decorative.fill;
  set fill(int value) => this.decorative.fill = value;

  int get lining => this.decorative.lining;
  set lining(int value) => this.decorative.lining = value;

  int get decorativeTopology => this.decorative.decorativeTopology;
  set decorativeTopology(int value) =>
      this.decorative.decorativeTopology = value;

  int get characterRange => this.decorative.characterRange;
  set characterRange(int value) => this.decorative.characterRange = value;
}

/// {@category Struct}
class _DWRITE_PANOSE__symbol_e__Struct extends Struct {
  @Uint8()
  external int familyKind;

  @Uint8()
  external int symbolKind;

  @Uint8()
  external int weight;

  @Uint8()
  external int spacing;

  @Uint8()
  external int aspectRatioAndContrast;

  @Uint8()
  external int aspectRatio94;

  @Uint8()
  external int aspectRatio119;

  @Uint8()
  external int aspectRatio157;

  @Uint8()
  external int aspectRatio163;

  @Uint8()
  external int aspectRatio211;
}

extension DWRITE_PANOSE_Extension_3 on DWRITE_PANOSE {
  int get familyKind => this.symbol.familyKind;
  set familyKind(int value) => this.symbol.familyKind = value;

  int get symbolKind => this.symbol.symbolKind;
  set symbolKind(int value) => this.symbol.symbolKind = value;

  int get weight => this.symbol.weight;
  set weight(int value) => this.symbol.weight = value;

  int get spacing => this.symbol.spacing;
  set spacing(int value) => this.symbol.spacing = value;

  int get aspectRatioAndContrast => this.symbol.aspectRatioAndContrast;
  set aspectRatioAndContrast(int value) =>
      this.symbol.aspectRatioAndContrast = value;

  int get aspectRatio94 => this.symbol.aspectRatio94;
  set aspectRatio94(int value) => this.symbol.aspectRatio94 = value;

  int get aspectRatio119 => this.symbol.aspectRatio119;
  set aspectRatio119(int value) => this.symbol.aspectRatio119 = value;

  int get aspectRatio157 => this.symbol.aspectRatio157;
  set aspectRatio157(int value) => this.symbol.aspectRatio157 = value;

  int get aspectRatio163 => this.symbol.aspectRatio163;
  set aspectRatio163(int value) => this.symbol.aspectRatio163 = value;

  int get aspectRatio211 => this.symbol.aspectRatio211;
  set aspectRatio211(int value) => this.symbol.aspectRatio211 = value;
}

/// {@category Struct}
class DWRITE_SCRIPT_ANALYSIS extends Struct {
  @Uint16()
  external int script;

  @Uint32()
  external int shapes;
}

/// {@category Struct}
class DWRITE_SCRIPT_PROPERTIES extends Struct {
  @Uint32()
  external int isoScriptCode;

  @Uint32()
  external int isoScriptNumber;

  @Uint32()
  external int clusterLookahead;

  @Uint32()
  external int justificationCharacter;

  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class DWRITE_SHAPING_GLYPH_PROPERTIES extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class DWRITE_SHAPING_TEXT_PROPERTIES extends Struct {
  @Uint16()
  external int bitfield;
}

/// {@category Struct}
class DWRITE_STRIKETHROUGH extends Struct {
  @Float()
  external double width;

  @Float()
  external double thickness;

  @Float()
  external double offset;

  @Int32()
  external int readingDirection;

  @Int32()
  external int flowDirection;

  external Pointer<Utf16> localeName;

  @Int32()
  external int measuringMode;
}

/// {@category Struct}
class DWRITE_TEXT_METRICS extends Struct {
  @Float()
  external double left;

  @Float()
  external double top;

  @Float()
  external double width;

  @Float()
  external double widthIncludingTrailingWhitespace;

  @Float()
  external double height;

  @Float()
  external double layoutWidth;

  @Float()
  external double layoutHeight;

  @Uint32()
  external int maxBidiReorderingDepth;

  @Uint32()
  external int lineCount;
}

/// {@category Struct}
class DWRITE_TEXT_METRICS1 extends Struct {
  external DWRITE_TEXT_METRICS Base;

  @Float()
  external double heightIncludingTrailingWhitespace;
}

/// {@category Struct}
class DWRITE_TEXT_RANGE extends Struct {
  @Uint32()
  external int startPosition;

  @Uint32()
  external int length;
}

/// {@category Struct}
class DWRITE_TRIMMING extends Struct {
  @Int32()
  external int granularity;

  @Uint32()
  external int delimiter;

  @Uint32()
  external int delimiterCount;
}

/// {@category Struct}
class DWRITE_TYPOGRAPHIC_FEATURES extends Struct {
  external Pointer<DWRITE_FONT_FEATURE> features;

  @Uint32()
  external int featureCount;
}

/// {@category Struct}
class DWRITE_UNDERLINE extends Struct {
  @Float()
  external double width;

  @Float()
  external double thickness;

  @Float()
  external double offset;

  @Float()
  external double runHeight;

  @Int32()
  external int readingDirection;

  @Int32()
  external int flowDirection;

  external Pointer<Utf16> localeName;

  @Int32()
  external int measuringMode;
}

/// {@category Struct}
class DWRITE_UNICODE_RANGE extends Struct {
  @Uint32()
  external int first;

  @Uint32()
  external int last;
}
