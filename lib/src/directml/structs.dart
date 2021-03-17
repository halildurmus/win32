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

class DML_BUFFER_TENSOR_DESC extends Struct {
  @Uint32() external int DataType;
  @Uint32() external int Flags;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> Sizes;
  external Pointer<Uint32> Strides;
  @Uint64() external int TotalTensorSizeInBytes;
  @Uint32() external int GuaranteedBaseOffsetAlignment;
}

class DML_TENSOR_DESC extends Struct {
  @Uint32() external int Type;
  external Pointer Desc;
}

class DML_SCALE_BIAS extends Struct {
  @Float() external double Scale;
  @Float() external double Bias;
}

class DML_SIZE_2D extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
}

class DML_OPERATOR_DESC extends Struct {
  @Uint32() external int Type;
  external Pointer Desc;
}

class DML_ELEMENT_WISE_IDENTITY_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_ABS_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_ACOS_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_ADD_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_ADD1_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_OPERATOR_DESC> FusedActivation;
}

class DML_ELEMENT_WISE_ASIN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_ATAN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_CEIL_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_CLIP_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
  @Float() external double Min;
  @Float() external double Max;
}

class DML_ELEMENT_WISE_COS_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_DIVIDE_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_EXP_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_FLOOR_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_LOG_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_LOGICAL_AND_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_LOGICAL_EQUALS_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_LOGICAL_GREATER_THAN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_LOGICAL_LESS_THAN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_LOGICAL_NOT_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_LOGICAL_OR_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_LOGICAL_XOR_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_MAX_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_MEAN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_MIN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_MULTIPLY_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_POW_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> ExponentTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_CONSTANT_POW_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
  @Float() external double Exponent;
}

class DML_ELEMENT_WISE_RECIP_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_SIN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_SQRT_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_SUBTRACT_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_TAN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_THRESHOLD_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
  @Float() external double Min;
}

class DML_ELEMENT_WISE_QUANTIZE_LINEAR_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> ScaleTensor;
  external Pointer<DML_TENSOR_DESC> ZeroPointTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_DEQUANTIZE_LINEAR_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> ScaleTensor;
  external Pointer<DML_TENSOR_DESC> ZeroPointTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_ELU_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
}

class DML_ACTIVATION_HARDMAX_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_HARD_SIGMOID_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
  @Float() external double Beta;
}

class DML_ACTIVATION_IDENTITY_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_LEAKY_RELU_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
}

class DML_ACTIVATION_LINEAR_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
  @Float() external double Beta;
}

class DML_ACTIVATION_LOG_SOFTMAX_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_PARAMETERIZED_RELU_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> SlopeTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_PARAMETRIC_SOFTPLUS_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
  @Float() external double Beta;
}

class DML_ACTIVATION_RELU_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_SCALED_ELU_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
  @Float() external double Gamma;
}

class DML_ACTIVATION_SCALED_TANH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
  @Float() external double Beta;
}

class DML_ACTIVATION_SIGMOID_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_SOFTMAX_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_SOFTPLUS_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Steepness;
}

class DML_ACTIVATION_SOFTSIGN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_TANH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_THRESHOLDED_RELU_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Alpha;
}

class DML_CONVOLUTION_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> FilterTensor;
  external Pointer<DML_TENSOR_DESC> BiasTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int Mode;
  @Uint32() external int Direction;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> Strides;
  external Pointer<Uint32> Dilations;
  external Pointer<Uint32> StartPadding;
  external Pointer<Uint32> EndPadding;
  external Pointer<Uint32> OutputPadding;
  @Uint32() external int GroupCount;
  external Pointer<DML_OPERATOR_DESC> FusedActivation;
}

class DML_GEMM_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> CTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int TransA;
  @Uint32() external int TransB;
  @Float() external double Alpha;
  @Float() external double Beta;
  external Pointer<DML_OPERATOR_DESC> FusedActivation;
}

class DML_REDUCE_OPERATOR_DESC extends Struct {
  @Uint32() external int Function;
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int AxisCount;
  external Pointer<Uint32> Axes;
}

class DML_AVERAGE_POOLING_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> Strides;
  external Pointer<Uint32> WindowSize;
  external Pointer<Uint32> StartPadding;
  external Pointer<Uint32> EndPadding;
  @Int32() external int IncludePadding;
}

class DML_LP_POOLING_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> Strides;
  external Pointer<Uint32> WindowSize;
  external Pointer<Uint32> StartPadding;
  external Pointer<Uint32> EndPadding;
  @Uint32() external int P;
}

