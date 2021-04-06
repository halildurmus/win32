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

class D3DOVERLAYCAPS extends Struct {
  @Uint32() external int Caps;
  @Uint32() external int MaxOverlayDisplayWidth;
  @Uint32() external int MaxOverlayDisplayHeight;
}

class D3DCONTENTPROTECTIONCAPS extends Struct {
  @Uint32() external int Caps;
  external GUID KeyExchangeType;
  @Uint32() external int BufferAlignmentStart;
  @Uint32() external int BlockAlignmentSize;
  @Uint64() external int ProtectedMemorySize;
}

class CodecAPIEventData extends Struct {
  external GUID guid;
  @Uint32() external int dataLength;
  @Array(3)
  external Array<Uint32> reserved;
}

class D3D12_VIDEO_FORMAT extends Struct {
  @Uint32() external int Format;
  @Uint32() external int ColorSpace;
}

class D3D12_VIDEO_SAMPLE extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  external D3D12_VIDEO_FORMAT Format;
}

class D3D12_VIDEO_DECODE_CONFIGURATION extends Struct {
  external GUID DecodeProfile;
  @Uint32() external int BitstreamEncryption;
  @Uint32() external int InterlaceType;
}

class D3D12_VIDEO_DECODER_DESC extends Struct {
  @Uint32() external int NodeMask;
  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
}

class D3D12_VIDEO_DECODER_HEAP_DESC extends Struct {
  @Uint32() external int NodeMask;
  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
  @Uint32() external int DecodeWidth;
  @Uint32() external int DecodeHeight;
  @Uint32() external int Format;
  external DXGI_RATIONAL FrameRate;
  @Uint32() external int BitRate;
  @Uint32() external int MaxDecodePictureBufferCount;
}

class D3D12_VIDEO_SIZE_RANGE extends Struct {
  @Uint32() external int MaxWidth;
  @Uint32() external int MaxHeight;
  @Uint32() external int MinWidth;
  @Uint32() external int MinHeight;
}

class D3D12_VIDEO_PROCESS_ALPHA_BLENDING extends Struct {
  @Int32() external int Enable;
  @Float() external double Alpha;
}

class D3D12_VIDEO_PROCESS_LUMA_KEY extends Struct {
  @Int32() external int Enable;
  @Float() external double Lower;
  @Float() external double Upper;
}

class D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC extends Struct {
  @Uint32() external int Format;
  @Uint32() external int ColorSpace;
  external DXGI_RATIONAL SourceAspectRatio;
  external DXGI_RATIONAL DestinationAspectRatio;
  external DXGI_RATIONAL FrameRate;
  external D3D12_VIDEO_SIZE_RANGE SourceSizeRange;
  external D3D12_VIDEO_SIZE_RANGE DestinationSizeRange;
  @Int32() external int EnableOrientation;
  @Uint32() external int FilterFlags;
  @Uint32() external int StereoFormat;
  @Uint32() external int FieldType;
  @Uint32() external int DeinterlaceMode;
  @Int32() external int EnableAlphaBlending;
  external D3D12_VIDEO_PROCESS_LUMA_KEY LumaKey;
  @Uint32() external int NumPastFrames;
  @Uint32() external int NumFutureFrames;
  @Int32() external int EnableAutoProcessing;
}

class D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC extends Struct {
  @Uint32() external int Format;
  @Uint32() external int ColorSpace;
  @Uint32() external int AlphaFillMode;
  @Uint32() external int AlphaFillModeSourceStreamIndex;
  @Array(4)
  external Array<Float> BackgroundColor;
  external DXGI_RATIONAL FrameRate;
  @Int32() external int EnableStereo;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_SUPPORT extends Struct {
  @Uint32() external int NodeIndex;
  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int DecodeFormat;
  external DXGI_RATIONAL FrameRate;
  @Uint32() external int BitRate;
  @Uint32() external int SupportFlags;
  @Uint32() external int ConfigurationFlags;
  @Uint32() external int DecodeTier;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_PROFILE_COUNT extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int ProfileCount;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_PROFILES extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int ProfileCount;
  external Pointer<GUID> pProfiles;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_FORMAT_COUNT extends Struct {
  @Uint32() external int NodeIndex;
  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
  @Uint32() external int FormatCount;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_FORMATS extends Struct {
  @Uint32() external int NodeIndex;
  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
  @Uint32() external int FormatCount;
  external Pointer<Uint32> pOutputFormats;
}

class D3D12_FEATURE_DATA_VIDEO_ARCHITECTURE extends Struct {
  @Int32() external int IOCoherent;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_HISTOGRAM extends Struct {
  @Uint32() external int NodeIndex;
  external GUID DecodeProfile;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int DecodeFormat;
  @Uint32() external int Components;
  @Uint32() external int BinCount;
  @Uint32() external int CounterBitDepth;
}

class D3D12_VIDEO_SCALE_SUPPORT extends Struct {
  external D3D12_VIDEO_SIZE_RANGE OutputSizeRange;
  @Uint32() external int Flags;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_CONVERSION_SUPPORT extends Struct {
  @Uint32() external int NodeIndex;
  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
  external D3D12_VIDEO_SAMPLE DecodeSample;
  external D3D12_VIDEO_FORMAT OutputFormat;
  external DXGI_RATIONAL FrameRate;
  @Uint32() external int BitRate;
  @Uint32() external int SupportFlags;
  external D3D12_VIDEO_SCALE_SUPPORT ScaleSupport;
}

class D3D12_FEATURE_DATA_VIDEO_DECODER_HEAP_SIZE extends Struct {
  external D3D12_VIDEO_DECODER_HEAP_DESC VideoDecoderHeapDesc;
  @Uint64() external int MemoryPoolL0Size;
  @Uint64() external int MemoryPoolL1Size;
}

class D3D12_FEATURE_DATA_VIDEO_PROCESSOR_SIZE extends Struct {
  @Uint32() external int NodeMask;
  external Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc;
  @Uint32() external int NumInputStreamDescs;
  external Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs;
  @Uint64() external int MemoryPoolL0Size;
  @Uint64() external int MemoryPoolL1Size;
}

class D3D12_QUERY_DATA_VIDEO_DECODE_STATISTICS extends Struct {
  @Uint64() external int Status;
  @Uint64() external int NumMacroblocksAffected;
  external DXGI_RATIONAL FrameRate;
  @Uint32() external int BitRate;
}

class D3D12_VIDEO_DECODE_FRAME_ARGUMENT extends Struct {
  @Uint32() external int Type;
  @Uint32() external int Size;
  external Pointer pData;
}

class D3D12_VIDEO_DECODE_REFERENCE_FRAMES extends Struct {
  @Uint32() external int NumTexture2Ds;
  external Pointer<ID3D12Resource> ppTexture2Ds;
  external Pointer<Uint32> pSubresources;
  external Pointer<ID3D12VideoDecoderHeap> ppHeaps;
}

class D3D12_VIDEO_DECODE_COMPRESSED_BITSTREAM extends Struct {
  external ID3D12Resource pBuffer;
  @Uint64() external int Offset;
  @Uint64() external int Size;
}

class D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS extends Struct {
  @Int32() external int Enable;
  external ID3D12Resource pReferenceTexture2D;
  @Uint32() external int ReferenceSubresource;
  @Uint32() external int OutputColorSpace;
  @Uint32() external int DecodeColorSpace;
}

class D3D12_VIDEO_DECODE_INPUT_STREAM_ARGUMENTS extends Struct {
  @Uint32() external int NumFrameArguments;
  @Array(10)
  external Array<D3D12_VIDEO_DECODE_FRAME_ARGUMENT> FrameArguments;
  external D3D12_VIDEO_DECODE_REFERENCE_FRAMES ReferenceFrames;
  external D3D12_VIDEO_DECODE_COMPRESSED_BITSTREAM CompressedBitstream;
  external ID3D12VideoDecoderHeap pHeap;
}

class D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS extends Struct {
  external ID3D12Resource pOutputTexture2D;
  @Uint32() external int OutputSubresource;
  external D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS ConversionArguments;
}

class D3D12_VIDEO_PROCESS_FILTER_RANGE extends Struct {
  @Int32() external int Minimum;
  @Int32() external int Maximum;
  @Int32() external int Default;
  @Float() external double Multiplier;
}

class D3D12_FEATURE_DATA_VIDEO_PROCESS_SUPPORT extends Struct {
  @Uint32() external int NodeIndex;
  external D3D12_VIDEO_SAMPLE InputSample;
  @Uint32() external int InputFieldType;
  @Uint32() external int InputStereoFormat;
  external DXGI_RATIONAL InputFrameRate;
  external D3D12_VIDEO_FORMAT OutputFormat;
  @Uint32() external int OutputStereoFormat;
  external DXGI_RATIONAL OutputFrameRate;
  @Uint32() external int SupportFlags;
  external D3D12_VIDEO_SCALE_SUPPORT ScaleSupport;
  @Uint32() external int FeatureSupport;
  @Uint32() external int DeinterlaceSupport;
  @Uint32() external int AutoProcessingSupport;
  @Uint32() external int FilterSupport;
  @Array(32)
  external Array<D3D12_VIDEO_PROCESS_FILTER_RANGE> FilterRangeSupport;
}

class D3D12_FEATURE_DATA_VIDEO_PROCESS_MAX_INPUT_STREAMS extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int MaxInputStreams;
}

class D3D12_FEATURE_DATA_VIDEO_PROCESS_REFERENCE_INFO extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int DeinterlaceMode;
  @Uint32() external int Filters;
  @Uint32() external int FeatureSupport;
  external DXGI_RATIONAL InputFrameRate;
  external DXGI_RATIONAL OutputFrameRate;
  @Int32() external int EnableAutoProcessing;
  @Uint32() external int PastFrames;
  @Uint32() external int FutureFrames;
}

class D3D12_VIDEO_PROCESS_REFERENCE_SET extends Struct {
  @Uint32() external int NumPastFrames;
  external Pointer<ID3D12Resource> ppPastFrames;
  external Pointer<Uint32> pPastSubresources;
  @Uint32() external int NumFutureFrames;
  external Pointer<ID3D12Resource> ppFutureFrames;
  external Pointer<Uint32> pFutureSubresources;
}

class D3D12_VIDEO_PROCESS_TRANSFORM extends Struct {
  external RECT SourceRectangle;
  external RECT DestinationRectangle;
  @Uint32() external int Orientation;
}

class D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE extends Struct {
  @Uint32() external int OutputIndex;
  @Uint32() external int InputFrameOrField;
}

class D3D12_VIDEO_PROCESS_INPUT_STREAM extends Struct {
  external ID3D12Resource pTexture2D;
  @Uint32() external int Subresource;
  external D3D12_VIDEO_PROCESS_REFERENCE_SET ReferenceSet;
}

class D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS extends Struct {
  @Array(2)
  external Array<D3D12_VIDEO_PROCESS_INPUT_STREAM> InputStream;
  external D3D12_VIDEO_PROCESS_TRANSFORM Transform;
  @Uint32() external int Flags;
  external D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE RateInfo;
  @Array(32)
  external Array<Int32> FilterLevels;
  external D3D12_VIDEO_PROCESS_ALPHA_BLENDING AlphaBlending;
}

class D3D12_VIDEO_PROCESS_OUTPUT_STREAM extends Struct {
  external ID3D12Resource pTexture2D;
  @Uint32() external int Subresource;
}

class D3D12_VIDEO_PROCESS_OUTPUT_STREAM_ARGUMENTS extends Struct {
  @Array(2)
  external Array<D3D12_VIDEO_PROCESS_OUTPUT_STREAM> OutputStream;
  external RECT TargetRectangle;
}

class D3D12_VIDEO_DECODE_OUTPUT_HISTOGRAM extends Struct {
  @Uint64() external int Offset;
  external ID3D12Resource pBuffer;
}

class D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS1 extends Struct {
  @Int32() external int Enable;
  external ID3D12Resource pReferenceTexture2D;
  @Uint32() external int ReferenceSubresource;
  @Uint32() external int OutputColorSpace;
  @Uint32() external int DecodeColorSpace;
  @Uint32() external int OutputWidth;
  @Uint32() external int OutputHeight;
}

class D3D12_VIDEO_DECODE_OUTPUT_STREAM_ARGUMENTS1 extends Struct {
  external ID3D12Resource pOutputTexture2D;
  @Uint32() external int OutputSubresource;
  external D3D12_VIDEO_DECODE_CONVERSION_ARGUMENTS1 ConversionArguments;
  @Array(4)
  external Array<D3D12_VIDEO_DECODE_OUTPUT_HISTOGRAM> Histograms;
}

class D3D12_VIDEO_PROCESS_INPUT_STREAM_ARGUMENTS1 extends Struct {
  @Array(2)
  external Array<D3D12_VIDEO_PROCESS_INPUT_STREAM> InputStream;
  external D3D12_VIDEO_PROCESS_TRANSFORM Transform;
  @Uint32() external int Flags;
  external D3D12_VIDEO_PROCESS_INPUT_STREAM_RATE RateInfo;
  @Array(32)
  external Array<Int32> FilterLevels;
  external D3D12_VIDEO_PROCESS_ALPHA_BLENDING AlphaBlending;
  @Uint32() external int FieldType;
}

class D3D12_FEATURE_DATA_VIDEO_FEATURE_AREA_SUPPORT extends Struct {
  @Uint32() external int NodeIndex;
  @Int32() external int VideoDecodeSupport;
  @Int32() external int VideoProcessSupport;
  @Int32() external int VideoEncodeSupport;
}

class D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int InputFormat;
  @Uint32() external int BlockSizeFlags;
  @Uint32() external int PrecisionFlags;
  external D3D12_VIDEO_SIZE_RANGE SizeRange;
}

class D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR_SIZE extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int InputFormat;
  @Uint32() external int BlockSize;
  @Uint32() external int Precision;
  external D3D12_VIDEO_SIZE_RANGE SizeRange;
  @Int32() external int Protected;
  @Uint64() external int MotionVectorHeapMemoryPoolL0Size;
  @Uint64() external int MotionVectorHeapMemoryPoolL1Size;
  @Uint64() external int MotionEstimatorMemoryPoolL0Size;
  @Uint64() external int MotionEstimatorMemoryPoolL1Size;
}

class D3D12_VIDEO_MOTION_ESTIMATOR_DESC extends Struct {
  @Uint32() external int NodeMask;
  @Uint32() external int InputFormat;
  @Uint32() external int BlockSize;
  @Uint32() external int Precision;
  external D3D12_VIDEO_SIZE_RANGE SizeRange;
}

class D3D12_VIDEO_MOTION_VECTOR_HEAP_DESC extends Struct {
  @Uint32() external int NodeMask;
  @Uint32() external int InputFormat;
  @Uint32() external int BlockSize;
  @Uint32() external int Precision;
  external D3D12_VIDEO_SIZE_RANGE SizeRange;
}

class D3D12_RESOURCE_COORDINATE extends Struct {
  @Uint64() external int X;
  @Uint32() external int Y;
  @Uint32() external int Z;
  @Uint32() external int SubresourceIndex;
}

class D3D12_VIDEO_MOTION_ESTIMATOR_OUTPUT extends Struct {
  external ID3D12VideoMotionVectorHeap pMotionVectorHeap;
}

class D3D12_VIDEO_MOTION_ESTIMATOR_INPUT extends Struct {
  external ID3D12Resource pInputTexture2D;
  @Uint32() external int InputSubresourceIndex;
  external ID3D12Resource pReferenceTexture2D;
  @Uint32() external int ReferenceSubresourceIndex;
  external ID3D12VideoMotionVectorHeap pHintMotionVectorHeap;
}

class D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_OUTPUT extends Struct {
  external ID3D12Resource pMotionVectorTexture2D;
  external D3D12_RESOURCE_COORDINATE MotionVectorCoordinate;
}

class D3D12_RESOLVE_VIDEO_MOTION_VECTOR_HEAP_INPUT extends Struct {
  external ID3D12VideoMotionVectorHeap pMotionVectorHeap;
  @Uint32() external int PixelWidth;
  @Uint32() external int PixelHeight;
}

class D3D12_FEATURE_DATA_VIDEO_DECODE_PROTECTED_RESOURCES extends Struct {
  @Uint32() external int NodeIndex;
  external D3D12_VIDEO_DECODE_CONFIGURATION Configuration;
  @Uint32() external int SupportFlags;
}

class D3D12_FEATURE_DATA_VIDEO_PROCESS_PROTECTED_RESOURCES extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int SupportFlags;
}

