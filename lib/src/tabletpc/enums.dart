/// {@category Enum}
class ALT_BREAKS {
  static const ALT_BREAKS_SAME = 0x00000000;
  static const ALT_BREAKS_UNIQUE = 0x00000001;
  static const ALT_BREAKS_FULL = 0x00000002;
}

/// {@category Enum}
class AppearanceConstants {
  static const rtfFlat = 0x00000000;
  static const rtfThreeD = 0x00000001;
}

/// {@category Enum}
class BorderStyleConstants {
  static const rtfNoBorder = 0x00000000;
  static const rtfFixedSingle = 0x00000001;
}

/// {@category Enum}
class CONFIDENCE_LEVEL {
  static const CFL_STRONG = 0x00000000;
  static const CFL_INTERMEDIATE = 0x00000001;
  static const CFL_POOR = 0x00000002;
}

/// {@category Enum}
class CorrectionMode {
  static const CorrectionMode_NotVisible = 0x00000000;
  static const CorrectionMode_PreInsertion = 0x00000001;
  static const CorrectionMode_PostInsertionCollapsed = 0x00000002;
  static const CorrectionMode_PostInsertionExpanded = 0x00000003;
}

/// {@category Enum}
class CorrectionPosition {
  static const CorrectionPosition_Auto = 0x00000000;
  static const CorrectionPosition_Bottom = 0x00000001;
  static const CorrectionPosition_Top = 0x00000002;
}

/// {@category Enum}
class DISPID_Ink {
  static const DISPID_IStrokes = 0x00000001;
  static const DISPID_IExtendedProperties = 0x00000002;
  static const DISPID_IGetBoundingBox = 0x00000003;
  static const DISPID_IDeleteStrokes = 0x00000004;
  static const DISPID_IDeleteStroke = 0x00000005;
  static const DISPID_IExtractStrokes = 0x00000006;
  static const DISPID_IExtractWithRectangle = 0x00000007;
  static const DISPID_IDirty = 0x00000008;
  static const DISPID_ICustomStrokes = 0x00000009;
  static const DISPID_IClone = 0x0000000a;
  static const DISPID_IHitTestCircle = 0x0000000b;
  static const DISPID_IHitTestWithRectangle = 0x0000000c;
  static const DISPID_IHitTestWithLasso = 0x0000000d;
  static const DISPID_INearestPoint = 0x0000000e;
  static const DISPID_ICreateStrokes = 0x0000000f;
  static const DISPID_ICreateStroke = 0x00000010;
  static const DISPID_IAddStrokesAtRectangle = 0x00000011;
  static const DISPID_IClip = 0x00000012;
  static const DISPID_ISave = 0x00000013;
  static const DISPID_ILoad = 0x00000014;
  static const DISPID_ICreateStrokeFromPoints = 0x00000015;
  static const DISPID_IClipboardCopyWithRectangle = 0x00000016;
  static const DISPID_IClipboardCopy = 0x00000017;
  static const DISPID_ICanPaste = 0x00000018;
  static const DISPID_IClipboardPaste = 0x00000019;
}

/// {@category Enum}
class DISPID_InkCollector {
  static const DISPID_ICEnabled = 0x00000001;
  static const DISPID_ICHwnd = 0x00000002;
  static const DISPID_ICPaint = 0x00000003;
  static const DISPID_ICText = 0x00000004;
  static const DISPID_ICDefaultDrawingAttributes = 0x00000005;
  static const DISPID_ICRenderer = 0x00000006;
  static const DISPID_ICInk = 0x00000007;
  static const DISPID_ICAutoRedraw = 0x00000008;
  static const DISPID_ICCollectingInk = 0x00000009;
  static const DISPID_ICSetEventInterest = 0x0000000a;
  static const DISPID_ICGetEventInterest = 0x0000000b;
  static const DISPID_IOEditingMode = 0x0000000c;
  static const DISPID_IOSelection = 0x0000000d;
  static const DISPID_IOAttachMode = 0x0000000e;
  static const DISPID_IOHitTestSelection = 0x0000000f;
  static const DISPID_IODraw = 0x00000010;
  static const DISPID_IPPicture = 0x00000011;
  static const DISPID_IPSizeMode = 0x00000012;
  static const DISPID_IPBackColor = 0x00000013;
  static const DISPID_ICCursors = 0x00000014;
  static const DISPID_ICMarginX = 0x00000015;
  static const DISPID_ICMarginY = 0x00000016;
  static const DISPID_ICSetWindowInputRectangle = 0x00000017;
  static const DISPID_ICGetWindowInputRectangle = 0x00000018;
  static const DISPID_ICTablet = 0x00000019;
  static const DISPID_ICSetAllTabletsMode = 0x0000001a;
  static const DISPID_ICSetSingleTabletIntegratedMode = 0x0000001b;
  static const DISPID_ICCollectionMode = 0x0000001c;
  static const DISPID_ICSetGestureStatus = 0x0000001d;
  static const DISPID_ICGetGestureStatus = 0x0000001e;
  static const DISPID_ICDynamicRendering = 0x0000001f;
  static const DISPID_ICDesiredPacketDescription = 0x00000020;
  static const DISPID_IOEraserMode = 0x00000021;
  static const DISPID_IOEraserWidth = 0x00000022;
  static const DISPID_ICMouseIcon = 0x00000023;
  static const DISPID_ICMousePointer = 0x00000024;
  static const DISPID_IPInkEnabled = 0x00000025;
  static const DISPID_ICSupportHighContrastInk = 0x00000026;
  static const DISPID_IOSupportHighContrastSelectionUI = 0x00000027;
}

/// {@category Enum}
class DISPID_InkCollectorEvent {
  static const DISPID_ICEStroke = 0x00000001;
  static const DISPID_ICECursorDown = 0x00000002;
  static const DISPID_ICENewPackets = 0x00000003;
  static const DISPID_ICENewInAirPackets = 0x00000004;
  static const DISPID_ICECursorButtonDown = 0x00000005;
  static const DISPID_ICECursorButtonUp = 0x00000006;
  static const DISPID_ICECursorInRange = 0x00000007;
  static const DISPID_ICECursorOutOfRange = 0x00000008;
  static const DISPID_ICESystemGesture = 0x00000009;
  static const DISPID_ICEGesture = 0x0000000a;
  static const DISPID_ICETabletAdded = 0x0000000b;
  static const DISPID_ICETabletRemoved = 0x0000000c;
  static const DISPID_IOEPainting = 0x0000000d;
  static const DISPID_IOEPainted = 0x0000000e;
  static const DISPID_IOESelectionChanging = 0x0000000f;
  static const DISPID_IOESelectionChanged = 0x00000010;
  static const DISPID_IOESelectionMoving = 0x00000011;
  static const DISPID_IOESelectionMoved = 0x00000012;
  static const DISPID_IOESelectionResizing = 0x00000013;
  static const DISPID_IOESelectionResized = 0x00000014;
  static const DISPID_IOEStrokesDeleting = 0x00000015;
  static const DISPID_IOEStrokesDeleted = 0x00000016;
  static const DISPID_IPEChangeUICues = 0x00000017;
  static const DISPID_IPEClick = 0x00000018;
  static const DISPID_IPEDblClick = 0x00000019;
  static const DISPID_IPEInvalidated = 0x0000001a;
  static const DISPID_IPEMouseDown = 0x0000001b;
  static const DISPID_IPEMouseEnter = 0x0000001c;
  static const DISPID_IPEMouseHover = 0x0000001d;
  static const DISPID_IPEMouseLeave = 0x0000001e;
  static const DISPID_IPEMouseMove = 0x0000001f;
  static const DISPID_IPEMouseUp = 0x00000020;
  static const DISPID_IPEMouseWheel = 0x00000021;
  static const DISPID_IPESizeModeChanged = 0x00000022;
  static const DISPID_IPEStyleChanged = 0x00000023;
  static const DISPID_IPESystemColorsChanged = 0x00000024;
  static const DISPID_IPEKeyDown = 0x00000025;
  static const DISPID_IPEKeyPress = 0x00000026;
  static const DISPID_IPEKeyUp = 0x00000027;
  static const DISPID_IPEResize = 0x00000028;
  static const DISPID_IPESizeChanged = 0x00000029;
}

