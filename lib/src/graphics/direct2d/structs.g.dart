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
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/ID2D1ColorContext.dart';
import '../../graphics/direct2d/ID2D1Effect.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1Geometry.dart';
import '../../graphics/direct2d/ID2D1Brush.dart';
import '../../graphics/direct2d/callbacks.g.dart';

/// {@category Struct}
class D2D1_ARC_SEGMENT extends Struct {
  external D2D_POINT_2F point;

  external D2D_SIZE_F size;

  @Float()
  external double rotationAngle;

  @Uint32()
  external int sweepDirection;

  @Uint32()
  external int arcSize;
}

/// {@category Struct}
class D2D1_BITMAP_BRUSH_PROPERTIES extends Struct {
  @Uint32()
  external int extendModeX;

  @Uint32()
  external int extendModeY;

  @Uint32()
  external int interpolationMode;
}

/// {@category Struct}
class D2D1_BITMAP_BRUSH_PROPERTIES1 extends Struct {
  @Uint32()
  external int extendModeX;

  @Uint32()
  external int extendModeY;

  @Uint32()
  external int interpolationMode;
}

/// {@category Struct}
class D2D1_BITMAP_PROPERTIES extends Struct {
  external D2D1_PIXEL_FORMAT pixelFormat;

  @Float()
  external double dpiX;

  @Float()
  external double dpiY;
}

/// {@category Struct}
class D2D1_BITMAP_PROPERTIES1 extends Struct {
  external D2D1_PIXEL_FORMAT pixelFormat;

  @Float()
  external double dpiX;

  @Float()
  external double dpiY;

  @Uint32()
  external int bitmapOptions;

  external Pointer<COMObject> colorContext;
}

/// {@category Struct}
class D2D1_BLEND_DESCRIPTION extends Struct {
  @Uint32()
  external int sourceBlend;

  @Uint32()
  external int destinationBlend;

  @Uint32()
  external int blendOperation;

  @Uint32()
  external int sourceBlendAlpha;

  @Uint32()
  external int destinationBlendAlpha;

  @Uint32()
  external int blendOperationAlpha;

  @Array(4)
  external Array<Float> blendFactor;
}

/// {@category Struct}
class D2D1_BRUSH_PROPERTIES extends Struct {
  @Float()
  external double opacity;

  external D2D_MATRIX_3X2_F transform;
}

/// {@category Struct}
class D2D1_CREATION_PROPERTIES extends Struct {
  @Uint32()
  external int threadingMode;

  @Uint32()
  external int debugLevel;

  @Uint32()
  external int options;
}

/// {@category Struct}
class D2D1_CUSTOM_VERTEX_BUFFER_PROPERTIES extends Struct {
  external Pointer<Uint8> shaderBufferWithInputSignature;

  @Uint32()
  external int shaderBufferSize;

  external Pointer<D2D1_INPUT_ELEMENT_DESC> inputElements;

  @Uint32()
  external int elementCount;

  @Uint32()
  external int stride;
}

/// {@category Struct}
class D2D1_DRAWING_STATE_DESCRIPTION extends Struct {
  @Uint32()
  external int antialiasMode;

  @Uint32()
  external int textAntialiasMode;

  @Uint64()
  external int tag1;

  @Uint64()
  external int tag2;

  external D2D_MATRIX_3X2_F transform;
}

/// {@category Struct}
class D2D1_DRAWING_STATE_DESCRIPTION1 extends Struct {
  @Uint32()
  external int antialiasMode;

  @Uint32()
  external int textAntialiasMode;

  @Uint64()
  external int tag1;

  @Uint64()
  external int tag2;

  external D2D_MATRIX_3X2_F transform;

  @Uint32()
  external int primitiveBlend;

  @Uint32()
  external int unitMode;
}

/// {@category Struct}
class D2D1_EFFECT_INPUT_DESCRIPTION extends Struct {
  external Pointer<COMObject> effect;

  @Uint32()
  external int inputIndex;

  external D2D_RECT_F inputRectangle;
}

/// {@category Struct}
class D2D1_ELLIPSE extends Struct {
  external D2D_POINT_2F point;

  @Float()
  external double radiusX;

  @Float()
  external double radiusY;
}

/// {@category Struct}
class D2D1_FACTORY_OPTIONS extends Struct {
  @Uint32()
  external int debugLevel;
}

/// {@category Struct}
class D2D1_FEATURE_DATA_D3D10_X_HARDWARE_OPTIONS extends Struct {
  @Int32()
  external int computeShaders_Plus_RawAndStructuredBuffers_Via_Shader_4_x;
}