class D3D12_FEATURE_DATA_VIDEO_MOTION_ESTIMATOR_PROTECTED_RESOURCES extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int SupportFlags;
}

class D3D12_FEATURE_DATA_VIDEO_DECODER_HEAP_SIZE1 extends Struct {
  external D3D12_VIDEO_DECODER_HEAP_DESC VideoDecoderHeapDesc;
  @Int32() external int Protected;
  @Uint64() external int MemoryPoolL0Size;
  @Uint64() external int MemoryPoolL1Size;
}

class D3D12_FEATURE_DATA_VIDEO_PROCESSOR_SIZE1 extends Struct {
  @Uint32() external int NodeMask;
  external Pointer<D3D12_VIDEO_PROCESS_OUTPUT_STREAM_DESC> pOutputStreamDesc;
  @Uint32() external int NumInputStreamDescs;
  external Pointer<D3D12_VIDEO_PROCESS_INPUT_STREAM_DESC> pInputStreamDescs;
  @Int32() external int Protected;
  @Uint64() external int MemoryPoolL0Size;
  @Uint64() external int MemoryPoolL1Size;
}

class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_COUNT extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int CommandCount;
}

class D3D12_VIDEO_EXTENSION_COMMAND_INFO extends Struct {
  external GUID CommandId;
  external Pointer<Utf16> Name;
  @Uint32() external int CommandListSupportFlags;
}

class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMANDS extends Struct {
  @Uint32() external int NodeIndex;
  @Uint32() external int CommandCount;
  external Pointer<D3D12_VIDEO_EXTENSION_COMMAND_INFO> pCommandInfos;
}

class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_PARAMETER_COUNT extends Struct {
  external GUID CommandId;
  @Uint32() external int Stage;
  @Uint32() external int ParameterCount;
  @Uint32() external int ParameterPacking;
}

class D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_INFO extends Struct {
  external Pointer<Utf16> Name;
  @Uint32() external int Type;
  @Uint32() external int Flags;
}

class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_PARAMETERS extends Struct {
  external GUID CommandId;
  @Uint32() external int Stage;
  @Uint32() external int ParameterCount;
  external Pointer<D3D12_VIDEO_EXTENSION_COMMAND_PARAMETER_INFO> pParameterInfos;
}

class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_SUPPORT extends Struct {
  @Uint32() external int NodeIndex;
  external GUID CommandId;
  external Pointer pInputData;
  @IntPtr() external int InputDataSizeInBytes;
  external Pointer pOutputData;
  @IntPtr() external int OutputDataSizeInBytes;
}

class D3D12_FEATURE_DATA_VIDEO_EXTENSION_COMMAND_SIZE extends Struct {
  @Uint32() external int NodeIndex;
  external GUID CommandId;
  external Pointer pCreationParameters;
  @IntPtr() external int CreationParametersSizeInBytes;
  @Uint64() external int MemoryPoolL0Size;
  @Uint64() external int MemoryPoolL1Size;
}

class D3D12_VIDEO_EXTENSION_COMMAND_DESC extends Struct {
  @Uint32() external int NodeMask;
  external GUID CommandId;
}

class CMpeg4DecMediaObject extends Struct {
}

class CMpeg43DecMediaObject extends Struct {
}

class CMpeg4sDecMediaObject extends Struct {
}

class CMpeg4sDecMFT extends Struct {
}

class CZuneM4S2DecMediaObject extends Struct {
}

class CMpeg4EncMediaObject extends Struct {
}

class CMpeg4sEncMediaObject extends Struct {
}

class CMSSCDecMediaObject extends Struct {
}

class CMSSCEncMediaObject extends Struct {
}

class CMSSCEncMediaObject2 extends Struct {
}

class CWMADecMediaObject extends Struct {
}

class CWMAEncMediaObject extends Struct {
}

class CWMATransMediaObject extends Struct {
}

class CWMSPDecMediaObject extends Struct {
}

class CWMSPEncMediaObject extends Struct {
}

class CWMSPEncMediaObject2 extends Struct {
}

class CWMTDecMediaObject extends Struct {
}

class CWMTEncMediaObject extends Struct {
}

class CWMVDecMediaObject extends Struct {
}

class CWMVEncMediaObject2 extends Struct {
}

class CWMVXEncMediaObject extends Struct {
}

class CWMV9EncMediaObject extends Struct {
}

class CWVC1DecMediaObject extends Struct {
}

class CWVC1EncMediaObject extends Struct {
}

class CDeColorConvMediaObject extends Struct {
}

class CDVDecoderMediaObject extends Struct {
}

class CDVEncoderMediaObject extends Struct {
}

class CMpeg2DecMediaObject extends Struct {
}

class CPK_DS_MPEG2Decoder extends Struct {
}

class CAC3DecMediaObject extends Struct {
}

class CPK_DS_AC3Decoder extends Struct {
}

class CMP3DecMediaObject extends Struct {
}

class CResamplerMediaObject extends Struct {
}

class CResizerMediaObject extends Struct {
}

class CInterlaceMediaObject extends Struct {
}

class CWMAudioLFXAPO extends Struct {
}

class CWMAudioGFXAPO extends Struct {
}

class CWMAudioSpdTxDMO extends Struct {
}

class CWMAudioAEC extends Struct {
}

class CClusterDetectorDmo extends Struct {
}

class CColorControlDmo extends Struct {
}

class CColorConvertDMO extends Struct {
}

class CColorLegalizerDmo extends Struct {
}

class CFrameInterpDMO extends Struct {
}

class CFrameRateConvertDmo extends Struct {
}

class CResizerDMO extends Struct {
}

class CShotDetectorDmo extends Struct {
}

class CSmpteTransformsDmo extends Struct {
}

class CThumbnailGeneratorDmo extends Struct {
}

class CTocGeneratorDmo extends Struct {
}

class CMPEGAACDecMediaObject extends Struct {
}

class CNokiaAACDecMediaObject extends Struct {
}

