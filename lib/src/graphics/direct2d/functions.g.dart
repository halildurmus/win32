// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/dxgi/IDXGIDevice.dart';
import '../../graphics/direct2d/ID2D1Device.dart';
import '../../graphics/dxgi/IDXGISurface.dart';
import '../../graphics/direct2d/ID2D1DeviceContext.dart'; // -----------------------------------------------------------------------

// d2d1.dll
// -----------------------------------------------------------------------
final _d2d1 = DynamicLibrary.open('d2d1.dll');

double D2D1ComputeMaximumScaleFactor(
  Pointer<D2D_MATRIX_3X2_F> matrix,
) =>
    _D2D1ComputeMaximumScaleFactor(
      matrix,
    );

late final _D2D1ComputeMaximumScaleFactor = _d2d1.lookupFunction<
    Float Function(
  Pointer<D2D_MATRIX_3X2_F> matrix,
),
    double Function(
  Pointer<D2D_MATRIX_3X2_F> matrix,
)>('D2D1ComputeMaximumScaleFactor');

D2D1_COLOR_F D2D1ConvertColorSpace(
  int sourceColorSpace,
  int destinationColorSpace,
  Pointer<D2D1_COLOR_F> color,
) =>
    _D2D1ConvertColorSpace(
      sourceColorSpace,
      destinationColorSpace,
      color,
    );

late final _D2D1ConvertColorSpace = _d2d1.lookupFunction<
    D2D1_COLOR_F Function(
  Uint32 sourceColorSpace,
  Uint32 destinationColorSpace,
  Pointer<D2D1_COLOR_F> color,
),
    D2D1_COLOR_F Function(
  int sourceColorSpace,
  int destinationColorSpace,
  Pointer<D2D1_COLOR_F> color,
)>('D2D1ConvertColorSpace');

int D2D1CreateDevice(
  Pointer<COMObject> dxgiDevice,
  Pointer<D2D1_CREATION_PROPERTIES> creationProperties,
  Pointer<Pointer<COMObject>> d2dDevice,
) =>
    _D2D1CreateDevice(
      dxgiDevice,
      creationProperties,
      d2dDevice,
    );

late final _D2D1CreateDevice = _d2d1.lookupFunction<
    Int32 Function(
  Pointer<COMObject> dxgiDevice,
  Pointer<D2D1_CREATION_PROPERTIES> creationProperties,
  Pointer<Pointer<COMObject>> d2dDevice,
),
    int Function(
  Pointer<COMObject> dxgiDevice,
  Pointer<D2D1_CREATION_PROPERTIES> creationProperties,
  Pointer<Pointer<COMObject>> d2dDevice,
)>('D2D1CreateDevice');

int D2D1CreateDeviceContext(
  Pointer<COMObject> dxgiSurface,
  Pointer<D2D1_CREATION_PROPERTIES> creationProperties,
  Pointer<Pointer<COMObject>> d2dDeviceContext,
) =>
    _D2D1CreateDeviceContext(
      dxgiSurface,
      creationProperties,
      d2dDeviceContext,
    );

late final _D2D1CreateDeviceContext = _d2d1.lookupFunction<
    Int32 Function(
  Pointer<COMObject> dxgiSurface,
  Pointer<D2D1_CREATION_PROPERTIES> creationProperties,
  Pointer<Pointer<COMObject>> d2dDeviceContext,
),
    int Function(
  Pointer<COMObject> dxgiSurface,
  Pointer<D2D1_CREATION_PROPERTIES> creationProperties,
  Pointer<Pointer<COMObject>> d2dDeviceContext,
)>('D2D1CreateDeviceContext');

int D2D1CreateFactory(
  int factoryType,
  Pointer<GUID> riid,
  Pointer<D2D1_FACTORY_OPTIONS> pFactoryOptions,
  Pointer<Pointer> ppIFactory,
) =>
    _D2D1CreateFactory(
      factoryType,
      riid,
      pFactoryOptions,
      ppIFactory,
    );

