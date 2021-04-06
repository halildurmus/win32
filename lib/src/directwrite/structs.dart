// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class DWRITE_GLYPH_OFFSET extends Struct {
  @Float()
  external double advanceOffset;
  @Float()
  external double ascenderOffset;
}

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

class DWRITE_TEXT_RANGE extends Struct {
  @Uint32()
  external int startPosition;
  @Uint32()
  external int length;
}

class DWRITE_FONT_FEATURE extends Struct {
  @Uint32()
  external int nameTag;
  @Uint32()
  external int parameter;
}

class DWRITE_TYPOGRAPHIC_FEATURES extends Struct {
  external Pointer<DWRITE_FONT_FEATURE> features;
  @Uint32()
  external int featureCount;
}

class DWRITE_TRIMMING extends Struct {
  @Uint32()
  external int granularity;
  @Uint32()
  external int delimiter;
  @Uint32()
  external int delimiterCount;
}

class DWRITE_SCRIPT_ANALYSIS extends Struct {
  @Uint16()
  external int script;
  @Uint32()
  external int shapes;
}

class DWRITE_LINE_BREAKPOINT extends Struct {
  @Uint8()
  external int _bitfield;
}

class DWRITE_SHAPING_TEXT_PROPERTIES extends Struct {
  @Uint16()
  external int _bitfield;
}

class DWRITE_SHAPING_GLYPH_PROPERTIES extends Struct {
  @Uint16()
  external int _bitfield;
}

class DWRITE_GLYPH_RUN extends Struct {
  external Pointer fontFace;
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

class DWRITE_GLYPH_RUN_DESCRIPTION extends Struct {
  external Pointer<Utf16> localeName;
  external Pointer<Utf16> string;
  @Uint32()
  external int stringLength;
  external Pointer<Uint16> clusterMap;
  @Uint32()
  external int textPosition;
}

class DWRITE_UNDERLINE extends Struct {
  @Float()
  external double width;
  @Float()
  external double thickness;
  @Float()
  external double offset;
  @Float()
  external double runHeight;
  @Uint32()
  external int readingDirection;
  @Uint32()
  external int flowDirection;
  external Pointer<Utf16> localeName;
  @Uint32()
  external int measuringMode;
}

class DWRITE_STRIKETHROUGH extends Struct {
  @Float()
  external double width;
  @Float()
  external double thickness;
  @Float()
  external double offset;
  @Uint32()
  external int readingDirection;
  @Uint32()
  external int flowDirection;
  external Pointer<Utf16> localeName;
  @Uint32()
  external int measuringMode;
}

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

class DWRITE_CLUSTER_METRICS extends Struct {
  @Float()
  external double width;
  @Uint16()
  external int length;
  @Uint16()
  external int _bitfield;
}

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

class DWRITE_FONT_METRICS1 extends Struct {
  external DWRITE_FONT_METRICS __AnonymousBase_DWrite_1_L627_C38;
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

class DWRITE_CARET_METRICS extends Struct {
  @Int16()
  external int slopeRise;
  @Int16()
  external int slopeRun;
  @Int16()
  external int offset;
}

class DWRITE_PANOSE extends Struct {
  @Array(10)
  external Array<Uint8> values;
  @Uint8()
  external int familyKind;
  @Uint32()
  external int text;
  @Uint32()
  external int script;
  @Uint32()
  external int decorative;
  @Uint32()
  external int symbol;
}

class DWRITE_UNICODE_RANGE extends Struct {
  @Uint32()
  external int first;
  @Uint32()
  external int last;
}

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
  external int _bitfield;
}

class DWRITE_JUSTIFICATION_OPPORTUNITY extends Struct {
  @Float()
  external double expansionMinimum;
  @Float()
  external double expansionMaximum;
  @Float()
  external double compressionMaximum;
  @Uint32()
  external int _bitfield;
}

class DWRITE_TEXT_METRICS1 extends Struct {
  external DWRITE_TEXT_METRICS Base;
  @Float()
  external double heightIncludingTrailingWhitespace;
}

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

class DWRITE_FONT_PROPERTY extends Struct {
  @Uint32()
  external int propertyId;
  external Pointer<Utf16> propertyValue;
  external Pointer<Utf16> localeName;
}

class DWRITE_LINE_METRICS1 extends Struct {
  external DWRITE_LINE_METRICS Base;
  @Float()
  external double leadingBefore;
  @Float()
  external double leadingAfter;
}

class DWRITE_LINE_SPACING extends Struct {
  @Uint32()
  external int method;
  @Float()
  external double height;
  @Float()
  external double baseline;
  @Float()
  external double leadingBefore;
  @Uint32()
  external int fontLineGapUsage;
}

class DWRITE_COLOR_GLYPH_RUN1 extends Struct {
  external DWRITE_COLOR_GLYPH_RUN Base;
  @Uint32()
  external int glyphImageFormat;
  @Uint32()
  external int measuringMode;
}

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

class DWRITE_FILE_FRAGMENT extends Struct {
  @Uint64()
  external int fileOffset;
  @Uint64()
  external int fragmentSize;
}

class DWRITE_FONT_AXIS_VALUE extends Struct {
  @Uint32()
  external int axisTag;
  @Float()
  external double value;
}

class DWRITE_FONT_AXIS_RANGE extends Struct {
  @Uint32()
  external int axisTag;
  @Float()
  external double minValue;
  @Float()
  external double maxValue;
}