class CVodafoneAACDecMediaObject extends Struct {
}

class CZuneAACCCDecMediaObject extends Struct {
}

class CNokiaAACCCDecMediaObject extends Struct {
}

class CVodafoneAACCCDecMediaObject extends Struct {
}

class CMPEG2EncoderDS extends Struct {
}

class CMPEG2EncoderVideoDS extends Struct {
}

class CMPEG2EncoderAudioDS extends Struct {
}

class CMPEG2AudDecoderDS extends Struct {
}

class CMPEG2VidDecoderDS extends Struct {
}

class CDTVAudDecoderDS extends Struct {
}

class CDTVVidDecoderDS extends Struct {
}

class CMSAC3Enc extends Struct {
}

class CMSH264DecoderMFT extends Struct {
}

class CMSH263EncoderMFT extends Struct {
}

class CMSH264EncoderMFT extends Struct {
}

class CMSH265EncoderMFT extends Struct {
}

class CMSVPXEncoderMFT extends Struct {
}

class CMSH264RemuxMFT extends Struct {
}

class CMSAACDecMFT extends Struct {
}

class AACMFTEncoder extends Struct {
}

class CMSDDPlusDecMFT extends Struct {
}

class CMPEG2VideoEncoderMFT extends Struct {
}

class CMPEG2AudioEncoderMFT extends Struct {
}

class CMSMPEGDecoderMFT extends Struct {
}

class CMSMPEGAudDecMFT extends Struct {
}

class CMSDolbyDigitalEncMFT extends Struct {
}

class MP3ACMCodecWrapper extends Struct {
}

class ALawCodecWrapper extends Struct {
}

class MULawCodecWrapper extends Struct {
}

class CMSVideoDSPMFT extends Struct {
}

class VorbisDecoderMFT extends Struct {
}

class CMSFLACDecMFT extends Struct {
}

class CMSFLACEncMFT extends Struct {
}

class MFFLACBytestreamHandler extends Struct {
}

class MFFLACSinkClassFactory extends Struct {
}

class CMSALACDecMFT extends Struct {
}

class CMSALACEncMFT extends Struct {
}

class CMSOpusDecMFT extends Struct {
}

class MSAMRNBDecoder extends Struct {
}

class MSAMRNBEncoder extends Struct {
}

class MFAMRNBByteStreamHandler extends Struct {
}

class MFAMRNBSinkClassFactory extends Struct {
}

class AecQualityMetrics_Struct extends Struct {
  @Int64() external int i64Timestamp;
  @Uint8() external int ConvergenceFlag;
  @Uint8() external int MicClippedFlag;
  @Uint8() external int MicSilenceFlag;
  @Uint8() external int PstvFeadbackFlag;
  @Uint8() external int SpkClippedFlag;
  @Uint8() external int SpkMuteFlag;
  @Uint8() external int GlitchFlag;
  @Uint8() external int DoubleTalkFlag;
  @Uint32() external int uGlitchCount;
  @Uint32() external int uMicClipCount;
  @Float() external double fDuration;
  @Float() external double fTSVariance;
  @Float() external double fTSDriftRate;
  @Float() external double fVoiceLevel;
  @Float() external double fNoiseLevel;
  @Float() external double fERLE;
  @Float() external double fAvgERLE;
  @Uint32() external int dwReserved;
}

class TOC_DESCRIPTOR extends Struct {
  external GUID guidID;
  @Uint16() external int wStreamNumber;
  external GUID guidType;
  @Uint16() external int wLanguageIndex;
}

class TOC_ENTRY_DESCRIPTOR extends Struct {
  @Uint64() external int qwStartTime;
  @Uint64() external int qwEndTime;
  @Uint64() external int qwStartPacketOffset;
  @Uint64() external int qwEndPacketOffset;
  @Uint64() external int qwRepresentativeFrameTime;
}

class DXVA_AYUVsample2 extends Struct {
  @Uint8() external int bCrValue;
  @Uint8() external int bCbValue;
  @Uint8() external int bY_Value;
  @Uint8() external int bSampleAlpha8;
}

class DXVA_BufferDescription extends Struct {
  @Uint32() external int dwTypeIndex;
  @Uint32() external int dwBufferIndex;
  @Uint32() external int dwDataOffset;
  @Uint32() external int dwDataSize;
  @Uint32() external int dwFirstMBaddress;
  @Uint32() external int dwNumMBsInBuffer;
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  @Uint32() external int dwStride;
  @Uint32() external int dwReservedBits;
}

class DXVA_ConfigPictureDecode extends Struct {
  @Uint32() external int dwFunction;
  @Array(3)
  external Array<Uint32> dwReservedBits;
  external GUID guidConfigBitstreamEncryption;
  external GUID guidConfigMBcontrolEncryption;
  external GUID guidConfigResidDiffEncryption;
  @Uint8() external int bConfigBitstreamRaw;
  @Uint8() external int bConfigMBcontrolRasterOrder;
  @Uint8() external int bConfigResidDiffHost;
  @Uint8() external int bConfigSpatialResid8;
  @Uint8() external int bConfigResid8Subtraction;
  @Uint8() external int bConfigSpatialHost8or9Clipping;
  @Uint8() external int bConfigSpatialResidInterleaved;
  @Uint8() external int bConfigIntraResidUnsigned;
  @Uint8() external int bConfigResidDiffAccelerator;
  @Uint8() external int bConfigHostInverseScan;
  @Uint8() external int bConfigSpecificIDCT;
  @Uint8() external int bConfig4GroupedCoefs;
}

class DXVA_PictureParameters extends Struct {
  @Uint16() external int wDecodedPictureIndex;
  @Uint16() external int wDeblockedPictureIndex;
  @Uint16() external int wForwardRefPictureIndex;
  @Uint16() external int wBackwardRefPictureIndex;
  @Uint16() external int wPicWidthInMBminus1;
  @Uint16() external int wPicHeightInMBminus1;
  @Uint8() external int bMacroblockWidthMinus1;
  @Uint8() external int bMacroblockHeightMinus1;
  @Uint8() external int bBlockWidthMinus1;
  @Uint8() external int bBlockHeightMinus1;
  @Uint8() external int bBPPminus1;
  @Uint8() external int bPicStructure;
  @Uint8() external int bSecondField;
  @Uint8() external int bPicIntra;
  @Uint8() external int bPicBackwardPrediction;
  @Uint8() external int bBidirectionalAveragingMode;
  @Uint8() external int bMVprecisionAndChromaRelation;
  @Uint8() external int bChromaFormat;
  @Uint8() external int bPicScanFixed;
  @Uint8() external int bPicScanMethod;
  @Uint8() external int bPicReadbackRequests;
  @Uint8() external int bRcontrol;
  @Uint8() external int bPicSpatialResid8;
  @Uint8() external int bPicOverflowBlocks;
  @Uint8() external int bPicExtrapolation;
  @Uint8() external int bPicDeblocked;
  @Uint8() external int bPicDeblockConfined;
  @Uint8() external int bPic4MVallowed;
  @Uint8() external int bPicOBMC;
  @Uint8() external int bPicBinPB;
  @Uint8() external int bMV_RPS;
  @Uint8() external int bReservedBits;
  @Uint16() external int wBitstreamFcodes;
  @Uint16() external int wBitstreamPCEelements;
  @Uint8() external int bBitstreamConcealmentNeed;
  @Uint8() external int bBitstreamConcealmentMethod;
}

class DXVAUncompDataInfo extends Struct {
  @Uint32() external int UncompWidth;
  @Uint32() external int UncompHeight;
  @Uint32() external int UncompFormat;
}

class DXVACompBufferInfo extends Struct {
  @Uint32() external int NumCompBuffers;
  @Uint32() external int WidthToCreate;
  @Uint32() external int HeightToCreate;
  @Uint32() external int BytesToAllocate;
  @Uint32() external int Usage;
  @Uint32() external int Pool;
  @Uint32() external int Format;
}

class DXVABufferInfo extends Struct {
  external Pointer pCompSurface;
  @Uint32() external int DataOffset;
  @Uint32() external int DataSize;
}

class DXVA_ExtendedFormat extends Struct {
  @Uint32() external int _bitfield;
}

class DXVA_Frequency extends Struct {
  @Uint32() external int Numerator;
  @Uint32() external int Denominator;
}

class DXVA_VideoDesc extends Struct {
  @Uint32() external int Size;
  @Uint32() external int SampleWidth;
  @Uint32() external int SampleHeight;
  @Uint32() external int SampleFormat;
  @Uint32() external int d3dFormat;
  external DXVA_Frequency InputSampleFreq;
  external DXVA_Frequency OutputFrameFreq;
}

class DXVA_VideoSample extends Struct {
  @Int64() external int rtStart;
  @Int64() external int rtEnd;
  @Uint32() external int SampleFormat;
  external Pointer lpDDSSrcSurface;
}

class DXVA_VideoSample2 extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Reserved;
  @Int64() external int rtStart;
  @Int64() external int rtEnd;
  @Uint32() external int SampleFormat;
  @Uint32() external int SampleFlags;
  external Pointer lpDDSSrcSurface;
  external RECT rcSrc;
  external RECT rcDst;
  @Array(16)
  external Array<DXVA_AYUVsample2> Palette;
}

class DXVA_DeinterlaceCaps extends Struct {
  @Uint32() external int Size;
  @Uint32() external int NumPreviousOutputFrames;
  @Uint32() external int InputPool;
  @Uint32() external int NumForwardRefSamples;
  @Uint32() external int NumBackwardRefSamples;
  @Uint32() external int d3dOutputFormat;
  @Uint32() external int VideoProcessingCaps;
  @Uint32() external int DeinterlaceTechnology;
}

class DXVA_VideoSample32 extends Struct {
  @Int64() external int rtStart;
  @Int64() external int rtEnd;
  @Uint32() external int SampleFormat;
  @Uint32() external int SampleFlags;
  @Uint32() external int lpDDSSrcSurface;
  external RECT rcSrc;
  external RECT rcDst;
  @Array(16)
  external Array<DXVA_AYUVsample2> Palette;
}

class DXVA_DeinterlaceBltEx32 extends Struct {
  @Uint32() external int Size;
  external DXVA_AYUVsample2 BackgroundColor;
  external RECT rcTarget;
  @Int64() external int rtTarget;
  @Uint32() external int NumSourceSurfaces;
  @Float() external double Alpha;
  @Array(32)
  external Array<DXVA_VideoSample32> Source;
  @Uint32() external int DestinationFormat;
  @Uint32() external int DestinationFlags;
}

class DXVA_DeinterlaceBlt extends Struct {
  @Uint32() external int Size;
  @Uint32() external int Reserved;
  @Int64() external int rtTarget;
  external RECT DstRect;
  external RECT SrcRect;
  @Uint32() external int NumSourceSurfaces;
  @Float() external double Alpha;
  @Array(32)
  external Array<DXVA_VideoSample> Source;
}

class DXVA_DeinterlaceBltEx extends Struct {
  @Uint32() external int Size;
  external DXVA_AYUVsample2 BackgroundColor;
  external RECT rcTarget;
  @Int64() external int rtTarget;
  @Uint32() external int NumSourceSurfaces;
  @Float() external double Alpha;
  @Array(32)
  external Array<DXVA_VideoSample2> Source;
  @Uint32() external int DestinationFormat;
  @Uint32() external int DestinationFlags;
}

