/// {@category Enum}
class AnnoScope {
  static const ANNO_THIS = 0x00000000;
  static const ANNO_CONTAINER = 0x00000001;
}

/// {@category Enum}
class NavigateDirection {
  static const NavigateDirection_Parent = 0x00000000;
  static const NavigateDirection_NextSibling = 0x00000001;
  static const NavigateDirection_PreviousSibling = 0x00000002;
  static const NavigateDirection_FirstChild = 0x00000003;
  static const NavigateDirection_LastChild = 0x00000004;
}

/// {@category Enum}
class ProviderOptions {
  static const ProviderOptions_ClientSideProvider = 0x00000001;
  static const ProviderOptions_ServerSideProvider = 0x00000002;
  static const ProviderOptions_NonClientAreaProvider = 0x00000004;
  static const ProviderOptions_OverrideProvider = 0x00000008;
  static const ProviderOptions_ProviderOwnsSetFocus = 0x00000010;
  static const ProviderOptions_UseComThreading = 0x00000020;
  static const ProviderOptions_RefuseNonClientSupport = 0x00000040;
  static const ProviderOptions_HasNativeIAccessible = 0x00000080;
  static const ProviderOptions_UseClientCoordinates = 0x00000100;
}

/// {@category Enum}
class StructureChangeType {
  static const StructureChangeType_ChildAdded = 0x00000000;
  static const StructureChangeType_ChildRemoved = 0x00000001;
  static const StructureChangeType_ChildrenInvalidated = 0x00000002;
  static const StructureChangeType_ChildrenBulkAdded = 0x00000003;
  static const StructureChangeType_ChildrenBulkRemoved = 0x00000004;
  static const StructureChangeType_ChildrenReordered = 0x00000005;
}

/// {@category Enum}
class TextEditChangeType {
  static const TextEditChangeType_None = 0x00000000;
  static const TextEditChangeType_AutoCorrect = 0x00000001;
  static const TextEditChangeType_Composition = 0x00000002;
  static const TextEditChangeType_CompositionFinalized = 0x00000003;
  static const TextEditChangeType_AutoComplete = 0x00000004;
}

/// {@category Enum}
class OrientationType {
  static const OrientationType_None = 0x00000000;
  static const OrientationType_Horizontal = 0x00000001;
  static const OrientationType_Vertical = 0x00000002;
}

/// {@category Enum}
class DockPosition {
  static const DockPosition_Top = 0x00000000;
  static const DockPosition_Left = 0x00000001;
  static const DockPosition_Bottom = 0x00000002;
  static const DockPosition_Right = 0x00000003;
  static const DockPosition_Fill = 0x00000004;
  static const DockPosition_None = 0x00000005;
}

/// {@category Enum}
class ExpandCollapseState {
  static const ExpandCollapseState_Collapsed = 0x00000000;
  static const ExpandCollapseState_Expanded = 0x00000001;
  static const ExpandCollapseState_PartiallyExpanded = 0x00000002;
  static const ExpandCollapseState_LeafNode = 0x00000003;
}

/// {@category Enum}
class ScrollAmount {
  static const ScrollAmount_LargeDecrement = 0x00000000;
  static const ScrollAmount_SmallDecrement = 0x00000001;
  static const ScrollAmount_NoAmount = 0x00000002;
  static const ScrollAmount_LargeIncrement = 0x00000003;
  static const ScrollAmount_SmallIncrement = 0x00000004;
}

/// {@category Enum}
class RowOrColumnMajor {
  static const RowOrColumnMajor_RowMajor = 0x00000000;
  static const RowOrColumnMajor_ColumnMajor = 0x00000001;
  static const RowOrColumnMajor_Indeterminate = 0x00000002;
}

/// {@category Enum}
class ToggleState {
  static const ToggleState_Off = 0x00000000;
  static const ToggleState_On = 0x00000001;
  static const ToggleState_Indeterminate = 0x00000002;
}

