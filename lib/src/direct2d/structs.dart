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

class D2D_COLOR_F extends Struct {
  @Float() external double r;
  @Float() external double g;
  @Float() external double b;
  @Float() external double a;
}

class D2D1_COLOR_F extends Struct {
  @Float() external double r;
  @Float() external double g;
  @Float() external double b;
  @Float() external double a;
}

class D2D1_PIXEL_FORMAT extends Struct {
  @Uint32() external int format;
  @Uint32() external int alphaMode;
}

class D2D_POINT_2U extends Struct {
  @Uint32() external int x;
  @Uint32() external int y;
}

class D2D_POINT_2F extends Struct {
  @Float() external double x;
  @Float() external double y;
}

class D2D_VECTOR_2F extends Struct {
  @Float() external double x;
  @Float() external double y;
}

class D2D_VECTOR_3F extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double z;
}

class D2D_VECTOR_4F extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double z;
  @Float() external double w;
}

class D2D_RECT_F extends Struct {
  @Float() external double left;
  @Float() external double top;
  @Float() external double right;
  @Float() external double bottom;
}

class D2D_RECT_U extends Struct {
  @Uint32() external int left;
  @Uint32() external int top;
  @Uint32() external int right;
  @Uint32() external int bottom;
}

class D2D_SIZE_F extends Struct {
  @Float() external double width;
  @Float() external double height;
}

class D2D_SIZE_U extends Struct {
  @Uint32() external int width;
  @Uint32() external int height;
}

class D2D_MATRIX_3X2_F extends Struct {
  @Uint32() external int Anonymous;
}

class D2D_MATRIX_4X3_F extends Struct {
  @Uint32() external int Anonymous;
}

class D2D_MATRIX_4X4_F extends Struct {
  @Uint32() external int Anonymous;
}

class D2D_MATRIX_5X4_F extends Struct {
  @Uint32() external int Anonymous;
}

class D2D1_BITMAP_PROPERTIES extends Struct {
  external D2D1_PIXEL_FORMAT pixelFormat;
  @Float() external double dpiX;
  @Float() external double dpiY;
}

class D2D1_GRADIENT_STOP extends Struct {
  @Float() external double position;
  external D2D1_COLOR_F color;
}

class D2D1_BRUSH_PROPERTIES extends Struct {
  @Float() external double opacity;
  external D2D_MATRIX_3X2_F transform;
}

class D2D1_BITMAP_BRUSH_PROPERTIES extends Struct {
  @Uint32() external int extendModeX;
  @Uint32() external int extendModeY;
  @Uint32() external int interpolationMode;
}

class D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES extends Struct {
  external D2D_POINT_2F startPoint;
  external D2D_POINT_2F endPoint;
}

class D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES extends Struct {
  external D2D_POINT_2F center;
  external D2D_POINT_2F gradientOriginOffset;
  @Float() external double radiusX;
  @Float() external double radiusY;
}

class D2D1_BEZIER_SEGMENT extends Struct {
  external D2D_POINT_2F point1;
  external D2D_POINT_2F point2;
  external D2D_POINT_2F point3;
}

class D2D1_TRIANGLE extends Struct {
  external D2D_POINT_2F point1;
  external D2D_POINT_2F point2;
  external D2D_POINT_2F point3;
}

class D2D1_ARC_SEGMENT extends Struct {
  external D2D_POINT_2F point;
  external D2D_SIZE_F size;
  @Float() external double rotationAngle;
  @Uint32() external int sweepDirection;
  @Uint32() external int arcSize;
}

class D2D1_QUADRATIC_BEZIER_SEGMENT extends Struct {
  external D2D_POINT_2F point1;
  external D2D_POINT_2F point2;
}

class D2D1_ELLIPSE extends Struct {
  external D2D_POINT_2F point;
  @Float() external double radiusX;
  @Float() external double radiusY;
}

class D2D1_ROUNDED_RECT extends Struct {
  external D2D_RECT_F rect;
  @Float() external double radiusX;
  @Float() external double radiusY;
}

class D2D1_STROKE_STYLE_PROPERTIES extends Struct {
  @Uint32() external int startCap;
  @Uint32() external int endCap;
  @Uint32() external int dashCap;
  @Uint32() external int lineJoin;
  @Float() external double miterLimit;
  @Uint32() external int dashStyle;
  @Float() external double dashOffset;
}

class D2D1_LAYER_PARAMETERS extends Struct {
  external D2D_RECT_F contentBounds;
  external ID2D1Geometry geometricMask;
  @Uint32() external int maskAntialiasMode;
  external D2D_MATRIX_3X2_F maskTransform;
  @Float() external double opacity;
  external ID2D1Brush opacityBrush;
  @Uint32() external int layerOptions;
}

