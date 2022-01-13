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
import '../../storage/xps/structs.g.dart';

/// {@category Struct}
class DOCINFO extends Struct {
  @Int32()
  external int cbSize;

  external Pointer<Utf16> lpszDocName;

  external Pointer<Utf16> lpszOutput;

  external Pointer<Utf16> lpszDatatype;

  @Uint32()
  external int fwType;
}

/// {@category Struct}
class DRAWPATRECT extends Struct {
  external POINT ptPosition;

  external POINT ptSize;

  @Uint16()
  external int wStyle;

  @Uint16()
  external int wPattern;
}

/// {@category Struct}
class PSFEATURE_CUSTPAPER extends Struct {
  @Int32()
  external int lOrientation;

  @Int32()
  external int lWidth;

  @Int32()
  external int lHeight;

  @Int32()
  external int lWidthOffset;

  @Int32()
  external int lHeightOffset;
}

/// {@category Struct}
class PSFEATURE_OUTPUT extends Struct {
  @Int32()
  external int bPageIndependent;

  @Int32()
  external int bSetPageDevice;
}

/// {@category Struct}
class PSINJECTDATA extends Struct {
  @Uint32()
  external int DataBytes;

  @Uint16()
  external int InjectionPoint;

  @Uint16()
  external int PageNumber;
}

/// {@category Struct}
class XPS_COLOR extends Struct {
  @Int32()
  external int colorType;

  external _XPS_COLOR_XPS_COLOR_VALUE value;
}

/// {@category Struct}
class _XPS_COLOR_XPS_COLOR_VALUE extends Union {
  external _XPS_COLOR_XPS_COLOR_VALUE__sRGB_e__Struct sRGB;

  external _XPS_COLOR_XPS_COLOR_VALUE__scRGB_e__Struct scRGB;

  external _XPS_COLOR_XPS_COLOR_VALUE__context_e__Struct context;
}

/// {@category Struct}
class _XPS_COLOR_XPS_COLOR_VALUE__sRGB_e__Struct extends Struct {
  @Uint8()
  external int alpha;

  @Uint8()
  external int red;

  @Uint8()
  external int green;

  @Uint8()
  external int blue;
}

extension XPS_COLOR_XPS_COLOR_VALUE_Extension on XPS_COLOR {
  int get alpha => this.value.sRGB.alpha;
  set alpha(int value) => this.value.sRGB.alpha = value;

  int get red => this.value.sRGB.red;
  set red(int value) => this.value.sRGB.red = value;

  int get green => this.value.sRGB.green;
  set green(int value) => this.value.sRGB.green = value;

  int get blue => this.value.sRGB.blue;
  set blue(int value) => this.value.sRGB.blue = value;
}

/// {@category Struct}
class _XPS_COLOR_XPS_COLOR_VALUE__scRGB_e__Struct extends Struct {
  @Float()
  external double alpha;

  @Float()
  external double red;

  @Float()
  external double green;

  @Float()
  external double blue;
}

extension XPS_COLOR_XPS_COLOR_VALUE_Extension_1 on XPS_COLOR {
  double get alpha => this.value.scRGB.alpha;
  set alpha(double value) => this.value.scRGB.alpha = value;

  double get red => this.value.scRGB.red;
  set red(double value) => this.value.scRGB.red = value;

  double get green => this.value.scRGB.green;
  set green(double value) => this.value.scRGB.green = value;

  double get blue => this.value.scRGB.blue;
  set blue(double value) => this.value.scRGB.blue = value;
}

/// {@category Struct}
class _XPS_COLOR_XPS_COLOR_VALUE__context_e__Struct extends Struct {
  @Uint8()
  external int channelCount;

  @Array(9)
  external Array<Float> channels;
}

extension XPS_COLOR_XPS_COLOR_VALUE_Extension_2 on XPS_COLOR {
  int get channelCount => this.value.context.channelCount;
  set channelCount(int value) => this.value.context.channelCount = value;

  Array<Float> get channels => this.value.context.channels;
  set channels(Array<Float> value) => this.value.context.channels = value;
}

extension XPS_COLOR_Extension on XPS_COLOR {
  _XPS_COLOR_XPS_COLOR_VALUE__sRGB_e__Struct get sRGB => this.value.sRGB;
  set sRGB(_XPS_COLOR_XPS_COLOR_VALUE__sRGB_e__Struct value) =>
      this.value.sRGB = value;

  _XPS_COLOR_XPS_COLOR_VALUE__scRGB_e__Struct get scRGB => this.value.scRGB;
  set scRGB(_XPS_COLOR_XPS_COLOR_VALUE__scRGB_e__Struct value) =>
      this.value.scRGB = value;

  _XPS_COLOR_XPS_COLOR_VALUE__context_e__Struct get context =>
      this.value.context;
  set context(_XPS_COLOR_XPS_COLOR_VALUE__context_e__Struct value) =>
      this.value.context = value;
}

/// {@category Struct}
class XPS_DASH extends Struct {
  @Float()
  external double length;

  @Float()
  external double gap;
}

/// {@category Struct}
class XPS_GLYPH_INDEX extends Struct {
  @Int32()
  external int index;

  @Float()
  external double advanceWidth;

  @Float()
  external double horizontalOffset;

  @Float()
  external double verticalOffset;
}

/// {@category Struct}
class XPS_GLYPH_MAPPING extends Struct {
  @Uint32()
  external int unicodeStringStart;

  @Uint16()
  external int unicodeStringLength;

  @Uint32()
  external int glyphIndicesStart;

  @Uint16()
  external int glyphIndicesLength;
}

/// {@category Struct}
class XPS_MATRIX extends Struct {
  @Float()
  external double m11;

  @Float()
  external double m12;

  @Float()
  external double m21;

  @Float()
  external double m22;

  @Float()
  external double m31;

  @Float()
  external double m32;
}

/// {@category Struct}
class XPS_POINT extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// {@category Struct}
class XPS_RECT extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double width;

  @Float()
  external double height;
}

/// {@category Struct}
class XPS_SIZE extends Struct {
  @Float()
  external double width;

  @Float()
  external double height;
}