/// {@category Enum}
class WindowVisualState {
  static const WindowVisualState_Normal = 0x00000000;
  static const WindowVisualState_Maximized = 0x00000001;
  static const WindowVisualState_Minimized = 0x00000002;
}

/// {@category Enum}
class SynchronizedInputType {
  static const SynchronizedInputType_KeyUp = 0x00000001;
  static const SynchronizedInputType_KeyDown = 0x00000002;
  static const SynchronizedInputType_LeftMouseUp = 0x00000004;
  static const SynchronizedInputType_LeftMouseDown = 0x00000008;
  static const SynchronizedInputType_RightMouseUp = 0x00000010;
  static const SynchronizedInputType_RightMouseDown = 0x00000020;
}

/// {@category Enum}
class WindowInteractionState {
  static const WindowInteractionState_Running = 0x00000000;
  static const WindowInteractionState_Closing = 0x00000001;
  static const WindowInteractionState_ReadyForUserInteraction = 0x00000002;
  static const WindowInteractionState_BlockedByModalWindow = 0x00000003;
  static const WindowInteractionState_NotResponding = 0x00000004;
}

/// {@category Enum}
class SayAsInterpretAs {
  static const SayAsInterpretAs_None = 0x00000000;
  static const SayAsInterpretAs_Spell = 0x00000001;
  static const SayAsInterpretAs_Cardinal = 0x00000002;
  static const SayAsInterpretAs_Ordinal = 0x00000003;
  static const SayAsInterpretAs_Number = 0x00000004;
  static const SayAsInterpretAs_Date = 0x00000005;
  static const SayAsInterpretAs_Time = 0x00000006;
  static const SayAsInterpretAs_Telephone = 0x00000007;
  static const SayAsInterpretAs_Currency = 0x00000008;
  static const SayAsInterpretAs_Net = 0x00000009;
  static const SayAsInterpretAs_Url = 0x0000000a;
  static const SayAsInterpretAs_Address = 0x0000000b;
  static const SayAsInterpretAs_Alphanumeric = 0x0000000c;
  static const SayAsInterpretAs_Name = 0x0000000d;
  static const SayAsInterpretAs_Media = 0x0000000e;
  static const SayAsInterpretAs_Date_MonthDayYear = 0x0000000f;
  static const SayAsInterpretAs_Date_DayMonthYear = 0x00000010;
  static const SayAsInterpretAs_Date_YearMonthDay = 0x00000011;
  static const SayAsInterpretAs_Date_YearMonth = 0x00000012;
  static const SayAsInterpretAs_Date_MonthYear = 0x00000013;
  static const SayAsInterpretAs_Date_DayMonth = 0x00000014;
  static const SayAsInterpretAs_Date_MonthDay = 0x00000015;
  static const SayAsInterpretAs_Date_Year = 0x00000016;
  static const SayAsInterpretAs_Time_HoursMinutesSeconds12 = 0x00000017;
  static const SayAsInterpretAs_Time_HoursMinutes12 = 0x00000018;
  static const SayAsInterpretAs_Time_HoursMinutesSeconds24 = 0x00000019;
  static const SayAsInterpretAs_Time_HoursMinutes24 = 0x0000001a;
}

/// {@category Enum}
class TextUnit {
  static const TextUnit_Character = 0x00000000;
  static const TextUnit_Format = 0x00000001;
  static const TextUnit_Word = 0x00000002;
  static const TextUnit_Line = 0x00000003;
  static const TextUnit_Paragraph = 0x00000004;
  static const TextUnit_Page = 0x00000005;
  static const TextUnit_Document = 0x00000006;
}

/// {@category Enum}
class TextPatternRangeEndpoint {
  static const TextPatternRangeEndpoint_Start = 0x00000000;
  static const TextPatternRangeEndpoint_End = 0x00000001;
}

/// {@category Enum}
class SupportedTextSelection {
  static const SupportedTextSelection_None = 0x00000000;
  static const SupportedTextSelection_Single = 0x00000001;
  static const SupportedTextSelection_Multiple = 0x00000002;
}