class DXVA_DeinterlaceQueryAvailableModes extends Struct {
  @Uint32() external int Size;
  @Uint32() external int NumGuids;
  @Array(32)
  external Array<GUID> Guids;
}

class DXVA_DeinterlaceQueryModeCaps extends Struct {
  @Uint32() external int Size;
  external GUID Guid;
  external DXVA_VideoDesc VideoDesc;
}

class DXVA_ProcAmpControlCaps extends Struct {
  @Uint32() external int Size;
  @Uint32() external int InputPool;
  @Uint32() external int d3dOutputFormat;
  @Uint32() external int ProcAmpControlProps;
  @Uint32() external int VideoProcessingCaps;
}

class DXVA_ProcAmpControlQueryRange extends Struct {
  @Uint32() external int Size;
  @Uint32() external int ProcAmpControlProp;
  external DXVA_VideoDesc VideoDesc;
}

class DXVA_VideoPropertyRange extends Struct {
  @Float() external double MinValue;
  @Float() external double MaxValue;
  @Float() external double DefaultValue;
  @Float() external double StepSize;
}

class DXVA_ProcAmpControlBlt extends Struct {
  @Uint32() external int Size;
  external RECT DstRect;
  external RECT SrcRect;
  @Float() external double Alpha;
  @Float() external double Brightness;
  @Float() external double Contrast;
  @Float() external double Hue;
  @Float() external double Saturation;
}

class DXVA_COPPSignature extends Struct {
  @Array(129)
  external Array<Uint8> Signature;
}

class DXVA_COPPCommand extends Struct {
  external GUID macKDI;
  external GUID guidCommandID;
  @Uint32() external int dwSequence;
  @Uint32() external int cbSizeData;
  @Array(143)
  external Array<Uint8> CommandData;
}

class DXVA_COPPStatusInput extends Struct {
  external GUID rApp;
  external GUID guidStatusRequestID;
  @Uint32() external int dwSequence;
  @Uint32() external int cbSizeData;
  @Array(143)
  external Array<Uint8> StatusData;
}

class DXVA_COPPStatusOutput extends Struct {
  external GUID macKDI;
  @Uint32() external int cbSizeData;
  @Array(143)
  external Array<Uint8> COPPStatus;
}

class DXVAHD_RATIONAL extends Struct {
  @Uint32() external int Numerator;
  @Uint32() external int Denominator;
}

class DXVAHD_COLOR_RGBA extends Struct {
  @Float() external double R;
  @Float() external double G;
  @Float() external double B;
  @Float() external double A;
}

class DXVAHD_COLOR_YCbCrA extends Struct {
  @Float() external double Y;
  @Float() external double Cb;
  @Float() external double Cr;
  @Float() external double A;
}

class DXVAHD_COLOR extends Struct {
  external DXVAHD_COLOR_RGBA RGB;
  external DXVAHD_COLOR_YCbCrA YCbCr;
}

class DXVAHD_CONTENT_DESC extends Struct {
  @Uint32() external int InputFrameFormat;
  external DXVAHD_RATIONAL InputFrameRate;
  @Uint32() external int InputWidth;
  @Uint32() external int InputHeight;
  external DXVAHD_RATIONAL OutputFrameRate;
  @Uint32() external int OutputWidth;
  @Uint32() external int OutputHeight;
}

class DXVAHD_VPDEVCAPS extends Struct {
  @Uint32() external int DeviceType;
  @Uint32() external int DeviceCaps;
  @Uint32() external int FeatureCaps;
  @Uint32() external int FilterCaps;
  @Uint32() external int InputFormatCaps;
  @Uint32() external int InputPool;
  @Uint32() external int OutputFormatCount;
  @Uint32() external int InputFormatCount;
  @Uint32() external int VideoProcessorCount;
  @Uint32() external int MaxInputStreams;
  @Uint32() external int MaxStreamStates;
}

class DXVAHD_VPCAPS extends Struct {
  external GUID VPGuid;
  @Uint32() external int PastFrames;
  @Uint32() external int FutureFrames;
  @Uint32() external int ProcessorCaps;
  @Uint32() external int ITelecineCaps;
  @Uint32() external int CustomRateCount;
}

class DXVAHD_CUSTOM_RATE_DATA extends Struct {
  external DXVAHD_RATIONAL CustomRate;
  @Uint32() external int OutputFrames;
  @Int32() external int InputInterlaced;
  @Uint32() external int InputFramesOrFields;
}

class DXVAHD_FILTER_RANGE_DATA extends Struct {
  @Int32() external int Minimum;
  @Int32() external int Maximum;
  @Int32() external int Default;
  @Float() external double Multiplier;
}

class DXVAHD_BLT_STATE_TARGET_RECT_DATA extends Struct {
  @Int32() external int Enable;
  external RECT TargetRect;
}

class DXVAHD_BLT_STATE_BACKGROUND_COLOR_DATA extends Struct {
  @Int32() external int YCbCr;
  external DXVAHD_COLOR BackgroundColor;
}

class DXVAHD_BLT_STATE_OUTPUT_COLOR_SPACE_DATA extends Struct {
  @Uint32() external int Anonymous;
}

class DXVAHD_BLT_STATE_ALPHA_FILL_DATA extends Struct {
  @Uint32() external int Mode;
  @Uint32() external int StreamNumber;
}

class DXVAHD_BLT_STATE_CONSTRICTION_DATA extends Struct {
  @Int32() external int Enable;
  external SIZE Size;
}

class DXVAHD_BLT_STATE_PRIVATE_DATA extends Struct {
  external GUID Guid;
  @Uint32() external int DataSize;
  external Pointer pData;
}

class DXVAHD_STREAM_STATE_D3DFORMAT_DATA extends Struct {
  @Uint32() external int Format;
}

class DXVAHD_STREAM_STATE_FRAME_FORMAT_DATA extends Struct {
  @Uint32() external int FrameFormat;
}

class DXVAHD_STREAM_STATE_INPUT_COLOR_SPACE_DATA extends Struct {
  @Uint32() external int Anonymous;
}

class DXVAHD_STREAM_STATE_OUTPUT_RATE_DATA extends Struct {
  @Int32() external int RepeatFrame;
  @Uint32() external int OutputRate;
  external DXVAHD_RATIONAL CustomRate;
}

class DXVAHD_STREAM_STATE_SOURCE_RECT_DATA extends Struct {
  @Int32() external int Enable;
  external RECT SourceRect;
}

class DXVAHD_STREAM_STATE_DESTINATION_RECT_DATA extends Struct {
  @Int32() external int Enable;
  external RECT DestinationRect;
}

class DXVAHD_STREAM_STATE_ALPHA_DATA extends Struct {
  @Int32() external int Enable;
  @Float() external double Alpha;
}

class DXVAHD_STREAM_STATE_PALETTE_DATA extends Struct {
  @Uint32() external int Count;
  external Pointer<Uint32> pEntries;
}

class DXVAHD_STREAM_STATE_LUMA_KEY_DATA extends Struct {
  @Int32() external int Enable;
  @Float() external double Lower;
  @Float() external double Upper;
}

class DXVAHD_STREAM_STATE_ASPECT_RATIO_DATA extends Struct {
  @Int32() external int Enable;
  external DXVAHD_RATIONAL SourceAspectRatio;
  external DXVAHD_RATIONAL DestinationAspectRatio;
}

class DXVAHD_STREAM_STATE_FILTER_DATA extends Struct {
  @Int32() external int Enable;
  @Int32() external int Level;
}

class DXVAHD_STREAM_STATE_PRIVATE_DATA extends Struct {
  external GUID Guid;
  @Uint32() external int DataSize;
  external Pointer pData;
}

class DXVAHD_STREAM_DATA extends Struct {
  @Int32() external int Enable;
  @Uint32() external int OutputIndex;
  @Uint32() external int InputFrameOrField;
  @Uint32() external int PastFrames;
  @Uint32() external int FutureFrames;
  external Pointer<IDirect3DSurface9> ppPastSurfaces;
  external IDirect3DSurface9 pInputSurface;
  external Pointer<IDirect3DSurface9> ppFutureSurfaces;
}

class DXVAHD_STREAM_STATE_PRIVATE_IVTC_DATA extends Struct {
  @Int32() external int Enable;
  @Uint32() external int ITelecineFlags;
  @Uint32() external int Frames;
  @Uint32() external int InputField;
}

class DXVAHDSW_CALLBACKS extends Struct {
  external PDXVAHDSW_CreateDevice CreateDevice;
  external PDXVAHDSW_ProposeVideoPrivateFormat ProposeVideoPrivateFormat;
  external PDXVAHDSW_GetVideoProcessorDeviceCaps GetVideoProcessorDeviceCaps;
  external PDXVAHDSW_GetVideoProcessorOutputFormats GetVideoProcessorOutputFormats;
  external PDXVAHDSW_GetVideoProcessorInputFormats GetVideoProcessorInputFormats;
  external PDXVAHDSW_GetVideoProcessorCaps GetVideoProcessorCaps;
  external PDXVAHDSW_GetVideoProcessorCustomRates GetVideoProcessorCustomRates;
  external PDXVAHDSW_GetVideoProcessorFilterRange GetVideoProcessorFilterRange;
  external PDXVAHDSW_DestroyDevice DestroyDevice;
  external PDXVAHDSW_CreateVideoProcessor CreateVideoProcessor;
  external PDXVAHDSW_SetVideoProcessBltState SetVideoProcessBltState;
  external PDXVAHDSW_GetVideoProcessBltStatePrivate GetVideoProcessBltStatePrivate;
  external PDXVAHDSW_SetVideoProcessStreamState SetVideoProcessStreamState;
  external PDXVAHDSW_GetVideoProcessStreamStatePrivate GetVideoProcessStreamStatePrivate;
  external PDXVAHDSW_VideoProcessBltHD VideoProcessBltHD;
  external PDXVAHDSW_DestroyVideoProcessor DestroyVideoProcessor;
}

class DXVAHDETW_CREATEVIDEOPROCESSOR extends Struct {
  @Uint64() external int pObject;
  @Uint64() external int pD3D9Ex;
  external GUID VPGuid;
}

class DXVAHDETW_VIDEOPROCESSBLTSTATE extends Struct {
  @Uint64() external int pObject;
  @Uint32() external int State;
  @Uint32() external int DataSize;
  @Int32() external int SetState;
}

class DXVAHDETW_VIDEOPROCESSSTREAMSTATE extends Struct {
  @Uint64() external int pObject;
  @Uint32() external int StreamNumber;
  @Uint32() external int State;
  @Uint32() external int DataSize;
  @Int32() external int SetState;
}

class DXVAHDETW_VIDEOPROCESSBLTHD extends Struct {
  @Uint64() external int pObject;
  @Uint64() external int pOutputSurface;
  external RECT TargetRect;
  @Uint32() external int OutputFormat;
  @Uint32() external int ColorSpace;
  @Uint32() external int OutputFrame;
  @Uint32() external int StreamCount;
  @Int32() external int Enter;
}

