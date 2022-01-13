/// {@category Enum}
class DXGI_ADAPTER_FLAG {
  static const DXGI_ADAPTER_FLAG_NONE = 0x00000000;
  static const DXGI_ADAPTER_FLAG_REMOTE = 0x00000001;
  static const DXGI_ADAPTER_FLAG_SOFTWARE = 0x00000002;
}

/// {@category Enum}
class DXGI_ADAPTER_FLAG3 {
  static const DXGI_ADAPTER_FLAG3_NONE = 0x00000000;
  static const DXGI_ADAPTER_FLAG3_REMOTE = 0x00000001;
  static const DXGI_ADAPTER_FLAG3_SOFTWARE = 0x00000002;
  static const DXGI_ADAPTER_FLAG3_ACG_COMPATIBLE = 0x00000004;
  static const DXGI_ADAPTER_FLAG3_SUPPORT_MONITORED_FENCES = 0x00000008;
  static const DXGI_ADAPTER_FLAG3_SUPPORT_NON_MONITORED_FENCES = 0x00000010;
  static const DXGI_ADAPTER_FLAG3_KEYED_MUTEX_CONFORMANCE = 0x00000020;
  static const DXGI_ADAPTER_FLAG3_FORCE_DWORD = 0xffffffff;
}

/// {@category Enum}
class DXGI_COMPUTE_PREEMPTION_GRANULARITY {
  static const DXGI_COMPUTE_PREEMPTION_DMA_BUFFER_BOUNDARY = 0x00000000;
  static const DXGI_COMPUTE_PREEMPTION_DISPATCH_BOUNDARY = 0x00000001;
  static const DXGI_COMPUTE_PREEMPTION_THREAD_GROUP_BOUNDARY = 0x00000002;
  static const DXGI_COMPUTE_PREEMPTION_THREAD_BOUNDARY = 0x00000003;
  static const DXGI_COMPUTE_PREEMPTION_INSTRUCTION_BOUNDARY = 0x00000004;
}

/// {@category Enum}
class DXGI_DEBUG_RLO_FLAGS {
  static const DXGI_DEBUG_RLO_SUMMARY = 0x00000001;
  static const DXGI_DEBUG_RLO_DETAIL = 0x00000002;
  static const DXGI_DEBUG_RLO_IGNORE_INTERNAL = 0x00000004;
  static const DXGI_DEBUG_RLO_ALL = 0x00000007;
}

/// {@category Enum}
class DXGI_FEATURE {
  static const DXGI_FEATURE_PRESENT_ALLOW_TEARING = 0x00000000;
}

/// {@category Enum}
class DXGI_FRAME_PRESENTATION_MODE {
  static const DXGI_FRAME_PRESENTATION_MODE_COMPOSED = 0x00000000;
  static const DXGI_FRAME_PRESENTATION_MODE_OVERLAY = 0x00000001;
  static const DXGI_FRAME_PRESENTATION_MODE_NONE = 0x00000002;
  static const DXGI_FRAME_PRESENTATION_MODE_COMPOSITION_FAILURE = 0x00000003;
}

/// {@category Enum}
class DXGI_GPU_PREFERENCE {
  static const DXGI_GPU_PREFERENCE_UNSPECIFIED = 0x00000000;
  static const DXGI_GPU_PREFERENCE_MINIMUM_POWER = 0x00000001;
  static const DXGI_GPU_PREFERENCE_HIGH_PERFORMANCE = 0x00000002;
}

/// {@category Enum}
class DXGI_GRAPHICS_PREEMPTION_GRANULARITY {
  static const DXGI_GRAPHICS_PREEMPTION_DMA_BUFFER_BOUNDARY = 0x00000000;
  static const DXGI_GRAPHICS_PREEMPTION_PRIMITIVE_BOUNDARY = 0x00000001;
  static const DXGI_GRAPHICS_PREEMPTION_TRIANGLE_BOUNDARY = 0x00000002;
  static const DXGI_GRAPHICS_PREEMPTION_PIXEL_BOUNDARY = 0x00000003;
  static const DXGI_GRAPHICS_PREEMPTION_INSTRUCTION_BOUNDARY = 0x00000004;
}

/// {@category Enum}
class DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAGS {
  static const DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_FULLSCREEN = 0x00000001;
  static const DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_WINDOWED = 0x00000002;
  static const DXGI_HARDWARE_COMPOSITION_SUPPORT_FLAG_CURSOR_STRETCHED =
      0x00000004;
}

/// {@category Enum}
class DXGI_HDR_METADATA_TYPE {
  static const DXGI_HDR_METADATA_TYPE_NONE = 0x00000000;
  static const DXGI_HDR_METADATA_TYPE_HDR10 = 0x00000001;
  static const DXGI_HDR_METADATA_TYPE_HDR10PLUS = 0x00000002;
}

/// {@category Enum}
class DXGI_INFO_QUEUE_MESSAGE_CATEGORY {
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_UNKNOWN = 0x00000000;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_MISCELLANEOUS = 0x00000001;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_INITIALIZATION = 0x00000002;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_CLEANUP = 0x00000003;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_COMPILATION = 0x00000004;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_CREATION = 0x00000005;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_SETTING = 0x00000006;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_STATE_GETTING = 0x00000007;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_RESOURCE_MANIPULATION =
      0x00000008;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_EXECUTION = 0x00000009;
  static const DXGI_INFO_QUEUE_MESSAGE_CATEGORY_SHADER = 0x0000000a;
}