/// {@category Enum}
class LiveSetting {
  static const Off = 0x00000000;
  static const Polite = 0x00000001;
  static const Assertive = 0x00000002;
}

/// {@category Enum}
class ActiveEnd {
  static const ActiveEnd_None = 0x00000000;
  static const ActiveEnd_Start = 0x00000001;
  static const ActiveEnd_End = 0x00000002;
}

/// {@category Enum}
class CaretPosition {
  static const CaretPosition_Unknown = 0x00000000;
  static const CaretPosition_EndOfLine = 0x00000001;
  static const CaretPosition_BeginningOfLine = 0x00000002;
}

/// {@category Enum}
class CaretBidiMode {
  static const CaretBidiMode_LTR = 0x00000000;
  static const CaretBidiMode_RTL = 0x00000001;
}

/// {@category Enum}
class ZoomUnit {
  static const ZoomUnit_NoAmount = 0x00000000;
  static const ZoomUnit_LargeDecrement = 0x00000001;
  static const ZoomUnit_SmallDecrement = 0x00000002;
  static const ZoomUnit_LargeIncrement = 0x00000003;
  static const ZoomUnit_SmallIncrement = 0x00000004;
}

/// {@category Enum}
class AnimationStyle {
  static const AnimationStyle_None = 0x00000000;
  static const AnimationStyle_LasVegasLights = 0x00000001;
  static const AnimationStyle_BlinkingBackground = 0x00000002;
  static const AnimationStyle_SparkleText = 0x00000003;
  static const AnimationStyle_MarchingBlackAnts = 0x00000004;
  static const AnimationStyle_MarchingRedAnts = 0x00000005;
  static const AnimationStyle_Shimmer = 0x00000006;
  static const AnimationStyle_Other = 0xffffffff;
}

/// {@category Enum}
class BulletStyle {
  static const BulletStyle_None = 0x00000000;
  static const BulletStyle_HollowRoundBullet = 0x00000001;
  static const BulletStyle_FilledRoundBullet = 0x00000002;
  static const BulletStyle_HollowSquareBullet = 0x00000003;
  static const BulletStyle_FilledSquareBullet = 0x00000004;
  static const BulletStyle_DashBullet = 0x00000005;
  static const BulletStyle_Other = 0xffffffff;
}

/// {@category Enum}
class CapStyle {
  static const CapStyle_None = 0x00000000;
  static const CapStyle_SmallCap = 0x00000001;
  static const CapStyle_AllCap = 0x00000002;
  static const CapStyle_AllPetiteCaps = 0x00000003;
  static const CapStyle_PetiteCaps = 0x00000004;
  static const CapStyle_Unicase = 0x00000005;
  static const CapStyle_Titling = 0x00000006;
  static const CapStyle_Other = 0xffffffff;
}

/// {@category Enum}
class FillType {
  static const FillType_None = 0x00000000;
  static const FillType_Color = 0x00000001;
  static const FillType_Gradient = 0x00000002;
  static const FillType_Picture = 0x00000003;
  static const FillType_Pattern = 0x00000004;
}

/// {@category Enum}
class FlowDirections {
  static const FlowDirections_Default = 0x00000000;
  static const FlowDirections_RightToLeft = 0x00000001;
  static const FlowDirections_BottomToTop = 0x00000002;
  static const FlowDirections_Vertical = 0x00000004;
}

/// {@category Enum}
class HorizontalTextAlignment {
  static const HorizontalTextAlignment_Left = 0x00000000;
  static const HorizontalTextAlignment_Centered = 0x00000001;
  static const HorizontalTextAlignment_Right = 0x00000002;
  static const HorizontalTextAlignment_Justified = 0x00000003;
}

/// {@category Enum}
class OutlineStyles {
  static const OutlineStyles_None = 0x00000000;
  static const OutlineStyles_Outline = 0x00000001;
  static const OutlineStyles_Shadow = 0x00000002;
  static const OutlineStyles_Engraved = 0x00000004;
  static const OutlineStyles_Embossed = 0x00000008;
}