/// {@category Struct}
class D2D1_FEATURE_DATA_DOUBLES extends Struct {
  @Int32()
  external int doublePrecisionFloatShaderOps;
}

/// {@category Struct}
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

  @Uint32()
  external int topEdgeMode;

  @Uint32()
  external int leftEdgeMode;

  @Uint32()
  external int bottomEdgeMode;

  @Uint32()
  external int rightEdgeMode;
}

/// {@category Struct}
class D2D1_GRADIENT_STOP extends Struct {
  @Float()
  external double position;

  external D2D1_COLOR_F color;
}

/// {@category Struct}
class D2D1_HWND_RENDER_TARGET_PROPERTIES extends Struct {
  @IntPtr()
  external int hwnd;

  external D2D_SIZE_U pixelSize;

  @Uint32()
  external int presentOptions;
}

/// {@category Struct}
class D2D1_IMAGE_BRUSH_PROPERTIES extends Struct {
  external D2D_RECT_F sourceRectangle;

  @Uint32()
  external int extendModeX;

  @Uint32()
  external int extendModeY;

  @Uint32()
  external int interpolationMode;
}

/// {@category Struct}
class D2D1_INK_BEZIER_SEGMENT extends Struct {
  external D2D1_INK_POINT point1;

  external D2D1_INK_POINT point2;

  external D2D1_INK_POINT point3;
}

/// {@category Struct}
class D2D1_INK_POINT extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double radius;
}

/// {@category Struct}
class D2D1_INK_STYLE_PROPERTIES extends Struct {
  @Uint32()
  external int nibShape;

  external D2D_MATRIX_3X2_F nibTransform;
}

/// {@category Struct}
class D2D1_INPUT_DESCRIPTION extends Struct {
  @Uint32()
  external int filter;

  @Uint32()
  external int levelOfDetailCount;
}

/// {@category Struct}
class D2D1_INPUT_ELEMENT_DESC extends Struct {
  external Pointer<Utf8> semanticName;

  @Uint32()
  external int semanticIndex;

  @Uint32()
  external int format;

  @Uint32()
  external int inputSlot;

  @Uint32()
  external int alignedByteOffset;
}

/// {@category Struct}
class D2D1_LAYER_PARAMETERS extends Struct {
  external D2D_RECT_F contentBounds;

  external Pointer<COMObject> geometricMask;

  @Uint32()
  external int maskAntialiasMode;

  external D2D_MATRIX_3X2_F maskTransform;

  @Float()
  external double opacity;

  external Pointer<COMObject> opacityBrush;

  @Uint32()
  external int layerOptions;
}

/// {@category Struct}
class D2D1_LAYER_PARAMETERS1 extends Struct {
  external D2D_RECT_F contentBounds;

  external Pointer<COMObject> geometricMask;

  @Uint32()
  external int maskAntialiasMode;

  external D2D_MATRIX_3X2_F maskTransform;

  @Float()
  external double opacity;

  external Pointer<COMObject> opacityBrush;

  @Uint32()
  external int layerOptions;
}

/// {@category Struct}
class D2D1_LINEAR_GRADIENT_BRUSH_PROPERTIES extends Struct {
  external D2D_POINT_2F startPoint;

  external D2D_POINT_2F endPoint;
}

/// {@category Struct}
class D2D1_MAPPED_RECT extends Struct {
  @Uint32()
  external int pitch;

  external Pointer<Uint8> bits;
}

/// {@category Struct}
class D2D1_POINT_DESCRIPTION extends Struct {
  external D2D_POINT_2F point;

  external D2D_POINT_2F unitTangentVector;

  @Uint32()
  external int endSegment;

  @Uint32()
  external int endFigure;

  @Float()
  external double lengthToEndSegment;
}

/// {@category Struct}
class D2D1_PRINT_CONTROL_PROPERTIES extends Struct {
  @Uint32()
  external int fontSubset;

  @Float()
  external double rasterDPI;

  @Uint32()
  external int colorSpace;
}

/// {@category Struct}
class D2D1_PROPERTY_BINDING extends Struct {
  external Pointer<Utf16> propertyName;

  external Pointer<NativeFunction<PD2D1_PROPERTY_SET_FUNCTION>> setFunction;

  external Pointer<NativeFunction<PD2D1_PROPERTY_GET_FUNCTION>> getFunction;
}

/// {@category Struct}
class D2D1_QUADRATIC_BEZIER_SEGMENT extends Struct {
  external D2D_POINT_2F point1;

  external D2D_POINT_2F point2;
}

