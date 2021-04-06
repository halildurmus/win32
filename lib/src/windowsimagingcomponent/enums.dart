/// {@category Enum}
class WIC8BIMIptcDigestProperties {
  static const WIC8BIMIptcDigestPString = 0x00000001;
  static const WIC8BIMIptcDigestIptcDigest = 0x00000002;
  static const WIC8BIMIptcDigestProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WIC8BIMIptcProperties {
  static const WIC8BIMIptcPString = 0x00000000;
  static const WIC8BIMIptcEmbeddedIPTC = 0x00000001;
  static const WIC8BIMIptcProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WIC8BIMResolutionInfoProperties {
  static const WIC8BIMResolutionInfoPString = 0x00000001;
  static const WIC8BIMResolutionInfoHResolution = 0x00000002;
  static const WIC8BIMResolutionInfoHResolutionUnit = 0x00000003;
  static const WIC8BIMResolutionInfoWidthUnit = 0x00000004;
  static const WIC8BIMResolutionInfoVResolution = 0x00000005;
  static const WIC8BIMResolutionInfoVResolutionUnit = 0x00000006;
  static const WIC8BIMResolutionInfoHeightUnit = 0x00000007;
  static const WIC8BIMResolutionInfoProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapAlphaChannelOption {
  static const WICBitmapUseAlpha = 0x00000000;
  static const WICBitmapUsePremultipliedAlpha = 0x00000001;
  static const WICBitmapIgnoreAlpha = 0x00000002;
  static const WICBITMAPALPHACHANNELOPTIONS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapCreateCacheOption {
  static const WICBitmapNoCache = 0x00000000;
  static const WICBitmapCacheOnDemand = 0x00000001;
  static const WICBitmapCacheOnLoad = 0x00000002;
  static const WICBITMAPCREATECACHEOPTION_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapDecoderCapabilities {
  static const WICBitmapDecoderCapabilitySameEncoder = 0x00000001;
  static const WICBitmapDecoderCapabilityCanDecodeAllImages = 0x00000002;
  static const WICBitmapDecoderCapabilityCanDecodeSomeImages = 0x00000004;
  static const WICBitmapDecoderCapabilityCanEnumerateMetadata = 0x00000008;
  static const WICBitmapDecoderCapabilityCanDecodeThumbnail = 0x00000010;
  static const WICBITMAPDECODERCAPABILITIES_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapDitherType {
  static const WICBitmapDitherTypeNone = 0x00000000;
  static const WICBitmapDitherTypeSolid = 0x00000000;
  static const WICBitmapDitherTypeOrdered4x4 = 0x00000001;
  static const WICBitmapDitherTypeOrdered8x8 = 0x00000002;
  static const WICBitmapDitherTypeOrdered16x16 = 0x00000003;
  static const WICBitmapDitherTypeSpiral4x4 = 0x00000004;
  static const WICBitmapDitherTypeSpiral8x8 = 0x00000005;
  static const WICBitmapDitherTypeDualSpiral4x4 = 0x00000006;
  static const WICBitmapDitherTypeDualSpiral8x8 = 0x00000007;
  static const WICBitmapDitherTypeErrorDiffusion = 0x00000008;
  static const WICBITMAPDITHERTYPE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapEncoderCacheOption {
  static const WICBitmapEncoderCacheInMemory = 0x00000000;
  static const WICBitmapEncoderCacheTempFile = 0x00000001;
  static const WICBitmapEncoderNoCache = 0x00000002;
  static const WICBITMAPENCODERCACHEOPTION_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapInterpolationMode {
  static const WICBitmapInterpolationModeNearestNeighbor = 0x00000000;
  static const WICBitmapInterpolationModeLinear = 0x00000001;
  static const WICBitmapInterpolationModeCubic = 0x00000002;
  static const WICBitmapInterpolationModeFant = 0x00000003;
  static const WICBitmapInterpolationModeHighQualityCubic = 0x00000004;
  static const WICBITMAPINTERPOLATIONMODE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapLockFlags {
  static const WICBitmapLockRead = 0x00000001;
  static const WICBitmapLockWrite = 0x00000002;
  static const WICBITMAPLOCKFLAGS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapPaletteType {
  static const WICBitmapPaletteTypeCustom = 0x00000000;
  static const WICBitmapPaletteTypeMedianCut = 0x00000001;
  static const WICBitmapPaletteTypeFixedBW = 0x00000002;
  static const WICBitmapPaletteTypeFixedHalftone8 = 0x00000003;
  static const WICBitmapPaletteTypeFixedHalftone27 = 0x00000004;
  static const WICBitmapPaletteTypeFixedHalftone64 = 0x00000005;
  static const WICBitmapPaletteTypeFixedHalftone125 = 0x00000006;
  static const WICBitmapPaletteTypeFixedHalftone216 = 0x00000007;
  static const WICBitmapPaletteTypeFixedWebPalette = 0x00000007;
  static const WICBitmapPaletteTypeFixedHalftone252 = 0x00000008;
  static const WICBitmapPaletteTypeFixedHalftone256 = 0x00000009;
  static const WICBitmapPaletteTypeFixedGray4 = 0x0000000a;
  static const WICBitmapPaletteTypeFixedGray16 = 0x0000000b;
  static const WICBitmapPaletteTypeFixedGray256 = 0x0000000c;
  static const WICBITMAPPALETTETYPE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICBitmapTransformOptions {
  static const WICBitmapTransformRotate0 = 0x00000000;
  static const WICBitmapTransformRotate90 = 0x00000001;
  static const WICBitmapTransformRotate180 = 0x00000002;
  static const WICBitmapTransformRotate270 = 0x00000003;
  static const WICBitmapTransformFlipHorizontal = 0x00000008;
  static const WICBitmapTransformFlipVertical = 0x00000010;
  static const WICBITMAPTRANSFORMOPTIONS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICColorContextType {
  static const WICColorContextUninitialized = 0x00000000;
  static const WICColorContextProfile = 0x00000001;
  static const WICColorContextExifColorSpace = 0x00000002;
}

/// {@category Enum}
class WICComponentEnumerateOptions {
  static const WICComponentEnumerateDefault = 0x00000000;
  static const WICComponentEnumerateRefresh = 0x00000001;
  static const WICComponentEnumerateDisabled = 0x80000000;
  static const WICComponentEnumerateUnsigned = 0x40000000;
  static const WICComponentEnumerateBuiltInOnly = 0x20000000;
  static const WICCOMPONENTENUMERATEOPTIONS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICComponentSigning {
  static const WICComponentSigned = 0x00000001;
  static const WICComponentUnsigned = 0x00000002;
  static const WICComponentSafe = 0x00000004;
  static const WICComponentDisabled = 0x80000000;
  static const WICCOMPONENTSIGNING_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICComponentType {
  static const WICDecoder = 0x00000001;
  static const WICEncoder = 0x00000002;
  static const WICPixelFormatConverter = 0x00000004;
  static const WICMetadataReader = 0x00000008;
  static const WICMetadataWriter = 0x00000010;
  static const WICPixelFormat = 0x00000020;
  static const WICAllComponents = 0x0000003f;
  static const WICCOMPONENTTYPE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICDdsAlphaMode {
  static const WICDdsAlphaModeUnknown = 0x00000000;
  static const WICDdsAlphaModeStraight = 0x00000001;
  static const WICDdsAlphaModePremultiplied = 0x00000002;
  static const WICDdsAlphaModeOpaque = 0x00000003;
  static const WICDdsAlphaModeCustom = 0x00000004;
  static const WICDDSALPHAMODE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICDdsDimension {
  static const WICDdsTexture1D = 0x00000000;
  static const WICDdsTexture2D = 0x00000001;
  static const WICDdsTexture3D = 0x00000002;
  static const WICDdsTextureCube = 0x00000003;
  static const WICDDSTEXTURE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICDecodeOptions {
  static const WICDecodeMetadataCacheOnDemand = 0x00000000;
  static const WICDecodeMetadataCacheOnLoad = 0x00000001;
  static const WICMETADATACACHEOPTION_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICGifApplicationExtensionProperties {
  static const WICGifApplicationExtensionApplication = 0x00000001;
  static const WICGifApplicationExtensionData = 0x00000002;
  static const WICGifApplicationExtensionProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICGifCommentExtensionProperties {
  static const WICGifCommentExtensionText = 0x00000001;
  static const WICGifCommentExtensionProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICGifGraphicControlExtensionProperties {
  static const WICGifGraphicControlExtensionDisposal = 0x00000001;
  static const WICGifGraphicControlExtensionUserInputFlag = 0x00000002;
  static const WICGifGraphicControlExtensionTransparencyFlag = 0x00000003;
  static const WICGifGraphicControlExtensionDelay = 0x00000004;
  static const WICGifGraphicControlExtensionTransparentColorIndex = 0x00000005;
  static const WICGifGraphicControlExtensionProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICGifImageDescriptorProperties {
  static const WICGifImageDescriptorLeft = 0x00000001;
  static const WICGifImageDescriptorTop = 0x00000002;
  static const WICGifImageDescriptorWidth = 0x00000003;
  static const WICGifImageDescriptorHeight = 0x00000004;
  static const WICGifImageDescriptorLocalColorTableFlag = 0x00000005;
  static const WICGifImageDescriptorInterlaceFlag = 0x00000006;
  static const WICGifImageDescriptorSortFlag = 0x00000007;
  static const WICGifImageDescriptorLocalColorTableSize = 0x00000008;
  static const WICGifImageDescriptorProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICGifLogicalScreenDescriptorProperties {
  static const WICGifLogicalScreenSignature = 0x00000001;
  static const WICGifLogicalScreenDescriptorWidth = 0x00000002;
  static const WICGifLogicalScreenDescriptorHeight = 0x00000003;
  static const WICGifLogicalScreenDescriptorGlobalColorTableFlag = 0x00000004;
  static const WICGifLogicalScreenDescriptorColorResolution = 0x00000005;
  static const WICGifLogicalScreenDescriptorSortFlag = 0x00000006;
  static const WICGifLogicalScreenDescriptorGlobalColorTableSize = 0x00000007;
  static const WICGifLogicalScreenDescriptorBackgroundColorIndex = 0x00000008;
  static const WICGifLogicalScreenDescriptorPixelAspectRatio = 0x00000009;
  static const WICGifLogicalScreenDescriptorProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICHeifHdrProperties {
  static const WICHeifHdrMaximumLuminanceLevel = 0x00000001;
  static const WICHeifHdrMaximumFrameAverageLuminanceLevel = 0x00000002;
  static const WICHeifHdrMinimumMasteringDisplayLuminanceLevel = 0x00000003;
  static const WICHeifHdrMaximumMasteringDisplayLuminanceLevel = 0x00000004;
  static const WICHeifHdrCustomVideoPrimaries = 0x00000005;
  static const WICHeifHdrProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICHeifProperties {
  static const WICHeifOrientation = 0x00000001;
  static const WICHeifProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICJpegChrominanceProperties {
  static const WICJpegChrominanceTable = 0x00000001;
  static const WICJpegChrominanceProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICJpegCommentProperties {
  static const WICJpegCommentText = 0x00000001;
  static const WICJpegCommentProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICJpegIndexingOptions {
  static const WICJpegIndexingOptionsGenerateOnDemand = 0x00000000;
  static const WICJpegIndexingOptionsGenerateOnLoad = 0x00000001;
  static const WICJpegIndexingOptions_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICJpegLuminanceProperties {
  static const WICJpegLuminanceTable = 0x00000001;
  static const WICJpegLuminanceProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICJpegScanType {
  static const WICJpegScanTypeInterleaved = 0x00000000;
  static const WICJpegScanTypePlanarComponents = 0x00000001;
  static const WICJpegScanTypeProgressive = 0x00000002;
  static const WICJpegScanType_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICJpegTransferMatrix {
  static const WICJpegTransferMatrixIdentity = 0x00000000;
  static const WICJpegTransferMatrixBT601 = 0x00000001;
  static const WICJpegTransferMatrix_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICJpegYCrCbSubsamplingOption {
  static const WICJpegYCrCbSubsamplingDefault = 0x00000000;
  static const WICJpegYCrCbSubsampling420 = 0x00000001;
  static const WICJpegYCrCbSubsampling422 = 0x00000002;
  static const WICJpegYCrCbSubsampling444 = 0x00000003;
  static const WICJpegYCrCbSubsampling440 = 0x00000004;
  static const WICJPEGYCRCBSUBSAMPLING_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICMetadataCreationOptions {
  static const WICMetadataCreationDefault = 0x00000000;
  static const WICMetadataCreationAllowUnknown = 0x00000000;
  static const WICMetadataCreationFailUnknown = 0x00010000;
  static const WICMetadataCreationMask = 0xffff0000;
}

/// {@category Enum}
class WICNamedWhitePoint {
  static const WICWhitePointDefault = 0x00000001;
  static const WICWhitePointDaylight = 0x00000002;
  static const WICWhitePointCloudy = 0x00000004;
  static const WICWhitePointShade = 0x00000008;
  static const WICWhitePointTungsten = 0x00000010;
  static const WICWhitePointFluorescent = 0x00000020;
  static const WICWhitePointFlash = 0x00000040;
  static const WICWhitePointUnderwater = 0x00000080;
  static const WICWhitePointCustom = 0x00000100;
  static const WICWhitePointAutoWhiteBalance = 0x00000200;
  static const WICWhitePointAsShot = 0x00000001;
  static const WICNAMEDWHITEPOINT_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPersistOptions {
  static const WICPersistOptionDefault = 0x00000000;
  static const WICPersistOptionLittleEndian = 0x00000000;
  static const WICPersistOptionBigEndian = 0x00000001;
  static const WICPersistOptionStrictFormat = 0x00000002;
  static const WICPersistOptionNoCacheStream = 0x00000004;
  static const WICPersistOptionPreferUTF8 = 0x00000008;
  static const WICPersistOptionMask = 0x0000ffff;
}

/// {@category Enum}
class WICPixelFormatNumericRepresentation {
  static const WICPixelFormatNumericRepresentationUnspecified = 0x00000000;
  static const WICPixelFormatNumericRepresentationIndexed = 0x00000001;
  static const WICPixelFormatNumericRepresentationUnsignedInteger = 0x00000002;
  static const WICPixelFormatNumericRepresentationSignedInteger = 0x00000003;
  static const WICPixelFormatNumericRepresentationFixed = 0x00000004;
  static const WICPixelFormatNumericRepresentationFloat = 0x00000005;
  static const WICPixelFormatNumericRepresentation_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPlanarOptions {
  static const WICPlanarOptionsDefault = 0x00000000;
  static const WICPlanarOptionsPreserveSubsampling = 0x00000001;
  static const WICPLANAROPTIONS_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngBkgdProperties {
  static const WICPngBkgdBackgroundColor = 0x00000001;
  static const WICPngBkgdProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngChrmProperties {
  static const WICPngChrmWhitePointX = 0x00000001;
  static const WICPngChrmWhitePointY = 0x00000002;
  static const WICPngChrmRedX = 0x00000003;
  static const WICPngChrmRedY = 0x00000004;
  static const WICPngChrmGreenX = 0x00000005;
  static const WICPngChrmGreenY = 0x00000006;
  static const WICPngChrmBlueX = 0x00000007;
  static const WICPngChrmBlueY = 0x00000008;
  static const WICPngChrmProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngFilterOption {
  static const WICPngFilterUnspecified = 0x00000000;
  static const WICPngFilterNone = 0x00000001;
  static const WICPngFilterSub = 0x00000002;
  static const WICPngFilterUp = 0x00000003;
  static const WICPngFilterAverage = 0x00000004;
  static const WICPngFilterPaeth = 0x00000005;
  static const WICPngFilterAdaptive = 0x00000006;
  static const WICPNGFILTEROPTION_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngGamaProperties {
  static const WICPngGamaGamma = 0x00000001;
  static const WICPngGamaProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngHistProperties {
  static const WICPngHistFrequencies = 0x00000001;
  static const WICPngHistProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngIccpProperties {
  static const WICPngIccpProfileName = 0x00000001;
  static const WICPngIccpProfileData = 0x00000002;
  static const WICPngIccpProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngItxtProperties {
  static const WICPngItxtKeyword = 0x00000001;
  static const WICPngItxtCompressionFlag = 0x00000002;
  static const WICPngItxtLanguageTag = 0x00000003;
  static const WICPngItxtTranslatedKeyword = 0x00000004;
  static const WICPngItxtText = 0x00000005;
  static const WICPngItxtProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngSrgbProperties {
  static const WICPngSrgbRenderingIntent = 0x00000001;
  static const WICPngSrgbProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICPngTimeProperties {
  static const WICPngTimeYear = 0x00000001;
  static const WICPngTimeMonth = 0x00000002;
  static const WICPngTimeDay = 0x00000003;
  static const WICPngTimeHour = 0x00000004;
  static const WICPngTimeMinute = 0x00000005;
  static const WICPngTimeSecond = 0x00000006;
  static const WICPngTimeProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICProgressNotification {
  static const WICProgressNotificationBegin = 0x00010000;
  static const WICProgressNotificationEnd = 0x00020000;
  static const WICProgressNotificationFrequent = 0x00040000;
  static const WICProgressNotificationAll = 0xffff0000;
  static const WICPROGRESSNOTIFICATION_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICProgressOperation {
  static const WICProgressOperationCopyPixels = 0x00000001;
  static const WICProgressOperationWritePixels = 0x00000002;
  static const WICProgressOperationAll = 0x0000ffff;
  static const WICPROGRESSOPERATION_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICRawCapabilities {
  static const WICRawCapabilityNotSupported = 0x00000000;
  static const WICRawCapabilityGetSupported = 0x00000001;
  static const WICRawCapabilityFullySupported = 0x00000002;
  static const WICRAWCAPABILITIES_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICRawParameterSet {
  static const WICAsShotParameterSet = 0x00000001;
  static const WICUserAdjustedParameterSet = 0x00000002;
  static const WICAutoAdjustedParameterSet = 0x00000003;
  static const WICRAWPARAMETERSET_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICRawRenderMode {
  static const WICRawRenderModeDraft = 0x00000001;
  static const WICRawRenderModeNormal = 0x00000002;
  static const WICRawRenderModeBestQuality = 0x00000003;
  static const WICRAWRENDERMODE_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICRawRotationCapabilities {
  static const WICRawRotationCapabilityNotSupported = 0x00000000;
  static const WICRawRotationCapabilityGetSupported = 0x00000001;
  static const WICRawRotationCapabilityNinetyDegreesSupported = 0x00000002;
  static const WICRawRotationCapabilityFullySupported = 0x00000003;
  static const WICRAWROTATIONCAPABILITIES_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICSectionAccessLevel {
  static const WICSectionAccessLevelRead = 0x00000001;
  static const WICSectionAccessLevelReadWrite = 0x00000003;
  static const WICSectionAccessLevel_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICTiffCompressionOption {
  static const WICTiffCompressionDontCare = 0x00000000;
  static const WICTiffCompressionNone = 0x00000001;
  static const WICTiffCompressionCCITT3 = 0x00000002;
  static const WICTiffCompressionCCITT4 = 0x00000003;
  static const WICTiffCompressionLZW = 0x00000004;
  static const WICTiffCompressionRLE = 0x00000005;
  static const WICTiffCompressionZIP = 0x00000006;
  static const WICTiffCompressionLZWHDifferencing = 0x00000007;
  static const WICTIFFCOMPRESSIONOPTION_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICWebpAnimProperties {
  static const WICWebpAnimLoopCount = 0x00000001;
  static const WICWebpAnimProperties_FORCE_DWORD = 0x7fffffff;
}

/// {@category Enum}
class WICWebpAnmfProperties {
  static const WICWebpAnmfFrameDuration = 0x00000001;
  static const WICWebpAnmfProperties_FORCE_DWORD = 0x7fffffff;
}