class DML_MAX_POOLING_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> Strides;
  external Pointer<Uint32> WindowSize;
  external Pointer<Uint32> StartPadding;
  external Pointer<Uint32> EndPadding;
}

class DML_MAX_POOLING1_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_TENSOR_DESC> OutputIndicesTensor;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> Strides;
  external Pointer<Uint32> WindowSize;
  external Pointer<Uint32> StartPadding;
  external Pointer<Uint32> EndPadding;
}

class DML_ROI_POOLING_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> ROITensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double SpatialScale;
  external DML_SIZE_2D PooledSize;
}

class DML_SLICE_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> Offsets;
  external Pointer<Uint32> Sizes;
  external Pointer<Uint32> Strides;
}

class DML_CAST_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_SPLIT_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  @Uint32() external int OutputCount;
  external Pointer<DML_TENSOR_DESC> OutputTensors;
  @Uint32() external int Axis;
}

class DML_JOIN_OPERATOR_DESC extends Struct {
  @Uint32() external int InputCount;
  external Pointer<DML_TENSOR_DESC> InputTensors;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int Axis;
}

class DML_PADDING_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int PaddingMode;
  @Float() external double PaddingValue;
  @Uint32() external int DimensionCount;
  external Pointer<Uint32> StartPadding;
  external Pointer<Uint32> EndPadding;
}

class DML_VALUE_SCALE_2D_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Scale;
  @Uint32() external int ChannelCount;
  external Pointer<Float> Bias;
}

class DML_UPSAMPLE_2D_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external DML_SIZE_2D ScaleSize;
  @Uint32() external int InterpolationMode;
}

class DML_GATHER_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> IndicesTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int Axis;
  @Uint32() external int IndexDimensions;
}

class DML_SPACE_TO_DEPTH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int BlockSize;
}

class DML_DEPTH_TO_SPACE_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int BlockSize;
}

class DML_TILE_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int RepeatsCount;
  external Pointer<Uint32> Repeats;
}

class DML_TOP_K_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputValueTensor;
  external Pointer<DML_TENSOR_DESC> OutputIndexTensor;
  @Uint32() external int Axis;
  @Uint32() external int K;
}

class DML_BATCH_NORMALIZATION_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> MeanTensor;
  external Pointer<DML_TENSOR_DESC> VarianceTensor;
  external Pointer<DML_TENSOR_DESC> ScaleTensor;
  external Pointer<DML_TENSOR_DESC> BiasTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Int32() external int Spatial;
  @Float() external double Epsilon;
  external Pointer<DML_OPERATOR_DESC> FusedActivation;
}

class DML_MEAN_VARIANCE_NORMALIZATION_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> ScaleTensor;
  external Pointer<DML_TENSOR_DESC> BiasTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Int32() external int CrossChannel;
  @Int32() external int NormalizeVariance;
  @Float() external double Epsilon;
  external Pointer<DML_OPERATOR_DESC> FusedActivation;
}

class DML_LOCAL_RESPONSE_NORMALIZATION_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Int32() external int CrossChannel;
  @Uint32() external int LocalSize;
  @Float() external double Alpha;
  @Float() external double Beta;
  @Float() external double Bias;
}

class DML_LP_NORMALIZATION_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int Axis;
  @Float() external double Epsilon;
  @Uint32() external int P;
}

class DML_RNN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> WeightTensor;
  external Pointer<DML_TENSOR_DESC> RecurrenceTensor;
  external Pointer<DML_TENSOR_DESC> BiasTensor;
  external Pointer<DML_TENSOR_DESC> HiddenInitTensor;
  external Pointer<DML_TENSOR_DESC> SequenceLengthsTensor;
  external Pointer<DML_TENSOR_DESC> OutputSequenceTensor;
  external Pointer<DML_TENSOR_DESC> OutputSingleTensor;
  @Uint32() external int ActivationDescCount;
  external Pointer<DML_OPERATOR_DESC> ActivationDescs;
  @Uint32() external int Direction;
}