class D2D1_RENDER_TARGET_PROPERTIES extends Struct {
  @Uint32() external int type;
  external D2D1_PIXEL_FORMAT pixelFormat;
  @Float() external double dpiX;
  @Float() external double dpiY;
  @Uint32() external int usage;
  @Uint32() external int minLevel;
}

class D2D1_HWND_RENDER_TARGET_PROPERTIES extends Struct {
  @IntPtr() external int hwnd;
  external D2D_SIZE_U pixelSize;
  @Uint32() external int presentOptions;
}

class D2D1_DRAWING_STATE_DESCRIPTION extends Struct {
  @Uint32() external int antialiasMode;
  @Uint32() external int textAntialiasMode;
  @Uint64() external int tag1;
  @Uint64() external int tag2;
  external D2D_MATRIX_3X2_F transform;
}

class D2D1_FACTORY_OPTIONS extends Struct {
  @Uint32() external int debugLevel;
}

class D2D1_BITMAP_PROPERTIES1 extends Struct {
  external D2D1_PIXEL_FORMAT pixelFormat;
  @Float() external double dpiX;
  @Float() external double dpiY;
  @Uint32() external int bitmapOptions;
  external ID2D1ColorContext colorContext;
}

class D2D1_MAPPED_RECT extends Struct {
  @Uint32() external int pitch;
  external Pointer<Uint8> bits;
}

class D2D1_RENDERING_CONTROLS extends Struct {
  @Uint32() external int bufferPrecision;
  external D2D_SIZE_U tileSize;
}

class D2D1_EFFECT_INPUT_DESCRIPTION extends Struct {
  external ID2D1Effect effect;
  @Uint32() external int inputIndex;
  external D2D_RECT_F inputRectangle;
}

class D2D1_POINT_DESCRIPTION extends Struct {
  external D2D_POINT_2F point;
  external D2D_POINT_2F unitTangentVector;
  @Uint32() external int endSegment;
  @Uint32() external int endFigure;
  @Float() external double lengthToEndSegment;
}

class D2D1_IMAGE_BRUSH_PROPERTIES extends Struct {
  external D2D_RECT_F sourceRectangle;
  @Uint32() external int extendModeX;
  @Uint32() external int extendModeY;
  @Uint32() external int interpolationMode;
}

class D2D1_BITMAP_BRUSH_PROPERTIES1 extends Struct {
  @Uint32() external int extendModeX;
  @Uint32() external int extendModeY;
  @Uint32() external int interpolationMode;
}

class D2D1_STROKE_STYLE_PROPERTIES1 extends Struct {
  @Uint32() external int startCap;
  @Uint32() external int endCap;
  @Uint32() external int dashCap;
  @Uint32() external int lineJoin;
  @Float() external double miterLimit;
  @Uint32() external int dashStyle;
  @Float() external double dashOffset;
  @Uint32() external int transformType;
}

class D2D1_LAYER_PARAMETERS1 extends Struct {
  external D2D_RECT_F contentBounds;
  external ID2D1Geometry geometricMask;
  @Uint32() external int maskAntialiasMode;
  external D2D_MATRIX_3X2_F maskTransform;
  @Float() external double opacity;
  external ID2D1Brush opacityBrush;
  @Uint32() external int layerOptions;
}

class D2D1_DRAWING_STATE_DESCRIPTION1 extends Struct {
  @Uint32() external int antialiasMode;
  @Uint32() external int textAntialiasMode;
  @Uint64() external int tag1;
  @Uint64() external int tag2;
  external D2D_MATRIX_3X2_F transform;
  @Uint32() external int primitiveBlend;
  @Uint32() external int unitMode;
}

class D2D1_PRINT_CONTROL_PROPERTIES extends Struct {
  @Uint32() external int fontSubset;
  @Float() external double rasterDPI;
  @Uint32() external int colorSpace;
}

class D2D1_CREATION_PROPERTIES extends Struct {
  @Uint32() external int threadingMode;
  @Uint32() external int debugLevel;
  @Uint32() external int options;
}

class Matrix4x3F extends Struct {
  external D2D_MATRIX_4X3_F __AnonymousBase_d2d1_1helper_L45_C31;
}

class Matrix4x4F extends Struct {
  external D2D_MATRIX_4X4_F __AnonymousBase_d2d1_1helper_L97_C31;
}

class Matrix5x4F extends Struct {
  external D2D_MATRIX_5X4_F __AnonymousBase_d2d1_1helper_L472_C31;
}