/// {@category Enum}
class DISPID_InkCursor {
  static const DISPID_ICsrName = 0x00000000;
  static const DISPID_ICsrId = 0x00000001;
  static const DISPID_ICsrDrawingAttributes = 0x00000002;
  static const DISPID_ICsrButtons = 0x00000003;
  static const DISPID_ICsrInverted = 0x00000004;
  static const DISPID_ICsrTablet = 0x00000005;
}

/// {@category Enum}
class DISPID_InkCursorButton {
  static const DISPID_ICBName = 0x00000000;
  static const DISPID_ICBId = 0x00000001;
  static const DISPID_ICBState = 0x00000002;
}

/// {@category Enum}
class DISPID_InkCursorButtons {
  static const DISPID_ICBs_NewEnum = 0xfffffffc;
  static const DISPID_ICBsItem = 0x00000000;
  static const DISPID_ICBsCount = 0x00000001;
}

/// {@category Enum}
class DISPID_InkCursors {
  static const DISPID_ICs_NewEnum = 0xfffffffc;
  static const DISPID_ICsItem = 0x00000000;
  static const DISPID_ICsCount = 0x00000001;
}

/// {@category Enum}
class DISPID_InkCustomStrokes {
  static const DISPID_ICSs_NewEnum = 0xfffffffc;
  static const DISPID_ICSsItem = 0x00000000;
  static const DISPID_ICSsCount = 0x00000001;
  static const DISPID_ICSsAdd = 0x00000002;
  static const DISPID_ICSsRemove = 0x00000003;
  static const DISPID_ICSsClear = 0x00000004;
}

/// {@category Enum}
class DISPID_InkDivider {
  static const DISPID_IInkDivider_Strokes = 0x00000001;
  static const DISPID_IInkDivider_RecognizerContext = 0x00000002;
  static const DISPID_IInkDivider_LineHeight = 0x00000003;
  static const DISPID_IInkDivider_Divide = 0x00000004;
}

/// {@category Enum}
class DISPID_InkDivisionResult {
  static const DISPID_IInkDivisionResult_Strokes = 0x00000001;
  static const DISPID_IInkDivisionResult_ResultByType = 0x00000002;
}

/// {@category Enum}
class DISPID_InkDivisionUnit {
  static const DISPID_IInkDivisionUnit_Strokes = 0x00000001;
  static const DISPID_IInkDivisionUnit_DivisionType = 0x00000002;
  static const DISPID_IInkDivisionUnit_RecognizedString = 0x00000003;
  static const DISPID_IInkDivisionUnit_RotationTransform = 0x00000004;
}

/// {@category Enum}
class DISPID_InkDivisionUnits {
  static const DISPID_IInkDivisionUnits_NewEnum = 0xfffffffc;
  static const DISPID_IInkDivisionUnits_Item = 0x00000000;
  static const DISPID_IInkDivisionUnits_Count = 0x00000001;
}

/// {@category Enum}
class DISPID_InkDrawingAttributes {
  static const DISPID_DAHeight = 0x00000001;
  static const DISPID_DAColor = 0x00000002;
  static const DISPID_DAWidth = 0x00000003;
  static const DISPID_DAFitToCurve = 0x00000004;
  static const DISPID_DAIgnorePressure = 0x00000005;
  static const DISPID_DAAntiAliased = 0x00000006;
  static const DISPID_DATransparency = 0x00000007;
  static const DISPID_DARasterOperation = 0x00000008;
  static const DISPID_DAPenTip = 0x00000009;
  static const DISPID_DAClone = 0x0000000a;
  static const DISPID_DAExtendedProperties = 0x0000000b;
}

/// {@category Enum}
class DISPID_InkEdit {
  static const DISPID_Text = 0x00000000;
  static const DISPID_TextRTF = 0x00000001;
  static const DISPID_Hwnd = 0x00000002;
  static const DISPID_DisableNoScroll = 0x00000003;
  static const DISPID_Locked = 0x00000004;
  static const DISPID_Enabled = 0x00000005;
  static const DISPID_MaxLength = 0x00000006;
  static const DISPID_MultiLine = 0x00000007;
  static const DISPID_ScrollBars = 0x00000008;
  static const DISPID_RTSelStart = 0x00000009;
  static const DISPID_RTSelLength = 0x0000000a;
  static const DISPID_RTSelText = 0x0000000b;
  static const DISPID_SelAlignment = 0x0000000c;
  static const DISPID_SelBold = 0x0000000d;
  static const DISPID_SelCharOffset = 0x0000000e;
  static const DISPID_SelColor = 0x0000000f;
  static const DISPID_SelFontName = 0x00000010;
  static const DISPID_SelFontSize = 0x00000011;
  static const DISPID_SelItalic = 0x00000012;
  static const DISPID_SelRTF = 0x00000013;
  static const DISPID_SelUnderline = 0x00000014;
  static const DISPID_DragIcon = 0x00000015;
  static const DISPID_Status = 0x00000016;
  static const DISPID_UseMouseForInput = 0x00000017;
  static const DISPID_InkMode = 0x00000018;
  static const DISPID_InkInsertMode = 0x00000019;
  static const DISPID_RecoTimeout = 0x0000001a;
  static const DISPID_DrawAttr = 0x0000001b;
  static const DISPID_Recognizer = 0x0000001c;
  static const DISPID_Factoid = 0x0000001d;
  static const DISPID_SelInk = 0x0000001e;
  static const DISPID_SelInksDisplayMode = 0x0000001f;
  static const DISPID_Recognize = 0x00000020;
  static const DISPID_GetGestStatus = 0x00000021;
  static const DISPID_SetGestStatus = 0x00000022;
  static const DISPID_Refresh = 0x00000023;
}

/// {@category Enum}
class DISPID_InkEditEvents {
  static const DISPID_IeeChange = 0x00000001;
  static const DISPID_IeeSelChange = 0x00000002;
  static const DISPID_IeeKeyDown = 0x00000003;
  static const DISPID_IeeKeyUp = 0x00000004;
  static const DISPID_IeeMouseUp = 0x00000005;
  static const DISPID_IeeMouseDown = 0x00000006;
  static const DISPID_IeeKeyPress = 0x00000007;
  static const DISPID_IeeDblClick = 0x00000008;
  static const DISPID_IeeClick = 0x00000009;
  static const DISPID_IeeMouseMove = 0x0000000a;
  static const DISPID_IeeCursorDown = 0x00000015;
  static const DISPID_IeeStroke = 0x00000016;
  static const DISPID_IeeGesture = 0x00000017;
  static const DISPID_IeeRecognitionResult = 0x00000018;
}