class DML_LSTM_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> WeightTensor;
  external Pointer<DML_TENSOR_DESC> RecurrenceTensor;
  external Pointer<DML_TENSOR_DESC> BiasTensor;
  external Pointer<DML_TENSOR_DESC> HiddenInitTensor;
  external Pointer<DML_TENSOR_DESC> CellMemInitTensor;
  external Pointer<DML_TENSOR_DESC> SequenceLengthsTensor;
  external Pointer<DML_TENSOR_DESC> PeepholeTensor;
  external Pointer<DML_TENSOR_DESC> OutputSequenceTensor;
  external Pointer<DML_TENSOR_DESC> OutputSingleTensor;
  external Pointer<DML_TENSOR_DESC> OutputCellSingleTensor;
  @Uint32() external int ActivationDescCount;
  external Pointer<DML_OPERATOR_DESC> ActivationDescs;
  @Uint32() external int Direction;
  @Float() external double ClipThreshold;
  @Int32() external int UseClipThreshold;
  @Int32() external int CoupleInputForget;
}

class DML_GRU_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> WeightTensor;
  external Pointer<DML_TENSOR_DESC> RecurrenceTensor;
  external Pointer<DML_TENSOR_DESC> BiasTensor;
  external Pointer<DML_TENSOR_DESC> HiddenInitTensor;
  external Pointer<DML_TENSOR_DESC> SequenceLengthsTensor;
  external Pointer<DML_TENSOR_DESC> OutputSequenceTensor;
  external Pointer<DML_TENSOR_DESC> OutputSingleTensor;
  @Uint32() external int ActivationDescCount;
  external Pointer<DML_OPERATOR_DESC> ActivationDescs;
  @Uint32() external int Direction;
  @Int32() external int LinearBeforeReset;
}

class DML_ELEMENT_WISE_SIGN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_IS_NAN_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ELEMENT_WISE_ERF_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_SINH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_COSH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_TANH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_ASINH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_ACOSH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_ATANH_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  external Pointer<DML_SCALE_BIAS> ScaleBias;
}

class DML_ELEMENT_WISE_IF_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> ConditionTensor;
  external Pointer<DML_TENSOR_DESC> ATensor;
  external Pointer<DML_TENSOR_DESC> BTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_ACTIVATION_SHRINK_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Float() external double Bias;
  @Float() external double Threshold;
}

class DML_MAX_UNPOOLING_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> IndicesTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
}

class DML_DIAGONAL_MATRIX_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Int32() external int Offset;
  @Float() external double Value;
}

class DML_SCATTER_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> IndicesTensor;
  external Pointer<DML_TENSOR_DESC> UpdatesTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int Axis;
}

class DML_ONE_HOT_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> IndicesTensor;
  external Pointer<DML_TENSOR_DESC> ValuesTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int Axis;
}

class DML_RESAMPLE_OPERATOR_DESC extends Struct {
  external Pointer<DML_TENSOR_DESC> InputTensor;
  external Pointer<DML_TENSOR_DESC> OutputTensor;
  @Uint32() external int InterpolationMode;
  @Uint32() external int ScaleCount;
  external Pointer<Float> Scales;
}

class DML_FEATURE_QUERY_TENSOR_DATA_TYPE_SUPPORT extends Struct {
  @Uint32() external int DataType;
}

class DML_FEATURE_DATA_TENSOR_DATA_TYPE_SUPPORT extends Struct {
  @Int32() external int IsSupported;
}

class DML_FEATURE_QUERY_FEATURE_LEVELS extends Struct {
  @Uint32() external int RequestedFeatureLevelCount;
  external Pointer<Uint32> RequestedFeatureLevels;
}

class DML_FEATURE_DATA_FEATURE_LEVELS extends Struct {
  @Uint32() external int MaxSupportedFeatureLevel;
}

class DML_BINDING_TABLE_DESC extends Struct {
  external IDMLDispatchable Dispatchable;
  external D3D12_CPU_DESCRIPTOR_HANDLE CPUDescriptorHandle;
  external D3D12_GPU_DESCRIPTOR_HANDLE GPUDescriptorHandle;
  @Uint32() external int SizeInDescriptors;
}

class DML_BINDING_PROPERTIES extends Struct {
  @Uint32() external int RequiredDescriptorCount;
  @Uint64() external int TemporaryResourceSize;
  @Uint64() external int PersistentResourceSize;
}

class DML_BINDING_DESC extends Struct {
  @Uint32() external int Type;
  external Pointer Desc;
}

class DML_BUFFER_BINDING extends Struct {
  external ID3D12Resource Buffer;
  @Uint64() external int Offset;
  @Uint64() external int SizeInBytes;
}

class DML_BUFFER_ARRAY_BINDING extends Struct {
  @Uint32() external int BindingCount;
  external Pointer<DML_BUFFER_BINDING> Bindings;
}