/// {@category Enum}
class TextDecorationLineStyle {
  static const TextDecorationLineStyle_None = 0x00000000;
  static const TextDecorationLineStyle_Single = 0x00000001;
  static const TextDecorationLineStyle_WordsOnly = 0x00000002;
  static const TextDecorationLineStyle_Double = 0x00000003;
  static const TextDecorationLineStyle_Dot = 0x00000004;
  static const TextDecorationLineStyle_Dash = 0x00000005;
  static const TextDecorationLineStyle_DashDot = 0x00000006;
  static const TextDecorationLineStyle_DashDotDot = 0x00000007;
  static const TextDecorationLineStyle_Wavy = 0x00000008;
  static const TextDecorationLineStyle_ThickSingle = 0x00000009;
  static const TextDecorationLineStyle_DoubleWavy = 0x0000000b;
  static const TextDecorationLineStyle_ThickWavy = 0x0000000c;
  static const TextDecorationLineStyle_LongDash = 0x0000000d;
  static const TextDecorationLineStyle_ThickDash = 0x0000000e;
  static const TextDecorationLineStyle_ThickDashDot = 0x0000000f;
  static const TextDecorationLineStyle_ThickDashDotDot = 0x00000010;
  static const TextDecorationLineStyle_ThickDot = 0x00000011;
  static const TextDecorationLineStyle_ThickLongDash = 0x00000012;
  static const TextDecorationLineStyle_Other = 0xffffffff;
}

/// {@category Enum}
class VisualEffects {
  static const VisualEffects_None = 0x00000000;
  static const VisualEffects_Shadow = 0x00000001;
  static const VisualEffects_Reflection = 0x00000002;
  static const VisualEffects_Glow = 0x00000004;
  static const VisualEffects_SoftEdges = 0x00000008;
  static const VisualEffects_Bevel = 0x00000010;
}

/// {@category Enum}
class NotificationProcessing {
  static const NotificationProcessing_ImportantAll = 0x00000000;
  static const NotificationProcessing_ImportantMostRecent = 0x00000001;
  static const NotificationProcessing_All = 0x00000002;
  static const NotificationProcessing_MostRecent = 0x00000003;
  static const NotificationProcessing_CurrentThenMostRecent = 0x00000004;
}

/// {@category Enum}
class NotificationKind {
  static const NotificationKind_ItemAdded = 0x00000000;
  static const NotificationKind_ItemRemoved = 0x00000001;
  static const NotificationKind_ActionCompleted = 0x00000002;
  static const NotificationKind_ActionAborted = 0x00000003;
  static const NotificationKind_Other = 0x00000004;
}

/// {@category Enum}
class UIAutomationType {
  static const UIAutomationType_Int = 0x00000001;
  static const UIAutomationType_Bool = 0x00000002;
  static const UIAutomationType_String = 0x00000003;
  static const UIAutomationType_Double = 0x00000004;
  static const UIAutomationType_Point = 0x00000005;
  static const UIAutomationType_Rect = 0x00000006;
  static const UIAutomationType_Element = 0x00000007;
  static const UIAutomationType_Array = 0x00010000;
  static const UIAutomationType_Out = 0x00020000;
  static const UIAutomationType_IntArray = 0x00010001;
  static const UIAutomationType_BoolArray = 0x00010002;
  static const UIAutomationType_StringArray = 0x00010003;
  static const UIAutomationType_DoubleArray = 0x00010004;
  static const UIAutomationType_PointArray = 0x00010005;
  static const UIAutomationType_RectArray = 0x00010006;
  static const UIAutomationType_ElementArray = 0x00010007;
  static const UIAutomationType_OutInt = 0x00020001;
  static const UIAutomationType_OutBool = 0x00020002;
  static const UIAutomationType_OutString = 0x00020003;
  static const UIAutomationType_OutDouble = 0x00020004;
  static const UIAutomationType_OutPoint = 0x00020005;
  static const UIAutomationType_OutRect = 0x00020006;
  static const UIAutomationType_OutElement = 0x00020007;
  static const UIAutomationType_OutIntArray = 0x00030001;
  static const UIAutomationType_OutBoolArray = 0x00030002;
  static const UIAutomationType_OutStringArray = 0x00030003;
  static const UIAutomationType_OutDoubleArray = 0x00030004;
  static const UIAutomationType_OutPointArray = 0x00030005;
  static const UIAutomationType_OutRectArray = 0x00030006;
  static const UIAutomationType_OutElementArray = 0x00030007;
}