/// {@category Enum}
class DISPID_InkEvent {
  static const DISPID_IEInkAdded = 0x00000001;
  static const DISPID_IEInkDeleted = 0x00000002;
}

/// {@category Enum}
class DISPID_InkExtendedProperties {
  static const DISPID_IEPs_NewEnum = 0xfffffffc;
  static const DISPID_IEPsItem = 0x00000000;
  static const DISPID_IEPsCount = 0x00000001;
  static const DISPID_IEPsAdd = 0x00000002;
  static const DISPID_IEPsRemove = 0x00000003;
  static const DISPID_IEPsClear = 0x00000004;
  static const DISPID_IEPsDoesPropertyExist = 0x00000005;
}

/// {@category Enum}
class DISPID_InkExtendedProperty {
  static const DISPID_IEPGuid = 0x00000001;
  static const DISPID_IEPData = 0x00000002;
}

/// {@category Enum}
class DISPID_InkGesture {
  static const DISPID_IGId = 0x00000000;
  static const DISPID_IGGetHotPoint = 0x00000001;
  static const DISPID_IGConfidence = 0x00000002;
}

/// {@category Enum}
class DISPID_InkRecoAlternate {
  static const DISPID_InkRecoAlternate_String = 0x00000001;
  static const DISPID_InkRecoAlternate_LineNumber = 0x00000002;
  static const DISPID_InkRecoAlternate_Baseline = 0x00000003;
  static const DISPID_InkRecoAlternate_Midline = 0x00000004;
  static const DISPID_InkRecoAlternate_Ascender = 0x00000005;
  static const DISPID_InkRecoAlternate_Descender = 0x00000006;
  static const DISPID_InkRecoAlternate_Confidence = 0x00000007;
  static const DISPID_InkRecoAlternate_Strokes = 0x00000008;
  static const DISPID_InkRecoAlternate_GetStrokesFromStrokeRanges = 0x00000009;
  static const DISPID_InkRecoAlternate_GetStrokesFromTextRange = 0x0000000a;
  static const DISPID_InkRecoAlternate_GetTextRangeFromStrokes = 0x0000000b;
  static const DISPID_InkRecoAlternate_GetPropertyValue = 0x0000000c;
  static const DISPID_InkRecoAlternate_LineAlternates = 0x0000000d;
  static const DISPID_InkRecoAlternate_ConfidenceAlternates = 0x0000000e;
  static const DISPID_InkRecoAlternate_AlternatesWithConstantPropertyValues =
      0x0000000f;
}

/// {@category Enum}
class DISPID_InkRecoContext {
  static const DISPID_IRecoCtx_Strokes = 0x00000001;
  static const DISPID_IRecoCtx_CharacterAutoCompletionMode = 0x00000002;
  static const DISPID_IRecoCtx_Factoid = 0x00000003;
  static const DISPID_IRecoCtx_WordList = 0x00000004;
  static const DISPID_IRecoCtx_Recognizer = 0x00000005;
  static const DISPID_IRecoCtx_Guide = 0x00000006;
  static const DISPID_IRecoCtx_Flags = 0x00000007;
  static const DISPID_IRecoCtx_PrefixText = 0x00000008;
  static const DISPID_IRecoCtx_SuffixText = 0x00000009;
  static const DISPID_IRecoCtx_StopRecognition = 0x0000000a;
  static const DISPID_IRecoCtx_Clone = 0x0000000b;
  static const DISPID_IRecoCtx_Recognize = 0x0000000c;
  static const DISPID_IRecoCtx_StopBackgroundRecognition = 0x0000000d;
  static const DISPID_IRecoCtx_EndInkInput = 0x0000000e;
  static const DISPID_IRecoCtx_BackgroundRecognize = 0x0000000f;
  static const DISPID_IRecoCtx_BackgroundRecognizeWithAlternates = 0x00000010;
  static const DISPID_IRecoCtx_IsStringSupported = 0x00000011;
}

/// {@category Enum}
class DISPID_InkRecoContext2 {
  static const DISPID_IRecoCtx2_EnabledUnicodeRanges = 0x00000000;
}

/// {@category Enum}
class DISPID_InkRecognitionAlternates {
  static const DISPID_InkRecognitionAlternates_NewEnum = 0xfffffffc;
  static const DISPID_InkRecognitionAlternates_Item = 0x00000000;
  static const DISPID_InkRecognitionAlternates_Count = 0x00000001;
  static const DISPID_InkRecognitionAlternates_Strokes = 0x00000002;
}

/// {@category Enum}
class DISPID_InkRecognitionEvent {
  static const DISPID_IRERecognitionWithAlternates = 0x00000001;
  static const DISPID_IRERecognition = 0x00000002;
}

/// {@category Enum}
class DISPID_InkRecognitionResult {
  static const DISPID_InkRecognitionResult_TopString = 0x00000001;
  static const DISPID_InkRecognitionResult_TopAlternate = 0x00000002;
  static const DISPID_InkRecognitionResult_Strokes = 0x00000003;
  static const DISPID_InkRecognitionResult_TopConfidence = 0x00000004;
  static const DISPID_InkRecognitionResult_AlternatesFromSelection = 0x00000005;
  static const DISPID_InkRecognitionResult_ModifyTopAlternate = 0x00000006;
  static const DISPID_InkRecognitionResult_SetResultOnStrokes = 0x00000007;
}

/// {@category Enum}
class DISPID_InkRecognizer {
  static const DISPID_RecoClsid = 0x00000001;
  static const DISPID_RecoName = 0x00000002;
  static const DISPID_RecoVendor = 0x00000003;
  static const DISPID_RecoCapabilities = 0x00000004;
  static const DISPID_RecoLanguageID = 0x00000005;
  static const DISPID_RecoPreferredPacketDescription = 0x00000006;
  static const DISPID_RecoCreateRecognizerContext = 0x00000007;
  static const DISPID_RecoSupportedProperties = 0x00000008;
}

/// {@category Enum}
class DISPID_InkRecognizer2 {
  static const DISPID_RecoId = 0x00000000;
  static const DISPID_RecoUnicodeRanges = 0x00000001;
}

/// {@category Enum}
class DISPID_InkRecognizerGuide {
  static const DISPID_IRGWritingBox = 0x00000001;
  static const DISPID_IRGDrawnBox = 0x00000002;
  static const DISPID_IRGRows = 0x00000003;
  static const DISPID_IRGColumns = 0x00000004;
  static const DISPID_IRGMidline = 0x00000005;
  static const DISPID_IRGGuideData = 0x00000006;
}

/// {@category Enum}
class DISPID_InkRecognizers {
  static const DISPID_IRecos_NewEnum = 0xfffffffc;
  static const DISPID_IRecosItem = 0x00000000;
  static const DISPID_IRecosCount = 0x00000001;
  static const DISPID_IRecosGetDefaultRecognizer = 0x00000002;
}

