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

class HPTPROVIDER extends Struct {
  @IntPtr() external int Value;
}

class DRAWPATRECT extends Struct {
  external POINT ptPosition;
  external POINT ptSize;
  @Uint16() external int wStyle;
  @Uint16() external int wPattern;
}

class PSINJECTDATA extends Struct {
  @Uint32() external int DataBytes;
  @Uint32() external int InjectionPoint;
  @Uint16() external int PageNumber;
}

class PSFEATURE_OUTPUT extends Struct {
  @Int32() external int bPageIndependent;
  @Int32() external int bSetPageDevice;
}

class PSFEATURE_CUSTPAPER extends Struct {
  @Int32() external int lOrientation;
  @Int32() external int lWidth;
  @Int32() external int lHeight;
  @Int32() external int lWidthOffset;
  @Int32() external int lHeightOffset;
}

class DEVMODEA extends Struct {
  @Array(32)
  external Array<Uint8> dmDeviceName;
  @Uint16() external int dmSpecVersion;
  @Uint16() external int dmDriverVersion;
  @Uint16() external int dmSize;
  @Uint16() external int dmDriverExtra;
  @Uint32() external int dmFields;
  @Uint32() external int Anonymous1;
  @Int16() external int dmColor;
  @Int16() external int dmDuplex;
  @Int16() external int dmYResolution;
  @Int16() external int dmTTOption;
  @Int16() external int dmCollate;
  @Array(32)
  external Array<Uint8> dmFormName;
  @Uint16() external int dmLogPixels;
  @Uint32() external int dmBitsPerPel;
  @Uint32() external int dmPelsWidth;
  @Uint32() external int dmPelsHeight;
  @Uint32() external int Anonymous2;
  @Uint32() external int dmDisplayFrequency;
  @Uint32() external int dmICMMethod;
  @Uint32() external int dmICMIntent;
  @Uint32() external int dmMediaType;
  @Uint32() external int dmDitherType;
  @Uint32() external int dmReserved1;
  @Uint32() external int dmReserved2;
  @Uint32() external int dmPanningWidth;
  @Uint32() external int dmPanningHeight;
}

class DOCINFOA extends Struct {
  @Int32() external int cbSize;
  external Pointer<Utf8> lpszDocName;
  external Pointer<Utf8> lpszOutput;
  external Pointer<Utf8> lpszDatatype;
  @Uint32() external int fwType;
}

class DOCINFOW extends Struct {
  @Int32() external int cbSize;
  external Pointer<Utf16> lpszDocName;
  external Pointer<Utf16> lpszOutput;
  external Pointer<Utf16> lpszDatatype;
  @Uint32() external int fwType;
}

class XpsOMObjectFactory extends Struct {
}

class XpsOMThumbnailGenerator extends Struct {
}

class XPS_POINT extends Struct {
  @Float() external double x;
  @Float() external double y;
}

class XPS_SIZE extends Struct {
  @Float() external double width;
  @Float() external double height;
}

class XPS_RECT extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double width;
  @Float() external double height;
}

class XPS_DASH extends Struct {
  @Float() external double length;
  @Float() external double gap;
}

class XPS_GLYPH_MAPPING extends Struct {
  @Uint32() external int unicodeStringStart;
  @Uint16() external int unicodeStringLength;
  @Uint32() external int glyphIndicesStart;
  @Uint16() external int glyphIndicesLength;
}

class XPS_MATRIX extends Struct {
  @Float() external double m11;
  @Float() external double m12;
  @Float() external double m21;
  @Float() external double m22;
  @Float() external double m31;
  @Float() external double m32;
}

class XPS_COLOR extends Struct {
  @Uint32() external int colorType;
  @Uint32() external int value;
}

class XpsSignatureManager extends Struct {
}

class PrintDocumentPackageTarget extends Struct {
}

class PrintDocumentPackageTargetFactory extends Struct {
}

class PrintDocumentPackageStatus extends Struct {
  @Uint32() external int JobId;
  @Int32() external int CurrentDocument;
  @Int32() external int CurrentPage;
  @Int32() external int CurrentPageTotal;
  @Uint32() external int Completion;
  @Int32() external int PackageStatus;
}