late final _D2D1CreateFactory = _d2d1.lookupFunction<
    Int32 Function(
  Uint32 factoryType,
  Pointer<GUID> riid,
  Pointer<D2D1_FACTORY_OPTIONS> pFactoryOptions,
  Pointer<Pointer> ppIFactory,
),
    int Function(
  int factoryType,
  Pointer<GUID> riid,
  Pointer<D2D1_FACTORY_OPTIONS> pFactoryOptions,
  Pointer<Pointer> ppIFactory,
)>('D2D1CreateFactory');

void D2D1GetGradientMeshInteriorPointsFromCoonsPatch(
  Pointer<D2D_POINT_2F> pPoint0,
  Pointer<D2D_POINT_2F> pPoint1,
  Pointer<D2D_POINT_2F> pPoint2,
  Pointer<D2D_POINT_2F> pPoint3,
  Pointer<D2D_POINT_2F> pPoint4,
  Pointer<D2D_POINT_2F> pPoint5,
  Pointer<D2D_POINT_2F> pPoint6,
  Pointer<D2D_POINT_2F> pPoint7,
  Pointer<D2D_POINT_2F> pPoint8,
  Pointer<D2D_POINT_2F> pPoint9,
  Pointer<D2D_POINT_2F> pPoint10,
  Pointer<D2D_POINT_2F> pPoint11,
  Pointer<D2D_POINT_2F> pTensorPoint11,
  Pointer<D2D_POINT_2F> pTensorPoint12,
  Pointer<D2D_POINT_2F> pTensorPoint21,
  Pointer<D2D_POINT_2F> pTensorPoint22,
) =>
    _D2D1GetGradientMeshInteriorPointsFromCoonsPatch(
      pPoint0,
      pPoint1,
      pPoint2,
      pPoint3,
      pPoint4,
      pPoint5,
      pPoint6,
      pPoint7,
      pPoint8,
      pPoint9,
      pPoint10,
      pPoint11,
      pTensorPoint11,
      pTensorPoint12,
      pTensorPoint21,
      pTensorPoint22,
    );

late final _D2D1GetGradientMeshInteriorPointsFromCoonsPatch =
    _d2d1.lookupFunction<
        Void Function(
  Pointer<D2D_POINT_2F> pPoint0,
  Pointer<D2D_POINT_2F> pPoint1,
  Pointer<D2D_POINT_2F> pPoint2,
  Pointer<D2D_POINT_2F> pPoint3,
  Pointer<D2D_POINT_2F> pPoint4,
  Pointer<D2D_POINT_2F> pPoint5,
  Pointer<D2D_POINT_2F> pPoint6,
  Pointer<D2D_POINT_2F> pPoint7,
  Pointer<D2D_POINT_2F> pPoint8,
  Pointer<D2D_POINT_2F> pPoint9,
  Pointer<D2D_POINT_2F> pPoint10,
  Pointer<D2D_POINT_2F> pPoint11,
  Pointer<D2D_POINT_2F> pTensorPoint11,
  Pointer<D2D_POINT_2F> pTensorPoint12,
  Pointer<D2D_POINT_2F> pTensorPoint21,
  Pointer<D2D_POINT_2F> pTensorPoint22,
),
        void Function(
  Pointer<D2D_POINT_2F> pPoint0,
  Pointer<D2D_POINT_2F> pPoint1,
  Pointer<D2D_POINT_2F> pPoint2,
  Pointer<D2D_POINT_2F> pPoint3,
  Pointer<D2D_POINT_2F> pPoint4,
  Pointer<D2D_POINT_2F> pPoint5,
  Pointer<D2D_POINT_2F> pPoint6,
  Pointer<D2D_POINT_2F> pPoint7,
  Pointer<D2D_POINT_2F> pPoint8,
  Pointer<D2D_POINT_2F> pPoint9,
  Pointer<D2D_POINT_2F> pPoint10,
  Pointer<D2D_POINT_2F> pPoint11,
  Pointer<D2D_POINT_2F> pTensorPoint11,
  Pointer<D2D_POINT_2F> pTensorPoint12,
  Pointer<D2D_POINT_2F> pTensorPoint21,
  Pointer<D2D_POINT_2F> pTensorPoint22,
)>('D2D1GetGradientMeshInteriorPointsFromCoonsPatch');