/// {@category Enum}
class DISPID_InkRectangle {
  static const DISPID_IRTop = 0x00000001;
  static const DISPID_IRLeft = 0x00000002;
  static const DISPID_IRBottom = 0x00000003;
  static const DISPID_IRRight = 0x00000004;
  static const DISPID_IRGetRectangle = 0x00000005;
  static const DISPID_IRSetRectangle = 0x00000006;
  static const DISPID_IRData = 0x00000007;
}

/// {@category Enum}
class DISPID_InkRenderer {
  static const DISPID_IRGetViewTransform = 0x00000001;
  static const DISPID_IRSetViewTransform = 0x00000002;
  static const DISPID_IRGetObjectTransform = 0x00000003;
  static const DISPID_IRSetObjectTransform = 0x00000004;
  static const DISPID_IRDraw = 0x00000005;
  static const DISPID_IRDrawStroke = 0x00000006;
  static const DISPID_IRPixelToInkSpace = 0x00000007;
  static const DISPID_IRInkSpaceToPixel = 0x00000008;
  static const DISPID_IRPixelToInkSpaceFromPoints = 0x00000009;
  static const DISPID_IRInkSpaceToPixelFromPoints = 0x0000000a;
  static const DISPID_IRMeasure = 0x0000000b;
  static const DISPID_IRMeasureStroke = 0x0000000c;
  static const DISPID_IRMove = 0x0000000d;
  static const DISPID_IRRotate = 0x0000000e;
  static const DISPID_IRScale = 0x0000000f;
}

/// {@category Enum}
class DISPID_InkStrokeDisp {
  static const DISPID_ISDInkIndex = 0x00000001;
  static const DISPID_ISDID = 0x00000002;
  static const DISPID_ISDGetBoundingBox = 0x00000003;
  static const DISPID_ISDDrawingAttributes = 0x00000004;
  static const DISPID_ISDFindIntersections = 0x00000005;
  static const DISPID_ISDGetRectangleIntersections = 0x00000006;
  static const DISPID_ISDClip = 0x00000007;
  static const DISPID_ISDHitTestCircle = 0x00000008;
  static const DISPID_ISDNearestPoint = 0x00000009;
  static const DISPID_ISDSplit = 0x0000000a;
  static const DISPID_ISDExtendedProperties = 0x0000000b;
  static const DISPID_ISDInk = 0x0000000c;
  static const DISPID_ISDBezierPoints = 0x0000000d;
  static const DISPID_ISDPolylineCusps = 0x0000000e;
  static const DISPID_ISDBezierCusps = 0x0000000f;
  static const DISPID_ISDSelfIntersections = 0x00000010;
  static const DISPID_ISDPacketCount = 0x00000011;
  static const DISPID_ISDPacketSize = 0x00000012;
  static const DISPID_ISDPacketDescription = 0x00000013;
  static const DISPID_ISDDeleted = 0x00000014;
  static const DISPID_ISDGetPacketDescriptionPropertyMetrics = 0x00000015;
  static const DISPID_ISDGetPoints = 0x00000016;
  static const DISPID_ISDSetPoints = 0x00000017;
  static const DISPID_ISDGetPacketData = 0x00000018;
  static const DISPID_ISDGetPacketValuesByProperty = 0x00000019;
  static const DISPID_ISDSetPacketValuesByProperty = 0x0000001a;
  static const DISPID_ISDGetFlattenedBezierPoints = 0x0000001b;
  static const DISPID_ISDScaleToRectangle = 0x0000001c;
  static const DISPID_ISDTransform = 0x0000001d;
  static const DISPID_ISDMove = 0x0000001e;
  static const DISPID_ISDRotate = 0x0000001f;
  static const DISPID_ISDShear = 0x00000020;
  static const DISPID_ISDScale = 0x00000021;
}

/// {@category Enum}
class DISPID_InkStrokes {
  static const DISPID_ISs_NewEnum = 0xfffffffc;
  static const DISPID_ISsItem = 0x00000000;
  static const DISPID_ISsCount = 0x00000001;
  static const DISPID_ISsValid = 0x00000002;
  static const DISPID_ISsInk = 0x00000003;
  static const DISPID_ISsAdd = 0x00000004;
  static const DISPID_ISsAddStrokes = 0x00000005;
  static const DISPID_ISsRemove = 0x00000006;
  static const DISPID_ISsRemoveStrokes = 0x00000007;
  static const DISPID_ISsToString = 0x00000008;
  static const DISPID_ISsModifyDrawingAttributes = 0x00000009;
  static const DISPID_ISsGetBoundingBox = 0x0000000a;
  static const DISPID_ISsScaleToRectangle = 0x0000000b;
  static const DISPID_ISsTransform = 0x0000000c;
  static const DISPID_ISsMove = 0x0000000d;
  static const DISPID_ISsRotate = 0x0000000e;
  static const DISPID_ISsShear = 0x0000000f;
  static const DISPID_ISsScale = 0x00000010;
  static const DISPID_ISsClip = 0x00000011;
  static const DISPID_ISsRecognitionResult = 0x00000012;
  static const DISPID_ISsRemoveRecognitionResult = 0x00000013;
}

/// {@category Enum}
class DISPID_InkTablet {
  static const DISPID_ITName = 0x00000000;
  static const DISPID_ITPlugAndPlayId = 0x00000001;
  static const DISPID_ITPropertyMetrics = 0x00000002;
  static const DISPID_ITIsPacketPropertySupported = 0x00000003;
  static const DISPID_ITMaximumInputRectangle = 0x00000004;
  static const DISPID_ITHardwareCapabilities = 0x00000005;
}

/// {@category Enum}
class DISPID_InkTablet2 {
  static const DISPID_IT2DeviceKind = 0x00000000;
}

/// {@category Enum}
class DISPID_InkTablet3 {
  static const DISPID_IT3IsMultiTouch = 0x00000000;
  static const DISPID_IT3MaximumCursors = 0x00000001;
}

/// {@category Enum}
class DISPID_InkTablets {
  static const DISPID_ITs_NewEnum = 0xfffffffc;
  static const DISPID_ITsItem = 0x00000000;
  static const DISPID_ITsDefaultTablet = 0x00000001;
  static const DISPID_ITsCount = 0x00000002;
  static const DISPID_ITsIsPacketPropertySupported = 0x00000003;
}

/// {@category Enum}
class DISPID_InkTransform {
  static const DISPID_ITReset = 0x00000001;
  static const DISPID_ITTranslate = 0x00000002;
  static const DISPID_ITRotate = 0x00000003;
  static const DISPID_ITReflect = 0x00000004;
  static const DISPID_ITShear = 0x00000005;
  static const DISPID_ITScale = 0x00000006;
  static const DISPID_ITeM11 = 0x00000007;
  static const DISPID_ITeM12 = 0x00000008;
  static const DISPID_ITeM21 = 0x00000009;
  static const DISPID_ITeM22 = 0x0000000a;
  static const DISPID_ITeDx = 0x0000000b;
  static const DISPID_ITeDy = 0x0000000c;
  static const DISPID_ITGetTransform = 0x0000000d;
  static const DISPID_ITSetTransform = 0x0000000e;
  static const DISPID_ITData = 0x0000000f;
}