/// {@category Enum}
class DXGI_INFO_QUEUE_MESSAGE_SEVERITY {
  static const DXGI_INFO_QUEUE_MESSAGE_SEVERITY_CORRUPTION = 0x00000000;
  static const DXGI_INFO_QUEUE_MESSAGE_SEVERITY_ERROR = 0x00000001;
  static const DXGI_INFO_QUEUE_MESSAGE_SEVERITY_WARNING = 0x00000002;
  static const DXGI_INFO_QUEUE_MESSAGE_SEVERITY_INFO = 0x00000003;
  static const DXGI_INFO_QUEUE_MESSAGE_SEVERITY_MESSAGE = 0x00000004;
}

/// {@category Enum}
class DXGI_MEMORY_SEGMENT_GROUP {
  static const DXGI_MEMORY_SEGMENT_GROUP_LOCAL = 0x00000000;
  static const DXGI_MEMORY_SEGMENT_GROUP_NON_LOCAL = 0x00000001;
}

/// {@category Enum}
class DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAGS {
  static const DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_NOMINAL_RANGE = 0x00000001;
  static const DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_BT709 = 0x00000002;
  static const DXGI_MULTIPLANE_OVERLAY_YCbCr_FLAG_xvYCC = 0x00000004;
}

/// {@category Enum}
class DXGI_Message_Id {
  static const DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_InvalidOutputWindow =
      0x00000000;
  static const DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferWidthInferred =
      0x00000001;
  static const DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_BufferHeightInferred =
      0x00000002;
  static const DXGI_MSG_IDXGISwapChain_CreationOrResizeBuffers_NoScanoutFlagChanged =
      0x00000003;
  static const DXGI_MSG_IDXGISwapChain_Creation_MaxBufferCountExceeded =
      0x00000004;
  static const DXGI_MSG_IDXGISwapChain_Creation_TooFewBuffers = 0x00000005;
  static const DXGI_MSG_IDXGISwapChain_Creation_NoOutputWindow = 0x00000006;
  static const DXGI_MSG_IDXGISwapChain_Destruction_OtherMethodsCalled =
      0x00000007;
  static const DXGI_MSG_IDXGISwapChain_GetDesc_pDescIsNULL = 0x00000008;
  static const DXGI_MSG_IDXGISwapChain_GetBuffer_ppSurfaceIsNULL = 0x00000009;
  static const DXGI_MSG_IDXGISwapChain_GetBuffer_NoAllocatedBuffers =
      0x0000000a;
  static const DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferMustBeZero = 0x0000000b;
  static const DXGI_MSG_IDXGISwapChain_GetBuffer_iBufferOOB = 0x0000000c;
  static const DXGI_MSG_IDXGISwapChain_GetContainingOutput_ppOutputIsNULL =
      0x0000000d;
  static const DXGI_MSG_IDXGISwapChain_Present_SyncIntervalOOB = 0x0000000e;
  static const DXGI_MSG_IDXGISwapChain_Present_InvalidNonPreRotatedFlag =
      0x0000000f;
  static const DXGI_MSG_IDXGISwapChain_Present_NoAllocatedBuffers = 0x00000010;
  static const DXGI_MSG_IDXGISwapChain_Present_GetDXGIAdapterFailed =
      0x00000011;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOB =
      0x00000012;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_UnreleasedReferences =
      0x00000013;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidSwapChainFlag =
      0x00000014;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidNonPreRotatedFlag =
      0x00000015;
  static const DXGI_MSG_IDXGISwapChain_ResizeTarget_RefreshRateDivideByZero =
      0x00000016;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_InvalidTarget =
      0x00000017;
  static const DXGI_MSG_IDXGISwapChain_GetFrameStatistics_pStatsIsNULL =
      0x00000018;
  static const DXGI_MSG_IDXGISwapChain_GetLastPresentCount_pLastPresentCountIsNULL =
      0x00000019;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_RemoteNotSupported =
      0x0000001a;
  static const DXGI_MSG_IDXGIOutput_TakeOwnership_FailedToAcquireFullscreenMutex =
      0x0000001b;
  static const DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ppAdapterInterfaceIsNULL =
      0x0000001c;
  static const DXGI_MSG_IDXGIFactory_EnumAdapters_ppAdapterInterfaceIsNULL =
      0x0000001d;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_ppSwapChainIsNULL =
      0x0000001e;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_pDescIsNULL = 0x0000001f;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_UnknownSwapEffect =
      0x00000020;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFlags = 0x00000021;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedFlagAndWindowed =
      0x00000022;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_NullDeviceInterface =
      0x00000023;
  static const DXGI_MSG_IDXGIFactory_GetWindowAssociation_phWndIsNULL =
      0x00000024;
  static const DXGI_MSG_IDXGIFactory_MakeWindowAssociation_InvalidFlags =
      0x00000025;
  static const DXGI_MSG_IDXGISurface_Map_InvalidSurface = 0x00000026;
  static const DXGI_MSG_IDXGISurface_Map_FlagsSetToZero = 0x00000027;
  static const DXGI_MSG_IDXGISurface_Map_DiscardAndReadFlagSet = 0x00000028;
  static const DXGI_MSG_IDXGISurface_Map_DiscardButNotWriteFlagSet = 0x00000029;
  static const DXGI_MSG_IDXGISurface_Map_NoCPUAccess = 0x0000002a;
  static const DXGI_MSG_IDXGISurface_Map_ReadFlagSetButCPUAccessIsDynamic =
      0x0000002b;
  static const DXGI_MSG_IDXGISurface_Map_DiscardFlagSetButCPUAccessIsNotDynamic =
      0x0000002c;
  static const DXGI_MSG_IDXGIOutput_GetDisplayModeList_pNumModesIsNULL =
      0x0000002d;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasInvalidWidthOrHeight =
      0x0000002e;
  static const DXGI_MSG_IDXGIOutput_GetCammaControlCapabilities_NoOwnerDevice =
      0x0000002f;
  static const DXGI_MSG_IDXGIOutput_TakeOwnership_pDeviceIsNULL = 0x00000030;
  static const DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_NoOwnerDevice =
      0x00000031;
  static const DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_pDestinationIsNULL =
      0x00000032;
  static const DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_MapOfDestinationFailed =
      0x00000033;
  static const DXGI_MSG_IDXGIOutput_GetFrameStatistics_NoOwnerDevice =
      0x00000034;
  static const DXGI_MSG_IDXGIOutput_GetFrameStatistics_pStatsIsNULL =
      0x00000035;
  static const DXGI_MSG_IDXGIOutput_SetGammaControl_NoOwnerDevice = 0x00000036;
  static const DXGI_MSG_IDXGIOutput_GetGammaControl_NoOwnerDevice = 0x00000037;
  static const DXGI_MSG_IDXGIOutput_GetGammaControl_NoGammaControls =
      0x00000038;
  static const DXGI_MSG_IDXGIOutput_SetDisplaySurface_IDXGIResourceNotSupportedBypPrimary =
      0x00000039;
  static const DXGI_MSG_IDXGIOutput_SetDisplaySurface_pPrimaryIsInvalid =
      0x0000003a;
  static const DXGI_MSG_IDXGIOutput_SetDisplaySurface_NoOwnerDevice =
      0x0000003b;
  static const DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteDeviceNotSupported =
      0x0000003c;
  static const DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteDeviceNotSupported =
      0x0000003d;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteDeviceNotSupported =
      0x0000003e;
  static const DXGI_MSG_IDXGIDevice_CreateSurface_InvalidParametersWithpSharedResource =
      0x0000003f;
  static const DXGI_MSG_IDXGIObject_GetPrivateData_puiDataSizeIsNULL =
      0x00000040;
  static const DXGI_MSG_IDXGISwapChain_Creation_InvalidOutputWindow =
      0x00000041;
  static const DXGI_MSG_IDXGISwapChain_Release_SwapChainIsFullscreen =
      0x00000042;
  static const DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_InvalidTargetSurfaceFormat =
      0x00000043;
  static const DXGI_MSG_IDXGIFactory_CreateSoftwareAdapter_ModuleIsNULL =
      0x00000044;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_IDXGIDeviceNotSupportedBypConcernedDevice =
      0x00000045;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_pModeToMatchOrpClosestMatchIsNULL =
      0x00000046;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_ModeHasRefreshRateDenominatorZero =
      0x00000047;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_UnknownFormatIsInvalidForConfiguration =
      0x00000048;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScanlineOrdering =
      0x00000049;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeScaling =
      0x0000004a;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_InvalidDisplayModeFormatAndDeviceCombination =
      0x0000004b;
  static const DXGI_MSG_IDXGIFactory_Creation_CalledFromDllMain = 0x0000004c;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_OutputNotOwnedBySwapChainDevice =
      0x0000004d;
  static const DXGI_MSG_IDXGISwapChain_Creation_InvalidWindowStyle = 0x0000004e;
  static const DXGI_MSG_IDXGISwapChain_GetFrameStatistics_UnsupportedStatistics =
      0x0000004f;
  static const DXGI_MSG_IDXGISwapChain_GetContainingOutput_SwapchainAdapterDoesNotControlOutput =
      0x00000050;
  static const DXGI_MSG_IDXGIOutput_SetOrGetGammaControl_pArrayIsNULL =
      0x00000051;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_FullscreenInvalidForChildWindows =
      0x00000052;
  static const DXGI_MSG_IDXGIFactory_Release_CalledFromDllMain = 0x00000053;
  static const DXGI_MSG_IDXGISwapChain_Present_UnreleasedHDC = 0x00000054;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_NonPreRotatedAndGDICompatibleFlags =
      0x00000055;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_NonPreRotatedAndGDICompatibleFlags =
      0x00000056;
  static const DXGI_MSG_IDXGISurface1_GetDC_pHdcIsNULL = 0x00000057;
  static const DXGI_MSG_IDXGISurface1_GetDC_SurfaceNotTexture2D = 0x00000058;
  static const DXGI_MSG_IDXGISurface1_GetDC_GDICompatibleFlagNotSet =
      0x00000059;
  static const DXGI_MSG_IDXGISurface1_GetDC_UnreleasedHDC = 0x0000005a;
  static const DXGI_MSG_IDXGISurface_Map_NoCPUAccess2 = 0x0000005b;
  static const DXGI_MSG_IDXGISurface1_ReleaseDC_GetDCNotCalled = 0x0000005c;
  static const DXGI_MSG_IDXGISurface1_ReleaseDC_InvalidRectangleDimensions =
      0x0000005d;
  static const DXGI_MSG_IDXGIOutput_TakeOwnership_RemoteOutputNotSupported =
      0x0000005e;
  static const DXGI_MSG_IDXGIOutput_FindClosestMatchingMode_RemoteOutputNotSupported =
      0x0000005f;
  static const DXGI_MSG_IDXGIOutput_GetDisplayModeList_RemoteOutputNotSupported =
      0x00000060;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_pDeviceHasMismatchedDXGIFactory =
      0x00000061;
  static const DXGI_MSG_IDXGISwapChain_Present_NonOptimalFSConfiguration =
      0x00000062;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSequentialNotSupportedOnD3D10 =
      0x00000063;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_BufferCountOOBForFlipSequential =
      0x00000064;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidFormatForFlipSequential =
      0x00000065;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_MultiSamplingNotSupportedForFlipSequential =
      0x00000066;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_BufferCountOOBForFlipSequential =
      0x00000067;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidFormatForFlipSequential =
      0x00000068;
  static const DXGI_MSG_IDXGISwapChain_Present_PartialPresentationBeforeStandardPresentation =
      0x00000069;
  static const DXGI_MSG_IDXGISwapChain_Present_FullscreenPartialPresentIsInvalid =
      0x0000006a;
  static const DXGI_MSG_IDXGISwapChain_Present_InvalidPresentTestOrDoNotSequenceFlag =
      0x0000006b;
  static const DXGI_MSG_IDXGISwapChain_Present_ScrollInfoWithNoDirtyRectsSpecified =
      0x0000006c;
  static const DXGI_MSG_IDXGISwapChain_Present_EmptyScrollRect = 0x0000006d;
  static const DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBounds =
      0x0000006e;
  static const DXGI_MSG_IDXGISwapChain_Present_ScrollRectOutOfBackbufferBoundsWithOffset =
      0x0000006f;
  static const DXGI_MSG_IDXGISwapChain_Present_EmptyDirtyRect = 0x00000070;
  static const DXGI_MSG_IDXGISwapChain_Present_DirtyRectOutOfBackbufferBounds =
      0x00000071;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_UnsupportedBufferUsageFlags =
      0x00000072;
  static const DXGI_MSG_IDXGISwapChain_Present_DoNotSequenceFlagSetButPreviousBufferIsUndefined =
      0x00000073;
  static const DXGI_MSG_IDXGISwapChain_Present_UnsupportedFlags = 0x00000074;
  static const DXGI_MSG_IDXGISwapChain_Present_FlipModelChainMustResizeOrCreateOnFSTransition =
      0x00000075;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_pRestrictToOutputFromOtherIDXGIFactory =
      0x00000076;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictOutputNotSupportedOnAdapter =
      0x00000077;
  static const DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagSetButInvalidpRestrictToOutput =
      0x00000078;
  static const DXGI_MSG_IDXGISwapChain_Present_RestrictToOutputFlagdWithFullscreen =
      0x00000079;
  static const DXGI_MSG_IDXGISwapChain_Present_RestrictOutputFlagWithStaleSwapChain =
      0x0000007a;
  static const DXGI_MSG_IDXGISwapChain_Present_OtherFlagsCausingInvalidPresentTestFlag =
      0x0000007b;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_UnavailableInSession0 =
      0x0000007c;
  static const DXGI_MSG_IDXGIFactory_MakeWindowAssociation_UnavailableInSession0 =
      0x0000007d;
  static const DXGI_MSG_IDXGIFactory_GetWindowAssociation_UnavailableInSession0 =
      0x0000007e;
  static const DXGI_MSG_IDXGIAdapter_EnumOutputs_UnavailableInSession0 =
      0x0000007f;
  static const DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_StereoDisabled =
      0x00000080;
  static const DXGI_MSG_IDXGIFactory2_UnregisterStatus_CookieNotFound =
      0x00000081;
  static const DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFSOrOverlay =
      0x00000082;
  static const DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithoutFlipSequential =
      0x00000083;
  static const DXGI_MSG_IDXGISwapChain_Present_ProtectedContentWithRDPDriver =
      0x00000084;
  static const DXGI_MSG_IDXGISwapChain_Present_ProtectedContentInWindowedModeWithDWMOffOrInvalidDisplayAffinity =
      0x00000085;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_WidthOrHeightIsZero =
      0x00000086;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_OnlyFlipSequentialSupported =
      0x00000087;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnAdapter =
      0x00000088;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_UnsupportedOnWindows7 =
      0x00000089;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSTransitionWithCompositionSwapChain =
      0x0000008a;
  static const DXGI_MSG_IDXGISwapChain_ResizeTarget_InvalidWithCompositionSwapChain =
      0x0000008b;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_WidthOrHeightIsZero =
      0x0000008c;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneIsFlipModelOnly =
      0x0000008d;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingUnrecognized =
      0x0000008e;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyFullscreenUnsupported =
      0x0000008f;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyUnsupported =
      0x00000090;
  static const DXGI_MSG_IDXGISwapChain_Present_RestartIsFullscreenOnly =
      0x00000091;
  static const DXGI_MSG_IDXGISwapChain_Present_ProtectedWindowlessPresentationRequiresDisplayOnly =
      0x00000092;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_DisplayOnlyUnsupported =
      0x00000093;
  static const DXGI_MSG_IDXGISwapChain1_SetBackgroundColor_OutOfRange =
      0x00000094;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyFullscreenUnsupported =
      0x00000095;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyUnsupported =
      0x00000096;
  static const DXGI_MSG_IDXGISwapchain_Present_ScrollUnsupported = 0x00000097;
  static const DXGI_MSG_IDXGISwapChain1_SetRotation_UnsupportedOS = 0x00000098;
  static const DXGI_MSG_IDXGISwapChain1_GetRotation_UnsupportedOS = 0x00000099;
  static const DXGI_MSG_IDXGISwapchain_Present_FullscreenRotation = 0x0000009a;
  static const DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithMSAABuffers =
      0x0000009b;
  static const DXGI_MSG_IDXGISwapChain1_SetRotation_FlipSequentialRequired =
      0x0000009c;
  static const DXGI_MSG_IDXGISwapChain1_SetRotation_InvalidRotation =
      0x0000009d;
  static const DXGI_MSG_IDXGISwapChain1_GetRotation_FlipSequentialRequired =
      0x0000009e;
  static const DXGI_MSG_IDXGISwapChain_GetHwnd_WrongType = 0x0000009f;
  static const DXGI_MSG_IDXGISwapChain_GetCompositionSurface_WrongType =
      0x000000a0;
  static const DXGI_MSG_IDXGISwapChain_GetCoreWindow_WrongType = 0x000000a1;
  static const DXGI_MSG_IDXGISwapChain_GetFullscreenDesc_NonHwnd = 0x000000a2;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_CoreWindow =
      0x000000a3;
  static const DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_UnsupportedOnWindows7 =
      0x000000a4;
  static const DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsNULL =
      0x000000a5;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_FSUnsupportedForModernApps =
      0x000000a6;
  static const DXGI_MSG_IDXGIFactory_MakeWindowAssociation_ModernApp =
      0x000000a7;
  static const DXGI_MSG_IDXGISwapChain_ResizeTarget_ModernApp = 0x000000a8;
  static const DXGI_MSG_IDXGISwapChain_ResizeTarget_pNewTargetParametersIsNULL =
      0x000000a9;
  static const DXGI_MSG_IDXGIOutput_SetDisplaySurface_ModernApp = 0x000000aa;
  static const DXGI_MSG_IDXGIOutput_TakeOwnership_ModernApp = 0x000000ab;
  static const DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_pWindowIsInvalid =
      0x000000ac;
  static const DXGI_MSG_IDXGIFactory2_CreateSwapChainForCompositionSurface_InvalidHandle =
      0x000000ad;
  static const DXGI_MSG_IDXGISurface1_GetDC_ModernApp = 0x000000ae;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_ScalingNoneRequiresWindows8OrNewer =
      0x000000af;
  static const DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoAndPreferRight =
      0x000000b0;
  static const DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithDoNotSequence =
      0x000000b1;
  static const DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoOrPreferRightWithoutStereo =
      0x000000b2;
  static const DXGI_MSG_IDXGISwapChain_Present_TemporaryMonoUnsupported =
      0x000000b3;
  static const DXGI_MSG_IDXGIOutput_GetDisplaySurfaceData_ArraySizeMismatch =
      0x000000b4;
  static const DXGI_MSG_IDXGISwapChain_Present_PartialPresentationWithSwapEffectDiscard =
      0x000000b5;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaUnrecognized =
      0x000000b6;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsWindowlessOnly =
      0x000000b7;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_AlphaIsFlipModelOnly =
      0x000000b8;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_RestrictToOutputAdapterMismatch =
      0x000000b9;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_DisplayOnlyOnLegacy =
      0x000000ba;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_DisplayOnlyOnLegacy =
      0x000000bb;
  static const DXGI_MSG_IDXGIResource1_CreateSubresourceSurface_InvalidIndex =
      0x000000bc;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidScaling =
      0x000000bd;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForCoreWindow_InvalidSwapEffect =
      0x000000be;
  static const DXGI_MSG_IDXGIResource1_CreateSharedHandle_UnsupportedOS =
      0x000000bf;
  static const DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusWindow_UnsupportedOS =
      0x000000c0;
  static const DXGI_MSG_IDXGIFactory2_RegisterOcclusionStatusEvent_UnsupportedOS =
      0x000000c1;
  static const DXGI_MSG_IDXGIOutput1_DuplicateOutput_UnsupportedOS = 0x000000c2;
  static const DXGI_MSG_IDXGIDisplayControl_IsStereoEnabled_UnsupportedOS =
      0x000000c3;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForComposition_InvalidAlphaMode =
      0x000000c4;
  static const DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidResource =
      0x000000c5;
  static const DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_InvalidLUID =
      0x000000c6;
  static const DXGI_MSG_IDXGIFactory_GetSharedResourceAdapterLuid_UnsupportedOS =
      0x000000c7;
  static const DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_2DOnly = 0x000000c8;
  static const DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_StagingOnly =
      0x000000c9;
  static const DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NeedCPUAccessWrite =
      0x000000ca;
  static const DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_NoShared =
      0x000000cb;
  static const DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_OnlyMipLevels1 =
      0x000000cc;
  static const DXGI_MSG_IDXGIOutput1_GetDisplaySurfaceData1_MappedOrOfferedResource =
      0x000000cd;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_FSUnsupportedForModernApps =
      0x000000ce;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_FailedToGoFSButNonPreRotated =
      0x000000cf;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainOrRegisterOcclusionStatus_BlitModelUsedWhileRegisteredForOcclusionStatusEvents =
      0x000000d0;
  static const DXGI_MSG_IDXGISwapChain_Present_BlitModelUsedWhileRegisteredForOcclusionStatusEvents =
      0x000000d1;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreFlipModelOnly =
      0x000000d2;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_WaitableSwapChainsAreNotFullscreen =
      0x000000d3;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_Waitable = 0x000000d4;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveWaitableFlag =
      0x000000d5;
  static const DXGI_MSG_IDXGISwapChain_GetFrameLatencyWaitableObject_OnlyWaitable =
      0x000000d6;
  static const DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_OnlyWaitable =
      0x000000d7;
  static const DXGI_MSG_IDXGISwapChain_GetMaximumFrameLatency_pMaxLatencyIsNULL =
      0x000000d8;
  static const DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_OnlyWaitable =
      0x000000d9;
  static const DXGI_MSG_IDXGISwapChain_SetMaximumFrameLatency_MaxLatencyIsOutOfBounds =
      0x000000da;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_ForegroundIsCoreWindowOnly =
      0x000000db;
  static const DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_ForegroundUnsupportedOnAdapter =
      0x000000dc;
  static const DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidScaling =
      0x000000dd;
  static const DXGI_MSG_IDXGIFactory2_CreateSwapChainForCoreWindow_InvalidAlphaMode =
      0x000000de;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveForegroundFlag =
      0x000000df;
  static const DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixPointerCannotBeNull =
      0x000000e0;
  static const DXGI_MSG_IDXGISwapChain_SetMatrixTransform_RequiresCompositionSwapChain =
      0x000000e1;
  static const DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeFinite =
      0x000000e2;
  static const DXGI_MSG_IDXGISwapChain_SetMatrixTransform_MatrixMustBeTranslateAndOrScale =
      0x000000e3;
  static const DXGI_MSG_IDXGISwapChain_GetMatrixTransform_MatrixPointerCannotBeNull =
      0x000000e4;
  static const DXGI_MSG_IDXGISwapChain_GetMatrixTransform_RequiresCompositionSwapChain =
      0x000000e5;
  static const DXGI_MSG_DXGIGetDebugInterface1_NULL_ppDebug = 0x000000e6;
  static const DXGI_MSG_DXGIGetDebugInterface1_InvalidFlags = 0x000000e7;
  static const DXGI_MSG_IDXGISwapChain_Present_Decode = 0x000000e8;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_Decode = 0x000000e9;
  static const DXGI_MSG_IDXGISwapChain_SetSourceSize_FlipModel = 0x000000ea;
  static const DXGI_MSG_IDXGISwapChain_SetSourceSize_Decode = 0x000000eb;
  static const DXGI_MSG_IDXGISwapChain_SetSourceSize_WidthHeight = 0x000000ec;
  static const DXGI_MSG_IDXGISwapChain_GetSourceSize_NullPointers = 0x000000ed;
  static const DXGI_MSG_IDXGISwapChain_GetSourceSize_Decode = 0x000000ee;
  static const DXGI_MSG_IDXGIDecodeSwapChain_SetColorSpace_InvalidFlags =
      0x000000ef;
  static const DXGI_MSG_IDXGIDecodeSwapChain_SetSourceRect_InvalidRect =
      0x000000f0;
  static const DXGI_MSG_IDXGIDecodeSwapChain_SetTargetRect_InvalidRect =
      0x000000f1;
  static const DXGI_MSG_IDXGIDecodeSwapChain_SetDestSize_InvalidSize =
      0x000000f2;
  static const DXGI_MSG_IDXGIDecodeSwapChain_GetSourceRect_InvalidPointer =
      0x000000f3;
  static const DXGI_MSG_IDXGIDecodeSwapChain_GetTargetRect_InvalidPointer =
      0x000000f4;
  static const DXGI_MSG_IDXGIDecodeSwapChain_GetDestSize_InvalidPointer =
      0x000000f5;
  static const DXGI_MSG_IDXGISwapChain_PresentBuffer_YUV = 0x000000f6;
  static const DXGI_MSG_IDXGISwapChain_SetSourceSize_YUV = 0x000000f7;
  static const DXGI_MSG_IDXGISwapChain_GetSourceSize_YUV = 0x000000f8;
  static const DXGI_MSG_IDXGISwapChain_SetMatrixTransform_YUV = 0x000000f9;
  static const DXGI_MSG_IDXGISwapChain_GetMatrixTransform_YUV = 0x000000fa;
  static const DXGI_MSG_IDXGISwapChain_Present_PartialPresentation_YUV =
      0x000000fb;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveFlag_YUV =
      0x000000fc;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_Alignment_YUV = 0x000000fd;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_ShaderInputUnsupported_YUV =
      0x000000fe;
  static const DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_NullPointers =
      0x000000ff;
  static const DXGI_MSG_IDXGIOutput3_CheckOverlaySupport_IDXGIDeviceNotSupportedBypConcernedDevice =
      0x00000100;
  static const DXGI_MSG_IDXGIAdapter_EnumOutputs2_InvalidEnumOutputs2Flag =
      0x00000101;
  static const DXGI_MSG_IDXGISwapChain_CreationOrSetFullscreenState_FSUnsupportedForFlipDiscard =
      0x00000102;
  static const DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_NullPointers =
      0x00000103;
  static const DXGI_MSG_IDXGIOutput4_CheckOverlayColorSpaceSupport_IDXGIDeviceNotSupportedBypConcernedDevice =
      0x00000104;
  static const DXGI_MSG_IDXGISwapChain3_CheckColorSpaceSupport_NullPointers =
      0x00000105;
  static const DXGI_MSG_IDXGISwapChain3_SetColorSpace1_InvalidColorSpace =
      0x00000106;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidHwProtect =
      0x00000107;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_HwProtectUnsupported =
      0x00000108;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtect =
      0x00000109;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_HwProtectUnsupported =
      0x0000010a;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers1_D3D12Only = 0x0000010b;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers1_FlipModel = 0x0000010c;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers1_NodeMaskAndQueueRequired =
      0x0000010d;
  static const DXGI_MSG_IDXGISwapChain_CreateSwapChain_InvalidHwProtectGdiFlag =
      0x0000010e;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_InvalidHwProtectGdiFlag =
      0x0000010f;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_10BitFormatNotSupported =
      0x00000110;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_FlipSwapEffectRequired =
      0x00000111;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidDevice = 0x00000112;
  static const DXGI_MSG_IDXGIOutput_TakeOwnership_Unsupported = 0x00000113;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_InvalidQueue = 0x00000114;
  static const DXGI_MSG_IDXGISwapChain3_ResizeBuffers1_InvalidQueue =
      0x00000115;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChainForHwnd_InvalidScaling =
      0x00000116;
  static const DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidSize = 0x00000117;
  static const DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidPointer =
      0x00000118;
  static const DXGI_MSG_IDXGISwapChain3_SetHDRMetaData_InvalidType = 0x00000119;
  static const DXGI_MSG_IDXGISwapChain_Present_FullscreenAllowTearingIsInvalid =
      0x0000011a;
  static const DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresPresentIntervalZero =
      0x0000011b;
  static const DXGI_MSG_IDXGISwapChain_Present_AllowTearingRequiresCreationFlag =
      0x0000011c;
  static const DXGI_MSG_IDXGISwapChain_ResizeBuffers_CannotAddOrRemoveAllowTearingFlag =
      0x0000011d;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_AllowTearingFlagIsFlipModelOnly =
      0x0000011e;
  static const DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidFeature =
      0x0000011f;
  static const DXGI_MSG_IDXGIFactory_CheckFeatureSupport_InvalidSize =
      0x00000120;
  static const DXGI_MSG_IDXGIOutput6_CheckHardwareCompositionSupport_NullPointer =
      0x00000121;
  static const DXGI_MSG_IDXGISwapChain_SetFullscreenState_PerMonitorDpiShimApplied =
      0x00000122;
  static const DXGI_MSG_IDXGIOutput_DuplicateOutput_PerMonitorDpiShimApplied =
      0x00000123;
  static const DXGI_MSG_IDXGIOutput_DuplicateOutput1_PerMonitorDpiRequired =
      0x00000124;
  static const DXGI_MSG_IDXGIFactory7_UnregisterAdaptersChangedEvent_CookieNotFound =
      0x00000125;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_LegacyBltModelSwapEffect =
      0x00000126;
  static const DXGI_MSG_IDXGISwapChain4_SetHDRMetaData_MetadataUnchanged =
      0x00000127;
  static const DXGI_MSG_IDXGISwapChain_Present_11On12_Released_Resource =
      0x00000128;
  static const DXGI_MSG_IDXGIFactory_CreateSwapChain_MultipleSwapchainRefToSurface_DeferredDtr =
      0x00000129;
  static const DXGI_MSG_IDXGIFactory_MakeWindowAssociation_NoOpBehavior =
      0x0000012a;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow =
      0x000003e8;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_DISCARD_BufferCount =
      0x000003e9;
  static const DXGI_MSG_Phone_IDXGISwapChain_SetFullscreenState_NotAvailable =
      0x000003ea;
  static const DXGI_MSG_Phone_IDXGISwapChain_ResizeBuffers_NotAvailable =
      0x000003eb;
  static const DXGI_MSG_Phone_IDXGISwapChain_ResizeTarget_NotAvailable =
      0x000003ec;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerIndex =
      0x000003ed;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleLayerIndex =
      0x000003ee;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidLayerFlag =
      0x000003ef;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidRotation =
      0x000003f0;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidBlend = 0x000003f1;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidResource =
      0x000003f2;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidMultiPlaneOverlayResource =
      0x000003f3;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForPrimary =
      0x000003f4;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidIndexForOverlay =
      0x000003f5;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSubResourceIndex =
      0x000003f6;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidSourceRect =
      0x000003f7;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidDestinationRect =
      0x000003f8;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_MultipleResource =
      0x000003f9;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_NotSharedResource =
      0x000003fa;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidFlag = 0x000003fb;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_InvalidInterval =
      0x000003fc;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_MSAA_NotSupported =
      0x000003fd;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_ScalingAspectRatioStretch_Supported_ModernApp =
      0x000003fe;
  static const DXGI_MSG_Phone_IDXGISwapChain_GetFrameStatistics_NotAvailable_ModernApp =
      0x000003ff;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present_ReplaceInterval0With1 =
      0x00000400;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FailedRegisterWithCompositor =
      0x00000401;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_NotForegroundWindow_AtRendering =
      0x00000402;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_SEQUENTIAL_BufferCount =
      0x00000403;
  static const DXGI_MSG_Phone_IDXGIFactory_CreateSwapChain_FLIP_Modern_CoreWindow_Only =
      0x00000404;
  static const DXGI_MSG_Phone_IDXGISwapChain_Present1_RequiresOverlays =
      0x00000405;
  static const DXGI_MSG_Phone_IDXGISwapChain_SetBackgroundColor_FlipSequentialRequired =
      0x00000406;
  static const DXGI_MSG_Phone_IDXGISwapChain_GetBackgroundColor_FlipSequentialRequired =
      0x00000407;
}