class DXVAHDETW_VIDEOPROCESSBLTHD_STREAM extends Struct {
  @Uint64() external int pObject;
  @Uint64() external int pInputSurface;
  external RECT SourceRect;
  external RECT DestinationRect;
  @Uint32() external int InputFormat;
  @Uint32() external int FrameFormat;
  @Uint32() external int ColorSpace;
  @Uint32() external int StreamNumber;
  @Uint32() external int OutputIndex;
  @Uint32() external int InputFrameOrField;
  @Uint32() external int PastFrames;
  @Uint32() external int FutureFrames;
}

class DXVAHDETW_DESTROYVIDEOPROCESSOR extends Struct {
  @Uint64() external int pObject;
}

class DXVA2_ExtendedFormat extends Struct {
  @Uint32() external int Anonymous;
}

class DXVA2_Frequency extends Struct {
  @Uint32() external int Numerator;
  @Uint32() external int Denominator;
}

class DXVA2_VideoDesc extends Struct {
  @Uint32() external int SampleWidth;
  @Uint32() external int SampleHeight;
  external DXVA2_ExtendedFormat SampleFormat;
  @Uint32() external int Format;
  external DXVA2_Frequency InputSampleFreq;
  external DXVA2_Frequency OutputFrameFreq;
  @Uint32() external int UABProtectionLevel;
  @Uint32() external int Reserved;
}

class DXVA2_VideoProcessorCaps extends Struct {
  @Uint32() external int DeviceCaps;
  @Uint32() external int InputPool;
  @Uint32() external int NumForwardRefSamples;
  @Uint32() external int NumBackwardRefSamples;
  @Uint32() external int Reserved;
  @Uint32() external int DeinterlaceTechnology;
  @Uint32() external int ProcAmpControlCaps;
  @Uint32() external int VideoProcessorOperations;
  @Uint32() external int NoiseFilterTechnology;
  @Uint32() external int DetailFilterTechnology;
}

class DXVA2_Fixed32 extends Struct {
  @Uint32() external int Anonymous;
}

class DXVA2_AYUVSample8 extends Struct {
  @Uint8() external int Cr;
  @Uint8() external int Cb;
  @Uint8() external int Y;
  @Uint8() external int Alpha;
}

class DXVA2_AYUVSample16 extends Struct {
  @Uint16() external int Cr;
  @Uint16() external int Cb;
  @Uint16() external int Y;
  @Uint16() external int Alpha;
}

class DXVA2_VideoSample extends Struct {
  @Int64() external int Start;
  @Int64() external int End;
  external DXVA2_ExtendedFormat SampleFormat;
  external IDirect3DSurface9 SrcSurface;
  external RECT SrcRect;
  external RECT DstRect;
  @Array(16)
  external Array<DXVA2_AYUVSample8> Pal;
  external DXVA2_Fixed32 PlanarAlpha;
  @Uint32() external int SampleData;
}

class DXVA2_ValueRange extends Struct {
  external DXVA2_Fixed32 MinValue;
  external DXVA2_Fixed32 MaxValue;
  external DXVA2_Fixed32 DefaultValue;
  external DXVA2_Fixed32 StepSize;
}

class DXVA2_ProcAmpValues extends Struct {
  external DXVA2_Fixed32 Brightness;
  external DXVA2_Fixed32 Contrast;
  external DXVA2_Fixed32 Hue;
  external DXVA2_Fixed32 Saturation;
}

class DXVA2_FilterValues extends Struct {
  external DXVA2_Fixed32 Level;
  external DXVA2_Fixed32 Threshold;
  external DXVA2_Fixed32 Radius;
}

class DXVA2_VideoProcessBltParams extends Struct {
  @Int64() external int TargetFrame;
  external RECT TargetRect;
  external SIZE ConstrictionSize;
  @Uint32() external int StreamingFlags;
  external DXVA2_AYUVSample16 BackgroundColor;
  external DXVA2_ExtendedFormat DestFormat;
  external DXVA2_ProcAmpValues ProcAmpValues;
  external DXVA2_Fixed32 Alpha;
  external DXVA2_FilterValues NoiseFilterLuma;
  external DXVA2_FilterValues NoiseFilterChroma;
  external DXVA2_FilterValues DetailFilterLuma;
  external DXVA2_FilterValues DetailFilterChroma;
  @Uint32() external int DestData;
}

class DXVA2_ConfigPictureDecode extends Struct {
  external GUID guidConfigBitstreamEncryption;
  external GUID guidConfigMBcontrolEncryption;
  external GUID guidConfigResidDiffEncryption;
  @Uint32() external int ConfigBitstreamRaw;
  @Uint32() external int ConfigMBcontrolRasterOrder;
  @Uint32() external int ConfigResidDiffHost;
  @Uint32() external int ConfigSpatialResid8;
  @Uint32() external int ConfigResid8Subtraction;
  @Uint32() external int ConfigSpatialHost8or9Clipping;
  @Uint32() external int ConfigSpatialResidInterleaved;
  @Uint32() external int ConfigIntraResidUnsigned;
  @Uint32() external int ConfigResidDiffAccelerator;
  @Uint32() external int ConfigHostInverseScan;
  @Uint32() external int ConfigSpecificIDCT;
  @Uint32() external int Config4GroupedCoefs;
  @Uint16() external int ConfigMinRenderTargetBuffCount;
  @Uint16() external int ConfigDecoderSpecific;
}

class DXVA2_DecodeBufferDesc extends Struct {
  @Uint32() external int CompressedBufferType;
  @Uint32() external int BufferIndex;
  @Uint32() external int DataOffset;
  @Uint32() external int DataSize;
  @Uint32() external int FirstMBaddress;
  @Uint32() external int NumMBsInBuffer;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Stride;
  @Uint32() external int ReservedBits;
  external Pointer pvPVPState;
}

class DXVA2_AES_CTR_IV extends Struct {
  @Uint64() external int IV;
  @Uint64() external int Count;
}

class DXVA2_DecodeExtensionData extends Struct {
  @Uint32() external int Function;
  external Pointer pPrivateInputData;
  @Uint32() external int PrivateInputDataSize;
  external Pointer pPrivateOutputData;
  @Uint32() external int PrivateOutputDataSize;
}

class DXVA2_DecodeExecuteParams extends Struct {
  @Uint32() external int NumCompBuffers;
  external Pointer<DXVA2_DecodeBufferDesc> pCompressedBuffers;
  external Pointer<DXVA2_DecodeExtensionData> pExtensionData;
}

class OPM_RANDOM_NUMBER extends Struct {
  @Array(16)
  external Array<Uint8> abRandomNumber;
}

class OPM_OMAC extends Struct {
  @Array(16)
  external Array<Uint8> abOMAC;
}

class OPM_ENCRYPTED_INITIALIZATION_PARAMETERS extends Struct {
  @Array(129)
  external Array<Uint8> abEncryptedInitializationParameters;
}

class OPM_GET_INFO_PARAMETERS extends Struct {
  external OPM_OMAC omac;
  external OPM_RANDOM_NUMBER rnRandomNumber;
  external GUID guidInformation;
  @Uint32() external int ulSequenceNumber;
  @Uint32() external int cbParametersSize;
  @Array(143)
  external Array<Uint8> abParameters;
}

class OPM_COPP_COMPATIBLE_GET_INFO_PARAMETERS extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;
  external GUID guidInformation;
  @Uint32() external int ulSequenceNumber;
  @Uint32() external int cbParametersSize;
  @Array(143)
  external Array<Uint8> abParameters;
}

class OPM_HDCP_KEY_SELECTION_VECTOR extends Struct {
  @Array(5)
  external Array<Uint8> abKeySelectionVector;
}

class OPM_CONNECTED_HDCP_DEVICE_INFORMATION extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;
  @Uint32() external int ulStatusFlags;
  @Uint32() external int ulHDCPFlags;
  external OPM_HDCP_KEY_SELECTION_VECTOR ksvB;
  @Array(11)
  external Array<Uint8> Reserved;
  @Array(16)
  external Array<Uint8> Reserved2;
  @Array(16)
  external Array<Uint8> Reserved3;
}

class OPM_REQUESTED_INFORMATION extends Struct {
  external OPM_OMAC omac;
  @Uint32() external int cbRequestedInformationSize;
  @Array(143)
  external Array<Uint8> abRequestedInformation;
}

class OPM_STANDARD_INFORMATION extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;
  @Uint32() external int ulStatusFlags;
  @Uint32() external int ulInformation;
  @Uint32() external int ulReserved;
  @Uint32() external int ulReserved2;
}

class OPM_ACTUAL_OUTPUT_FORMAT extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;
  @Uint32() external int ulStatusFlags;
  @Uint32() external int ulDisplayWidth;
  @Uint32() external int ulDisplayHeight;
  @Uint32() external int dsfSampleInterleaveFormat;
  @Uint32() external int d3dFormat;
  @Uint32() external int ulFrequencyNumerator;
  @Uint32() external int ulFrequencyDenominator;
}

class OPM_ACP_AND_CGMSA_SIGNALING extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;
  @Uint32() external int ulStatusFlags;
  @Uint32() external int ulAvailableTVProtectionStandards;
  @Uint32() external int ulActiveTVProtectionStandard;
  @Uint32() external int ulReserved;
  @Uint32() external int ulAspectRatioValidMask1;
  @Uint32() external int ulAspectRatioData1;
  @Uint32() external int ulAspectRatioValidMask2;
  @Uint32() external int ulAspectRatioData2;
  @Uint32() external int ulAspectRatioValidMask3;
  @Uint32() external int ulAspectRatioData3;
  @Array(4)
  external Array<Uint32> ulReserved2;
  @Array(4)
  external Array<Uint32> ulReserved3;
}

class OPM_OUTPUT_ID_DATA extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;
  @Uint32() external int ulStatusFlags;
  @Uint64() external int OutputId;
}

class OPM_CONFIGURE_PARAMETERS extends Struct {
  external OPM_OMAC omac;
  external GUID guidSetting;
  @Uint32() external int ulSequenceNumber;
  @Uint32() external int cbParametersSize;
  @Array(143)
  external Array<Uint8> abParameters;
}

class OPM_SET_PROTECTION_LEVEL_PARAMETERS extends Struct {
  @Uint32() external int ulProtectionType;
  @Uint32() external int ulProtectionLevel;
  @Uint32() external int Reserved;
  @Uint32() external int Reserved2;
}

class OPM_SET_ACP_AND_CGMSA_SIGNALING_PARAMETERS extends Struct {
  @Uint32() external int ulNewTVProtectionStandard;
  @Uint32() external int ulAspectRatioChangeMask1;
  @Uint32() external int ulAspectRatioData1;
  @Uint32() external int ulAspectRatioChangeMask2;
  @Uint32() external int ulAspectRatioData2;
  @Uint32() external int ulAspectRatioChangeMask3;
  @Uint32() external int ulAspectRatioData3;
  @Array(4)
  external Array<Uint32> ulReserved;
  @Array(4)
  external Array<Uint32> ulReserved2;
  @Uint32() external int ulReserved3;
}

class OPM_SET_HDCP_SRM_PARAMETERS extends Struct {
  @Uint32() external int ulSRMVersion;
}

class OPM_GET_CODEC_INFO_PARAMETERS extends Struct {
  @Uint32() external int cbVerifier;
  @Array(143)
  external Array<Uint8> Verifier;
}

