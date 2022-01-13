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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/common/structs.g.dart';
import '../../media/mediafoundation/ID3D12VideoMotionVectorHeap.dart';
import '../../graphics/direct3d12/ID3D12Resource.dart';
import '../../media/mediafoundation/ID3D12VideoDecoderHeap.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../media/mediafoundation/callbacks.g.dart';
import '../../media/mediafoundation/IMFNetCredential.dart';
import '../../media/mediafoundation/IMFPMediaPlayer.dart';
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../media/mediafoundation/IMFPMediaItem.dart';
import '../../media/mediafoundation/IMFMediaEvent.dart';
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/IMFCollection.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../media/mediafoundation/IMFMediaType.dart';

/// {@category Struct}
@Packed(1)
class ASF_FLAT_PICTURE extends Struct {
  @Uint8()
  external int bPictureType;

  @Uint32()
  external int dwDataLen;
}

/// {@category Struct}
@Packed(1)
class ASF_FLAT_SYNCHRONISED_LYRICS extends Struct {
  @Uint8()
  external int bTimeStampFormat;

  @Uint8()
  external int bContentType;

  @Uint32()
  external int dwLyricsLen;
}

/// {@category Struct}
class ASF_INDEX_DESCRIPTOR extends Struct {
  external ASF_INDEX_IDENTIFIER Identifier;

  @Uint16()
  external int cPerEntryBytes;

  @Array(32)
  external Array<Uint16> _szDescription;