/// {@category Enum}
class TreeScope {
  static const TreeScope_None = 0x00000000;
  static const TreeScope_Element = 0x00000001;
  static const TreeScope_Children = 0x00000002;
  static const TreeScope_Descendants = 0x00000004;
  static const TreeScope_Parent = 0x00000008;
  static const TreeScope_Ancestors = 0x00000010;
  static const TreeScope_Subtree = 0x00000007;
}

/// {@category Enum}
class ConditionType {
  static const ConditionType_True = 0x00000000;
  static const ConditionType_False = 0x00000001;
  static const ConditionType_Property = 0x00000002;
  static const ConditionType_And = 0x00000003;
  static const ConditionType_Or = 0x00000004;
  static const ConditionType_Not = 0x00000005;
}

/// {@category Enum}
class PropertyConditionFlags {
  static const PropertyConditionFlags_None = 0x00000000;
  static const PropertyConditionFlags_IgnoreCase = 0x00000001;
  static const PropertyConditionFlags_MatchSubstring = 0x00000002;
}

/// {@category Enum}
class AutomationElementMode {
  static const AutomationElementMode_None = 0x00000000;
  static const AutomationElementMode_Full = 0x00000001;
}

/// {@category Enum}
class NormalizeState {
  static const NormalizeState_None = 0x00000000;
  static const NormalizeState_View = 0x00000001;
  static const NormalizeState_Custom = 0x00000002;
}

/// {@category Enum}
class TreeTraversalOptions {
  static const TreeTraversalOptions_Default = 0x00000000;
  static const TreeTraversalOptions_PostOrder = 0x00000001;
  static const TreeTraversalOptions_LastToFirstOrder = 0x00000002;
}

/// {@category Enum}
class ProviderType {
  static const ProviderType_BaseHwnd = 0x00000000;
  static const ProviderType_Proxy = 0x00000001;
  static const ProviderType_NonClientArea = 0x00000002;
}

/// {@category Enum}
class AutomationIdentifierType {
  static const AutomationIdentifierType_Property = 0x00000000;
  static const AutomationIdentifierType_Pattern = 0x00000001;
  static const AutomationIdentifierType_Event = 0x00000002;
  static const AutomationIdentifierType_ControlType = 0x00000003;
  static const AutomationIdentifierType_TextAttribute = 0x00000004;
  static const AutomationIdentifierType_LandmarkType = 0x00000005;
  static const AutomationIdentifierType_Annotation = 0x00000006;
  static const AutomationIdentifierType_Changes = 0x00000007;
  static const AutomationIdentifierType_Style = 0x00000008;
}

/// {@category Enum}
class EventArgsType {
  static const EventArgsType_Simple = 0x00000000;
  static const EventArgsType_PropertyChanged = 0x00000001;
  static const EventArgsType_StructureChanged = 0x00000002;
  static const EventArgsType_AsyncContentLoaded = 0x00000003;
  static const EventArgsType_WindowClosed = 0x00000004;
  static const EventArgsType_TextEditTextChanged = 0x00000005;
  static const EventArgsType_Changes = 0x00000006;
  static const EventArgsType_Notification = 0x00000007;
  static const EventArgsType_ActiveTextPositionChanged = 0x00000008;
  static const EventArgsType_StructuredMarkup = 0x00000009;
}

/// {@category Enum}
class AsyncContentLoadedState {
  static const AsyncContentLoadedState_Beginning = 0x00000000;
  static const AsyncContentLoadedState_Progress = 0x00000001;
  static const AsyncContentLoadedState_Completed = 0x00000002;
}