/// {@category Enum}
class DXGI_OFFER_RESOURCE_FLAGS {
  static const DXGI_OFFER_RESOURCE_FLAG_ALLOW_DECOMMIT = 0x00000001;
}

/// {@category Enum}
class DXGI_OFFER_RESOURCE_PRIORITY {
  static const DXGI_OFFER_RESOURCE_PRIORITY_LOW = 0x00000001;
  static const DXGI_OFFER_RESOURCE_PRIORITY_NORMAL = 0x00000002;
  static const DXGI_OFFER_RESOURCE_PRIORITY_HIGH = 0x00000003;
}

/// {@category Enum}
class DXGI_OUTDUPL_FLAG {
  static const DXGI_OUTDUPL_COMPOSITED_UI_CAPTURE_ONLY = 0x00000001;
}

/// {@category Enum}
class DXGI_OUTDUPL_POINTER_SHAPE_TYPE {
  static const DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MONOCHROME = 0x00000001;
  static const DXGI_OUTDUPL_POINTER_SHAPE_TYPE_COLOR = 0x00000002;
  static const DXGI_OUTDUPL_POINTER_SHAPE_TYPE_MASKED_COLOR = 0x00000004;
}

/// {@category Enum}
class DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG {
  static const DXGI_OVERLAY_COLOR_SPACE_SUPPORT_FLAG_PRESENT = 0x00000001;
}