  String get szDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDescription(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szDescription[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwInterval;
}

/// {@category Struct}
class ASF_INDEX_IDENTIFIER extends Struct {
  external GUID guidIndexType;

  @Uint16()
  external int wStreamNumber;
}

/// {@category Struct}
class ASF_MUX_STATISTICS extends Struct {
  @Uint32()
  external int cFramesWritten;

  @Uint32()
  external int cFramesDropped;
}

/// {@category Struct}
class AecQualityMetrics_Struct extends Struct {
  @Int64()
  external int i64Timestamp;

  @Uint8()
  external int ConvergenceFlag;

  @Uint8()
  external int MicClippedFlag;

  @Uint8()
  external int MicSilenceFlag;

  @Uint8()
  external int PstvFeadbackFlag;

  @Uint8()
  external int SpkClippedFlag;

  @Uint8()
  external int SpkMuteFlag;

  @Uint8()
  external int GlitchFlag;

  @Uint8()
  external int DoubleTalkFlag;

  @Uint32()
  external int uGlitchCount;

  @Uint32()
  external int uMicClipCount;

  @Float()
  external double fDuration;

  @Float()
  external double fTSVariance;

  @Float()
  external double fTSDriftRate;

  @Float()
  external double fVoiceLevel;

  @Float()
  external double fNoiseLevel;

  @Float()
  external double fERLE;

  @Float()
  external double fAvgERLE;

  @Uint32()
  external int dwReserved;
}

/// {@category Struct}
class CodecAPIEventData extends Struct {
  external GUID guid;

  @Uint32()
  external int dataLength;

  @Array(3)
  external Array<Uint32> reserved;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ARCHITECTURE extends Struct {
  @Int32()
  external int IOCoherent;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODER_HEAP_SIZE extends Struct {
  external D3D12_VIDEO_DECODER_HEAP_DESC VideoDecoderHeapDesc;

  @Uint64()
  external int MemoryPoolL0Size;

  @Uint64()
  external int MemoryPoolL1Size;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODER_HEAP_SIZE1 extends Struct {
  external D3D12_VIDEO_DECODER_HEAP_DESC VideoDecoderHeapDesc;

  @Int32()
  external int Protected;

  @Uint64()
  external int MemoryPoolL0Size;

  @Uint64()
  external int MemoryPoolL1Size;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_CONVERSION_SUPPORT extends Struct {
  @Uint32()
  external int NodeIndex;

  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;

  external D3D12_VIDEO_SAMPLE DecodeSample;

  external D3D12_VIDEO_FORMAT OutputFormat;

  external DXGI_RATIONAL FrameRate;

  @Uint32()
  external int BitRate;

  @Uint32()
  external int SupportFlags;

  external D3D12_VIDEO_SCALE_SUPPORT ScaleSupport;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_FORMATS extends Struct {
  @Uint32()
  external int NodeIndex;

  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;

  @Uint32()
  external int FormatCount;

  external Pointer<Uint32> pOutputFormats;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_FORMAT_COUNT extends Struct {
  @Uint32()
  external int NodeIndex;

  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;

  @Uint32()
  external int FormatCount;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_HISTOGRAM extends Struct {
  @Uint32()
  external int NodeIndex;

  external GUID DecodeProfile;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int DecodeFormat;

  @Uint32()
  external int Components;

  @Uint32()
  external int BinCount;

  @Uint32()
  external int CounterBitDepth;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_PROFILES extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int ProfileCount;

  external Pointer<GUID> pProfiles;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_PROFILE_COUNT extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int ProfileCount;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_PROTECTED_RESOURCES extends Struct {
  @Uint32()
  external int NodeIndex;

  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;

  @Uint32()
  external int SupportFlags;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_DECODE_SUPPORT extends Struct {
  @Uint32()
  external int NodeIndex;

  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int DecodeFormat;

  external DXGI_RATIONAL FrameRate;

  @Uint32()
  external int BitRate;

  @Uint32()
  external int SupportFlags;

  @Uint32()
  external int ConfigurationFlags;

  @Int32()
  external int DecodeTier;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_CODEC extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  @Int32()
  external int IsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT
    extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;

  @Int32()
  external int IsSupported;

  external D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT CodecSupportLimits;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT
    extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;

  @Int32()
  external int IsSupported;

  external D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT PictureSupport;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_FRAME_SUBREGION_LAYOUT_MODE
    extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;

  external D3D12_VIDEO_ENCODER_LEVEL_SETTING Level;

  @Int32()
  external int SubregionMode;

  @Int32()
  external int IsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_HEAP_SIZE extends Struct {
  external D3D12_VIDEO_ENCODER_HEAP_DESC HeapDesc;

  @Int32()
  external int IsSupported;

  @Uint64()
  external int MemoryPoolL0Size;

  @Uint64()
  external int MemoryPoolL1Size;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_INPUT_FORMAT extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;

  @Uint32()
  external int Format;

  @Int32()
  external int IsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_INTRA_REFRESH_MODE extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;

  external D3D12_VIDEO_ENCODER_LEVEL_SETTING Level;

  @Int32()
  external int IntraRefreshMode;

  @Int32()
  external int IsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_OUTPUT_RESOLUTION extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  @Uint32()
  external int ResolutionRatiosCount;

  @Int32()
  external int IsSupported;

  external D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC MinResolutionSupported;

  external D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC MaxResolutionSupported;

  @Uint32()
  external int ResolutionWidthMultipleRequirement;

  @Uint32()
  external int ResolutionHeightMultipleRequirement;

  external Pointer<D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_RATIO_DESC>
      pResolutionRatios;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_OUTPUT_RESOLUTION_RATIOS_COUNT
    extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  @Uint32()
  external int ResolutionRatiosCount;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_PROFILE_LEVEL extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;

  @Int32()
  external int IsSupported;

  external D3D12_VIDEO_ENCODER_LEVEL_SETTING MinSupportedLevel;

  external D3D12_VIDEO_ENCODER_LEVEL_SETTING MaxSupportedLevel;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_RATE_CONTROL_MODE extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  @Int32()
  external int RateControlMode;

  @Int32()
  external int IsSupported;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_RESOLUTION_SUPPORT_LIMITS
    extends Struct {
  @Uint32()
  external int MaxSubregionsNumber;

  @Uint32()
  external int MaxIntraRefreshFrameDuration;

  @Uint32()
  external int SubregionBlockPixelsSize;

  @Uint32()
  external int QPMapRegionPixelsSize;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_RESOURCE_REQUIREMENTS extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC Profile;

  @Uint32()
  external int InputFormat;

  external D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC PictureTargetResolution;

  @Int32()
  external int IsSupported;

  @Uint32()
  external int CompressedBitstreamBufferAccessAlignment;

  @Uint32()
  external int EncoderMetadataBufferAccessAlignment;

  @Uint32()
  external int MaxEncoderOutputMetadataBufferSize;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_ENCODER_SUPPORT extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int Codec;

  @Uint32()
  external int InputFormat;

  external D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION CodecConfiguration;

  external D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE CodecGopSequence;

  external D3D12_VIDEO_ENCODER_RATE_CONTROL RateControl;

  @Int32()
  external int IntraRefresh;

  @Int32()
  external int SubregionFrameEncoding;

  @Uint32()
  external int ResolutionsListCount;

  external Pointer<D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC> pResolutionList;

  @Uint32()
  external int MaxReferenceFramesInDPB;

  @Uint32()
  external int ValidationFlags;

  @Uint32()
  external int SupportFlags;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC SuggestedProfile;

  external D3D12_VIDEO_ENCODER_LEVEL_SETTING SuggestedLevel;

  external Pointer<D3D12_FEATURE_DATA_VIDEO_ENCODER_RESOLUTION_SUPPORT_LIMITS>
      pResolutionDependentSupport;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMANDS extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int CommandCount;

  external Pointer<D3D12_VIDEO_EXTENSION_COMMAND_INFO> pCommandInfos;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_COUNT extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int CommandCount;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_PARAMETERS extends Struct {
  external GUID CommandId;

  @Int32()
  external int Stage;

  @Uint32()
  external int ParameterCount;

  external Pointer<D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_INFO>
      pParameterInfos;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_PARAMETER_COUNT
    extends Struct {
  external GUID CommandId;

  @Int32()
  external int Stage;

  @Uint32()
  external int ParameterCount;

  @Uint32()
  external int ParameterPacking;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_SIZE extends Struct {
  @Uint32()
  external int NodeIndex;

  external GUID CommandId;

  external Pointer pCreationParameters;

  @IntPtr()
  external int CreationParametersSizeInBytes;

  @Uint64()
  external int MemoryPoolL0Size;

  @Uint64()
  external int MemoryPoolL1Size;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_SUPPORT extends Struct {
  @Uint32()
  external int NodeIndex;

  external GUID CommandId;

  external Pointer pInputData;

  @IntPtr()
  external int InputDataSizeInBytes;

  external Pointer pOutputData;

  @IntPtr()
  external int OutputDataSizeInBytes;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_FEATURE_AREA_SUPPORT extends Struct {
  @Uint32()
  external int NodeIndex;

  @Int32()
  external int VideoDecodeSupport;

  @Int32()
  external int VideoProcessSupport;

  @Int32()
  external int VideoEncodeSupport;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int InputFormat;

  @Uint32()
  external int BlockSizeFlags;

  @Uint32()
  external int PrecisionFlags;

  external D3D12_VIDEO_SIZE_RANGE SizeRange;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR_PROTECTED_RESOURCES
    extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int SupportFlags;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR_SIZE extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int InputFormat;

  @Int32()
  external int BlockSize;

  @Int32()
  external int Precision;

  external D3D12_VIDEO_SIZE_RANGE SizeRange;

  @Int32()
  external int Protected;

  @Uint64()
  external int MotionVectorHeapMemoryPoolL0Size;

  @Uint64()
  external int MotionVectorHeapMemoryPoolL1Size;

  @Uint64()
  external int MotionEstimatorMemoryPoolL0Size;

  @Uint64()
  external int MotionEstimatorMemoryPoolL1Size;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_PROCESSOR_SIZE extends Struct {
  @Uint32()
  external int NodeMask;

  external Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc;

  @Uint32()
  external int NumInputStreamDescs;

  external Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs;

  @Uint64()
  external int MemoryPoolL0Size;

  @Uint64()
  external int MemoryPoolL1Size;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_PROCESSOR_SIZE1 extends Struct {
  @Uint32()
  external int NodeMask;

  external Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc;

  @Uint32()
  external int NumInputStreamDescs;

  external Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs;

  @Int32()
  external int Protected;

  @Uint64()
  external int MemoryPoolL0Size;

  @Uint64()
  external int MemoryPoolL1Size;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_PROCESS_MAX_INPUT_STREAMS extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int MaxInputStreams;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_PROCESS_PROTECTED_RESOURCES extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int SupportFlags;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_PROCESS_REFERENCE_INFO extends Struct {
  @Uint32()
  external int NodeIndex;

  @Uint32()
  external int DeinterlaceMode;

  @Uint32()
  external int Filters;

  @Uint32()
  external int FeatureSupport;

  external DXGI_RATIONAL InputFrameRate;

  external DXGI_RATIONAL OutputFrameRate;

  @Int32()
  external int EnableAutoProcessing;

  @Uint32()
  external int PastFrames;

  @Uint32()
  external int FutureFrames;
}

/// {@category Struct}
class D3D12_FEATURE_DATA_VIDEO_PROCESS_SUPPORT extends Struct {
  @Uint32()
  external int NodeIndex;

  external D3D12_VIDEO_SAMPLE InputSample;

  @Int32()
  external int InputFieldType;

  @Int32()
  external int InputStereoFormat;

  external DXGI_RATIONAL InputFrameRate;

  external D3D12_VIDEO_FORMAT OutputFormat;

  @Int32()
  external int OutputStereoFormat;

  external DXGI_RATIONAL OutputFrameRate;

  @Uint32()
  external int SupportFlags;

  external D3D12_VIDEO_SCALE_SUPPORT ScaleSupport;

  @Uint32()
  external int FeatureSupport;

  @Uint32()
  external int DeinterlaceSupport;

  @Uint32()
  external int AutoProcessingSupport;

  @Uint32()
  external int FilterSupport;

  @Array(32)
  external Array<D3D12_VIDEO_PROCESS_FILTER_RANGE> FilterRangeSupport;
}

/// {@category Struct}
class D3D12_QUERY_DATA_VIDEO_DECODE_STATISTICS extends Struct {
  @Uint64()
  external int Status;

  @Uint64()
  external int NumMacroblocksAffected;

  external DXGI_RATIONAL FrameRate;

  @Uint32()
  external int BitRate;
}

/// {@category Struct}
class D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_INPUT extends Struct {
  external Pointer<COMObject> pMotionVectorHeap;

  @Uint32()
  external int PixelWidth;

  @Uint32()
  external int PixelHeight;
}

/// {@category Struct}
class D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_OUTPUT extends Struct {
  external Pointer<COMObject> pMotionVectorTexture2D;

  external D3D12_RESOURCE_COORDINATE MotionVectorCoordinate;
}

/// {@category Struct}
class D3D12_RESOURCE_COORDINATE extends Struct {
  @Uint64()
  external int X;

  @Uint32()
  external int Y;

  @Uint32()
  external int Z;

  @Uint32()
  external int SubresourceIndex;
}

/// {@category Struct}
class D3D12_VIDEO_DECODER_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
}

/// {@category Struct}
class D3D12_VIDEO_DECODER_HEAP_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;

  @Uint32()
  external int DecodeWidth;

  @Uint32()
  external int DecodeHeight;

  @Uint32()
  external int Format;

  external DXGI_RATIONAL FrameRate;

  @Uint32()
  external int BitRate;

  @Uint32()
  external int MaxDecodePictureBufferCount;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_COMPRESSED_BITSTREAM extends Struct {
  external Pointer<COMObject> pBuffer;

  @Uint64()
  external int Offset;

  @Uint64()
  external int Size;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_CONFIGURATION extends Struct {
  external GUID DecodeProfile;

  @Int32()
  external int BitstreamEncryption;

  @Int32()
  external int InterlaceType;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS extends Struct {
  @Int32()
  external int Enable;

  external Pointer<COMObject> pReferenceTexture2D;

  @Uint32()
  external int ReferenceSubresource;

  @Int32()
  external int OutputColorSpace;

  @Int32()
  external int DecodeColorSpace;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS1 extends Struct {
  @Int32()
  external int Enable;

  external Pointer<COMObject> pReferenceTexture2D;

  @Uint32()
  external int ReferenceSubresource;

  @Int32()
  external int OutputColorSpace;

  @Int32()
  external int DecodeColorSpace;

  @Uint32()
  external int OutputWidth;

  @Uint32()
  external int OutputHeight;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_FRAME_ARGUMENT extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Size;

  external Pointer pData;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS extends Struct {
  @Uint32()
  external int NumFrameArguments;

  @Array(10)
  external Array<D3D12_VIDEO_DECODE_FRAME_ARGUMENT> FrameArguments;

  external D3D12_VIDEO_DECODE_REFERENCE_FRAMES ReferenceFrames;

  external D3D12_VIDEO_DECODE_COMPRESSED_BITSTREAM CompressedBitstream;

  external Pointer<COMObject> pHeap;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_OUTPUT_HISTOGRAM extends Struct {
  @Uint64()
  external int Offset;

  external Pointer<COMObject> pBuffer;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS extends Struct {
  external Pointer<COMObject> pOutputTexture2D;

  @Uint32()
  external int OutputSubresource;

  external D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS ConversionArguments;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1 extends Struct {
  external Pointer<COMObject> pOutputTexture2D;

  @Uint32()
  external int OutputSubresource;

  external D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS1 ConversionArguments;

  @Array(4)
  external Array<D3D12_VIDEO_DECODE_OUTPUT_HISTOGRAM> Histograms;
}

/// {@category Struct}
class D3D12_VIDEO_DECODE_REFERENCE_FRAMES extends Struct {
  @Uint32()
  external int NumTexture2Ds;

  external Pointer<Pointer<COMObject>> ppTexture2Ds;

  external Pointer<Uint32> pSubresources;

  external Pointer<Pointer<COMObject>> ppHeaps;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION__Anonymous_e__Union
    extends Union {
  external Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264> pH264Config;

  external Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC> pHEVCConfig;
}

extension D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_Extension
    on D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION {
  Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264> get pH264Config =>
      this.Anonymous.pH264Config;
  set pH264Config(
          Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264> value) =>
      this.Anonymous.pH264Config = value;

  Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC> get pHEVCConfig =>
      this.Anonymous.pHEVCConfig;
  set pHEVCConfig(
          Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC> value) =>
      this.Anonymous.pHEVCConfig = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_H264 extends Struct {
  @Uint32()
  external int ConfigurationFlags;

  @Int32()
  external int DirectModeConfig;

  @Int32()
  external int DisableDeblockingFilterConfig;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_HEVC extends Struct {
  @Uint32()
  external int ConfigurationFlags;

  @Int32()
  external int MinLumaCodingUnitSize;

  @Int32()
  external int MaxLumaCodingUnitSize;

  @Int32()
  external int MinLumaTransformUnitSize;

  @Int32()
  external int MaxLumaTransformUnitSize;

  @Uint8()
  external int max_transform_hierarchy_depth_inter;

  @Uint8()
  external int max_transform_hierarchy_depth_intra;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT__Anonymous_e__Union
    extends Union {
  external Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264>
      pH264Support;

  external Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC>
      pHEVCSupport;
}

extension D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_Extension
    on D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT {
  Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264>
      get pH264Support => this.Anonymous.pH264Support;
  set pH264Support(
          Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264>
              value) =>
      this.Anonymous.pH264Support = value;

  Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC>
      get pHEVCSupport => this.Anonymous.pHEVCSupport;
  set pHEVCSupport(
          Pointer<D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC>
              value) =>
      this.Anonymous.pHEVCSupport = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_H264 extends Struct {
  @Uint32()
  external int SupportFlags;

  @Uint32()
  external int DisableDeblockingFilterSupportedModes;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION_SUPPORT_HEVC extends Struct {
  @Uint32()
  external int SupportFlags;

  @Int32()
  external int MinLumaCodingUnitSize;

  @Int32()
  external int MaxLumaCodingUnitSize;

  @Int32()
  external int MinLumaTransformUnitSize;

  @Int32()
  external int MaxLumaTransformUnitSize;

  @Uint8()
  external int max_transform_hierarchy_depth_inter;

  @Uint8()
  external int max_transform_hierarchy_depth_intra;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT__Anonymous_e__Union
    extends Union {
  external Pointer<D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_H264>
      pH264Support;

  external Pointer<D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_HEVC>
      pHEVCSupport;
}

extension D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_Extension
    on D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT {
  Pointer<D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_H264>
      get pH264Support => this.Anonymous.pH264Support;
  set pH264Support(
          Pointer<D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_H264>
              value) =>
      this.Anonymous.pH264Support = value;

  Pointer<D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_HEVC>
      get pHEVCSupport => this.Anonymous.pHEVCSupport;
  set pHEVCSupport(
          Pointer<D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_HEVC>
              value) =>
      this.Anonymous.pHEVCSupport = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_H264 extends Struct {
  @Uint32()
  external int MaxL0ReferencesForP;

  @Uint32()
  external int MaxL0ReferencesForB;

  @Uint32()
  external int MaxL1ReferencesForB;

  @Uint32()
  external int MaxLongTermReferences;

  @Uint32()
  external int MaxDPBCapacity;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_CODEC_PICTURE_CONTROL_SUPPORT_HEVC extends Struct {
  @Uint32()
  external int MaxL0ReferencesForP;

  @Uint32()
  external int MaxL0ReferencesForB;

  @Uint32()
  external int MaxL1ReferencesForB;

  @Uint32()
  external int MaxLongTermReferences;

  @Uint32()
  external int MaxDPBCapacity;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_COMPRESSED_BITSTREAM extends Struct {
  external Pointer<COMObject> pBuffer;

  @Uint64()
  external int FrameStartOffset;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  @Uint32()
  external int Flags;

  @Int32()
  external int EncodeCodec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC EncodeProfile;

  @Uint32()
  external int InputFormat;

  external D3D12_VIDEO_ENCODER_CODEC_CONFIGURATION CodecConfiguration;

  @Int32()
  external int MaxMotionEstimationPrecision;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_ENCODEFRAME_INPUT_ARGUMENTS extends Struct {
  external D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_DESC SequenceControlDesc;

  external D3D12_VIDEO_ENCODER_PICTURE_CONTROL_DESC PictureControlDesc;

  external Pointer<COMObject> pInputFrame;

  @Uint32()
  external int InputFrameSubresource;

  @Uint32()
  external int CurrentFrameBitstreamMetadataSize;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_ENCODEFRAME_OUTPUT_ARGUMENTS extends Struct {
  external D3D12_VIDEO_ENCODER_COMPRESSED_BITSTREAM Bitstream;

  external D3D12_VIDEO_ENCODER_RECONSTRUCTED_PICTURE ReconstructedPicture;

  external D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER
      EncoderOutputMetadata;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER extends Struct {
  external Pointer<COMObject> pBuffer;

  @Uint64()
  external int Offset;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_FRAME_SUBREGION_METADATA extends Struct {
  @Uint64()
  external int bSize;

  @Uint64()
  external int bStartOffset;

  @Uint64()
  external int bHeaderSize;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_HEAP_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  @Uint32()
  external int Flags;

  @Int32()
  external int EncodeCodec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC EncodeProfile;

  external D3D12_VIDEO_ENCODER_LEVEL_SETTING EncodeLevel;

  @Uint32()
  external int ResolutionsListCount;

  external Pointer<D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC> pResolutionList;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_INTRA_REFRESH extends Struct {
  @Int32()
  external int Mode;

  @Uint32()
  external int IntraRefreshDuration;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_LEVEL_SETTING extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_LEVEL_SETTING__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_LEVEL_SETTING__Anonymous_e__Union extends Union {
  external Pointer<Int32> pH264LevelSetting;

  external Pointer<D3D12_VIDEO_ENCODER_LEVEL_TIER_CONSTRAINTS_HEVC>
      pHEVCLevelSetting;
}

extension D3D12_VIDEO_ENCODER_LEVEL_SETTING_Extension
    on D3D12_VIDEO_ENCODER_LEVEL_SETTING {
  Pointer<Int32> get pH264LevelSetting => this.Anonymous.pH264LevelSetting;
  set pH264LevelSetting(Pointer<Int32> value) =>
      this.Anonymous.pH264LevelSetting = value;

  Pointer<D3D12_VIDEO_ENCODER_LEVEL_TIER_CONSTRAINTS_HEVC>
      get pHEVCLevelSetting => this.Anonymous.pHEVCLevelSetting;
  set pHEVCLevelSetting(
          Pointer<D3D12_VIDEO_ENCODER_LEVEL_TIER_CONSTRAINTS_HEVC> value) =>
      this.Anonymous.pHEVCLevelSetting = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_LEVEL_TIER_CONSTRAINTS_HEVC extends Struct {
  @Int32()
  external int Level;

  @Int32()
  external int Tier;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_OUTPUT_METADATA extends Struct {
  @Uint64()
  external int EncodeErrorFlags;

  external D3D12_VIDEO_ENCODER_OUTPUT_METADATA_STATISTICS EncodeStats;

  @Uint64()
  external int EncodedBitstreamWrittenBytesCount;

  @Uint64()
  external int WrittenSubregionsCount;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_OUTPUT_METADATA_STATISTICS extends Struct {
  @Uint64()
  external int AverageQP;

  @Uint64()
  external int IntraCodingUnitsCount;

  @Uint64()
  external int InterCodingUnitsCount;

  @Uint64()
  external int SkipCodingUnitsCount;

  @Uint64()
  external int AverageMotionEstimationXDirection;

  @Uint64()
  external int AverageMotionEstimationYDirection;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA__Anonymous_e__Union
    extends Union {
  external Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264>
      pH264PicData;

  external Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC>
      pHEVCPicData;
}

extension D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_Extension
    on D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA {
  Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264>
      get pH264PicData => this.Anonymous.pH264PicData;
  set pH264PicData(
          Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264> value) =>
      this.Anonymous.pH264PicData = value;

  Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC>
      get pHEVCPicData => this.Anonymous.pHEVCPicData;
  set pHEVCPicData(
          Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC> value) =>
      this.Anonymous.pHEVCPicData = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264 extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int FrameType;

  @Uint32()
  external int pic_parameter_set_id;

  @Uint32()
  external int idr_pic_id;

  @Uint32()
  external int PictureOrderCountNumber;

  @Uint32()
  external int FrameDecodingOrderNumber;

  @Uint32()
  external int TemporalLayerIndex;

  @Uint32()
  external int List0ReferenceFramesCount;

  external Pointer<Uint32> pList0ReferenceFrames;

  @Uint32()
  external int List1ReferenceFramesCount;

  external Pointer<Uint32> pList1ReferenceFrames;

  @Uint32()
  external int ReferenceFramesReconPictureDescriptorsCount;

  external Pointer<D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_H264>
      pReferenceFramesReconPictureDescriptors;

  @Uint8()
  external int adaptive_ref_pic_marking_mode_flag;

  @Uint32()
  external int RefPicMarkingOperationsCommandsCount;

  external Pointer<
          D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_MARKING_OPERATION>
      pRefPicMarkingOperationsCommands;

  @Uint32()
  external int List0RefPicModificationsCount;

  external Pointer<
          D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_LIST_MODIFICATION_OPERATION>
      pList0RefPicModifications;

  @Uint32()
  external int List1RefPicModificationsCount;

  external Pointer<
          D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_LIST_MODIFICATION_OPERATION>
      pList1RefPicModifications;

  @Uint32()
  external int QPMapValuesCount;

  external Pointer<Int8> pRateControlQPMap;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_LIST_MODIFICATION_OPERATION
    extends Struct {
  @Uint8()
  external int modification_of_pic_nums_idc;

  @Uint32()
  external int abs_diff_pic_num_minus1;

  @Uint32()
  external int long_term_pic_num;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_H264_REFERENCE_PICTURE_MARKING_OPERATION
    extends Struct {
  @Uint8()
  external int memory_management_control_operation;

  @Uint32()
  external int difference_of_pic_nums_minus1;

  @Uint32()
  external int long_term_pic_num;

  @Uint32()
  external int long_term_frame_idx;

  @Uint32()
  external int max_long_term_frame_idx_plus1;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA_HEVC extends Struct {
  @Uint32()
  external int Flags;

  @Int32()
  external int FrameType;

  @Uint32()
  external int slice_pic_parameter_set_id;

  @Uint32()
  external int PictureOrderCountNumber;

  @Uint32()
  external int TemporalLayerIndex;

  @Uint32()
  external int List0ReferenceFramesCount;

  external Pointer<Uint32> pList0ReferenceFrames;

  @Uint32()
  external int List1ReferenceFramesCount;

  external Pointer<Uint32> pList1ReferenceFrames;

  @Uint32()
  external int ReferenceFramesReconPictureDescriptorsCount;

  external Pointer<D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_HEVC>
      pReferenceFramesReconPictureDescriptors;

  @Uint32()
  external int List0RefPicModificationsCount;

  external Pointer<Uint32> pList0RefPicModifications;

  @Uint32()
  external int List1RefPicModificationsCount;

  external Pointer<Uint32> pList1RefPicModifications;

  @Uint32()
  external int QPMapValuesCount;

  external Pointer<Int8> pRateControlQPMap;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_DESC extends Struct {
  @Uint32()
  external int IntraRefreshFrameIndex;

  @Uint32()
  external int Flags;

  external D3D12_VIDEO_ENCODER_PICTURE_CONTROL_CODEC_DATA
      PictureControlCodecData;

  external D3D12_VIDEO_ENCODE_REFERENCE_FRAMES ReferenceFrames;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA
    extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA__Anonymous_e__Union
    extends Union {
  external Pointer<
          D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES>
      pSlicesPartition_H264;

  external Pointer<
          D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES>
      pSlicesPartition_HEVC;
}

extension D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_Extension
    on D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA {
  Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES>
      get pSlicesPartition_H264 => this.Anonymous.pSlicesPartition_H264;
  set pSlicesPartition_H264(
          Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES>
              value) =>
      this.Anonymous.pSlicesPartition_H264 = value;

  Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES>
      get pSlicesPartition_HEVC => this.Anonymous.pSlicesPartition_HEVC;
  set pSlicesPartition_HEVC(
          Pointer<D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES>
              value) =>
      this.Anonymous.pSlicesPartition_HEVC = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES
    extends Struct {
  external _D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES__Anonymous_e__Union
    extends Union {
  @Uint32()
  external int MaxBytesPerSlice;

  @Uint32()
  external int NumberOfCodingUnitsPerSlice;

  @Uint32()
  external int NumberOfRowsPerSlice;

  @Uint32()
  external int NumberOfSlicesPerFrame;
}

extension D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES_Extension
    on D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA_SLICES {
  int get MaxBytesPerSlice => this.Anonymous.MaxBytesPerSlice;
  set MaxBytesPerSlice(int value) => this.Anonymous.MaxBytesPerSlice = value;

  int get NumberOfCodingUnitsPerSlice =>
      this.Anonymous.NumberOfCodingUnitsPerSlice;
  set NumberOfCodingUnitsPerSlice(int value) =>
      this.Anonymous.NumberOfCodingUnitsPerSlice = value;

  int get NumberOfRowsPerSlice => this.Anonymous.NumberOfRowsPerSlice;
  set NumberOfRowsPerSlice(int value) =>
      this.Anonymous.NumberOfRowsPerSlice = value;

  int get NumberOfSlicesPerFrame => this.Anonymous.NumberOfSlicesPerFrame;
  set NumberOfSlicesPerFrame(int value) =>
      this.Anonymous.NumberOfSlicesPerFrame = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_RATIO_DESC extends Struct {
  @Uint32()
  external int WidthRatio;

  @Uint32()
  external int HeightRatio;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_PROFILE_DESC extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_PROFILE_DESC__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_PROFILE_DESC__Anonymous_e__Union extends Union {
  external Pointer<Int32> pH264Profile;

  external Pointer<Int32> pHEVCProfile;
}

extension D3D12_VIDEO_ENCODER_PROFILE_DESC_Extension
    on D3D12_VIDEO_ENCODER_PROFILE_DESC {
  Pointer<Int32> get pH264Profile => this.Anonymous.pH264Profile;
  set pH264Profile(Pointer<Int32> value) => this.Anonymous.pH264Profile = value;

  Pointer<Int32> get pHEVCProfile => this.Anonymous.pHEVCProfile;
  set pHEVCProfile(Pointer<Int32> value) => this.Anonymous.pHEVCProfile = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RATE_CONTROL extends Struct {
  @Int32()
  external int Mode;

  @Uint32()
  external int Flags;

  external D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS ConfigParams;

  external DXGI_RATIONAL TargetFrameRate;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RATE_CONTROL_CBR extends Struct {
  @Uint32()
  external int InitialQP;

  @Uint32()
  external int MinQP;

  @Uint32()
  external int MaxQP;

  @Uint64()
  external int MaxFrameBitSize;

  @Uint64()
  external int TargetBitRate;

  @Uint64()
  external int VBVCapacity;

  @Uint64()
  external int InitialVBVFullness;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS__Anonymous_e__Union
    extends Union {
  external Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_CQP> pConfiguration_CQP;

  external Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_CBR> pConfiguration_CBR;

  external Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_VBR> pConfiguration_VBR;

  external Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_QVBR> pConfiguration_QVBR;
}

extension D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS_Extension
    on D3D12_VIDEO_ENCODER_RATE_CONTROL_CONFIGURATION_PARAMS {
  Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_CQP> get pConfiguration_CQP =>
      this.Anonymous.pConfiguration_CQP;
  set pConfiguration_CQP(Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_CQP> value) =>
      this.Anonymous.pConfiguration_CQP = value;

  Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_CBR> get pConfiguration_CBR =>
      this.Anonymous.pConfiguration_CBR;
  set pConfiguration_CBR(Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_CBR> value) =>
      this.Anonymous.pConfiguration_CBR = value;

  Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_VBR> get pConfiguration_VBR =>
      this.Anonymous.pConfiguration_VBR;
  set pConfiguration_VBR(Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_VBR> value) =>
      this.Anonymous.pConfiguration_VBR = value;

  Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_QVBR> get pConfiguration_QVBR =>
      this.Anonymous.pConfiguration_QVBR;
  set pConfiguration_QVBR(
          Pointer<D3D12_VIDEO_ENCODER_RATE_CONTROL_QVBR> value) =>
      this.Anonymous.pConfiguration_QVBR = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RATE_CONTROL_CQP extends Struct {
  @Uint32()
  external int ConstantQP_FullIntracodedFrame;

  @Uint32()
  external int ConstantQP_InterPredictedFrame_PrevRefOnly;

  @Uint32()
  external int ConstantQP_InterPredictedFrame_BiDirectionalRef;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RATE_CONTROL_QVBR extends Struct {
  @Uint32()
  external int InitialQP;

  @Uint32()
  external int MinQP;

  @Uint32()
  external int MaxQP;

  @Uint64()
  external int MaxFrameBitSize;

  @Uint64()
  external int TargetAvgBitRate;

  @Uint64()
  external int PeakBitRate;

  @Uint32()
  external int ConstantQualityTarget;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RATE_CONTROL_VBR extends Struct {
  @Uint32()
  external int InitialQP;

  @Uint32()
  external int MinQP;

  @Uint32()
  external int MaxQP;

  @Uint64()
  external int MaxFrameBitSize;

  @Uint64()
  external int TargetAvgBitRate;

  @Uint64()
  external int PeakBitRate;

  @Uint64()
  external int VBVCapacity;

  @Uint64()
  external int InitialVBVFullness;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RECONSTRUCTED_PICTURE extends Struct {
  external Pointer<COMObject> pReconstructedPicture;

  @Uint32()
  external int ReconstructedPictureSubresource;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_H264 extends Struct {
  @Uint32()
  external int ReconstructedPictureResourceIndex;

  @Int32()
  external int IsLongTermReference;

  @Uint32()
  external int LongTermPictureIdx;

  @Uint32()
  external int PictureOrderCountNumber;

  @Uint32()
  external int FrameDecodingOrderNumber;

  @Uint32()
  external int TemporalLayerIndex;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_REFERENCE_PICTURE_DESCRIPTOR_HEVC extends Struct {
  @Uint32()
  external int ReconstructedPictureResourceIndex;

  @Int32()
  external int IsRefUsedByCurrentPic;

  @Int32()
  external int IsLongTermReference;

  @Uint32()
  external int PictureOrderCountNumber;

  @Uint32()
  external int TemporalLayerIndex;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RESOLVE_METADATA_INPUT_ARGUMENTS extends Struct {
  @Int32()
  external int EncoderCodec;

  external D3D12_VIDEO_ENCODER_PROFILE_DESC EncoderProfile;

  @Uint32()
  external int EncoderInputFormat;

  external D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC
      EncodedPictureEffectiveResolution;

  external D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER
      HWLayoutMetadata;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_RESOLVE_METADATA_OUTPUT_ARGUMENTS extends Struct {
  external D3D12_VIDEO_ENCODER_ENCODE_OPERATION_METADATA_BUFFER
      ResolvedLayoutMetadata;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_SEQUENCE_CONTROL_DESC extends Struct {
  @Uint32()
  external int Flags;

  external D3D12_VIDEO_ENCODER_INTRA_REFRESH IntraRefreshConfig;

  external D3D12_VIDEO_ENCODER_RATE_CONTROL RateControl;

  external D3D12_VIDEO_ENCODER_PICTURE_RESOLUTION_DESC PictureTargetResolution;

  @Int32()
  external int SelectedLayoutMode;

  external D3D12_VIDEO_ENCODER_PICTURE_CONTROL_SUBREGIONS_LAYOUT_DATA
      FrameSubregionsLayoutData;

  external D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE CodecGopSequence;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE extends Struct {
  @Uint32()
  external int DataSize;

  external _D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE__Anonymous_e__Union
    extends Union {
  external Pointer<D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_H264>
      pH264GroupOfPictures;

  external Pointer<D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_HEVC>
      pHEVCGroupOfPictures;
}

extension D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_Extension
    on D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE {
  Pointer<D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_H264>
      get pH264GroupOfPictures => this.Anonymous.pH264GroupOfPictures;
  set pH264GroupOfPictures(
          Pointer<D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_H264> value) =>
      this.Anonymous.pH264GroupOfPictures = value;

  Pointer<D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_HEVC>
      get pHEVCGroupOfPictures => this.Anonymous.pHEVCGroupOfPictures;
  set pHEVCGroupOfPictures(
          Pointer<D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_HEVC> value) =>
      this.Anonymous.pHEVCGroupOfPictures = value;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_H264 extends Struct {
  @Uint32()
  external int GOPLength;

  @Uint32()
  external int PPicturePeriod;

  @Uint8()
  external int pic_order_cnt_type;

  @Uint8()
  external int log2_max_frame_num_minus4;

  @Uint8()
  external int log2_max_pic_order_cnt_lsb_minus4;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODER_SEQUENCE_GOP_STRUCTURE_HEVC extends Struct {
  @Uint32()
  external int GOPLength;

  @Uint32()
  external int PPicturePeriod;

  @Uint8()
  external int log2_max_pic_order_cnt_lsb_minus4;
}

/// {@category Struct}
class D3D12_VIDEO_ENCODE_REFERENCE_FRAMES extends Struct {
  @Uint32()
  external int NumTexture2Ds;

  external Pointer<Pointer<COMObject>> ppTexture2Ds;

  external Pointer<Uint32> pSubresources;
}

/// {@category Struct}
class D3D12_VIDEO_EXTENSION_COMMAND_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  external GUID CommandId;
}

/// {@category Struct}
class D3D12_VIDEO_EXTENSION_COMMAND_INFO extends Struct {
  external GUID CommandId;

  external Pointer<Utf16> Name;

  @Uint32()
  external int CommandListSupportFlags;
}

/// {@category Struct}
class D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_INFO extends Struct {
  external Pointer<Utf16> Name;

  @Int32()
  external int Type;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_VIDEO_FORMAT extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ColorSpace;
}

/// {@category Struct}
class D3D12_VIDEO_MOTION_ESTIMATOR_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  @Uint32()
  external int InputFormat;

  @Int32()
  external int BlockSize;

  @Int32()
  external int Precision;

  external D3D12_VIDEO_SIZE_RANGE SizeRange;
}

/// {@category Struct}
class D3D12_VIDEO_MOTION_ESTIMATOR_INPUT extends Struct {
  external Pointer<COMObject> pInputTexture2D;

  @Uint32()
  external int InputSubresourceIndex;

  external Pointer<COMObject> pReferenceTexture2D;

  @Uint32()
  external int ReferenceSubresourceIndex;

  external Pointer<COMObject> pHintMotionVectorHeap;
}

/// {@category Struct}
class D3D12_VIDEO_MOTION_ESTIMATOR_OUTPUT extends Struct {
  external Pointer<COMObject> pMotionVectorHeap;
}

/// {@category Struct}
class D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC extends Struct {
  @Uint32()
  external int NodeMask;

  @Uint32()
  external int InputFormat;

  @Int32()
  external int BlockSize;

  @Int32()
  external int Precision;

  external D3D12_VIDEO_SIZE_RANGE SizeRange;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_ALPHA_BLENDING extends Struct {
  @Int32()
  external int Enable;

  @Float()
  external double Alpha;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_FILTER_RANGE extends Struct {
  @Int32()
  external int Minimum;

  @Int32()
  external int Maximum;

  @Int32()
  external int Default;

  @Float()
  external double Multiplier;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_INPUT_STREAM extends Struct {
  external Pointer<COMObject> pTexture2D;

  @Uint32()
  external int Subresource;

  external D3D12_VIDEO_PROCESS_REFERENCE_SET ReferenceSet;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS extends Struct {
  @Array(2)
  external Array<D3D12_VIDEO_PROCESS_INPUT_STREAM> InputStream;

  external D3D12_VIDEO_PROCESS_TRANSFORM Transform;

  @Uint32()
  external int Flags;

  external D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE RateInfo;

  @Array(32)
  external Array<Int32> FilterLevels;

  external D3D12_VIDEO_PROCESS_ALPHA_BLENDING AlphaBlending;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS1 extends Struct {
  @Array(2)
  external Array<D3D12_VIDEO_PROCESS_INPUT_STREAM> InputStream;

  external D3D12_VIDEO_PROCESS_TRANSFORM Transform;

  @Uint32()
  external int Flags;

  external D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE RateInfo;

  @Array(32)
  external Array<Int32> FilterLevels;

  external D3D12_VIDEO_PROCESS_ALPHA_BLENDING AlphaBlending;

  @Int32()
  external int FieldType;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ColorSpace;

  external DXGI_RATIONAL SourceAspectRatio;

  external DXGI_RATIONAL DestinationAspectRatio;

  external DXGI_RATIONAL FrameRate;

  external D3D12_VIDEO_SIZE_RANGE SourceSizeRange;

  external D3D12_VIDEO_SIZE_RANGE DestinationSizeRange;

  @Int32()
  external int EnableOrientation;

  @Uint32()
  external int FilterFlags;

  @Int32()
  external int StereoFormat;

  @Int32()
  external int FieldType;

  @Uint32()
  external int DeinterlaceMode;

  @Int32()
  external int EnableAlphaBlending;

  external D3D12_VIDEO_PROCESS_LUMA_KEY LumaKey;

  @Uint32()
  external int NumPastFrames;

  @Uint32()
  external int NumFutureFrames;

  @Int32()
  external int EnableAutoProcessing;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE extends Struct {
  @Uint32()
  external int OutputIndex;

  @Uint32()
  external int InputFrameOrField;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_LUMA_KEY extends Struct {
  @Int32()
  external int Enable;

  @Float()
  external double Lower;

  @Float()
  external double Upper;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_OUTPUT_STREAM extends Struct {
  external Pointer<COMObject> pTexture2D;

  @Uint32()
  external int Subresource;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS extends Struct {
  @Array(2)
  external Array<D3D12_VIDEO_PROCESS_OUTPUT_STREAM> OutputStream;

  external RECT TargetRectangle;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC extends Struct {
  @Uint32()
  external int Format;

  @Int32()
  external int ColorSpace;

  @Int32()
  external int AlphaFillMode;

  @Uint32()
  external int AlphaFillModeSourceStreamIndex;

  @Array(4)
  external Array<Float> BackgroundColor;

  external DXGI_RATIONAL FrameRate;

  @Int32()
  external int EnableStereo;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_REFERENCE_SET extends Struct {
  @Uint32()
  external int NumPastFrames;

  external Pointer<Pointer<COMObject>> ppPastFrames;

  external Pointer<Uint32> pPastSubresources;

  @Uint32()
  external int NumFutureFrames;

  external Pointer<Pointer<COMObject>> ppFutureFrames;

  external Pointer<Uint32> pFutureSubresources;
}

/// {@category Struct}
class D3D12_VIDEO_PROCESS_TRANSFORM extends Struct {
  external RECT SourceRectangle;

  external RECT DestinationRectangle;

  @Int32()
  external int Orientation;
}

/// {@category Struct}
class D3D12_VIDEO_SAMPLE extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  external D3D12_VIDEO_FORMAT Format;
}

/// {@category Struct}
class D3D12_VIDEO_SCALE_SUPPORT extends Struct {
  external D3D12_VIDEO_SIZE_RANGE OutputSizeRange;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class D3D12_VIDEO_SIZE_RANGE extends Struct {
  @Uint32()
  external int MaxWidth;

  @Uint32()
  external int MaxHeight;

  @Uint32()
  external int MinWidth;

  @Uint32()
  external int MinHeight;
}

/// {@category Struct}
class D3DCONTENTPROTECTIONCAPS extends Struct {
  @Uint32()
  external int Caps;

  external GUID KeyExchangeType;

  @Uint32()
  external int BufferAlignmentStart;

  @Uint32()
  external int BlockAlignmentSize;

  @Uint64()
  external int ProtectedMemorySize;
}

/// {@category Struct}
class D3DOVERLAYCAPS extends Struct {
  @Uint32()
  external int Caps;

  @Uint32()
  external int MaxOverlayDisplayWidth;

  @Uint32()
  external int MaxOverlayDisplayHeight;
}

/// {@category Struct}
class DEVICE_INFO extends Struct {
  external Pointer<Utf16> pFriendlyDeviceName;

  external Pointer<Utf16> pUniqueDeviceName;

  external Pointer<Utf16> pManufacturerName;

  external Pointer<Utf16> pModelName;

  external Pointer<Utf16> pIconURL;
}

/// {@category Struct}
class DIRTYRECT_INFO extends Struct {
  @Uint32()
  external int FrameNumber;

  @Uint32()
  external int NumDirtyRects;

  @Array(1)
  external Array<RECT> DirtyRects;
}

/// {@category Struct}
class DXVA2_AES_CTR_IV extends Struct {
  @Uint64()
  external int IV;

  @Uint64()
  external int Count;
}

/// {@category Struct}
class DXVA2_AYUVSample16 extends Struct {
  @Uint16()
  external int Cr;

  @Uint16()
  external int Cb;

  @Uint16()
  external int Y;

  @Uint16()
  external int Alpha;
}

/// {@category Struct}
class DXVA2_AYUVSample8 extends Struct {
  @Uint8()
  external int Cr;

  @Uint8()
  external int Cb;

  @Uint8()
  external int Y;

  @Uint8()
  external int Alpha;
}

/// {@category Struct}
class DXVA2_ConfigPictureDecode extends Struct {
  external GUID guidConfigBitstreamEncryption;

  external GUID guidConfigMBcontrolEncryption;

  external GUID guidConfigResidDiffEncryption;

  @Uint32()
  external int ConfigBitstreamRaw;

  @Uint32()
  external int ConfigMBcontrolRasterOrder;

  @Uint32()
  external int ConfigResidDiffHost;

  @Uint32()
  external int ConfigSpatialResid8;

  @Uint32()
  external int ConfigResid8Subtraction;

  @Uint32()
  external int ConfigSpatialHost8or9Clipping;

  @Uint32()
  external int ConfigSpatialResidInterleaved;

  @Uint32()
  external int ConfigIntraResidUnsigned;

  @Uint32()
  external int ConfigResidDiffAccelerator;

  @Uint32()
  external int ConfigHostInverseScan;

  @Uint32()
  external int ConfigSpecificIDCT;

  @Uint32()
  external int Config4GroupedCoefs;

  @Uint16()
  external int ConfigMinRenderTargetBuffCount;

  @Uint16()
  external int ConfigDecoderSpecific;
}

/// {@category Struct}
class DXVA2_DecodeBufferDesc extends Struct {
  @Int32()
  external int CompressedBufferType;

  @Uint32()
  external int BufferIndex;

  @Uint32()
  external int DataOffset;

  @Uint32()
  external int DataSize;

  @Uint32()
  external int FirstMBaddress;

  @Uint32()
  external int NumMBsInBuffer;

  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int Stride;

  @Uint32()
  external int ReservedBits;

  external Pointer pvPVPState;
}

/// {@category Struct}
class DXVA2_DecodeExecuteParams extends Struct {
  @Uint32()
  external int NumCompBuffers;

  external Pointer<DXVA2_DecodeBufferDesc> pCompressedBuffers;

  external Pointer<DXVA2_DecodeExtensionData> pExtensionData;
}

/// {@category Struct}
class DXVA2_DecodeExtensionData extends Struct {
  @Uint32()
  external int Function;

  external Pointer pPrivateInputData;

  @Uint32()
  external int PrivateInputDataSize;

  external Pointer pPrivateOutputData;

  @Uint32()
  external int PrivateOutputDataSize;
}

/// {@category Struct}
class DXVA2_ExtendedFormat extends Struct {
  external _DXVA2_ExtendedFormat__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DXVA2_ExtendedFormat__Anonymous_e__Union extends Union {
  external _DXVA2_ExtendedFormat__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int value;
}

/// {@category Struct}
class _DXVA2_ExtendedFormat__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DXVA2_ExtendedFormat__Anonymous_e__Union_Extension
    on DXVA2_ExtendedFormat {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DXVA2_ExtendedFormat_Extension on DXVA2_ExtendedFormat {
  _DXVA2_ExtendedFormat__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DXVA2_ExtendedFormat__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get value => this.Anonymous.value;
  set value(int value) => this.Anonymous.value = value;
}

/// {@category Struct}
class DXVA2_FilterValues extends Struct {
  external DXVA2_Fixed32 Level;

  external DXVA2_Fixed32 Threshold;

  external DXVA2_Fixed32 Radius;
}

/// {@category Struct}
class DXVA2_Fixed32 extends Struct {
  external _DXVA2_Fixed32__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _DXVA2_Fixed32__Anonymous_e__Union extends Union {
  external _DXVA2_Fixed32__Anonymous_e__Union__Anonymous_e__Struct Anonymous;

  @Int32()
  external int ll;
}

/// {@category Struct}
class _DXVA2_Fixed32__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int Fraction;

  @Int16()
  external int Value;
}

extension DXVA2_Fixed32__Anonymous_e__Union_Extension on DXVA2_Fixed32 {
  int get Fraction => this.Anonymous.Anonymous.Fraction;
  set Fraction(int value) => this.Anonymous.Anonymous.Fraction = value;

  int get Value => this.Anonymous.Anonymous.Value;
  set Value(int value) => this.Anonymous.Anonymous.Value = value;
}

extension DXVA2_Fixed32_Extension on DXVA2_Fixed32 {
  _DXVA2_Fixed32__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _DXVA2_Fixed32__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;

  int get ll => this.Anonymous.ll;
  set ll(int value) => this.Anonymous.ll = value;
}

/// {@category Struct}
class DXVA2_Frequency extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// {@category Struct}
class DXVA2_ProcAmpValues extends Struct {
  external DXVA2_Fixed32 Brightness;

  external DXVA2_Fixed32 Contrast;

  external DXVA2_Fixed32 Hue;

  external DXVA2_Fixed32 Saturation;
}

/// {@category Struct}
class DXVA2_ValueRange extends Struct {
  external DXVA2_Fixed32 MinValue;

  external DXVA2_Fixed32 MaxValue;

  external DXVA2_Fixed32 DefaultValue;

  external DXVA2_Fixed32 StepSize;
}

/// {@category Struct}
class DXVA2_VideoDesc extends Struct {
  @Uint32()
  external int SampleWidth;

  @Uint32()
  external int SampleHeight;

  external DXVA2_ExtendedFormat SampleFormat;

  @Uint32()
  external int Format;

  external DXVA2_Frequency InputSampleFreq;

  external DXVA2_Frequency OutputFrameFreq;

  @Uint32()
  external int UABProtectionLevel;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class DXVA2_VideoProcessBltParams extends Struct {
  @Int64()
  external int TargetFrame;

  external RECT TargetRect;

  external SIZE ConstrictionSize;

  @Uint32()
  external int StreamingFlags;

  external DXVA2_AYUVSample16 BackgroundColor;

  external DXVA2_ExtendedFormat DestFormat;

  external DXVA2_ProcAmpValues ProcAmpValues;

  external DXVA2_Fixed32 Alpha;

  external DXVA2_FilterValues NoiseFilterLuma;

  external DXVA2_FilterValues NoiseFilterChroma;

  external DXVA2_FilterValues DetailFilterLuma;

  external DXVA2_FilterValues DetailFilterChroma;

  @Uint32()
  external int DestData;
}

/// {@category Struct}
class DXVA2_VideoProcessorCaps extends Struct {
  @Uint32()
  external int DeviceCaps;

  @Uint32()
  external int InputPool;

  @Uint32()
  external int NumForwardRefSamples;

  @Uint32()
  external int NumBackwardRefSamples;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int DeinterlaceTechnology;

  @Uint32()
  external int ProcAmpControlCaps;

  @Uint32()
  external int VideoProcessorOperations;

  @Uint32()
  external int NoiseFilterTechnology;

  @Uint32()
  external int DetailFilterTechnology;
}

/// {@category Struct}
class DXVA2_VideoSample extends Struct {
  @Int64()
  external int Start;

  @Int64()
  external int End;

  external DXVA2_ExtendedFormat SampleFormat;

  external Pointer<COMObject> SrcSurface;

  external RECT SrcRect;

  external RECT DstRect;

  @Array(16)
  external Array<DXVA2_AYUVSample8> Pal;

  external DXVA2_Fixed32 PlanarAlpha;

  @Uint32()
  external int SampleData;
}

/// {@category Struct}
class DXVABufferInfo extends Struct {
  external Pointer pCompSurface;

  @Uint32()
  external int DataOffset;

  @Uint32()
  external int DataSize;
}

/// {@category Struct}
class DXVACompBufferInfo extends Struct {
  @Uint32()
  external int NumCompBuffers;

  @Uint32()
  external int WidthToCreate;

  @Uint32()
  external int HeightToCreate;

  @Uint32()
  external int BytesToAllocate;

  @Uint32()
  external int Usage;

  @Uint32()
  external int Pool;

  @Uint32()
  external int Format;
}

/// {@category Struct}
class DXVAHDETW_CREATEVIDEOPROCESSOR extends Struct {
  @Uint64()
  external int pObject;

  @Uint64()
  external int pD3D9Ex;

  external GUID VPGuid;
}

/// {@category Struct}
class DXVAHDETW_DESTROYVIDEOPROCESSOR extends Struct {
  @Uint64()
  external int pObject;
}

/// {@category Struct}
class DXVAHDETW_VIDEOPROCESSBLTHD extends Struct {
  @Uint64()
  external int pObject;

  @Uint64()
  external int pOutputSurface;

  external RECT TargetRect;

  @Uint32()
  external int OutputFormat;

  @Uint32()
  external int ColorSpace;

  @Uint32()
  external int OutputFrame;

  @Uint32()
  external int StreamCount;

  @Int32()
  external int Enter;
}

/// {@category Struct}
class DXVAHDETW_VIDEOPROCESSBLTHD_STREAM extends Struct {
  @Uint64()
  external int pObject;

  @Uint64()
  external int pInputSurface;

  external RECT SourceRect;

  external RECT DestinationRect;

  @Uint32()
  external int InputFormat;

  @Int32()
  external int FrameFormat;

  @Uint32()
  external int ColorSpace;

  @Uint32()
  external int StreamNumber;

  @Uint32()
  external int OutputIndex;

  @Uint32()
  external int InputFrameOrField;

  @Uint32()
  external int PastFrames;

  @Uint32()
  external int FutureFrames;
}

/// {@category Struct}
class DXVAHDETW_VIDEOPROCESSBLTSTATE extends Struct {
  @Uint64()
  external int pObject;

  @Int32()
  external int State;

  @Uint32()
  external int DataSize;

  @Int32()
  external int SetState;
}

/// {@category Struct}
class DXVAHDETW_VIDEOPROCESSSTREAMSTATE extends Struct {
  @Uint64()
  external int pObject;

  @Uint32()
  external int StreamNumber;

  @Int32()
  external int State;

  @Uint32()
  external int DataSize;

  @Int32()
  external int SetState;
}

/// {@category Struct}
class DXVAHDSW_CALLBACKS extends Struct {
  external Pointer<NativeFunction<PDXVAHDSW_CreateDevice>> CreateDevice;

  external Pointer<NativeFunction<PDXVAHDSW_ProposeVideoPrivateFormat>>
      ProposeVideoPrivateFormat;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessorDeviceCaps>>
      GetVideoProcessorDeviceCaps;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessorOutputFormats>>
      GetVideoProcessorOutputFormats;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessorInputFormats>>
      GetVideoProcessorInputFormats;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessorCaps>>
      GetVideoProcessorCaps;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessorCustomRates>>
      GetVideoProcessorCustomRates;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessorFilterRange>>
      GetVideoProcessorFilterRange;

  external Pointer<NativeFunction<PDXVAHDSW_DestroyDevice>> DestroyDevice;

  external Pointer<NativeFunction<PDXVAHDSW_CreateVideoProcessor>>
      CreateVideoProcessor;

  external Pointer<NativeFunction<PDXVAHDSW_SetVideoProcessBltState>>
      SetVideoProcessBltState;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessBltStatePrivate>>
      GetVideoProcessBltStatePrivate;

  external Pointer<NativeFunction<PDXVAHDSW_SetVideoProcessStreamState>>
      SetVideoProcessStreamState;

  external Pointer<NativeFunction<PDXVAHDSW_GetVideoProcessStreamStatePrivate>>
      GetVideoProcessStreamStatePrivate;

  external Pointer<NativeFunction<PDXVAHDSW_VideoProcessBltHD>>
      VideoProcessBltHD;

  external Pointer<NativeFunction<PDXVAHDSW_DestroyVideoProcessor>>
      DestroyVideoProcessor;
}

/// {@category Struct}
class DXVAHD_BLT_STATE_ALPHA_FILL_DATA extends Struct {
  @Int32()
  external int Mode;

  @Uint32()
  external int StreamNumber;
}

/// {@category Struct}
class DXVAHD_BLT_STATE_BACKGROUND_COLOR_DATA extends Struct {
  @Int32()
  external int YCbCr;

  external DXVAHD_COLOR BackgroundColor;
}

/// {@category Struct}
class DXVAHD_BLT_STATE_CONSTRICTION_DATA extends Struct {
  @Int32()
  external int Enable;

  external SIZE Size;
}

/// {@category Struct}
class DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA extends Struct {
  external _DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA__Anonymous_e__Union
    extends Union {
  external _DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA__Anonymous_e__Union_Extension
    on DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA_Extension
    on DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA {
  _DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class DXVAHD_BLT_STATE_PRIVATE_DATA extends Struct {
  external GUID Guid;

  @Uint32()
  external int DataSize;

  external Pointer pData;
}

/// {@category Struct}
class DXVAHD_BLT_STATE_TARGET_RECT_DATA extends Struct {
  @Int32()
  external int Enable;

  external RECT TargetRect;
}

/// {@category Struct}
class DXVAHD_COLOR extends Union {
  external DXVAHD_COLOR_RGBA RGB;

  external DXVAHD_COLOR_YCbCrA YCbCr;
}

/// {@category Struct}
class DXVAHD_COLOR_RGBA extends Struct {
  @Float()
  external double R;

  @Float()
  external double G;

  @Float()
  external double B;

  @Float()
  external double A;
}

/// {@category Struct}
class DXVAHD_COLOR_YCbCrA extends Struct {
  @Float()
  external double Y;

  @Float()
  external double Cb;

  @Float()
  external double Cr;

  @Float()
  external double A;
}

/// {@category Struct}
class DXVAHD_CONTENT_DESC extends Struct {
  @Int32()
  external int InputFrameFormat;

  external DXVAHD_RATIONAL InputFrameRate;

  @Uint32()
  external int InputWidth;

  @Uint32()
  external int InputHeight;

  external DXVAHD_RATIONAL OutputFrameRate;

  @Uint32()
  external int OutputWidth;

  @Uint32()
  external int OutputHeight;
}

/// {@category Struct}
class DXVAHD_CUSTOM_RATE_DATA extends Struct {
  external DXVAHD_RATIONAL CustomRate;

  @Uint32()
  external int OutputFrames;

  @Int32()
  external int InputInterlaced;

  @Uint32()
  external int InputFramesOrFields;
}

/// {@category Struct}
class DXVAHD_FILTER_RANGE_DATA extends Struct {
  @Int32()
  external int Minimum;

  @Int32()
  external int Maximum;

  @Int32()
  external int Default;

  @Float()
  external double Multiplier;
}

/// {@category Struct}
class DXVAHD_RATIONAL extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// {@category Struct}
class DXVAHD_STREAM_DATA extends Struct {
  @Int32()
  external int Enable;

  @Uint32()
  external int OutputIndex;

  @Uint32()
  external int InputFrameOrField;

  @Uint32()
  external int PastFrames;

  @Uint32()
  external int FutureFrames;

  external Pointer<Pointer<COMObject>> ppPastSurfaces;

  external Pointer<COMObject> pInputSurface;

  external Pointer<Pointer<COMObject>> ppFutureSurfaces;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_ALPHA_DATA extends Struct {
  @Int32()
  external int Enable;

  @Float()
  external double Alpha;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_ASPECT_RATIO_DATA extends Struct {
  @Int32()
  external int Enable;

  external DXVAHD_RATIONAL SourceAspectRatio;

  external DXVAHD_RATIONAL DestinationAspectRatio;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_D3DFORMAT_DATA extends Struct {
  @Uint32()
  external int Format;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_DESTINATION_RECT_DATA extends Struct {
  @Int32()
  external int Enable;

  external RECT DestinationRect;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_FILTER_DATA extends Struct {
  @Int32()
  external int Enable;

  @Int32()
  external int Level;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_FRAME_FORMAT_DATA extends Struct {
  @Int32()
  external int FrameFormat;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA extends Struct {
  external _DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA__Anonymous_e__Union
      Anonymous;
}

/// {@category Struct}
class _DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA__Anonymous_e__Union
    extends Union {
  external _DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int Value;
}

/// {@category Struct}
class _DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA__Anonymous_e__Union_Extension
    on DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA_Extension
    on DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA {
  _DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
      get Anonymous => this.Anonymous.Anonymous;
  set Anonymous(
          _DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get Value => this.Anonymous.Value;
  set Value(int value) => this.Anonymous.Value = value;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_LUMA_KEY_DATA extends Struct {
  @Int32()
  external int Enable;

  @Float()
  external double Lower;

  @Float()
  external double Upper;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_OUTPUT_RATE_DATA extends Struct {
  @Int32()
  external int RepeatFrame;

  @Int32()
  external int OutputRate;

  external DXVAHD_RATIONAL CustomRate;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_PALETTE_DATA extends Struct {
  @Uint32()
  external int Count;

  external Pointer<Uint32> pEntries;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_PRIVATE_DATA extends Struct {
  external GUID Guid;

  @Uint32()
  external int DataSize;

  external Pointer pData;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_PRIVATE_IVTC_DATA extends Struct {
  @Int32()
  external int Enable;

  @Uint32()
  external int ITelecineFlags;

  @Uint32()
  external int Frames;

  @Uint32()
  external int InputField;
}

/// {@category Struct}
class DXVAHD_STREAM_STATE_SOURCE_RECT_DATA extends Struct {
  @Int32()
  external int Enable;

  external RECT SourceRect;
}

/// {@category Struct}
class DXVAHD_VPCAPS extends Struct {
  external GUID VPGuid;

  @Uint32()
  external int PastFrames;

  @Uint32()
  external int FutureFrames;

  @Uint32()
  external int ProcessorCaps;

  @Uint32()
  external int ITelecineCaps;

  @Uint32()
  external int CustomRateCount;
}

/// {@category Struct}
class DXVAHD_VPDEVCAPS extends Struct {
  @Int32()
  external int DeviceType;

  @Uint32()
  external int DeviceCaps;

  @Uint32()
  external int FeatureCaps;

  @Uint32()
  external int FilterCaps;

  @Uint32()
  external int InputFormatCaps;

  @Uint32()
  external int InputPool;

  @Uint32()
  external int OutputFormatCount;

  @Uint32()
  external int InputFormatCount;

  @Uint32()
  external int VideoProcessorCount;

  @Uint32()
  external int MaxInputStreams;

  @Uint32()
  external int MaxStreamStates;
}

/// {@category Struct}
class DXVAUncompDataInfo extends Struct {
  @Uint32()
  external int UncompWidth;

  @Uint32()
  external int UncompHeight;

  @Uint32()
  external int UncompFormat;
}

/// {@category Struct}
class DXVA_AYUVsample2 extends Struct {
  @Uint8()
  external int bCrValue;

  @Uint8()
  external int bCbValue;

  @Uint8()
  external int bY_Value;

  @Uint8()
  external int bSampleAlpha8;
}

/// {@category Struct}
@Packed(1)
class DXVA_BufferDescription extends Struct {
  @Uint32()
  external int dwTypeIndex;

  @Uint32()
  external int dwBufferIndex;

  @Uint32()
  external int dwDataOffset;

  @Uint32()
  external int dwDataSize;

  @Uint32()
  external int dwFirstMBaddress;

  @Uint32()
  external int dwNumMBsInBuffer;

  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  @Uint32()
  external int dwStride;

  @Uint32()
  external int dwReservedBits;
}

/// {@category Struct}
class DXVA_COPPCommand extends Struct {
  external GUID macKDI;

  external GUID guidCommandID;

  @Uint32()
  external int dwSequence;

  @Uint32()
  external int cbSizeData;

  @Array(4056)
  external Array<Uint8> CommandData;
}

/// {@category Struct}
class DXVA_COPPSignature extends Struct {
  @Array(256)
  external Array<Uint8> Signature;
}

/// {@category Struct}
class DXVA_COPPStatusInput extends Struct {
  external GUID rApp;

  external GUID guidStatusRequestID;

  @Uint32()
  external int dwSequence;

  @Uint32()
  external int cbSizeData;

  @Array(4056)
  external Array<Uint8> StatusData;
}

/// {@category Struct}
class DXVA_COPPStatusOutput extends Struct {
  external GUID macKDI;

  @Uint32()
  external int cbSizeData;

  @Array(4076)
  external Array<Uint8> COPPStatus;
}

/// {@category Struct}
class DXVA_ConfigPictureDecode extends Struct {
  @Uint32()
  external int dwFunction;

  @Array(3)
  external Array<Uint32> dwReservedBits;

  external GUID guidConfigBitstreamEncryption;

  external GUID guidConfigMBcontrolEncryption;

  external GUID guidConfigResidDiffEncryption;

  @Uint8()
  external int bConfigBitstreamRaw;

  @Uint8()
  external int bConfigMBcontrolRasterOrder;

  @Uint8()
  external int bConfigResidDiffHost;

  @Uint8()
  external int bConfigSpatialResid8;

  @Uint8()
  external int bConfigResid8Subtraction;

  @Uint8()
  external int bConfigSpatialHost8or9Clipping;

  @Uint8()
  external int bConfigSpatialResidInterleaved;

  @Uint8()
  external int bConfigIntraResidUnsigned;

  @Uint8()
  external int bConfigResidDiffAccelerator;

  @Uint8()
  external int bConfigHostInverseScan;

  @Uint8()
  external int bConfigSpecificIDCT;

  @Uint8()
  external int bConfig4GroupedCoefs;
}

/// {@category Struct}
class DXVA_DeinterlaceBlt extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Reserved;

  @Int64()
  external int rtTarget;

  external RECT DstRect;

  external RECT SrcRect;

  @Uint32()
  external int NumSourceSurfaces;

  @Float()
  external double Alpha;

  @Array(32)
  external Array<DXVA_VideoSample> Source;
}

/// {@category Struct}
class DXVA_DeinterlaceBltEx extends Struct {
  @Uint32()
  external int Size;

  external DXVA_AYUVsample2 BackgroundColor;

  external RECT rcTarget;

  @Int64()
  external int rtTarget;

  @Uint32()
  external int NumSourceSurfaces;

  @Float()
  external double Alpha;

  @Array(32)
  external Array<DXVA_VideoSample2> Source;

  @Uint32()
  external int DestinationFormat;

  @Uint32()
  external int DestinationFlags;
}

/// {@category Struct}
class DXVA_DeinterlaceBltEx32 extends Struct {
  @Uint32()
  external int Size;

  external DXVA_AYUVsample2 BackgroundColor;

  external RECT rcTarget;

  @Int64()
  external int rtTarget;

  @Uint32()
  external int NumSourceSurfaces;

  @Float()
  external double Alpha;

  @Array(32)
  external Array<DXVA_VideoSample32> Source;

  @Uint32()
  external int DestinationFormat;

  @Uint32()
  external int DestinationFlags;
}

/// {@category Struct}
class DXVA_DeinterlaceCaps extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int NumPreviousOutputFrames;

  @Uint32()
  external int InputPool;

  @Uint32()
  external int NumForwardRefSamples;

  @Uint32()
  external int NumBackwardRefSamples;

  @Uint32()
  external int d3dOutputFormat;

  @Int32()
  external int VideoProcessingCaps;

  @Int32()
  external int DeinterlaceTechnology;
}

/// {@category Struct}
class DXVA_DeinterlaceQueryAvailableModes extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int NumGuids;

  @Array(32)
  external Array<GUID> Guids;
}

/// {@category Struct}
class DXVA_DeinterlaceQueryModeCaps extends Struct {
  @Uint32()
  external int Size;

  external GUID Guid;

  external DXVA_VideoDesc VideoDesc;
}

/// {@category Struct}
class DXVA_ExtendedFormat extends Struct {
  @Uint32()
  external int bitfield;
}

/// {@category Struct}
class DXVA_Frequency extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// {@category Struct}
@Packed(1)
class DXVA_PictureParameters extends Struct {
  @Uint16()
  external int wDecodedPictureIndex;

  @Uint16()
  external int wDeblockedPictureIndex;

  @Uint16()
  external int wForwardRefPictureIndex;

  @Uint16()
  external int wBackwardRefPictureIndex;

  @Uint16()
  external int wPicWidthInMBminus1;

  @Uint16()
  external int wPicHeightInMBminus1;

  @Uint8()
  external int bMacroblockWidthMinus1;

  @Uint8()
  external int bMacroblockHeightMinus1;

  @Uint8()
  external int bBlockWidthMinus1;

  @Uint8()
  external int bBlockHeightMinus1;

  @Uint8()
  external int bBPPminus1;

  @Uint8()
  external int bPicStructure;

  @Uint8()
  external int bSecondField;

  @Uint8()
  external int bPicIntra;

  @Uint8()
  external int bPicBackwardPrediction;

  @Uint8()
  external int bBidirectionalAveragingMode;

  @Uint8()
  external int bMVprecisionAndChromaRelation;

  @Uint8()
  external int bChromaFormat;

  @Uint8()
  external int bPicScanFixed;

  @Uint8()
  external int bPicScanMethod;

  @Uint8()
  external int bPicReadbackRequests;

  @Uint8()
  external int bRcontrol;

  @Uint8()
  external int bPicSpatialResid8;

  @Uint8()
  external int bPicOverflowBlocks;

  @Uint8()
  external int bPicExtrapolation;

  @Uint8()
  external int bPicDeblocked;

  @Uint8()
  external int bPicDeblockConfined;

  @Uint8()
  external int bPic4MVallowed;

  @Uint8()
  external int bPicOBMC;

  @Uint8()
  external int bPicBinPB;

  @Uint8()
  external int bMV_RPS;

  @Uint8()
  external int bReservedBits;

  @Uint16()
  external int wBitstreamFcodes;

  @Uint16()
  external int wBitstreamPCEelements;

  @Uint8()
  external int bBitstreamConcealmentNeed;

  @Uint8()
  external int bBitstreamConcealmentMethod;
}

/// {@category Struct}
class DXVA_ProcAmpControlBlt extends Struct {
  @Uint32()
  external int Size;

  external RECT DstRect;

  external RECT SrcRect;

  @Float()
  external double Alpha;

  @Float()
  external double Brightness;

  @Float()
  external double Contrast;

  @Float()
  external double Hue;

  @Float()
  external double Saturation;
}

/// {@category Struct}
class DXVA_ProcAmpControlCaps extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int InputPool;

  @Uint32()
  external int d3dOutputFormat;

  @Uint32()
  external int ProcAmpControlProps;

  @Uint32()
  external int VideoProcessingCaps;
}

/// {@category Struct}
class DXVA_ProcAmpControlQueryRange extends Struct {
  @Uint32()
  external int Size;

  @Int32()
  external int ProcAmpControlProp;

  external DXVA_VideoDesc VideoDesc;
}

/// {@category Struct}
class DXVA_VideoDesc extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int SampleWidth;

  @Uint32()
  external int SampleHeight;

  @Uint32()
  external int SampleFormat;

  @Uint32()
  external int d3dFormat;

  external DXVA_Frequency InputSampleFreq;

  external DXVA_Frequency OutputFrameFreq;
}

/// {@category Struct}
class DXVA_VideoPropertyRange extends Struct {
  @Float()
  external double MinValue;

  @Float()
  external double MaxValue;

  @Float()
  external double DefaultValue;

  @Float()
  external double StepSize;
}

/// {@category Struct}
class DXVA_VideoSample extends Struct {
  @Int64()
  external int rtStart;

  @Int64()
  external int rtEnd;

  @Int32()
  external int SampleFormat;

  external Pointer lpDDSSrcSurface;
}

/// {@category Struct}
class DXVA_VideoSample2 extends Struct {
  @Uint32()
  external int Size;

  @Uint32()
  external int Reserved;

  @Int64()
  external int rtStart;

  @Int64()
  external int rtEnd;

  @Uint32()
  external int SampleFormat;

  @Uint32()
  external int SampleFlags;

  external Pointer lpDDSSrcSurface;

  external RECT rcSrc;

  external RECT rcDst;

  @Array(16)
  external Array<DXVA_AYUVsample2> Palette;
}

/// {@category Struct}
class DXVA_VideoSample32 extends Struct {
  @Int64()
  external int rtStart;

  @Int64()
  external int rtEnd;

  @Uint32()
  external int SampleFormat;

  @Uint32()
  external int SampleFlags;

  @Uint32()
  external int lpDDSSrcSurface;

  external RECT rcSrc;

  external RECT rcDst;

  @Array(16)
  external Array<DXVA_AYUVsample2> Palette;
}

/// {@category Struct}
class DigitalWindowSetting extends Struct {
  @Double()
  external double OriginX;

  @Double()
  external double OriginY;

  @Double()
  external double WindowSize;
}

/// {@category Struct}
class MACROBLOCK_DATA extends Struct {
  @Uint32()
  external int flags;

  @Int16()
  external int motionVectorX;

  @Int16()
  external int motionVectorY;

  @Int32()
  external int QPDelta;
}

/// {@category Struct}
class MFARGB extends Struct {
  @Uint8()
  external int rgbBlue;

  @Uint8()
  external int rgbGreen;

  @Uint8()
  external int rgbRed;

  @Uint8()
  external int rgbAlpha;
}

/// {@category Struct}
class MFAYUVSample extends Struct {
  @Uint8()
  external int bCrValue;

  @Uint8()
  external int bCbValue;

  @Uint8()
  external int bYValue;

  @Uint8()
  external int bSampleAlpha8;
}

/// {@category Struct}
class MFAudioDecoderDegradationInfo extends Struct {
  @Int32()
  external int eDegradationReason;

  @Int32()
  external int eType;
}

/// {@category Struct}
class MFBYTESTREAM_BUFFERING_PARAMS extends Struct {
  @Uint64()
  external int cbTotalFileSize;

  @Uint64()
  external int cbPlayableDataSize;

  external Pointer<MF_LEAKY_BUCKET_PAIR> prgBuckets;

  @Uint32()
  external int cBuckets;

  @Uint64()
  external int qwNetBufferingTime;

  @Uint64()
  external int qwExtraBufferingTimeDuringSeek;

  @Uint64()
  external int qwPlayDuration;

  @Float()
  external double dRate;
}

/// {@category Struct}
class MFCLOCK_PROPERTIES extends Struct {
  @Uint64()
  external int qwCorrelationRate;

  external GUID guidClockId;

  @Uint32()
  external int dwClockFlags;

  @Uint64()
  external int qwClockFrequency;

  @Uint32()
  external int dwClockTolerance;

  @Uint32()
  external int dwClockJitter;
}

/// {@category Struct}
class MFCONTENTPROTECTIONDEVICE_INPUT_DATA extends Struct {
  @Uint32()
  external int HWProtectionFunctionID;

  @Uint32()
  external int PrivateDataByteCount;

  @Uint32()
  external int HWProtectionDataByteCount;

  @Uint32()
  external int Reserved;

  @Array(4)
  external Array<Uint8> InputData;
}

/// {@category Struct}
class MFCONTENTPROTECTIONDEVICE_OUTPUT_DATA extends Struct {
  @Uint32()
  external int PrivateDataByteCount;

  @Uint32()
  external int MaxHWProtectionDataByteCount;

  @Uint32()
  external int HWProtectionDataByteCount;

  @Int32()
  external int Status;

  @Int64()
  external int TransportTimeInHundredsOfNanoseconds;

  @Int64()
  external int ExecutionTimeInHundredsOfNanoseconds;

  @Array(4)
  external Array<Uint8> OutputData;
}

/// {@category Struct}
class MFCONTENTPROTECTIONDEVICE_REALTIMECLIENT_DATA extends Struct {
  @Uint32()
  external int TaskIndex;

  @Array(260)
  external Array<Uint16> _ClassName;

  String get ClassName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_ClassName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClassName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _ClassName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int BasePriority;
}

/// {@category Struct}
class MFCameraExtrinsic_CalibratedTransform extends Struct {
  external GUID CalibrationId;

  external MF_FLOAT3 Position;

  external MF_QUATERNION Orientation;
}

/// {@category Struct}
class MFCameraExtrinsics extends Struct {
  @Uint32()
  external int TransformCount;

  @Array(1)
  external Array<MFCameraExtrinsic_CalibratedTransform> CalibratedTransforms;
}

/// {@category Struct}
class MFCameraIntrinsic_CameraModel extends Struct {
  @Float()
  external double FocalLength_x;

  @Float()
  external double FocalLength_y;

  @Float()
  external double PrincipalPoint_x;

  @Float()
  external double PrincipalPoint_y;
}

/// {@category Struct}
class MFCameraIntrinsic_DistortionModel extends Struct {
  @Float()
  external double Radial_k1;

  @Float()
  external double Radial_k2;

  @Float()
  external double Radial_k3;

  @Float()
  external double Tangential_p1;

  @Float()
  external double Tangential_p2;
}

/// {@category Struct}
class MFCameraIntrinsic_DistortionModel6KT extends Struct {
  @Float()
  external double Radial_k1;

  @Float()
  external double Radial_k2;

  @Float()
  external double Radial_k3;

  @Float()
  external double Radial_k4;

  @Float()
  external double Radial_k5;

  @Float()
  external double Radial_k6;

  @Float()
  external double Tangential_p1;

  @Float()
  external double Tangential_p2;
}

/// {@category Struct}
class MFCameraIntrinsic_DistortionModelArcTan extends Struct {
  @Float()
  external double Radial_k0;

  @Float()
  external double DistortionCenter_x;

  @Float()
  external double DistortionCenter_y;

  @Float()
  external double Tangential_x;

  @Float()
  external double Tangential_y;
}

/// {@category Struct}
class MFCameraIntrinsic_PinholeCameraModel extends Struct {
  external MF_FLOAT2 FocalLength;

  external MF_FLOAT2 PrincipalPoint;
}

/// {@category Struct}
class MFExtendedCameraIntrinsic_IntrinsicModel extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  @Uint32()
  external int SplitFrameId;

  external MFCameraIntrinsic_CameraModel CameraModel;
}

/// {@category Struct}
class MFFOLDDOWN_MATRIX extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int cSrcChannels;

  @Uint32()
  external int cDstChannels;

  @Uint32()
  external int dwChannelMask;

  @Array(64)
  external Array<Int32> Coeff;
}

/// {@category Struct}
class MFINPUTTRUSTAUTHORITY_ACCESS_ACTION extends Struct {
  @Int32()
  external int Action;

  external Pointer<Uint8> pbTicket;

  @Uint32()
  external int cbTicket;
}

/// {@category Struct}
class MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwVer;

  @Uint32()
  external int cbSignatureOffset;

  @Uint32()
  external int cbSignatureSize;

  @Uint32()
  external int cbExtensionOffset;

  @Uint32()
  external int cbExtensionSize;

  @Uint32()
  external int cActions;

  @Array(1)
  external Array<MFINPUTTRUSTAUTHORITY_ACCESS_ACTION> rgOutputActions;
}

/// {@category Struct}
class MFMPEG2DLNASINKSTATS extends Struct {
  @Uint64()
  external int cBytesWritten;

  @Int32()
  external int fPAL;

  @Uint32()
  external int fccVideo;

  @Uint32()
  external int dwVideoWidth;

  @Uint32()
  external int dwVideoHeight;

  @Uint64()
  external int cVideoFramesReceived;

  @Uint64()
  external int cVideoFramesEncoded;

  @Uint64()
  external int cVideoFramesSkipped;

  @Uint64()
  external int cBlackVideoFramesEncoded;

  @Uint64()
  external int cVideoFramesDuplicated;

  @Uint32()
  external int cAudioSamplesPerSec;

  @Uint32()
  external int cAudioChannels;

  @Uint64()
  external int cAudioBytesReceived;

  @Uint64()
  external int cAudioFramesEncoded;
}

/// {@category Struct}
class MFMediaKeyStatus extends Struct {
  external Pointer<Uint8> pbKeyId;

  @Uint32()
  external int cbKeyId;

  @Int32()
  external int eMediaKeyStatus;
}

/// {@category Struct}
class MFNetCredentialManagerGetParam extends Struct {
  @Int32()
  external int hrOp;

  @Int32()
  external int fAllowLoggedOnUser;

  @Int32()
  external int fClearTextPackage;

  external Pointer<Utf16> pszUrl;

  external Pointer<Utf16> pszSite;

  external Pointer<Utf16> pszRealm;

  external Pointer<Utf16> pszPackage;

  @Int32()
  external int nRetries;
}

/// {@category Struct}
class MFOffset extends Struct {
  @Uint16()
  external int fract;

  @Int16()
  external int value;
}

/// {@category Struct}
class MFP_ACQUIRE_USER_CREDENTIAL_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  @IntPtr()
  external int dwUserData;

  @Int32()
  external int fProceedWithAuthentication;

  @Int32()
  external int hrAuthenticationStatus;

  external Pointer<Utf16> pwszURL;

  external Pointer<Utf16> pwszSite;

  external Pointer<Utf16> pwszRealm;

  external Pointer<Utf16> pwszPackage;

  @Int32()
  external int nRetries;

  @Uint32()
  external int flags;

  external Pointer<COMObject> pCredential;
}

/// {@category Struct}
class MFP_ERROR_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
}

/// {@category Struct}
class MFP_EVENT_HEADER extends Struct {
  @Int32()
  external int eEventType;

  @Int32()
  external int hrEvent;

  external Pointer<COMObject> pMediaPlayer;

  @Int32()
  external int eState;

  external Pointer<COMObject> pPropertyStore;
}

/// {@category Struct}
class MFP_FRAME_STEP_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_MEDIAITEM_CLEARED_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_MEDIAITEM_CREATED_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;

  @IntPtr()
  external int dwUserData;
}

/// {@category Struct}
class MFP_MEDIAITEM_SET_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_MF_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  @Uint32()
  external int MFEventType;

  external Pointer<COMObject> pMFMediaEvent;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_PAUSE_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_PLAYBACK_ENDED_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_PLAY_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_POSITION_SET_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFP_RATE_SET_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;

  @Float()
  external double flRate;
}

/// {@category Struct}
class MFP_STOP_EVENT extends Struct {
  external MFP_EVENT_HEADER header;

  external Pointer<COMObject> pMediaItem;
}

/// {@category Struct}
class MFPaletteEntry extends Union {
  external MFARGB ARGB;

  external MFAYUVSample AYCbCr;
}

/// {@category Struct}
class MFPinholeCameraIntrinsic_IntrinsicModel extends Struct {
  @Uint32()
  external int Width;

  @Uint32()
  external int Height;

  external MFCameraIntrinsic_PinholeCameraModel CameraModel;

  external MFCameraIntrinsic_DistortionModel DistortionModel;
}

/// {@category Struct}
class MFPinholeCameraIntrinsics extends Struct {
  @Uint32()
  external int IntrinsicModelCount;

  @Array(1)
  external Array<MFPinholeCameraIntrinsic_IntrinsicModel> IntrinsicModels;
}

/// {@category Struct}
class MFRR_COMPONENTS extends Struct {
  @Uint32()
  external int dwRRInfoVersion;

  @Uint32()
  external int dwRRComponents;

  external Pointer<MFRR_COMPONENT_HASH_INFO> pRRComponents;
}

/// {@category Struct}
class MFRR_COMPONENT_HASH_INFO extends Struct {
  @Uint32()
  external int ulReason;

  @Array(43)
  external Array<Uint16> _rgHeaderHash;

  String get rgHeaderHash {
    final charCodes = <int>[];
    for (var i = 0; i < 43; i++) {
      charCodes.add(_rgHeaderHash[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set rgHeaderHash(String value) {
    final stringToStore = value.padRight(43, '\x00');
    for (var i = 0; i < 43; i++) {
      _rgHeaderHash[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(43)
  external Array<Uint16> _rgPublicKeyHash;

  String get rgPublicKeyHash {
    final charCodes = <int>[];
    for (var i = 0; i < 43; i++) {
      charCodes.add(_rgPublicKeyHash[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set rgPublicKeyHash(String value) {
    final stringToStore = value.padRight(43, '\x00');
    for (var i = 0; i < 43; i++) {
      _rgPublicKeyHash[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wszName;

  String get wszName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class MFRatio extends Struct {
  @Uint32()
  external int Numerator;

  @Uint32()
  external int Denominator;
}

/// {@category Struct}
class MFTOPONODE_ATTRIBUTE_UPDATE extends Struct {
  @Uint64()
  external int NodeId;

  external GUID guidAttributeKey;

  @Int32()
  external int attrType;

  external _MFTOPONODE_ATTRIBUTE_UPDATE__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _MFTOPONODE_ATTRIBUTE_UPDATE__Anonymous_e__Union extends Union {
  @Uint32()
  external int u32;

  @Uint64()
  external int u64;

  @Double()
  external double d;
}

extension MFTOPONODE_ATTRIBUTE_UPDATE_Extension on MFTOPONODE_ATTRIBUTE_UPDATE {
  int get u32 => this.Anonymous.u32;
  set u32(int value) => this.Anonymous.u32 = value;

  int get u64 => this.Anonymous.u64;
  set u64(int value) => this.Anonymous.u64 = value;

  double get d => this.Anonymous.d;
  set d(double value) => this.Anonymous.d = value;
}

/// {@category Struct}
class MFT_INPUT_STREAM_INFO extends Struct {
  @Int64()
  external int hnsMaxLatency;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cbSize;

  @Uint32()
  external int cbMaxLookahead;

  @Uint32()
  external int cbAlignment;
}

/// {@category Struct}
class MFT_OUTPUT_DATA_BUFFER extends Struct {
  @Uint32()
  external int dwStreamID;

  external Pointer<COMObject> pSample;

  @Uint32()
  external int dwStatus;

  external Pointer<COMObject> pEvents;
}

/// {@category Struct}
class MFT_OUTPUT_STREAM_INFO extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int cbSize;

  @Uint32()
  external int cbAlignment;
}

/// {@category Struct}
class MFT_REGISTER_TYPE_INFO extends Struct {
  external GUID guidMajorType;

  external GUID guidSubtype;
}

/// {@category Struct}
class MFT_REGISTRATION_INFO extends Struct {
  external GUID clsid;

  external GUID guidCategory;

  @Uint32()
  external int uiFlags;

  external Pointer<Utf16> pszName;

  @Uint32()
  external int cInTypes;

  external Pointer<MFT_REGISTER_TYPE_INFO> pInTypes;

  @Uint32()
  external int cOutTypes;

  external Pointer<MFT_REGISTER_TYPE_INFO> pOutTypes;
}

/// {@category Struct}
class MFT_STREAM_STATE_PARAM extends Struct {
  @Uint32()
  external int StreamId;

  @Int32()
  external int State;
}

/// {@category Struct}
class MFVIDEOFORMAT extends Struct {
  @Uint32()
  external int dwSize;

  external MFVideoInfo videoInfo;

  external GUID guidFormat;

  external MFVideoCompressedInfo compressedInfo;

  external MFVideoSurfaceInfo surfaceInfo;
}

/// {@category Struct}
class MFVideoAlphaBitmap extends Struct {
  @Int32()
  external int GetBitmapFromDC;

  external _MFVideoAlphaBitmap__bitmap_e__Union bitmap;

  external MFVideoAlphaBitmapParams params;
}

/// {@category Struct}
class _MFVideoAlphaBitmap__bitmap_e__Union extends Union {
  @IntPtr()
  external int hdc;

  external Pointer<COMObject> pDDS;
}

extension MFVideoAlphaBitmap_Extension on MFVideoAlphaBitmap {
  int get hdc => this.bitmap.hdc;
  set hdc(int value) => this.bitmap.hdc = value;

  Pointer<COMObject> get pDDS => this.bitmap.pDDS;
  set pDDS(Pointer<COMObject> value) => this.bitmap.pDDS = value;
}

/// {@category Struct}
class MFVideoAlphaBitmapParams extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int clrSrcKey;

  external RECT rcSrc;

  external MFVideoNormalizedRect nrcDest;

  @Float()
  external double fAlpha;

  @Uint32()
  external int dwFilterMode;
}

/// {@category Struct}
class MFVideoArea extends Struct {
  external MFOffset OffsetX;

  external MFOffset OffsetY;

  external SIZE Area;
}

/// {@category Struct}
class MFVideoCompressedInfo extends Struct {
  @Int64()
  external int AvgBitrate;

  @Int64()
  external int AvgBitErrorRate;

  @Uint32()
  external int MaxKeyFrameSpacing;
}

/// {@category Struct}
class MFVideoInfo extends Struct {
  @Uint32()
  external int dwWidth;

  @Uint32()
  external int dwHeight;

  external MFRatio PixelAspectRatio;

  @Int32()
  external int SourceChromaSubsampling;

  @Int32()
  external int InterlaceMode;

  @Int32()
  external int TransferFunction;

  @Int32()
  external int ColorPrimaries;

  @Int32()
  external int TransferMatrix;

  @Int32()
  external int SourceLighting;

  external MFRatio FramesPerSecond;

  @Int32()
  external int NominalRange;

  external MFVideoArea GeometricAperture;

  external MFVideoArea MinimumDisplayAperture;

  external MFVideoArea PanScanAperture;

  @Uint64()
  external int VideoFlags;
}

/// {@category Struct}
class MFVideoNormalizedRect extends Struct {
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
class MFVideoSurfaceInfo extends Struct {
  @Uint32()
  external int Format;

  @Uint32()
  external int PaletteEntries;

  @Array(1)
  external Array<MFPaletteEntry> Palette;
}

/// {@category Struct}
class MF_BYTE_STREAM_CACHE_RANGE extends Struct {
  @Uint64()
  external int qwStartOffset;

  @Uint64()
  external int qwEndOffset;
}

/// {@category Struct}
class MF_FLOAT2 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;
}

/// {@category Struct}
class MF_FLOAT3 extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;
}

/// {@category Struct}
class MF_LEAKY_BUCKET_PAIR extends Struct {
  @Uint32()
  external int dwBitrate;

  @Uint32()
  external int msBufferWindow;
}

/// {@category Struct}
class MF_QUATERNION extends Struct {
  @Float()
  external double x;

  @Float()
  external double y;

  @Float()
  external double z;

  @Float()
  external double w;
}

/// {@category Struct}
class MF_SINK_WRITER_STATISTICS extends Struct {
  @Uint32()
  external int cb;

  @Int64()
  external int llLastTimestampReceived;

  @Int64()
  external int llLastTimestampEncoded;

  @Int64()
  external int llLastTimestampProcessed;

  @Int64()
  external int llLastStreamTickReceived;

  @Int64()
  external int llLastSinkSampleRequest;

  @Uint64()
  external int qwNumSamplesReceived;

  @Uint64()
  external int qwNumSamplesEncoded;

  @Uint64()
  external int qwNumSamplesProcessed;

  @Uint64()
  external int qwNumStreamTicksReceived;

  @Uint32()
  external int dwByteCountQueued;

  @Uint64()
  external int qwByteCountProcessed;

  @Uint32()
  external int dwNumOutstandingSinkSampleRequests;

  @Uint32()
  external int dwAverageSampleRateReceived;

  @Uint32()
  external int dwAverageSampleRateEncoded;

  @Uint32()
  external int dwAverageSampleRateProcessed;
}

/// {@category Struct}
class MF_TRANSCODE_SINK_INFO extends Struct {
  @Uint32()
  external int dwVideoStreamID;

  external Pointer<COMObject> pVideoMediaType;

  @Uint32()
  external int dwAudioStreamID;

  external Pointer<COMObject> pAudioMediaType;
}

/// {@category Struct}
class MF_VIDEO_SPHERICAL_VIEWDIRECTION extends Struct {
  @Int32()
  external int iHeading;

  @Int32()
  external int iPitch;

  @Int32()
  external int iRoll;
}

/// {@category Struct}
class MOVEREGION_INFO extends Struct {
  @Uint32()
  external int FrameNumber;

  @Uint32()
  external int NumMoveRegions;

  @Array(1)
  external Array<MOVE_RECT> MoveRegions;
}

/// {@category Struct}
class MOVE_RECT extends Struct {
  external POINT SourcePoint;

  external RECT DestRect;
}

/// {@category Struct}
class MT_ARBITRARY_HEADER extends Struct {
  external GUID majortype;

  external GUID subtype;

  @Int32()
  external int bFixedSizeSamples;

  @Int32()
  external int bTemporalCompression;

  @Uint32()
  external int lSampleSize;

  external GUID formattype;
}

/// {@category Struct}
class MT_CUSTOM_VIDEO_PRIMARIES extends Struct {
  @Float()
  external double fRx;

  @Float()
  external double fRy;

  @Float()
  external double fGx;

  @Float()
  external double fGy;

  @Float()
  external double fBx;

  @Float()
  external double fBy;

  @Float()
  external double fWx;

  @Float()
  external double fWy;
}

/// {@category Struct}
class OPM_ACP_AND_CGMSA_SIGNALING extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;

  @Uint32()
  external int ulStatusFlags;

  @Uint32()
  external int ulAvailableTVProtectionStandards;

  @Uint32()
  external int ulActiveTVProtectionStandard;

  @Uint32()
  external int ulReserved;

  @Uint32()
  external int ulAspectRatioValidMask1;

  @Uint32()
  external int ulAspectRatioData1;

  @Uint32()
  external int ulAspectRatioValidMask2;

  @Uint32()
  external int ulAspectRatioData2;

  @Uint32()
  external int ulAspectRatioValidMask3;

  @Uint32()
  external int ulAspectRatioData3;

  @Array(4)
  external Array<Uint32> ulReserved2;

  @Array(4)
  external Array<Uint32> ulReserved3;
}

/// {@category Struct}
class OPM_ACTUAL_OUTPUT_FORMAT extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;

  @Uint32()
  external int ulStatusFlags;

  @Uint32()
  external int ulDisplayWidth;

  @Uint32()
  external int ulDisplayHeight;

  @Int32()
  external int dsfSampleInterleaveFormat;

  @Uint32()
  external int d3dFormat;

  @Uint32()
  external int ulFrequencyNumerator;

  @Uint32()
  external int ulFrequencyDenominator;
}

/// {@category Struct}
class OPM_CONFIGURE_PARAMETERS extends Struct {
  external OPM_OMAC omac;

  external GUID guidSetting;

  @Uint32()
  external int ulSequenceNumber;

  @Uint32()
  external int cbParametersSize;

  @Array(4056)
  external Array<Uint8> abParameters;
}

/// {@category Struct}
class OPM_CONNECTED_HDCP_DEVICE_INFORMATION extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;

  @Uint32()
  external int ulStatusFlags;

  @Uint32()
  external int ulHDCPFlags;

  external OPM_HDCP_KEY_SELECTION_VECTOR ksvB;

  @Array(11)
  external Array<Uint8> Reserved;

  @Array(16)
  external Array<Uint8> Reserved2;

  @Array(16)
  external Array<Uint8> Reserved3;
}

/// {@category Struct}
class OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;

  external GUID guidInformation;

  @Uint32()
  external int ulSequenceNumber;

  @Uint32()
  external int cbParametersSize;

  @Array(4056)
  external Array<Uint8> abParameters;
}

/// {@category Struct}
class OPM_ENCRYPTED_INITIALIZATION_PARAMETERS extends Struct {
  @Array(256)
  external Array<Uint8> abEncryptedInitializationParameters;
}

/// {@category Struct}
class OPM_GET_CODEC_INFO_INFORMATION extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;

  @Uint32()
  external int Merit;
}

/// {@category Struct}
@Packed(1)
class OPM_GET_CODEC_INFO_PARAMETERS extends Struct {
  @Uint32()
  external int cbVerifier;

  @Array(4052)
  external Array<Uint8> Verifier;
}

/// {@category Struct}
class OPM_GET_INFO_PARAMETERS extends Struct {
  external OPM_OMAC omac;

  external OPM_RANDOM_NUMBER rnRandomNumber;

  external GUID guidInformation;

  @Uint32()
  external int ulSequenceNumber;

  @Uint32()
  external int cbParametersSize;

  @Array(4056)
  external Array<Uint8> abParameters;
}

/// {@category Struct}
class OPM_HDCP_KEY_SELECTION_VECTOR extends Struct {
  @Array(5)
  external Array<Uint8> abKeySelectionVector;
}

/// {@category Struct}
class OPM_OMAC extends Struct {
  @Array(16)
  external Array<Uint8> abOMAC;
}

/// {@category Struct}
class OPM_OUTPUT_ID_DATA extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;

  @Uint32()
  external int ulStatusFlags;

  @Uint64()
  external int OutputId;
}

/// {@category Struct}
class OPM_RANDOM_NUMBER extends Struct {
  @Array(16)
  external Array<Uint8> abRandomNumber;
}

/// {@category Struct}
class OPM_REQUESTED_INFORMATION extends Struct {
  external OPM_OMAC omac;

  @Uint32()
  external int cbRequestedInformationSize;

  @Array(4076)
  external Array<Uint8> abRequestedInformation;
}

/// {@category Struct}
@Packed(1)
class OPM_SET_ACP_AND_CGMSA_SIGNALING_PARAMETERS extends Struct {
  @Uint32()
  external int ulNewTVProtectionStandard;

  @Uint32()
  external int ulAspectRatioChangeMask1;

  @Uint32()
  external int ulAspectRatioData1;

  @Uint32()
  external int ulAspectRatioChangeMask2;

  @Uint32()
  external int ulAspectRatioData2;

  @Uint32()
  external int ulAspectRatioChangeMask3;

  @Uint32()
  external int ulAspectRatioData3;

  @Array(4)
  external Array<Uint32> ulReserved;

  @Array(4)
  external Array<Uint32> ulReserved2;

  @Uint32()
  external int ulReserved3;
}

/// {@category Struct}
@Packed(1)
class OPM_SET_HDCP_SRM_PARAMETERS extends Struct {
  @Uint32()
  external int ulSRMVersion;
}

/// {@category Struct}
@Packed(1)
class OPM_SET_PROTECTION_LEVEL_PARAMETERS extends Struct {
  @Uint32()
  external int ulProtectionType;

  @Uint32()
  external int ulProtectionLevel;

  @Uint32()
  external int Reserved;

  @Uint32()
  external int Reserved2;
}

/// {@category Struct}
class OPM_STANDARD_INFORMATION extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;

  @Uint32()
  external int ulStatusFlags;

  @Uint32()
  external int ulInformation;

  @Uint32()
  external int ulReserved;

  @Uint32()
  external int ulReserved2;
}

/// {@category Struct}
class ROI_AREA extends Struct {
  external RECT rect;

  @Int32()
  external int QPDelta;
}

/// {@category Struct}
class SENSORPROFILEID extends Struct {
  external GUID Type;

  @Uint32()
  external int Index;

  @Uint32()
  external int Unused;
}

/// {@category Struct}
class STREAM_MEDIUM extends Struct {
  external GUID gidMedium;

  @Uint32()
  external int unMediumInstance;
}

/// {@category Struct}
class TOC_DESCRIPTOR extends Struct {
  external GUID guidID;

  @Uint16()
  external int wStreamNumber;

  external GUID guidType;

  @Uint16()
  external int wLanguageIndex;
}

/// {@category Struct}
class TOC_ENTRY_DESCRIPTOR extends Struct {
  @Uint64()
  external int qwStartTime;

  @Uint64()
  external int qwEndTime;

  @Uint64()
  external int qwStartPacketOffset;

  @Uint64()
  external int qwEndPacketOffset;

  @Uint64()
  external int qwRepresentativeFrameTime;
}