/// {@category Enum}
class DISPID_InkWordList {
  static const DISPID_InkWordList_AddWord = 0x00000000;
  static const DISPID_InkWordList_RemoveWord = 0x00000001;
  static const DISPID_InkWordList_Merge = 0x00000002;
}

/// {@category Enum}
class DISPID_InkWordList2 {
  static const DISPID_InkWordList2_AddWords = 0x00000003;
}

/// {@category Enum}
class DISPID_MathInputControlEvents {
  static const DISPID_MICInsert = 0x00000000;
  static const DISPID_MICClose = 0x00000001;
  static const DISPID_MICPaint = 0x00000002;
  static const DISPID_MICClear = 0x00000003;
}

/// {@category Enum}
class DISPID_PenInputPanel {
  static const DISPID_PIPAttachedEditWindow = 0x00000000;
  static const DISPID_PIPFactoid = 0x00000001;
  static const DISPID_PIPCurrentPanel = 0x00000002;
  static const DISPID_PIPDefaultPanel = 0x00000003;
  static const DISPID_PIPVisible = 0x00000004;
  static const DISPID_PIPTop = 0x00000005;
  static const DISPID_PIPLeft = 0x00000006;
  static const DISPID_PIPWidth = 0x00000007;
  static const DISPID_PIPHeight = 0x00000008;
  static const DISPID_PIPMoveTo = 0x00000009;
  static const DISPID_PIPCommitPendingInput = 0x0000000a;
  static const DISPID_PIPRefresh = 0x0000000b;
  static const DISPID_PIPBusy = 0x0000000c;
  static const DISPID_PIPVerticalOffset = 0x0000000d;
  static const DISPID_PIPHorizontalOffset = 0x0000000e;
  static const DISPID_PIPEnableTsf = 0x0000000f;
  static const DISPID_PIPAutoShow = 0x00000010;
}

/// {@category Enum}
class DISPID_PenInputPanelEvents {
  static const DISPID_PIPEVisibleChanged = 0x00000000;
  static const DISPID_PIPEPanelChanged = 0x00000001;
  static const DISPID_PIPEInputFailed = 0x00000002;
  static const DISPID_PIPEPanelMoving = 0x00000003;
}

/// {@category Enum}
class DISPID_StrokeEvent {
  static const DISPID_SEStrokesAdded = 0x00000001;
  static const DISPID_SEStrokesRemoved = 0x00000002;
}

/// {@category Enum}
class EventMask {
  static const EventMask_InPlaceStateChanging = 0x00000001;
  static const EventMask_InPlaceStateChanged = 0x00000002;
  static const EventMask_InPlaceSizeChanging = 0x00000004;
  static const EventMask_InPlaceSizeChanged = 0x00000008;
  static const EventMask_InputAreaChanging = 0x00000010;
  static const EventMask_InputAreaChanged = 0x00000020;
  static const EventMask_CorrectionModeChanging = 0x00000040;
  static const EventMask_CorrectionModeChanged = 0x00000080;
  static const EventMask_InPlaceVisibilityChanging = 0x00000100;
  static const EventMask_InPlaceVisibilityChanged = 0x00000200;
  static const EventMask_TextInserting = 0x00000400;
  static const EventMask_TextInserted = 0x00000800;
  static const EventMask_All = 0x00000fff;
}

/// {@category Enum}
class FLICKACTION_COMMANDCODE {
  static const FLICKACTION_COMMANDCODE_NULL = 0x00000000;
  static const FLICKACTION_COMMANDCODE_SCROLL = 0x00000001;
  static const FLICKACTION_COMMANDCODE_APPCOMMAND = 0x00000002;
  static const FLICKACTION_COMMANDCODE_CUSTOMKEY = 0x00000003;
  static const FLICKACTION_COMMANDCODE_KEYMODIFIER = 0x00000004;
}

/// {@category Enum}
class FLICKDIRECTION {
  static const FLICKDIRECTION_MIN = 0x00000000;
  static const FLICKDIRECTION_RIGHT = 0x00000000;
  static const FLICKDIRECTION_UPRIGHT = 0x00000001;
  static const FLICKDIRECTION_UP = 0x00000002;
  static const FLICKDIRECTION_UPLEFT = 0x00000003;
  static const FLICKDIRECTION_LEFT = 0x00000004;
  static const FLICKDIRECTION_DOWNLEFT = 0x00000005;
  static const FLICKDIRECTION_DOWN = 0x00000006;
  static const FLICKDIRECTION_DOWNRIGHT = 0x00000007;
  static const FLICKDIRECTION_INVALID = 0x00000008;
}

/// {@category Enum}
class FLICKMODE {
  static const FLICKMODE_MIN = 0x00000000;
  static const FLICKMODE_OFF = 0x00000000;
  static const FLICKMODE_ON = 0x00000001;
  static const FLICKMODE_LEARNING = 0x00000002;
  static const FLICKMODE_MAX = 0x00000002;
  static const FLICKMODE_DEFAULT = 0x00000001;
}

/// {@category Enum}
class InPlaceDirection {
  static const InPlaceDirection_Auto = 0x00000000;
  static const InPlaceDirection_Bottom = 0x00000001;
  static const InPlaceDirection_Top = 0x00000002;
}

/// {@category Enum}
class InPlaceState {
  static const InPlaceState_Auto = 0x00000000;
  static const InPlaceState_HoverTarget = 0x00000001;
  static const InPlaceState_Expanded = 0x00000002;
}

/// {@category Enum}
class InkApplicationGesture {
  static const IAG_AllGestures = 0x00000000;
  static const IAG_NoGesture = 0x0000f000;
  static const IAG_Scratchout = 0x0000f001;
  static const IAG_Triangle = 0x0000f002;
  static const IAG_Square = 0x0000f003;
  static const IAG_Star = 0x0000f004;
  static const IAG_Check = 0x0000f005;
  static const IAG_Curlicue = 0x0000f010;
  static const IAG_DoubleCurlicue = 0x0000f011;
  static const IAG_Circle = 0x0000f020;
  static const IAG_DoubleCircle = 0x0000f021;
  static const IAG_SemiCircleLeft = 0x0000f028;
  static const IAG_SemiCircleRight = 0x0000f029;
  static const IAG_ChevronUp = 0x0000f030;
  static const IAG_ChevronDown = 0x0000f031;
  static const IAG_ChevronLeft = 0x0000f032;
  static const IAG_ChevronRight = 0x0000f033;
  static const IAG_ArrowUp = 0x0000f038;
  static const IAG_ArrowDown = 0x0000f039;
  static const IAG_ArrowLeft = 0x0000f03a;
  static const IAG_ArrowRight = 0x0000f03b;
  static const IAG_Up = 0x0000f058;
  static const IAG_Down = 0x0000f059;
  static const IAG_Left = 0x0000f05a;
  static const IAG_Right = 0x0000f05b;
  static const IAG_UpDown = 0x0000f060;
  static const IAG_DownUp = 0x0000f061;
  static const IAG_LeftRight = 0x0000f062;
  static const IAG_RightLeft = 0x0000f063;
  static const IAG_UpLeftLong = 0x0000f064;
  static const IAG_UpRightLong = 0x0000f065;
  static const IAG_DownLeftLong = 0x0000f066;
  static const IAG_DownRightLong = 0x0000f067;
  static const IAG_UpLeft = 0x0000f068;
  static const IAG_UpRight = 0x0000f069;
  static const IAG_DownLeft = 0x0000f06a;
  static const IAG_DownRight = 0x0000f06b;
  static const IAG_LeftUp = 0x0000f06c;
  static const IAG_LeftDown = 0x0000f06d;
  static const IAG_RightUp = 0x0000f06e;
  static const IAG_RightDown = 0x0000f06f;
  static const IAG_Exclamation = 0x0000f0a4;
  static const IAG_Tap = 0x0000f0f0;
  static const IAG_DoubleTap = 0x0000f0f1;
}