class OPM_GET_CODEC_INFO_INFORMATION extends Struct {
  external OPM_RANDOM_NUMBER rnRandomNumber;
  @Uint32() external int Merit;
}

class KSPROPSETID_OPMVideoOutput extends Struct {
}

class MFT_REGISTER_TYPE_INFO extends Struct {
  external GUID guidMajorType;
  external GUID guidSubtype;
}

class MFRatio extends Struct {
  @Uint32() external int Numerator;
  @Uint32() external int Denominator;
}

class MFOffset extends Struct {
  @Uint16() external int fract;
  @Int16() external int value;
}

class MFVideoArea extends Struct {
  external MFOffset OffsetX;
  external MFOffset OffsetY;
  external SIZE Area;
}

class MFVideoInfo extends Struct {
  @Uint32() external int dwWidth;
  @Uint32() external int dwHeight;
  external MFRatio PixelAspectRatio;
  @Uint32() external int SourceChromaSubsampling;
  @Uint32() external int InterlaceMode;
  @Uint32() external int TransferFunction;
  @Uint32() external int ColorPrimaries;
  @Uint32() external int TransferMatrix;
  @Uint32() external int SourceLighting;
  external MFRatio FramesPerSecond;
  @Uint32() external int NominalRange;
  external MFVideoArea GeometricAperture;
  external MFVideoArea MinimumDisplayAperture;
  external MFVideoArea PanScanAperture;
  @Uint64() external int VideoFlags;
}

class MFAYUVSample extends Struct {
  @Uint8() external int bCrValue;
  @Uint8() external int bCbValue;
  @Uint8() external int bYValue;
  @Uint8() external int bSampleAlpha8;
}

class MFARGB extends Struct {
  @Uint8() external int rgbBlue;
  @Uint8() external int rgbGreen;
  @Uint8() external int rgbRed;
  @Uint8() external int rgbAlpha;
}

class MFPaletteEntry extends Struct {
  external MFARGB ARGB;
  external MFAYUVSample AYCbCr;
}

class MFVideoSurfaceInfo extends Struct {
  @Uint32() external int Format;
  @Uint32() external int PaletteEntries;
  @Array(1)
  external Array<MFPaletteEntry> Palette;
}

class MFVideoCompressedInfo extends Struct {
  @Int64() external int AvgBitrate;
  @Int64() external int AvgBitErrorRate;
  @Uint32() external int MaxKeyFrameSpacing;
}

class MFVIDEOFORMAT extends Struct {
  @Uint32() external int dwSize;
  external MFVideoInfo videoInfo;
  external GUID guidFormat;
  external MFVideoCompressedInfo compressedInfo;
  external MFVideoSurfaceInfo surfaceInfo;
}

class MFT_INPUT_STREAM_INFO extends Struct {
  @Int64() external int hnsMaxLatency;
  @Uint32() external int dwFlags;
  @Uint32() external int cbSize;
  @Uint32() external int cbMaxLookahead;
  @Uint32() external int cbAlignment;
}

class MFT_OUTPUT_STREAM_INFO extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int cbSize;
  @Uint32() external int cbAlignment;
}

class MFT_OUTPUT_DATA_BUFFER extends Struct {
  @Uint32() external int dwStreamID;
  external IMFSample pSample;
  @Uint32() external int dwStatus;
  external Pointer pEvents;
}

class STREAM_MEDIUM extends Struct {
  external GUID gidMedium;
  @Uint32() external int unMediumInstance;
}

class MFAudioDecoderDegradationInfo extends Struct {
  @Uint32() external int eDegradationReason;
  @Uint32() external int eType;
}

class MFT_STREAM_STATE_PARAM extends Struct {
  @Uint32() external int StreamId;
  @Uint32() external int State;
}

class MFCLOCK_PROPERTIES extends Struct {
  @Uint64() external int qwCorrelationRate;
  external GUID guidClockId;
  @Uint32() external int dwClockFlags;
  @Uint64() external int qwClockFrequency;
  @Uint32() external int dwClockTolerance;
  @Uint32() external int dwClockJitter;
}

class MFRR_COMPONENT_HASH_INFO extends Struct {
  @Uint32() external int ulReason;
  @Array(43)
  external Array<Uint16> rgHeaderHash;
  @Array(43)
  external Array<Uint16> rgPublicKeyHash;
  @Array(129)
  external Array<Uint16> wszName;
}

class MFRR_COMPONENTS extends Struct {
  @Uint32() external int dwRRInfoVersion;
  @Uint32() external int dwRRComponents;
  external Pointer<MFRR_COMPONENT_HASH_INFO> pRRComponents;
}

class ASF_FLAT_PICTURE extends Struct {
  @Uint8() external int bPictureType;
  @Uint32() external int dwDataLen;
}

class ASF_FLAT_SYNCHRONISED_LYRICS extends Struct {
  @Uint8() external int bTimeStampFormat;
  @Uint8() external int bContentType;
  @Uint32() external int dwLyricsLen;
}

class MFTOPONODE_ATTRIBUTE_UPDATE extends Struct {
  @Uint64() external int NodeId;
  external GUID guidAttributeKey;
  @Uint32() external int attrType;
  @Uint32() external int Anonymous;
}

class MF_LEAKY_BUCKET_PAIR extends Struct {
  @Uint32() external int dwBitrate;
  @Uint32() external int msBufferWindow;
}

class MFBYTESTREAM_BUFFERING_PARAMS extends Struct {
  @Uint64() external int cbTotalFileSize;
  @Uint64() external int cbPlayableDataSize;
  external Pointer<MF_LEAKY_BUCKET_PAIR> prgBuckets;
  @Uint32() external int cBuckets;
  @Uint64() external int qwNetBufferingTime;
  @Uint64() external int qwExtraBufferingTimeDuringSeek;
  @Uint64() external int qwPlayDuration;
  @Float() external double dRate;
}

class MF_BYTE_STREAM_CACHE_RANGE extends Struct {
  @Uint64() external int qwStartOffset;
  @Uint64() external int qwEndOffset;
}

class MFNetCredentialManagerGetParam extends Struct {
  @Int32() external int hrOp;
  @Int32() external int fAllowLoggedOnUser;
  @Int32() external int fClearTextPackage;
  external Pointer<Utf16> pszUrl;
  external Pointer<Utf16> pszSite;
  external Pointer<Utf16> pszRealm;
  external Pointer<Utf16> pszPackage;
  @Int32() external int nRetries;
}

class MFINPUTTRUSTAUTHORITY_ACCESS_ACTION extends Struct {
  @Uint32() external int Action;
  external Pointer<Uint8> pbTicket;
  @Uint32() external int cbTicket;
}

class MFINPUTTRUSTAUTHORITY_ACCESS_PARAMS extends Struct {
  @Uint32() external int dwSize;
  @Uint32() external int dwVer;
  @Uint32() external int cbSignatureOffset;
  @Uint32() external int cbSignatureSize;
  @Uint32() external int cbExtensionOffset;
  @Uint32() external int cbExtensionSize;
  @Uint32() external int cActions;
  @Array(1)
  external Array<MFINPUTTRUSTAUTHORITY_ACCESS_ACTION> rgOutputActions;
}

class MF_TRANSCODE_SINK_INFO extends Struct {
  @Uint32() external int dwVideoStreamID;
  external IMFMediaType pVideoMediaType;
  @Uint32() external int dwAudioStreamID;
  external IMFMediaType pAudioMediaType;
}

class MFT_REGISTRATION_INFO extends Struct {
  external GUID clsid;
  external GUID guidCategory;
  @Uint32() external int uiFlags;
  external Pointer<Utf16> pszName;
  @Uint32() external int cInTypes;
  external Pointer<MFT_REGISTER_TYPE_INFO> pInTypes;
  @Uint32() external int cOutTypes;
  external Pointer<MFT_REGISTER_TYPE_INFO> pOutTypes;
}

class MFCONTENTPROTECTIONDEVICE_INPUT_DATA extends Struct {
  @Uint32() external int HWProtectionFunctionID;
  @Uint32() external int PrivateDataByteCount;
  @Uint32() external int HWProtectionDataByteCount;
  @Uint32() external int Reserved;
  @Array(4)
  external Array<Uint8> InputData;
}

class MFCONTENTPROTECTIONDEVICE_OUTPUT_DATA extends Struct {
  @Uint32() external int PrivateDataByteCount;
  @Uint32() external int MaxHWProtectionDataByteCount;
  @Uint32() external int HWProtectionDataByteCount;
  @Int32() external int Status;
  @Int64() external int TransportTimeInHundredsOfNanoseconds;
  @Int64() external int ExecutionTimeInHundredsOfNanoseconds;
  @Array(4)
  external Array<Uint8> OutputData;
}

class MFCONTENTPROTECTIONDEVICE_REALTIMECLIENT_DATA extends Struct {
  @Uint32() external int TaskIndex;
  @Array(129)
  external Array<Uint16> ClassName;
  @Int32() external int BasePriority;
}

class MFMediaKeyStatus extends Struct {
  external Pointer<Uint8> pbKeyId;
  @Uint32() external int cbKeyId;
  @Uint32() external int eMediaKeyStatus;
}

class MF_VIDEO_SPHERICAL_VIEWDIRECTION extends Struct {
  @Int32() external int iHeading;
  @Int32() external int iPitch;
  @Int32() external int iRoll;
}

class SENSORPROFILEID extends Struct {
  external GUID Type;
  @Uint32() external int Index;
  @Uint32() external int Unused;
}

class MFCameraIntrinsic_CameraModel extends Struct {
  @Float() external double FocalLength_x;
  @Float() external double FocalLength_y;
  @Float() external double PrincipalPoint_x;
  @Float() external double PrincipalPoint_y;
}

class MFCameraIntrinsic_DistortionModel6KT extends Struct {
  @Float() external double Radial_k1;
  @Float() external double Radial_k2;
  @Float() external double Radial_k3;
  @Float() external double Radial_k4;
  @Float() external double Radial_k5;
  @Float() external double Radial_k6;
  @Float() external double Tangential_p1;
  @Float() external double Tangential_p2;
}

class MFCameraIntrinsic_DistortionModelArcTan extends Struct {
  @Float() external double Radial_k0;
  @Float() external double DistortionCenter_x;
  @Float() external double DistortionCenter_y;
  @Float() external double Tangential_x;
  @Float() external double Tangential_y;
}

class MFExtendedCameraIntrinsic_IntrinsicModel extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int SplitFrameId;
  external MFCameraIntrinsic_CameraModel CameraModel;
}

class ASF_INDEX_IDENTIFIER extends Struct {
  external GUID guidIndexType;
  @Uint16() external int wStreamNumber;
}

class ASF_INDEX_DESCRIPTOR extends Struct {
  external ASF_INDEX_IDENTIFIER Identifier;
  @Uint16() external int cPerEntryBytes;
  @Array(32)
  external Array<Uint16> szDescription;
  @Uint32() external int dwInterval;
}

class ASF_MUX_STATISTICS extends Struct {
  @Uint32() external int cFramesWritten;
  @Uint32() external int cFramesDropped;
}

class MFVideoNormalizedRect extends Struct {
  @Float() external double left;
  @Float() external double top;
  @Float() external double right;
  @Float() external double bottom;
}

class MOVE_RECT extends Struct {
  external POINT SourcePoint;
  external RECT DestRect;
}