class D2D1_PROPERTY_BINDING extends Struct {
  external Pointer<Utf16> propertyName;
  external PD2D1_PROPERTY_SET_FUNCTION setFunction;
  external PD2D1_PROPERTY_GET_FUNCTION getFunction;
}

class D2D1_RESOURCE_TEXTURE_PROPERTIES extends Struct {
  external Pointer<Uint32> extents;
  @Uint32() external int dimensions;
  @Uint32() external int bufferPrecision;
  @Uint32() external int channelDepth;
  @Uint32() external int filter;
  external Pointer<Uint32> extendModes;
}

class D2D1_INPUT_ELEMENT_DESC extends Struct {
  external Pointer<Utf8> semanticName;
  @Uint32() external int semanticIndex;
  @Uint32() external int format;
  @Uint32() external int inputSlot;
  @Uint32() external int alignedByteOffset;
}

class D2D1_VERTEX_BUFFER_PROPERTIES extends Struct {
  @Uint32() external int inputCount;
  @Uint32() external int usage;
  external Pointer<Uint8> data;
  @Uint32() external int byteWidth;
}

class D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES extends Struct {
  external Pointer<Uint8> shaderBufferWithInputSignature;
  @Uint32() external int shaderBufferSize;
  external Pointer<D2D1_INPUT_ELEMENT_DESC> inputElements;
  @Uint32() external int elementCount;
  @Uint32() external int stride;
}

class D2D1_VERTEX_RANGE extends Struct {
  @Uint32() external int startVertex;
  @Uint32() external int vertexCount;
}

class D2D1_BLEND_DESCRIPTION extends Struct {
  @Uint32() external int sourceBlend;
  @Uint32() external int destinationBlend;
  @Uint32() external int blendOperation;
  @Uint32() external int sourceBlendAlpha;
  @Uint32() external int destinationBlendAlpha;
  @Uint32() external int blendOperationAlpha;
  external __float__ blendFactor;
}

class D2D1_INPUT_DESCRIPTION extends Struct {
  @Uint32() external int filter;
  @Uint32() external int levelOfDetailCount;
}

class D2D1_FEATURE_DATA_DOUBLES extends Struct {
  @Int32() external int doublePrecisionFloatShaderOps;
}

class D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS extends Struct {
  @Int32() external int computeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x;
}

class D2D1_SVG_LENGTH extends Struct {
  @Float() external double value;
  @Uint32() external int units;
}

class D2D1_SVG_PRESERVE_ASPECT_RATIO extends Struct {
  @Int32() external int defer;
  @Uint32() external int align;
  @Uint32() external int meetOrSlice;
}

class D2D1_SVG_VIEWBOX extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double width;
  @Float() external double height;
}

class D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES extends Struct {
  @Uint32() external int orientation;
  @Float() external double scaleX;
  @Float() external double scaleY;
  @Uint32() external int interpolationMode;
  @Uint32() external int options;
}

class D2D1_INK_POINT extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double radius;
}

class D2D1_INK_BEZIER_SEGMENT extends Struct {
  external D2D1_INK_POINT point1;
  external D2D1_INK_POINT point2;
  external D2D1_INK_POINT point3;
}

class D2D1_INK_STYLE_PROPERTIES extends Struct {
  @Uint32() external int nibShape;
  external D2D_MATRIX_3X2_F nibTransform;
}

class D2D1_GRADIENT_MESH_PATCH extends Struct {
  external D2D_POINT_2F point00;
  external D2D_POINT_2F point01;
  external D2D_POINT_2F point02;
  external D2D_POINT_2F point03;
  external D2D_POINT_2F point10;
  external D2D_POINT_2F point11;
  external D2D_POINT_2F point12;
  external D2D_POINT_2F point13;
  external D2D_POINT_2F point20;
  external D2D_POINT_2F point21;
  external D2D_POINT_2F point22;
  external D2D_POINT_2F point23;
  external D2D_POINT_2F point30;
  external D2D_POINT_2F point31;
  external D2D_POINT_2F point32;
  external D2D_POINT_2F point33;
  external D2D1_COLOR_F color00;
  external D2D1_COLOR_F color03;
  external D2D1_COLOR_F color30;
  external D2D1_COLOR_F color33;
  @Uint32() external int topEdgeMode;
  @Uint32() external int leftEdgeMode;
  @Uint32() external int bottomEdgeMode;
  @Uint32() external int rightEdgeMode;
}

class D2D1_SIMPLE_COLOR_PROFILE extends Struct {
  external D2D_POINT_2F redPrimary;
  external D2D_POINT_2F greenPrimary;
  external D2D_POINT_2F bluePrimary;
  external D2D_POINT_2F whitePointXZ;
  @Uint32() external int gamma;
}