/// {@category Enum}
class InkBoundingBoxMode {
  static const IBBM_Default = 0x00000000;
  static const IBBM_NoCurveFit = 0x00000001;
  static const IBBM_CurveFit = 0x00000002;
  static const IBBM_PointsOnly = 0x00000003;
  static const IBBM_Union = 0x00000004;
}

/// {@category Enum}
class InkClipboardFormats {
  static const ICF_None = 0x00000000;
  static const ICF_InkSerializedFormat = 0x00000001;
  static const ICF_SketchInk = 0x00000002;
  static const ICF_TextInk = 0x00000006;
  static const ICF_EnhancedMetafile = 0x00000008;
  static const ICF_Metafile = 0x00000020;
  static const ICF_Bitmap = 0x00000040;
  static const ICF_PasteMask = 0x00000007;
  static const ICF_CopyMask = 0x0000007f;
  static const ICF_Default = 0x0000007f;
}

/// {@category Enum}
class InkClipboardModes {
  static const ICB_Copy = 0x00000000;
  static const ICB_Cut = 0x00000001;
  static const ICB_ExtractOnly = 0x00000030;
  static const ICB_DelayedCopy = 0x00000020;
  static const ICB_Default = 0x00000000;
}

/// {@category Enum}
class InkCollectionMode {
  static const ICM_InkOnly = 0x00000000;
  static const ICM_GestureOnly = 0x00000001;
  static const ICM_InkAndGesture = 0x00000002;
}

/// {@category Enum}
class InkCollectorEventInterest {
  static const ICEI_DefaultEvents = 0xffffffff;
  static const ICEI_CursorDown = 0x00000000;
  static const ICEI_Stroke = 0x00000001;
  static const ICEI_NewPackets = 0x00000002;
  static const ICEI_NewInAirPackets = 0x00000003;
  static const ICEI_CursorButtonDown = 0x00000004;
  static const ICEI_CursorButtonUp = 0x00000005;
  static const ICEI_CursorInRange = 0x00000006;
  static const ICEI_CursorOutOfRange = 0x00000007;
  static const ICEI_SystemGesture = 0x00000008;
  static const ICEI_TabletAdded = 0x00000009;
  static const ICEI_TabletRemoved = 0x0000000a;
  static const ICEI_MouseDown = 0x0000000b;
  static const ICEI_MouseMove = 0x0000000c;
  static const ICEI_MouseUp = 0x0000000d;
  static const ICEI_MouseWheel = 0x0000000e;
  static const ICEI_DblClick = 0x0000000f;
  static const ICEI_AllEvents = 0x00000010;
}

/// {@category Enum}
class InkCursorButtonState {
  static const ICBS_Unavailable = 0x00000000;
  static const ICBS_Up = 0x00000001;
  static const ICBS_Down = 0x00000002;
}

/// {@category Enum}
class InkDisplayMode {
  static const IDM_Ink = 0x00000000;
  static const IDM_Text = 0x00000001;
}

/// {@category Enum}
class InkDivisionType {
  static const IDT_Segment = 0x00000000;
  static const IDT_Line = 0x00000001;
  static const IDT_Paragraph = 0x00000002;
  static const IDT_Drawing = 0x00000003;
}

/// {@category Enum}
class InkEditStatus {
  static const IES_Idle = 0x00000000;
  static const IES_Collecting = 0x00000001;
  static const IES_Recognizing = 0x00000002;
}

/// {@category Enum}
class InkExtractFlags {
  static const IEF_CopyFromOriginal = 0x00000000;
  static const IEF_RemoveFromOriginal = 0x00000001;
  static const IEF_Default = 0x00000001;
}

/// {@category Enum}
class InkInsertMode {
  static const IEM_InsertText = 0x00000000;
  static const IEM_InsertInk = 0x00000001;
}

/// {@category Enum}
class InkMode {
  static const IEM_Disabled = 0x00000000;
  static const IEM_Ink = 0x00000001;
  static const IEM_InkAndGesture = 0x00000002;
}

/// {@category Enum}
class InkMouseButton {
  static const IMF_Left = 0x00000001;
  static const IMF_Right = 0x00000002;
  static const IMF_Middle = 0x00000004;
}

/// {@category Enum}
class InkMousePointer {
  static const IMP_Default = 0x00000000;
  static const IMP_Arrow = 0x00000001;
  static const IMP_Crosshair = 0x00000002;
  static const IMP_Ibeam = 0x00000003;
  static const IMP_SizeNESW = 0x00000004;
  static const IMP_SizeNS = 0x00000005;
  static const IMP_SizeNWSE = 0x00000006;
  static const IMP_SizeWE = 0x00000007;
  static const IMP_UpArrow = 0x00000008;
  static const IMP_Hourglass = 0x00000009;
  static const IMP_NoDrop = 0x0000000a;
  static const IMP_ArrowHourglass = 0x0000000b;
  static const IMP_ArrowQuestion = 0x0000000c;
  static const IMP_SizeAll = 0x0000000d;
  static const IMP_Hand = 0x0000000e;
  static const IMP_Custom = 0x00000063;
}

/// {@category Enum}
class InkOverlayAttachMode {
  static const IOAM_Behind = 0x00000000;
  static const IOAM_InFront = 0x00000001;
}

/// {@category Enum}
class InkOverlayEditingMode {
  static const IOEM_Ink = 0x00000000;
  static const IOEM_Delete = 0x00000001;
  static const IOEM_Select = 0x00000002;
}

/// {@category Enum}
class InkOverlayEraserMode {
  static const IOERM_StrokeErase = 0x00000000;
  static const IOERM_PointErase = 0x00000001;
}

/// {@category Enum}
class InkPenTip {
  static const IPT_Ball = 0x00000000;
  static const IPT_Rectangle = 0x00000001;
}

/// {@category Enum}
class InkPersistenceCompressionMode {
  static const IPCM_Default = 0x00000000;
  static const IPCM_MaximumCompression = 0x00000001;
  static const IPCM_NoCompression = 0x00000002;
}

/// {@category Enum}
class InkPersistenceFormat {
  static const IPF_InkSerializedFormat = 0x00000000;
  static const IPF_Base64InkSerializedFormat = 0x00000001;
  static const IPF_GIF = 0x00000002;
  static const IPF_Base64GIF = 0x00000003;
}

/// {@category Enum}
class InkPictureSizeMode {
  static const IPSM_AutoSize = 0x00000000;
  static const IPSM_CenterImage = 0x00000001;
  static const IPSM_Normal = 0x00000002;
  static const IPSM_StretchImage = 0x00000003;
}