/// {@category Struct}
class D2D1_RADIAL_GRADIENT_BRUSH_PROPERTIES extends Struct {
  external D2D_POINT_2F center;

  external D2D_POINT_2F gradientOriginOffset;

  @Float()
  external double radiusX;

  @Float()
  external double radiusY;
}

/// {@category Struct}
class D2D1_RENDERING_CONTROLS extends Struct {
  @Uint32()
  external int bufferPrecision;

  external D2D_SIZE_U tileSize;
}

/// {@category Struct}
class D2D1_RENDER_TARGET_PROPERTIES extends Struct {
  @Uint32()
  external int type;

  external D2D1_PIXEL_FORMAT pixelFormat;

  @Float()
  external double dpiX;

  @Float()
  external double dpiY;

  @Uint32()
  external int usage;

  @Uint32()
  external int minLevel;
}

/// {@category Struct}
class D2D1_RESOURCE_TEXTURE_PROPERTIES extends Struct {
  external Pointer<Uint32> extents;

  @Uint32()
  external int dimensions;

  @Uint32()
  external int bufferPrecision;

  @Uint32()
  external int channelDepth;

  @Uint32()
  external int filter;

  external Pointer<Uint32> extendModes;
}

/// {@category Struct}
class D2D1_ROUNDED_RECT extends Struct {
  external D2D_RECT_F rect;

  @Float()
  external double radiusX;

  @Float()
  external double radiusY;
}

/// {@category Struct}
class D2D1_SIMPLE_COLOR_PROFILE extends Struct {
  external D2D_POINT_2F redPrimary;

  external D2D_POINT_2F greenPrimary;

  external D2D_POINT_2F bluePrimary;

  external D2D_POINT_2F whitePointXZ;

  @Uint32()
  external int gamma;
}

/// {@category Struct}
class D2D1_STROKE_STYLE_PROPERTIES extends Struct {
  @Uint32()
  external int startCap;

  @Uint32()
  external int endCap;

  @Uint32()
  external int dashCap;

  @Uint32()
  external int lineJoin;

  @Float()
  external double miterLimit;

  @Uint32()
  external int dashStyle;

  @Float()
  external double dashOffset;
}

/// {@category Struct}
class D2D1_STROKE_STYLE_PROPERTIES1 extends Struct {
  @Uint32()
  external int startCap;

  @Uint32()
  external int endCap;

  @Uint32()
  external int dashCap;

  @Uint32()
  external int lineJoin;

  @Float()
  external double miterLimit;

  @Uint32()
  external int dashStyle;

  @Float()
  external double dashOffset;

  @Uint32()
  external int transformType;
}

/// {@category Struct}
class D2D1_SVG_LENGTH extends Struct {
  @Float()
  external double value;

  @Uint32()
  external int units;
}

/// {@category Struct}
class D2D1_SVG_PRESERVE_ASPECT_RATIO extends Struct {
  @Int32()
  external int defer;

  @Uint32()
  external int align;

  @Uint32()
  external int meetOrSlice;
}

/// {@category Struct}
class D2D1_SVG_VIEWBOX extends Struct {
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
class D2D1_TRANSFORMED_IMAGE_SOURCE_PROPERTIES extends Struct {
  @Uint32()
  external int orientation;

  @Float()
  external double scaleX;

  @Float()
  external double scaleY;

  @Uint32()
  external int interpolationMode;

  @Uint32()
  external int options;
}

/// {@category Struct}
class D2D1_TRIANGLE extends Struct {
  external D2D_POINT_2F point1;

  external D2D_POINT_2F point2;

  external D2D_POINT_2F point3;
}

/// {@category Struct}
class D2D1_VERTEX_BUFFER_PROPERTIES extends Struct {
  @Uint32()
  external int inputCount;

  @Uint32()
  external int usage;

  external Pointer<Uint8> data;

  @Uint32()
  external int byteWidth;
}

/// {@category Struct}
class D2D1_VERTEX_RANGE extends Struct {
  @Uint32()
  external int startVertex;

  @Uint32()
  external int vertexCount;
}

/// {@category Struct}
class Matrix4x3F extends Struct {
  external D2D_MATRIX_4X3_F AnonymousBase_d2d1_1helper_L45_C31;
}

/// {@category Struct}
class Matrix4x4F extends Struct {
  external D2D_MATRIX_4X4_F AnonymousBase_d2d1_1helper_L97_C31;
}

/// {@category Struct}
class Matrix5x4F extends Struct {
  external D2D_MATRIX_5X4_F AnonymousBase_d2d1_1helper_L472_C31;
}