/// {@category Enum}
class DXGI_OVERLAY_SUPPORT_FLAG {
  static const DXGI_OVERLAY_SUPPORT_FLAG_DIRECT = 0x00000001;
  static const DXGI_OVERLAY_SUPPORT_FLAG_SCALING = 0x00000002;
}

/// {@category Enum}
class DXGI_RECLAIM_RESOURCE_RESULTS {
  static const DXGI_RECLAIM_RESOURCE_RESULT_OK = 0x00000000;
  static const DXGI_RECLAIM_RESOURCE_RESULT_DISCARDED = 0x00000001;
  static const DXGI_RECLAIM_RESOURCE_RESULT_NOT_COMMITTED = 0x00000002;
}

/// {@category Enum}
class DXGI_RESIDENCY {
  static const DXGI_RESIDENCY_FULLY_RESIDENT = 0x00000001;
  static const DXGI_RESIDENCY_RESIDENT_IN_SHARED_MEMORY = 0x00000002;
  static const DXGI_RESIDENCY_EVICTED_TO_DISK = 0x00000003;
}

/// {@category Enum}
class DXGI_RESOURCE_PRIORITY {
  static const DXGI_RESOURCE_PRIORITY_MINIMUM = 0x28000000;
  static const DXGI_RESOURCE_PRIORITY_LOW = 0x50000000;
  static const DXGI_RESOURCE_PRIORITY_NORMAL = 0x78000000;
  static const DXGI_RESOURCE_PRIORITY_HIGH = 0xa0000000;
  static const DXGI_RESOURCE_PRIORITY_MAXIMUM = 0xc8000000;
}