/// {@category Enum}
class InkRasterOperation {
  static const IRO_Black = 0x00000001;
  static const IRO_NotMergePen = 0x00000002;
  static const IRO_MaskNotPen = 0x00000003;
  static const IRO_NotCopyPen = 0x00000004;
  static const IRO_MaskPenNot = 0x00000005;
  static const IRO_Not = 0x00000006;
  static const IRO_XOrPen = 0x00000007;
  static const IRO_NotMaskPen = 0x00000008;
  static const IRO_MaskPen = 0x00000009;
  static const IRO_NotXOrPen = 0x0000000a;
  static const IRO_NoOperation = 0x0000000b;
  static const IRO_MergeNotPen = 0x0000000c;
  static const IRO_CopyPen = 0x0000000d;
  static const IRO_MergePenNot = 0x0000000e;
  static const IRO_MergePen = 0x0000000f;
  static const IRO_White = 0x00000010;
}

/// {@category Enum}
class InkRecognitionAlternatesSelection {
  static const IRAS_Start = 0x00000000;
  static const IRAS_DefaultCount = 0x0000000a;
  static const IRAS_All = 0xffffffff;
}

/// {@category Enum}
class InkRecognitionConfidence {
  static const IRC_Strong = 0x00000000;
  static const IRC_Intermediate = 0x00000001;
  static const IRC_Poor = 0x00000002;
}

/// {@category Enum}
class InkRecognitionModes {
  static const IRM_None = 0x00000000;
  static const IRM_WordModeOnly = 0x00000001;
  static const IRM_Coerce = 0x00000002;
  static const IRM_TopInkBreaksOnly = 0x00000004;
  static const IRM_PrefixOk = 0x00000008;
  static const IRM_LineMode = 0x00000010;
  static const IRM_DisablePersonalization = 0x00000020;
  static const IRM_AutoSpace = 0x00000040;
  static const IRM_Max = 0x00000080;
}

/// {@category Enum}
class InkRecognitionStatus {
  static const IRS_NoError = 0x00000000;
  static const IRS_Interrupted = 0x00000001;
  static const IRS_ProcessFailed = 0x00000002;
  static const IRS_InkAddedFailed = 0x00000004;
  static const IRS_SetAutoCompletionModeFailed = 0x00000008;
  static const IRS_SetStrokesFailed = 0x00000010;
  static const IRS_SetGuideFailed = 0x00000020;
  static const IRS_SetFlagsFailed = 0x00000040;
  static const IRS_SetFactoidFailed = 0x00000080;
  static const IRS_SetPrefixSuffixFailed = 0x00000100;
  static const IRS_SetWordListFailed = 0x00000200;
}

/// {@category Enum}
class InkRecognizerCapabilities {
  static const IRC_DontCare = 0x00000001;
  static const IRC_Object = 0x00000002;
  static const IRC_FreeInput = 0x00000004;
  static const IRC_LinedInput = 0x00000008;
  static const IRC_BoxedInput = 0x00000010;
  static const IRC_CharacterAutoCompletionInput = 0x00000020;
  static const IRC_RightAndDown = 0x00000040;
  static const IRC_LeftAndDown = 0x00000080;
  static const IRC_DownAndLeft = 0x00000100;
  static const IRC_DownAndRight = 0x00000200;
  static const IRC_ArbitraryAngle = 0x00000400;
  static const IRC_Lattice = 0x00000800;
  static const IRC_AdviseInkChange = 0x00001000;
  static const IRC_StrokeReorder = 0x00002000;
  static const IRC_Personalizable = 0x00004000;
  static const IRC_PrefersArbitraryAngle = 0x00008000;
  static const IRC_PrefersParagraphBreaking = 0x00010000;
  static const IRC_PrefersSegmentation = 0x00020000;
  static const IRC_Cursive = 0x00040000;
  static const IRC_TextPrediction = 0x00080000;
  static const IRC_Alpha = 0x00100000;
  static const IRC_Beta = 0x00200000;
}

/// {@category Enum}
class InkRecognizerCharacterAutoCompletionMode {
  static const IRCACM_Full = 0x00000000;
  static const IRCACM_Prefix = 0x00000001;
  static const IRCACM_Random = 0x00000002;
}

/// {@category Enum}
class InkSelectionConstants {
  static const ISC_FirstElement = 0x00000000;
  static const ISC_AllElements = 0xffffffff;
}

/// {@category Enum}
class InkShiftKeyModifierFlags {
  static const IKM_Shift = 0x00000001;
  static const IKM_Control = 0x00000002;
  static const IKM_Alt = 0x00000004;
}

/// {@category Enum}
class InkSystemGesture {
  static const ISG_Tap = 0x00000010;
  static const ISG_DoubleTap = 0x00000011;
  static const ISG_RightTap = 0x00000012;
  static const ISG_Drag = 0x00000013;
  static const ISG_RightDrag = 0x00000014;
  static const ISG_HoldEnter = 0x00000015;
  static const ISG_HoldLeave = 0x00000016;
  static const ISG_HoverEnter = 0x00000017;
  static const ISG_HoverLeave = 0x00000018;
  static const ISG_Flick = 0x0000001f;
}

/// {@category Enum}
class InteractionMode {
  static const InteractionMode_InPlace = 0x00000000;
  static const InteractionMode_Floating = 0x00000001;
  static const InteractionMode_DockedTop = 0x00000002;
  static const InteractionMode_DockedBottom = 0x00000003;
}

/// {@category Enum}
class KEYMODIFIER {
  static const KEYMODIFIER_CONTROL = 0x00000001;
  static const KEYMODIFIER_MENU = 0x00000002;
  static const KEYMODIFIER_SHIFT = 0x00000004;
  static const KEYMODIFIER_WIN = 0x00000008;
  static const KEYMODIFIER_ALTGR = 0x00000010;
  static const KEYMODIFIER_EXT = 0x00000020;
}

/// {@category Enum}
class LINE_METRICS {
  static const LM_BASELINE = 0x00000000;
  static const LM_MIDLINE = 0x00000001;
  static const LM_ASCENDER = 0x00000002;
  static const LM_DESCENDER = 0x00000003;
}

/// {@category Enum}
class MICUIELEMENT {
  static const MICUIELEMENT_BUTTON_WRITE = 0x00000001;
  static const MICUIELEMENT_BUTTON_ERASE = 0x00000002;
  static const MICUIELEMENT_BUTTON_CORRECT = 0x00000004;
  static const MICUIELEMENT_BUTTON_CLEAR = 0x00000008;
  static const MICUIELEMENT_BUTTON_UNDO = 0x00000010;
  static const MICUIELEMENT_BUTTON_REDO = 0x00000020;
  static const MICUIELEMENT_BUTTON_INSERT = 0x00000040;
  static const MICUIELEMENT_BUTTON_CANCEL = 0x00000080;
  static const MICUIELEMENT_INKPANEL_BACKGROUND = 0x00000100;
  static const MICUIELEMENT_RESULTPANEL_BACKGROUND = 0x00000200;
}

/// {@category Enum}
class MICUIELEMENTSTATE {
  static const MICUIELEMENTSTATE_NORMAL = 0x00000001;
  static const MICUIELEMENTSTATE_HOT = 0x00000002;
  static const MICUIELEMENTSTATE_PRESSED = 0x00000003;
  static const MICUIELEMENTSTATE_DISABLED = 0x00000004;
}