int D2D1InvertMatrix(
  Pointer<D2D_MATRIX_3X2_F> matrix,
) =>
    _D2D1InvertMatrix(
      matrix,
    );

late final _D2D1InvertMatrix = _d2d1.lookupFunction<
    Int32 Function(
  Pointer<D2D_MATRIX_3X2_F> matrix,
),
    int Function(
  Pointer<D2D_MATRIX_3X2_F> matrix,
)>('D2D1InvertMatrix');

int D2D1IsMatrixInvertible(
  Pointer<D2D_MATRIX_3X2_F> matrix,
) =>
    _D2D1IsMatrixInvertible(
      matrix,
    );

late final _D2D1IsMatrixInvertible = _d2d1.lookupFunction<
    Int32 Function(
  Pointer<D2D_MATRIX_3X2_F> matrix,
),
    int Function(
  Pointer<D2D_MATRIX_3X2_F> matrix,
)>('D2D1IsMatrixInvertible');

void D2D1MakeRotateMatrix(
  double angle,
  D2D_POINT_2F center,
  Pointer<D2D_MATRIX_3X2_F> matrix,
) =>
    _D2D1MakeRotateMatrix(
      angle,
      center,
      matrix,
    );

late final _D2D1MakeRotateMatrix = _d2d1.lookupFunction<
    Void Function(
  Float angle,
  D2D_POINT_2F center,
  Pointer<D2D_MATRIX_3X2_F> matrix,
),
    void Function(
  double angle,
  D2D_POINT_2F center,
  Pointer<D2D_MATRIX_3X2_F> matrix,
)>('D2D1MakeRotateMatrix');

void D2D1MakeSkewMatrix(
  double angleX,
  double angleY,
  D2D_POINT_2F center,
  Pointer<D2D_MATRIX_3X2_F> matrix,
) =>
    _D2D1MakeSkewMatrix(
      angleX,
      angleY,
      center,
      matrix,
    );

late final _D2D1MakeSkewMatrix = _d2d1.lookupFunction<
    Void Function(
  Float angleX,
  Float angleY,
  D2D_POINT_2F center,
  Pointer<D2D_MATRIX_3X2_F> matrix,
),
    void Function(
  double angleX,
  double angleY,
  D2D_POINT_2F center,
  Pointer<D2D_MATRIX_3X2_F> matrix,
)>('D2D1MakeSkewMatrix');

void D2D1SinCos(
  double angle,
  Pointer<Float> s,
  Pointer<Float> c,
) =>
    _D2D1SinCos(
      angle,
      s,
      c,
    );

late final _D2D1SinCos = _d2d1.lookupFunction<
    Void Function(
  Float angle,
  Pointer<Float> s,
  Pointer<Float> c,
),
    void Function(
  double angle,
  Pointer<Float> s,
  Pointer<Float> c,
)>('D2D1SinCos');

double D2D1Tan(
  double angle,
) =>
    _D2D1Tan(
      angle,
    );

late final _D2D1Tan = _d2d1.lookupFunction<
    Float Function(
  Float angle,
),
    double Function(
  double angle,
)>('D2D1Tan');

double D2D1Vec3Length(
  double x,
  double y,
  double z,
) =>
    _D2D1Vec3Length(
      x,
      y,
      z,
    );

late final _D2D1Vec3Length = _d2d1.lookupFunction<
    Float Function(
  Float x,
  Float y,
  Float z,
),
    double Function(
  double x,
  double y,
  double z,
)>('D2D1Vec3Length');