/// {@category Enum}
class DXGI_SCALING {
  static const DXGI_SCALING_STRETCH = 0x00000000;
  static const DXGI_SCALING_NONE = 0x00000001;
  static const DXGI_SCALING_ASPECT_RATIO_STRETCH = 0x00000002;
}

/// {@category Enum}
class DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG {
  static const DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_PRESENT = 0x00000001;
  static const DXGI_SWAP_CHAIN_COLOR_SPACE_SUPPORT_FLAG_OVERLAY_PRESENT =
      0x00000002;
}

/// {@category Enum}
class DXGI_SWAP_CHAIN_FLAG {
  static const DXGI_SWAP_CHAIN_FLAG_NONPREROTATED = 0x00000001;
  static const DXGI_SWAP_CHAIN_FLAG_ALLOW_MODE_SWITCH = 0x00000002;
  static const DXGI_SWAP_CHAIN_FLAG_GDI_COMPATIBLE = 0x00000004;
  static const DXGI_SWAP_CHAIN_FLAG_RESTRICTED_CONTENT = 0x00000008;
  static const DXGI_SWAP_CHAIN_FLAG_RESTRICT_SHARED_RESOURCE_DRIVER =
      0x00000010;
  static const DXGI_SWAP_CHAIN_FLAG_DISPLAY_ONLY = 0x00000020;
  static const DXGI_SWAP_CHAIN_FLAG_FRAME_LATENCY_WAITABLE_OBJECT = 0x00000040;
  static const DXGI_SWAP_CHAIN_FLAG_FOREGROUND_LAYER = 0x00000080;
  static const DXGI_SWAP_CHAIN_FLAG_FULLSCREEN_VIDEO = 0x00000100;
  static const DXGI_SWAP_CHAIN_FLAG_YUV_VIDEO = 0x00000200;
  static const DXGI_SWAP_CHAIN_FLAG_HW_PROTECTED = 0x00000400;
  static const DXGI_SWAP_CHAIN_FLAG_ALLOW_TEARING = 0x00000800;
  static const DXGI_SWAP_CHAIN_FLAG_RESTRICTED_TO_ALL_HOLOGRAPHIC_DISPLAYS =
      0x00001000;
}

/// {@category Enum}
class DXGI_SWAP_EFFECT {
  static const DXGI_SWAP_EFFECT_DISCARD = 0x00000000;
  static const DXGI_SWAP_EFFECT_SEQUENTIAL = 0x00000001;
  static const DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL = 0x00000003;
  static const DXGI_SWAP_EFFECT_FLIP_DISCARD = 0x00000004;
}