/// {@category Enum}
class MouseButton {
  static const NO_BUTTON = 0x00000000;
  static const LEFT_BUTTON = 0x00000001;
  static const RIGHT_BUTTON = 0x00000002;
  static const MIDDLE_BUTTON = 0x00000004;
}

/// {@category Enum}
class PROPERTY_UNITS {
  static const PROPERTY_UNITS_DEFAULT = 0x00000000;
  static const PROPERTY_UNITS_INCHES = 0x00000001;
  static const PROPERTY_UNITS_CENTIMETERS = 0x00000002;
  static const PROPERTY_UNITS_DEGREES = 0x00000003;
  static const PROPERTY_UNITS_RADIANS = 0x00000004;
  static const PROPERTY_UNITS_SECONDS = 0x00000005;
  static const PROPERTY_UNITS_POUNDS = 0x00000006;
  static const PROPERTY_UNITS_GRAMS = 0x00000007;
  static const PROPERTY_UNITS_SILINEAR = 0x00000008;
  static const PROPERTY_UNITS_SIROTATION = 0x00000009;
  static const PROPERTY_UNITS_ENGLINEAR = 0x0000000a;
  static const PROPERTY_UNITS_ENGROTATION = 0x0000000b;
  static const PROPERTY_UNITS_SLUGS = 0x0000000c;
  static const PROPERTY_UNITS_KELVIN = 0x0000000d;
  static const PROPERTY_UNITS_FAHRENHEIT = 0x0000000e;
  static const PROPERTY_UNITS_AMPERE = 0x0000000f;
  static const PROPERTY_UNITS_CANDELA = 0x00000010;
}

/// {@category Enum}
class PanelInputArea {
  static const PanelInputArea_Auto = 0x00000000;
  static const PanelInputArea_Keyboard = 0x00000001;
  static const PanelInputArea_WritingPad = 0x00000002;
  static const PanelInputArea_CharacterPad = 0x00000003;
}

/// {@category Enum}
class PanelType {
  static const PT_Default = 0x00000000;
  static const PT_Inactive = 0x00000001;
  static const PT_Handwriting = 0x00000002;
  static const PT_Keyboard = 0x00000003;
}

/// {@category Enum}
class RealTimeStylusDataInterest {
  static const RTSDI_AllData = 0xffffffff;
  static const RTSDI_None = 0x00000000;
  static const RTSDI_Error = 0x00000001;
  static const RTSDI_RealTimeStylusEnabled = 0x00000002;
  static const RTSDI_RealTimeStylusDisabled = 0x00000004;
  static const RTSDI_StylusNew = 0x00000008;
  static const RTSDI_StylusInRange = 0x00000010;
  static const RTSDI_InAirPackets = 0x00000020;
  static const RTSDI_StylusOutOfRange = 0x00000040;
  static const RTSDI_StylusDown = 0x00000080;
  static const RTSDI_Packets = 0x00000100;
  static const RTSDI_StylusUp = 0x00000200;
  static const RTSDI_StylusButtonUp = 0x00000400;
  static const RTSDI_StylusButtonDown = 0x00000800;
  static const RTSDI_SystemEvents = 0x00001000;
  static const RTSDI_TabletAdded = 0x00002000;
  static const RTSDI_TabletRemoved = 0x00004000;
  static const RTSDI_CustomStylusDataAdded = 0x00008000;
  static const RTSDI_UpdateMapping = 0x00010000;
  static const RTSDI_DefaultEvents = 0x00009386;
}

/// {@category Enum}
class RealTimeStylusLockType {
  static const RTSLT_ObjLock = 0x00000001;
  static const RTSLT_SyncEventLock = 0x00000002;
  static const RTSLT_AsyncEventLock = 0x00000004;
  static const RTSLT_ExcludeCallback = 0x00000008;
  static const RTSLT_SyncObjLock = 0x0000000b;
  static const RTSLT_AsyncObjLock = 0x0000000d;
}

/// {@category Enum}
class SCROLLDIRECTION {
  static const SCROLLDIRECTION_UP = 0x00000000;
  static const SCROLLDIRECTION_DOWN = 0x00000001;
}

/// {@category Enum}
class ScrollBarsConstants {
  static const rtfNone = 0x00000000;
  static const rtfHorizontal = 0x00000001;
  static const rtfVertical = 0x00000002;
  static const rtfBoth = 0x00000003;
}

/// {@category Enum}
class SelAlignmentConstants {
  static const rtfLeft = 0x00000000;
  static const rtfRight = 0x00000001;
  static const rtfCenter = 0x00000002;
}

/// {@category Enum}
class SelectionHitResult {
  static const SHR_None = 0x00000000;
  static const SHR_NW = 0x00000001;
  static const SHR_SE = 0x00000002;
  static const SHR_NE = 0x00000003;
  static const SHR_SW = 0x00000004;
  static const SHR_E = 0x00000005;
  static const SHR_W = 0x00000006;
  static const SHR_N = 0x00000007;
  static const SHR_S = 0x00000008;
  static const SHR_Selection = 0x00000009;
}

/// {@category Enum}
class StylusQueue {
  static const SyncStylusQueue = 0x00000001;
  static const AsyncStylusQueueImmediate = 0x00000002;
  static const AsyncStylusQueue = 0x00000003;
}

/// {@category Enum}
class TabletDeviceKind {
  static const TDK_Mouse = 0x00000000;
  static const TDK_Pen = 0x00000001;
  static const TDK_Touch = 0x00000002;
}

/// {@category Enum}
class TabletHardwareCapabilities {
  static const THWC_Integrated = 0x00000001;
  static const THWC_CursorMustTouch = 0x00000002;
  static const THWC_HardProximity = 0x00000004;
  static const THWC_CursorsHavePhysicalIds = 0x00000008;
}

/// {@category Enum}
class TabletPropertyMetricUnit {
  static const TPMU_Default = 0x00000000;
  static const TPMU_Inches = 0x00000001;
  static const TPMU_Centimeters = 0x00000002;
  static const TPMU_Degrees = 0x00000003;
  static const TPMU_Radians = 0x00000004;
  static const TPMU_Seconds = 0x00000005;
  static const TPMU_Pounds = 0x00000006;
  static const TPMU_Grams = 0x00000007;
}

/// {@category Enum}
class VisualState {
  static const InPlace = 0x00000000;
  static const Floating = 0x00000001;
  static const DockedTop = 0x00000002;
  static const DockedBottom = 0x00000003;
  static const Closed = 0x00000004;
}

/// {@category Enum}
class enumGetCandidateFlags {
  static const TCF_ALLOW_RECOGNITION = 0x00000001;
  static const TCF_FORCE_RECOGNITION = 0x00000002;
}

/// {@category Enum}
class enumINKMETRIC_FLAGS {
  static const IMF_FONT_SELECTED_IN_HDC = 0x00000001;
  static const IMF_ITALIC = 0x00000002;
  static const IMF_BOLD = 0x00000004;
}

/// {@category Enum}
class enumRECO_TYPE {
  static const RECO_TYPE_WSTRING = 0x00000000;
  static const RECO_TYPE_WCHAR = 0x00000001;
}