class DIRTYRECT_INFO extends Struct {
  @Uint32() external int FrameNumber;
  @Uint32() external int NumDirtyRects;
  @Array(1)
  external Array<RECT> DirtyRects;
}

class MOVEREGION_INFO extends Struct {
  @Uint32() external int FrameNumber;
  @Uint32() external int NumMoveRegions;
  @Array(1)
  external Array<MOVE_RECT> MoveRegions;
}

class ROI_AREA extends Struct {
  external RECT rect;
  @Int32() external int QPDelta;
}

class MACROBLOCK_DATA extends Struct {
  @Uint32() external int flags;
  @Int16() external int motionVectorX;
  @Int16() external int motionVectorY;
  @Int32() external int QPDelta;
}

class MFFOLDDOWN_MATRIX extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int cSrcChannels;
  @Uint32() external int cDstChannels;
  @Uint32() external int dwChannelMask;
  @Array(64)
  external Array<Int32> Coeff;
}

class MT_CUSTOM_VIDEO_PRIMARIES extends Struct {
  @Float() external double fRx;
  @Float() external double fRy;
  @Float() external double fGx;
  @Float() external double fGy;
  @Float() external double fBx;
  @Float() external double fBy;
  @Float() external double fWx;
  @Float() external double fWy;
}

class MT_ARBITRARY_HEADER extends Struct {
  external GUID majortype;
  external GUID subtype;
  @Int32() external int bFixedSizeSamples;
  @Int32() external int bTemporalCompression;
  @Uint32() external int lSampleSize;
  external GUID formattype;
}

class MF_FLOAT2 extends Struct {
  @Float() external double x;
  @Float() external double y;
}

class MF_FLOAT3 extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double z;
}

class MF_QUATERNION extends Struct {
  @Float() external double x;
  @Float() external double y;
  @Float() external double z;
  @Float() external double w;
}

class MFCameraExtrinsic_CalibratedTransform extends Struct {
  external GUID CalibrationId;
  external MF_FLOAT3 Position;
  external MF_QUATERNION Orientation;
}

class MFCameraExtrinsics extends Struct {
  @Uint32() external int TransformCount;
  @Array(1)
  external Array<MFCameraExtrinsic_CalibratedTransform> CalibratedTransforms;
}

class MFCameraIntrinsic_PinholeCameraModel extends Struct {
  external MF_FLOAT2 FocalLength;
  external MF_FLOAT2 PrincipalPoint;
}

class MFCameraIntrinsic_DistortionModel extends Struct {
  @Float() external double Radial_k1;
  @Float() external double Radial_k2;
  @Float() external double Radial_k3;
  @Float() external double Tangential_p1;
  @Float() external double Tangential_p2;
}

class MFPinholeCameraIntrinsic_IntrinsicModel extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  external MFCameraIntrinsic_PinholeCameraModel CameraModel;
  external MFCameraIntrinsic_DistortionModel DistortionModel;
}

class MFPinholeCameraIntrinsics extends Struct {
  @Uint32() external int IntrinsicModelCount;
  @Array(1)
  external Array<MFPinholeCameraIntrinsic_IntrinsicModel> IntrinsicModels;
}

class MFMPEG2DLNASINKSTATS extends Struct {
  @Uint64() external int cBytesWritten;
  @Int32() external int fPAL;
  @Uint32() external int fccVideo;
  @Uint32() external int dwVideoWidth;
  @Uint32() external int dwVideoHeight;
  @Uint64() external int cVideoFramesReceived;
  @Uint64() external int cVideoFramesEncoded;
  @Uint64() external int cVideoFramesSkipped;
  @Uint64() external int cBlackVideoFramesEncoded;
  @Uint64() external int cVideoFramesDuplicated;
  @Uint32() external int cAudioSamplesPerSec;
  @Uint32() external int cAudioChannels;
  @Uint64() external int cAudioBytesReceived;
  @Uint64() external int cAudioFramesEncoded;
}

class MF_SINK_WRITER_STATISTICS extends Struct {
  @Uint32() external int cb;
  @Int64() external int llLastTimestampReceived;
  @Int64() external int llLastTimestampEncoded;
  @Int64() external int llLastTimestampProcessed;
  @Int64() external int llLastStreamTickReceived;
  @Int64() external int llLastSinkSampleRequest;
  @Uint64() external int qwNumSamplesReceived;
  @Uint64() external int qwNumSamplesEncoded;
  @Uint64() external int qwNumSamplesProcessed;
  @Uint64() external int qwNumStreamTicksReceived;
  @Uint32() external int dwByteCountQueued;
  @Uint64() external int qwByteCountProcessed;
  @Uint32() external int dwNumOutstandingSinkSampleRequests;
  @Uint32() external int dwAverageSampleRateReceived;
  @Uint32() external int dwAverageSampleRateEncoded;
  @Uint32() external int dwAverageSampleRateProcessed;
}

class MFP_EVENT_HEADER extends Struct {
  @Uint32() external int eEventType;
  @Int32() external int hrEvent;
  external Pointer pMediaPlayer;
  @Uint32() external int eState;
  external Pointer pPropertyStore;
}

class MFP_PLAY_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_PAUSE_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_STOP_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_POSITION_SET_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_RATE_SET_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
  @Float() external double flRate;
}

class MFP_MEDIAITEM_CREATED_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
  @IntPtr() external int dwUserData;
}

class MFP_MEDIAITEM_SET_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_FRAME_STEP_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_MEDIAITEM_CLEARED_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_MF_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  @Uint32() external int MFEventType;
  external IMFMediaEvent pMFMediaEvent;
  external Pointer pMediaItem;
}

class MFP_ERROR_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
}

class MFP_PLAYBACK_ENDED_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  external Pointer pMediaItem;
}

class MFP_ACQUIRE_USER_CREDENTIAL_EVENT extends Struct {
  external MFP_EVENT_HEADER header;
  @IntPtr() external int dwUserData;
  @Int32() external int fProceedWithAuthentication;
  @Int32() external int hrAuthenticationStatus;
  external Pointer<Utf16> pwszURL;
  external Pointer<Utf16> pwszSite;
  external Pointer<Utf16> pwszRealm;
  external Pointer<Utf16> pwszPackage;
  @Int32() external int nRetries;
  @Uint32() external int flags;
  external Pointer pCredential;
}

class DEVICE_INFO extends Struct {
  external Pointer<Utf16> pFriendlyDeviceName;
  external Pointer<Utf16> pUniqueDeviceName;
  external Pointer<Utf16> pManufacturerName;
  external Pointer<Utf16> pModelName;
  external Pointer<Utf16> pIconURL;
}

class MFVideoAlphaBitmapParams extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int clrSrcKey;
  external RECT rcSrc;
  external MFVideoNormalizedRect nrcDest;
  @Float() external double fAlpha;
  @Uint32() external int dwFilterMode;
}

class MFVideoAlphaBitmap extends Struct {
  @Int32() external int GetBitmapFromDC;
  @Uint32() external int bitmap;
  external MFVideoAlphaBitmapParams params;
}

class D3D11_VIDEO_DECODER_DESC extends Struct {
  external GUID Guid;
  @Uint32() external int SampleWidth;
  @Uint32() external int SampleHeight;
  @Uint32() external int OutputFormat;
}

class D3D11_VIDEO_DECODER_CONFIG extends Struct {
  external GUID guidConfigBitstreamEncryption;
  external GUID guidConfigMBcontrolEncryption;
  external GUID guidConfigResidDiffEncryption;
  @Uint32() external int ConfigBitstreamRaw;
  @Uint32() external int ConfigMBcontrolRasterOrder;
  @Uint32() external int ConfigResidDiffHost;
  @Uint32() external int ConfigSpatialResid8;
  @Uint32() external int ConfigResid8Subtraction;
  @Uint32() external int ConfigSpatialHost8or9Clipping;
  @Uint32() external int ConfigSpatialResidInterleaved;
  @Uint32() external int ConfigIntraResidUnsigned;
  @Uint32() external int ConfigResidDiffAccelerator;
  @Uint32() external int ConfigHostInverseScan;
  @Uint32() external int ConfigSpecificIDCT;
  @Uint32() external int Config4GroupedCoefs;
  @Uint16() external int ConfigMinRenderTargetBuffCount;
  @Uint16() external int ConfigDecoderSpecific;
}

class D3D11_AES_CTR_IV extends Struct {
  @Uint64() external int IV;
  @Uint64() external int Count;
}

class D3D11_ENCRYPTED_BLOCK_INFO extends Struct {
  @Uint32() external int NumEncryptedBytesAtBeginning;
  @Uint32() external int NumBytesInSkipPattern;
  @Uint32() external int NumBytesInEncryptPattern;
}

class D3D11_VIDEO_DECODER_BUFFER_DESC extends Struct {
  @Uint32() external int BufferType;
  @Uint32() external int BufferIndex;
  @Uint32() external int DataOffset;
  @Uint32() external int DataSize;
  @Uint32() external int FirstMBaddress;
  @Uint32() external int NumMBsInBuffer;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Stride;
  @Uint32() external int ReservedBits;
  external Pointer pIV;
  @Uint32() external int IVSize;
  @Int32() external int PartialEncryption;
  external D3D11_ENCRYPTED_BLOCK_INFO EncryptedBlockInfo;
}

class D3D11_VIDEO_DECODER_EXTENSION extends Struct {
  @Uint32() external int Function;
  external Pointer pPrivateInputData;
  @Uint32() external int PrivateInputDataSize;
  external Pointer pPrivateOutputData;
  @Uint32() external int PrivateOutputDataSize;
  @Uint32() external int ResourceCount;
  external Pointer<ID3D11Resource> ppResourceList;
}

class D3D11_VIDEO_PROCESSOR_CAPS extends Struct {
  @Uint32() external int DeviceCaps;
  @Uint32() external int FeatureCaps;
  @Uint32() external int FilterCaps;
  @Uint32() external int InputFormatCaps;
  @Uint32() external int AutoStreamCaps;
  @Uint32() external int StereoCaps;
  @Uint32() external int RateConversionCapsCount;
  @Uint32() external int MaxInputStreams;
  @Uint32() external int MaxStreamStates;
}

class D3D11_VIDEO_PROCESSOR_RATE_CONVERSION_CAPS extends Struct {
  @Uint32() external int PastFrames;
  @Uint32() external int FutureFrames;
  @Uint32() external int ProcessorCaps;
  @Uint32() external int ITelecineCaps;
  @Uint32() external int CustomRateCount;
}

class D3D11_VIDEO_CONTENT_PROTECTION_CAPS extends Struct {
  @Uint32() external int Caps;
  @Uint32() external int KeyExchangeTypeCount;
  @Uint32() external int BlockAlignmentSize;
  @Uint64() external int ProtectedMemorySize;
}

class D3D11_VIDEO_PROCESSOR_CUSTOM_RATE extends Struct {
  external DXGI_RATIONAL CustomRate;
  @Uint32() external int OutputFrames;
  @Int32() external int InputInterlaced;
  @Uint32() external int InputFramesOrFields;
}

class D3D11_VIDEO_PROCESSOR_FILTER_RANGE extends Struct {
  @Int32() external int Minimum;
  @Int32() external int Maximum;
  @Int32() external int Default;
  @Float() external double Multiplier;
}

class D3D11_VIDEO_PROCESSOR_CONTENT_DESC extends Struct {
  @Uint32() external int InputFrameFormat;
  external DXGI_RATIONAL InputFrameRate;
  @Uint32() external int InputWidth;
  @Uint32() external int InputHeight;
  external DXGI_RATIONAL OutputFrameRate;
  @Uint32() external int OutputWidth;
  @Uint32() external int OutputHeight;
  @Uint32() external int Usage;
}

class D3D11_VIDEO_COLOR_RGBA extends Struct {
  @Float() external double R;
  @Float() external double G;
  @Float() external double B;
  @Float() external double A;
}

class D3D11_VIDEO_COLOR_YCbCrA extends Struct {
  @Float() external double Y;
  @Float() external double Cb;
  @Float() external double Cr;
  @Float() external double A;
}

class D3D11_VIDEO_COLOR extends Struct {
  @Uint32() external int Anonymous;
}

class D3D11_VIDEO_PROCESSOR_COLOR_SPACE extends Struct {
  @Uint32() external int _bitfield;
}

class D3D11_VIDEO_PROCESSOR_STREAM extends Struct {
  @Int32() external int Enable;
  @Uint32() external int OutputIndex;
  @Uint32() external int InputFrameOrField;
  @Uint32() external int PastFrames;
  @Uint32() external int FutureFrames;
  external Pointer<ID3D11VideoProcessorInputView> ppPastSurfaces;
  external ID3D11VideoProcessorInputView pInputSurface;
  external Pointer<ID3D11VideoProcessorInputView> ppFutureSurfaces;
  external Pointer<ID3D11VideoProcessorInputView> ppPastSurfacesRight;
  external ID3D11VideoProcessorInputView pInputSurfaceRight;
  external Pointer<ID3D11VideoProcessorInputView> ppFutureSurfacesRight;
}

class D3D11_OMAC extends Struct {
  @Array(16)
  external Array<Uint8> Omac;
}

class D3D11_AUTHENTICATED_QUERY_INPUT extends Struct {
  external GUID QueryType;
  @IntPtr() external int hChannel;
  @Uint32() external int SequenceNumber;
}

class D3D11_AUTHENTICATED_QUERY_OUTPUT extends Struct {
  external D3D11_OMAC omac;
  external GUID QueryType;
  @IntPtr() external int hChannel;
  @Uint32() external int SequenceNumber;
  @Int32() external int ReturnCode;
}

class D3D11_AUTHENTICATED_QUERY_PROTECTION_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  external D3D11_AUTHENTICATED_PROTECTION_FLAGS ProtectionFlags;
}

class D3D11_AUTHENTICATED_QUERY_CHANNEL_TYPE_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @Uint32() external int ChannelType;
}

class D3D11_AUTHENTICATED_QUERY_DEVICE_HANDLE_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @IntPtr() external int DeviceHandle;
}

class D3D11_AUTHENTICATED_QUERY_CRYPTO_SESSION_INPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_INPUT Input;
  @IntPtr() external int DecoderHandle;
}

class D3D11_AUTHENTICATED_QUERY_CRYPTO_SESSION_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @IntPtr() external int DecoderHandle;
  @IntPtr() external int CryptoSessionHandle;
  @IntPtr() external int DeviceHandle;
}

class D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS_COUNT_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @Uint32() external int RestrictedSharedResourceProcessCount;
}

class D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS_INPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_INPUT Input;
  @Uint32() external int ProcessIndex;
}

class D3D11_AUTHENTICATED_QUERY_RESTRICTED_SHARED_RESOURCE_PROCESS_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @Uint32() external int ProcessIndex;
  @Uint32() external int ProcessIdentifier;
  @IntPtr() external int ProcessHandle;
}

class D3D11_AUTHENTICATED_QUERY_UNRESTRICTED_PROTECTED_SHARED_RESOURCE_COUNT_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @Uint32() external int UnrestrictedProtectedSharedResourceCount;
}

class D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_COUNT_INPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_INPUT Input;
  @IntPtr() external int DeviceHandle;
  @IntPtr() external int CryptoSessionHandle;
}

class D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_COUNT_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @IntPtr() external int DeviceHandle;
  @IntPtr() external int CryptoSessionHandle;
  @Uint32() external int OutputIDCount;
}

class D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_INPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_INPUT Input;
  @IntPtr() external int DeviceHandle;
  @IntPtr() external int CryptoSessionHandle;
  @Uint32() external int OutputIDIndex;
}

class D3D11_AUTHENTICATED_QUERY_OUTPUT_ID_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @IntPtr() external int DeviceHandle;
  @IntPtr() external int CryptoSessionHandle;
  @Uint32() external int OutputIDIndex;
  @Uint64() external int OutputID;
}

class D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @Uint32() external int BusType;
  @Int32() external int AccessibleInContiguousBlocks;
  @Int32() external int AccessibleInNonContiguousBlocks;
}

class D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_ENCRYPTION_GUID_COUNT_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @Uint32() external int EncryptionGuidCount;
}

class D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_ENCRYPTION_GUID_INPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_INPUT Input;
  @Uint32() external int EncryptionGuidIndex;
}

class D3D11_AUTHENTICATED_QUERY_ACCESSIBILITY_ENCRYPTION_GUID_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  @Uint32() external int EncryptionGuidIndex;
  external GUID EncryptionGuid;
}

class D3D11_AUTHENTICATED_QUERY_CURRENT_ACCESSIBILITY_ENCRYPTION_OUTPUT extends Struct {
  external D3D11_AUTHENTICATED_QUERY_OUTPUT Output;
  external GUID EncryptionGuid;
}

class D3D11_AUTHENTICATED_CONFIGURE_INPUT extends Struct {
  external D3D11_OMAC omac;
  external GUID ConfigureType;
  @IntPtr() external int hChannel;
  @Uint32() external int SequenceNumber;
}

class D3D11_AUTHENTICATED_CONFIGURE_OUTPUT extends Struct {
  external D3D11_OMAC omac;
  external GUID ConfigureType;
  @IntPtr() external int hChannel;
  @Uint32() external int SequenceNumber;
  @Int32() external int ReturnCode;
}

class D3D11_AUTHENTICATED_CONFIGURE_INITIALIZE_INPUT extends Struct {
  external D3D11_AUTHENTICATED_CONFIGURE_INPUT Parameters;
  @Uint32() external int StartSequenceQuery;
  @Uint32() external int StartSequenceConfigure;
}

class D3D11_AUTHENTICATED_CONFIGURE_PROTECTION_INPUT extends Struct {
  external D3D11_AUTHENTICATED_CONFIGURE_INPUT Parameters;
  external D3D11_AUTHENTICATED_PROTECTION_FLAGS Protections;
}

class D3D11_AUTHENTICATED_CONFIGURE_CRYPTO_SESSION_INPUT extends Struct {
  external D3D11_AUTHENTICATED_CONFIGURE_INPUT Parameters;
  @IntPtr() external int DecoderHandle;
  @IntPtr() external int CryptoSessionHandle;
  @IntPtr() external int DeviceHandle;
}

class D3D11_AUTHENTICATED_CONFIGURE_SHARED_RESOURCE_INPUT extends Struct {
  external D3D11_AUTHENTICATED_CONFIGURE_INPUT Parameters;
  @Uint32() external int ProcessType;
  @IntPtr() external int ProcessHandle;
  @Int32() external int AllowAccess;
}

class D3D11_AUTHENTICATED_CONFIGURE_ACCESSIBLE_ENCRYPTION_INPUT extends Struct {
  external D3D11_AUTHENTICATED_CONFIGURE_INPUT Parameters;
  external GUID EncryptionGuid;
}

class D3D11_TEX2D_VDOV extends Struct {
  @Uint32() external int ArraySlice;
}

class D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC extends Struct {
  external GUID DecodeProfile;
  @Uint32() external int ViewDimension;
  @Uint32() external int Anonymous;
}

class D3D11_TEX2D_VPIV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int ArraySlice;
}

class D3D11_VIDEO_PROCESSOR_INPUT_VIEW_DESC extends Struct {
  @Uint32() external int FourCC;
  @Uint32() external int ViewDimension;
  @Uint32() external int Anonymous;
}

class D3D11_TEX2D_VPOV extends Struct {
  @Uint32() external int MipSlice;
}

class D3D11_TEX2D_ARRAY_VPOV extends Struct {
  @Uint32() external int MipSlice;
  @Uint32() external int FirstArraySlice;
  @Uint32() external int ArraySize;
}

class D3D11_VIDEO_PROCESSOR_OUTPUT_VIEW_DESC extends Struct {
  @Uint32() external int ViewDimension;
  @Uint32() external int Anonymous;
}

class D3D11_VIDEO_DECODER_SUB_SAMPLE_MAPPING_BLOCK extends Struct {
  @Uint32() external int ClearSize;
  @Uint32() external int EncryptedSize;
}

class D3D11_VIDEO_DECODER_BUFFER_DESC1 extends Struct {
  @Uint32() external int BufferType;
  @Uint32() external int DataOffset;
  @Uint32() external int DataSize;
  external Pointer pIV;
  @Uint32() external int IVSize;
  external Pointer<D3D11_VIDEO_DECODER_SUB_SAMPLE_MAPPING_BLOCK> pSubSampleMappingBlock;
  @Uint32() external int SubSampleMappingCount;
}

class D3D11_VIDEO_DECODER_BEGIN_FRAME_CRYPTO_SESSION extends Struct {
  external ID3D11CryptoSession pCryptoSession;
  @Uint32() external int BlobSize;
  external Pointer pBlob;
  external Pointer<GUID> pKeyInfoId;
  @Uint32() external int PrivateDataSize;
  external Pointer pPrivateData;
}

class D3D11_VIDEO_PROCESSOR_STREAM_BEHAVIOR_HINT extends Struct {
  @Int32() external int Enable;
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Format;
}

class D3D11_KEY_EXCHANGE_HW_PROTECTION_INPUT_DATA extends Struct {
  @Uint32() external int PrivateDataSize;
  @Uint32() external int HWProtectionDataSize;
  @Array(4)
  external Array<Uint8> pbInput;
}

class D3D11_KEY_EXCHANGE_HW_PROTECTION_OUTPUT_DATA extends Struct {
  @Uint32() external int PrivateDataSize;
  @Uint32() external int MaxHWProtectionDataSize;
  @Uint32() external int HWProtectionDataSize;
  @Uint64() external int TransportTime;
  @Uint64() external int ExecutionTime;
  @Array(4)
  external Array<Uint8> pbOutput;
}

class D3D11_KEY_EXCHANGE_HW_PROTECTION_DATA extends Struct {
  @Uint32() external int HWProtectionFunctionID;
  external Pointer<D3D11_KEY_EXCHANGE_HW_PROTECTION_INPUT_DATA> pInputData;
  external Pointer<D3D11_KEY_EXCHANGE_HW_PROTECTION_OUTPUT_DATA> pOutputData;
  @Int32() external int Status;
}

class D3D11_VIDEO_SAMPLE_DESC extends Struct {
  @Uint32() external int Width;
  @Uint32() external int Height;
  @Uint32() external int Format;
  @Uint32() external int ColorSpace;
}

