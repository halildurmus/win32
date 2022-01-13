/// {@category Enum}
class CARET_FLAGS {
  static const CARET_NONE = 0x00000000;
  static const CARET_CUSTOM = 0x00000001;
  static const CARET_RTL = 0x00000002;
  static const CARET_ITALIC = 0x00000020;
  static const CARET_NULL = 0x00000040;
  static const CARET_ROTATE90 = 0x00000080;
}

/// {@category Enum}
class CFE_EFFECTS {
  static const CFE_ALLCAPS = 0x00000080;
  static const CFE_AUTOBACKCOLOR = 0x04000000;
  static const CFE_DISABLED = 0x00002000;
  static const CFE_EMBOSS = 0x00000800;
  static const CFE_HIDDEN = 0x00000100;
  static const CFE_IMPRINT = 0x00001000;
  static const CFE_OUTLINE = 0x00000200;
  static const CFE_REVISED = 0x00004000;
  static const CFE_SHADOW = 0x00000400;
  static const CFE_SMALLCAPS = 0x00000040;
  static const CFE_AUTOCOLOR = 0x40000000;
  static const CFE_BOLD = 0x00000001;
  static const CFE_ITALIC = 0x00000002;
  static const CFE_STRIKEOUT = 0x00000008;
  static const CFE_UNDERLINE = 0x00000004;
  static const CFE_PROTECTED = 0x00000010;
  static const CFE_LINK = 0x00000020;
  static const CFE_SUBSCRIPT = 0x00010000;
  static const CFE_SUPERSCRIPT = 0x00020000;
  static const CFE_FONTBOUND = 0x00100000;
  static const CFE_LINKPROTECTED = 0x00800000;
  static const CFE_EXTENDED = 0x02000000;
  static const CFE_MATHNOBUILDUP = 0x08000000;
  static const CFE_MATH = 0x10000000;
  static const CFE_MATHORDINARY = 0x20000000;
}

/// {@category Enum}
class CFM_MASK {
  static const CFM_SUBSCRIPT = 0x00030000;
  static const CFM_SUPERSCRIPT = 0x00030000;
  static const CFM_EFFECTS = 0x4000003f;
  static const CFM_ALL = 0xf800003f;
  static const CFM_BOLD = 0x00000001;
  static const CFM_CHARSET = 0x08000000;
  static const CFM_COLOR = 0x40000000;
  static const CFM_FACE = 0x20000000;
  static const CFM_ITALIC = 0x00000002;
  static const CFM_OFFSET = 0x10000000;
  static const CFM_PROTECTED = 0x00000010;
  static const CFM_SIZE = 0x80000000;
  static const CFM_STRIKEOUT = 0x00000008;
  static const CFM_UNDERLINE = 0x00000004;
  static const CFM_LINK = 0x00000020;
  static const CFM_SMALLCAPS = 0x00000040;
  static const CFM_ALLCAPS = 0x00000080;
  static const CFM_HIDDEN = 0x00000100;
  static const CFM_OUTLINE = 0x00000200;
  static const CFM_SHADOW = 0x00000400;
  static const CFM_EMBOSS = 0x00000800;
  static const CFM_IMPRINT = 0x00001000;
  static const CFM_DISABLED = 0x00002000;
  static const CFM_REVISED = 0x00004000;
  static const CFM_REVAUTHOR = 0x00008000;
  static const CFM_ANIMATION = 0x00040000;
  static const CFM_STYLE = 0x00080000;
  static const CFM_KERNING = 0x00100000;
  static const CFM_SPACING = 0x00200000;
  static const CFM_WEIGHT = 0x00400000;
  static const CFM_UNDERLINETYPE = 0x00800000;
  static const CFM_COOKIE = 0x01000000;
  static const CFM_LCID = 0x02000000;
  static const CFM_BACKCOLOR = 0x04000000;
  static const CFM_EFFECTS2 = 0x44037fff;
  static const CFM_ALL2 = 0xffffffff;
  static const CFM_FONTBOUND = 0x00100000;
  static const CFM_LINKPROTECTED = 0x00800000;
  static const CFM_EXTENDED = 0x02000000;
  static const CFM_MATHNOBUILDUP = 0x08000000;
  static const CFM_MATH = 0x10000000;
  static const CFM_MATHORDINARY = 0x20000000;
  static const CFM_ALLEFFECTS = 0x7e137fff;
}

/// {@category Enum}
class CHANGETYPE {
  static const CN_GENERIC = 0x00000000;
  static const CN_TEXTCHANGED = 0x00000001;
  static const CN_NEWUNDO = 0x00000002;
  static const CN_NEWREDO = 0x00000004;
}

/// {@category Enum}
class ENDCOMPOSITIONNOTIFY_CODE {
  static const ECN_ENDCOMPOSITION = 0x00000001;
  static const ECN_NEWTEXT = 0x00000002;
}

/// {@category Enum}
class GETTEXTEX_FLAGS {
  static const GT_DEFAULT = 0x00000000;
  static const GT_NOHIDDENTEXT = 0x00000008;
  static const GT_RAWTEXT = 0x00000004;
  static const GT_SELECTION = 0x00000002;
  static const GT_USECRLF = 0x00000001;
}

/// {@category Enum}
class GETTEXTLENGTHEX_FLAGS {
  static const GTL_DEFAULT = 0x00000000;
  static const GTL_USECRLF = 0x00000001;
  static const GTL_PRECISE = 0x00000002;
  static const GTL_CLOSE = 0x00000004;
  static const GTL_NUMCHARS = 0x00000008;
  static const GTL_NUMBYTES = 0x00000010;
}

/// {@category Enum}
class IMECOMPTEXT_FLAGS {
  static const ICT_RESULTREADSTR = 0x00000001;
}

/// {@category Enum}
class KHYPH {
  static const khyphNil = 0x00000000;
  static const khyphNormal = 0x00000001;
  static const khyphAddBefore = 0x00000002;
  static const khyphChangeBefore = 0x00000003;
  static const khyphDeleteBefore = 0x00000004;
  static const khyphChangeAfter = 0x00000005;
  static const khyphDelAndChange = 0x00000006;
}

/// {@category Enum}
class MANCODE {
  static const MBOLD = 0x00000010;
  static const MITAL = 0x00000020;
  static const MGREEK = 0x00000040;
  static const MROMN = 0x00000000;
  static const MSCRP = 0x00000001;
  static const MFRAK = 0x00000002;
  static const MOPEN = 0x00000003;
  static const MSANS = 0x00000004;
  static const MMONO = 0x00000005;
  static const MMATH = 0x00000006;
  static const MISOL = 0x00000007;
  static const MINIT = 0x00000008;
  static const MTAIL = 0x00000009;
  static const MSTRCH = 0x0000000a;
  static const MLOOP = 0x0000000b;
  static const MOPENA = 0x0000000c;
}

/// {@category Enum}
class OBJECTTYPE {
  static const tomSimpleText = 0x00000000;
  static const tomRuby = 0x00000001;
  static const tomHorzVert = 0x00000002;
  static const tomWarichu = 0x00000003;
  static const tomEq = 0x00000009;
  static const tomMath = 0x0000000a;
  static const tomAccent = 0x0000000a;
  static const tomBox = 0x0000000b;
  static const tomBoxedFormula = 0x0000000c;
  static const tomBrackets = 0x0000000d;
  static const tomBracketsWithSeps = 0x0000000e;
  static const tomEquationArray = 0x0000000f;
  static const tomFraction = 0x00000010;
  static const tomFunctionApply = 0x00000011;
  static const tomLeftSubSup = 0x00000012;
  static const tomLowerLimit = 0x00000013;
  static const tomMatrix = 0x00000014;
  static const tomNary = 0x00000015;
  static const tomOpChar = 0x00000016;
  static const tomOverbar = 0x00000017;
  static const tomPhantom = 0x00000018;
  static const tomRadical = 0x00000019;
  static const tomSlashedFraction = 0x0000001a;
  static const tomStack = 0x0000001b;
  static const tomStretchStack = 0x0000001c;
  static const tomSubscript = 0x0000001d;
  static const tomSubSup = 0x0000001e;
  static const tomSuperscript = 0x0000001f;
  static const tomUnderbar = 0x00000020;
  static const tomUpperLimit = 0x00000021;
  static const tomObjectMax = 0x00000021;
}

/// {@category Enum}
class PARAFORMAT_ALIGNMENT {
  static const PFA_CENTER = 0x10020003;
  static const PFA_LEFT = 0x02020001;
  static const PFA_RIGHT = 0x04020002;
}

/// {@category Enum}
class PARAFORMAT_BORDERS {
  static const PARAFORMAT_BORDERS_LEFT = 0x02020001;
  static const PARAFORMAT_BORDERS_RIGHT = 0x04020002;
  static const PARAFORMAT_BORDERS_TOP = 0x00020004;
  static const PARAFORMAT_BORDERS_BOTTOM = 0x09020008;
  static const PARAFORMAT_BORDERS_INSIDE = 0x05020010;
  static const PARAFORMAT_BORDERS_OUTSIDE = 0x40020020;
  static const PARAFORMAT_BORDERS_AUTOCOLOR = 0x80020040;
}

/// {@category Enum}
class PARAFORMAT_MASK {
  static const PFM_ALIGNMENT = 0x00000008;
  static const PFM_NUMBERING = 0x00000020;
  static const PFM_OFFSET = 0x00000004;
  static const PFM_OFFSETINDENT = 0x80000000;
  static const PFM_RIGHTINDENT = 0x00000002;
  static const PFM_RTLPARA = 0x00010000;
  static const PFM_STARTINDENT = 0x00000001;
  static const PFM_TABSTOPS = 0x00000010;
}

/// {@category Enum}
class PARAFORMAT_NUMBERING_STYLE {
  static const PFNS_PAREN = 0x62020000;
  static const PFNS_PARENS = 0x00020100;
  static const PFNS_PERIOD = 0x00020200;
  static const PFNS_PLAIN = 0x06040300;
  static const PFNS_NONUMBER = 0x00020400;
  static const PFNS_NEWNUMBER = 0x06048000;
}

/// {@category Enum}
class PARAFORMAT_SHADING_STYLE {
  static const PARAFORMAT_SHADING_STYLE_NONE = 0x62020000;
  static const PARAFORMAT_SHADING_STYLE_DARK_HORIZ = 0x02020001;
  static const PARAFORMAT_SHADING_STYLE_DARK_VERT = 0x04020002;
  static const PARAFORMAT_SHADING_STYLE_DARK_DOWN_DIAG = 0x10020003;
  static const PARAFORMAT_SHADING_STYLE_DARK_UP_DIAG = 0x00020004;
  static const PARAFORMAT_SHADING_STYLE_DARK_GRID = 0x06020005;
  static const PARAFORMAT_SHADING_STYLE_DARK_TRELLIS = 0x20140006;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_HORZ = 0x08020007;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_VERT = 0x09020008;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_DOWN_DIAG = 0x0a020009;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_UP_DIAG = 0x0b02000a;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_GRID = 0x0c02000b;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_TRELLIS = 0x0d02000c;
}

/// {@category Enum}
class REOBJECT_FLAGS {
  static const REO_ALIGNTORIGHT = 0x00000100;
  static const REO_BELOWBASELINE = 0x00000002;
  static const REO_BLANK = 0x00000010;
  static const REO_CANROTATE = 0x00000080;
  static const REO_DONTNEEDPALETTE = 0x00000020;
  static const REO_DYNAMICSIZE = 0x00000008;
  static const REO_GETMETAFILE = 0x00400000;
  static const REO_HILITED = 0x01000000;
  static const REO_INPLACEACTIVE = 0x02000000;
  static const REO_INVERTEDSELECT = 0x00000004;
  static const REO_LINK = 0x80000000;
  static const REO_LINKAVAILABLE = 0x00800000;
  static const REO_OPEN = 0x04000000;
  static const REO_OWNERDRAWSELECT = 0x00000040;
  static const REO_RESIZABLE = 0x00000001;
  static const REO_SELECTED = 0x08000000;
  static const REO_STATIC = 0x40000000;
  static const REO_USEASBACKGROUND = 0x00000400;
  static const REO_WRAPTEXTAROUND = 0x00000200;
}

/// {@category Enum}
class RICH_EDIT_GET_CONTEXT_MENU_SEL_TYPE {
  static const SEL_EMPTY = 0x62020000;
  static const SEL_TEXT = 0x02020001;
  static const SEL_OBJECT = 0x04020002;
  static const SEL_MULTICHAR = 0x00020004;
  static const SEL_MULTIOBJECT = 0x09020008;
  static const GCM_RIGHTMOUSEDROP = 0x06048000;
}

/// {@category Enum}
class RICH_EDIT_GET_OBJECT_FLAGS {
  static const REO_GETOBJ_POLEOBJ = 0x00000001;
  static const REO_GETOBJ_PSTG = 0x00000002;
  static const REO_GETOBJ_POLESITE = 0x00000004;
  static const REO_GETOBJ_NO_INTERFACES = 0x00000000;
  static const REO_GETOBJ_ALL_INTERFACES = 0x00000007;
}

/// {@category Enum}
class TEXTMODE {
  static const TM_PLAINTEXT = 0x00000001;
  static const TM_RICHTEXT = 0x00000002;
  static const TM_SINGLELEVELUNDO = 0x00000004;
  static const TM_MULTILEVELUNDO = 0x00000008;
  static const TM_SINGLECODEPAGE = 0x00000010;
  static const TM_MULTICODEPAGE = 0x00000020;
}

/// {@category Enum}
class TXTBACKSTYLE {
  static const TXTBACK_TRANSPARENT = 0x00000000;
  static const TXTBACK_OPAQUE = 0x00000001;
}

/// {@category Enum}
class TXTHITRESULT {
  static const TXTHITRESULT_NOHIT = 0x00000000;
  static const TXTHITRESULT_TRANSPARENT = 0x00000001;
  static const TXTHITRESULT_CLOSE = 0x00000002;
  static const TXTHITRESULT_HIT = 0x00000003;
}

/// {@category Enum}
class TXTNATURALSIZE {
  static const TXTNS_FITTOCONTENT2 = 0x00000000;
  static const TXTNS_FITTOCONTENT = 0x00000001;
  static const TXTNS_ROUNDTOLINE = 0x00000002;
  static const TXTNS_FITTOCONTENT3 = 0x00000003;
  static const TXTNS_FITTOCONTENTWSP = 0x00000004;
  static const TXTNS_INCLUDELASTLINE = 0x40000000;
  static const TXTNS_EMU = 0x80000000;
}

/// {@category Enum}
class TXTVIEW {
  static const TXTVIEW_ACTIVE = 0x00000000;
  static const TXTVIEW_INACTIVE = 0xffffffff;
}

/// {@category Enum}
class UNDONAMEID {
  static const UID_UNKNOWN = 0x00000000;
  static const UID_TYPING = 0x00000001;
  static const UID_DELETE = 0x00000002;
  static const UID_DRAGDROP = 0x00000003;
  static const UID_CUT = 0x00000004;
  static const UID_PASTE = 0x00000005;
  static const UID_AUTOTABLE = 0x00000006;
}

/// {@category Enum}
class tomConstants {
  static const tomFalse = 0x00000000;
  static const tomTrue = 0xffffffff;
  static const tomUndefined = 0xff676981;
  static const tomToggle = 0xff676982;
  static const tomAutoColor = 0xff676983;
  static const tomDefault = 0xff676984;
  static const tomSuspend = 0xff676985;
  static const tomResume = 0xff676986;
  static const tomApplyNow = 0x00000000;
  static const tomApplyLater = 0x00000001;
  static const tomTrackParms = 0x00000002;
  static const tomCacheParms = 0x00000003;
  static const tomApplyTmp = 0x00000004;
  static const tomDisableSmartFont = 0x00000008;
  static const tomEnableSmartFont = 0x00000009;
  static const tomUsePoints = 0x0000000a;
  static const tomUseTwips = 0x0000000b;
  static const tomBackward = 0xc0000001;
  static const tomForward = 0x3fffffff;
  static const tomMove = 0x00000000;
  static const tomExtend = 0x00000001;
  static const tomNoSelection = 0x00000000;
  static const tomSelectionIP = 0x00000001;
  static const tomSelectionNormal = 0x00000002;
  static const tomSelectionFrame = 0x00000003;
  static const tomSelectionColumn = 0x00000004;
  static const tomSelectionRow = 0x00000005;
  static const tomSelectionBlock = 0x00000006;
  static const tomSelectionInlineShape = 0x00000007;
  static const tomSelectionShape = 0x00000008;
  static const tomSelStartActive = 0x00000001;
  static const tomSelAtEOL = 0x00000002;
  static const tomSelOvertype = 0x00000004;
  static const tomSelActive = 0x00000008;
  static const tomSelReplace = 0x00000010;
  static const tomEnd = 0x00000000;
  static const tomStart = 0x00000020;
  static const tomCollapseEnd = 0x00000000;
  static const tomCollapseStart = 0x00000001;
  static const tomClientCoord = 0x00000100;
  static const tomAllowOffClient = 0x00000200;
  static const tomTransform = 0x00000400;
  static const tomObjectArg = 0x00000800;
  static const tomAtEnd = 0x00001000;
  static const tomNone = 0x00000000;
  static const tomSingle = 0x00000001;
  static const tomWords = 0x00000002;
  static const tomDouble = 0x00000003;
  static const tomDotted = 0x00000004;
  static const tomDash = 0x00000005;
  static const tomDashDot = 0x00000006;
  static const tomDashDotDot = 0x00000007;
  static const tomWave = 0x00000008;
  static const tomThick = 0x00000009;
  static const tomHair = 0x0000000a;
  static const tomDoubleWave = 0x0000000b;
  static const tomHeavyWave = 0x0000000c;
  static const tomLongDash = 0x0000000d;
  static const tomThickDash = 0x0000000e;
  static const tomThickDashDot = 0x0000000f;
  static const tomThickDashDotDot = 0x00000010;
  static const tomThickDotted = 0x00000011;
  static const tomThickLongDash = 0x00000012;
  static const tomLineSpaceSingle = 0x00000000;
  static const tomLineSpace1pt5 = 0x00000001;
  static const tomLineSpaceDouble = 0x00000002;
  static const tomLineSpaceAtLeast = 0x00000003;
  static const tomLineSpaceExactly = 0x00000004;
  static const tomLineSpaceMultiple = 0x00000005;
  static const tomLineSpacePercent = 0x00000006;
  static const tomAlignLeft = 0x00000000;
  static const tomAlignCenter = 0x00000001;
  static const tomAlignRight = 0x00000002;
  static const tomAlignJustify = 0x00000003;
  static const tomAlignDecimal = 0x00000003;
  static const tomAlignBar = 0x00000004;
  static const tomDefaultTab = 0x00000005;
  static const tomAlignInterWord = 0x00000003;
  static const tomAlignNewspaper = 0x00000004;
  static const tomAlignInterLetter = 0x00000005;
  static const tomAlignScaled = 0x00000006;
  static const tomSpaces = 0x00000000;
  static const tomDots = 0x00000001;
  static const tomDashes = 0x00000002;
  static const tomLines = 0x00000003;
  static const tomThickLines = 0x00000004;
  static const tomEquals = 0x00000005;
  static const tomTabBack = 0xfffffffd;
  static const tomTabNext = 0xfffffffe;
  static const tomTabHere = 0xffffffff;
  static const tomListNone = 0x00000000;
  static const tomListBullet = 0x00000001;
  static const tomListNumberAsArabic = 0x00000002;
  static const tomListNumberAsLCLetter = 0x00000003;
  static const tomListNumberAsUCLetter = 0x00000004;
  static const tomListNumberAsLCRoman = 0x00000005;
  static const tomListNumberAsUCRoman = 0x00000006;
  static const tomListNumberAsSequence = 0x00000007;
  static const tomListNumberedCircle = 0x00000008;
  static const tomListNumberedBlackCircleWingding = 0x00000009;
  static const tomListNumberedWhiteCircleWingding = 0x0000000a;
  static const tomListNumberedArabicWide = 0x0000000b;
  static const tomListNumberedChS = 0x0000000c;
  static const tomListNumberedChT = 0x0000000d;
  static const tomListNumberedJpnChS = 0x0000000e;
  static const tomListNumberedJpnKor = 0x0000000f;
  static const tomListNumberedArabic1 = 0x00000010;
  static const tomListNumberedArabic2 = 0x00000011;
  static const tomListNumberedHebrew = 0x00000012;
  static const tomListNumberedThaiAlpha = 0x00000013;
  static const tomListNumberedThaiNum = 0x00000014;
  static const tomListNumberedHindiAlpha = 0x00000015;
  static const tomListNumberedHindiAlpha1 = 0x00000016;
  static const tomListNumberedHindiNum = 0x00000017;
  static const tomListParentheses = 0x00010000;
  static const tomListPeriod = 0x00020000;
  static const tomListPlain = 0x00030000;
  static const tomListNoNumber = 0x00040000;
  static const tomListMinus = 0x00080000;
  static const tomIgnoreNumberStyle = 0x01000000;
  static const tomParaStyleNormal = 0xffffffff;
  static const tomParaStyleHeading1 = 0xfffffffe;
  static const tomParaStyleHeading2 = 0xfffffffd;
  static const tomParaStyleHeading3 = 0xfffffffc;
  static const tomParaStyleHeading4 = 0xfffffffb;
  static const tomParaStyleHeading5 = 0xfffffffa;
  static const tomParaStyleHeading6 = 0xfffffff9;
  static const tomParaStyleHeading7 = 0xfffffff8;
  static const tomParaStyleHeading8 = 0xfffffff7;
  static const tomParaStyleHeading9 = 0xfffffff6;
  static const tomCharacter = 0x00000001;
  static const tomWord = 0x00000002;
  static const tomSentence = 0x00000003;
  static const tomParagraph = 0x00000004;
  static const tomLine = 0x00000005;
  static const tomStory = 0x00000006;
  static const tomScreen = 0x00000007;
  static const tomSection = 0x00000008;
  static const tomTableColumn = 0x00000009;
  static const tomColumn = 0x00000009;
  static const tomRow = 0x0000000a;
  static const tomWindow = 0x0000000b;
  static const tomCell = 0x0000000c;
  static const tomCharFormat = 0x0000000d;
  static const tomParaFormat = 0x0000000e;
  static const tomTable = 0x0000000f;
  static const tomObject = 0x00000010;
  static const tomPage = 0x00000011;
  static const tomHardParagraph = 0x00000012;
  static const tomCluster = 0x00000013;
  static const tomInlineObject = 0x00000014;
  static const tomInlineObjectArg = 0x00000015;
  static const tomLeafLine = 0x00000016;
  static const tomLayoutColumn = 0x00000017;
  static const tomProcessId = 0x40000001;
  static const tomMatchWord = 0x00000002;
  static const tomMatchCase = 0x00000004;
  static const tomMatchPattern = 0x00000008;
  static const tomUnknownStory = 0x00000000;
  static const tomMainTextStory = 0x00000001;
  static const tomFootnotesStory = 0x00000002;
  static const tomEndnotesStory = 0x00000003;
  static const tomCommentsStory = 0x00000004;
  static const tomTextFrameStory = 0x00000005;
  static const tomEvenPagesHeaderStory = 0x00000006;
  static const tomPrimaryHeaderStory = 0x00000007;
  static const tomEvenPagesFooterStory = 0x00000008;
  static const tomPrimaryFooterStory = 0x00000009;
  static const tomFirstPageHeaderStory = 0x0000000a;
  static const tomFirstPageFooterStory = 0x0000000b;
  static const tomScratchStory = 0x0000007f;
  static const tomFindStory = 0x00000080;
  static const tomReplaceStory = 0x00000081;
  static const tomStoryInactive = 0x00000000;
  static const tomStoryActiveDisplay = 0x00000001;
  static const tomStoryActiveUI = 0x00000002;
  static const tomStoryActiveDisplayUI = 0x00000003;
  static const tomNoAnimation = 0x00000000;
  static const tomLasVegasLights = 0x00000001;
  static const tomBlinkingBackground = 0x00000002;
  static const tomSparkleText = 0x00000003;
  static const tomMarchingBlackAnts = 0x00000004;
  static const tomMarchingRedAnts = 0x00000005;
  static const tomShimmer = 0x00000006;
  static const tomWipeDown = 0x00000007;
  static const tomWipeRight = 0x00000008;
  static const tomAnimationMax = 0x00000008;
  static const tomLowerCase = 0x00000000;
  static const tomUpperCase = 0x00000001;
  static const tomTitleCase = 0x00000002;
  static const tomSentenceCase = 0x00000004;
  static const tomToggleCase = 0x00000005;
  static const tomReadOnly = 0x00000100;
  static const tomShareDenyRead = 0x00000200;
  static const tomShareDenyWrite = 0x00000400;
  static const tomPasteFile = 0x00001000;
  static const tomCreateNew = 0x00000010;
  static const tomCreateAlways = 0x00000020;
  static const tomOpenExisting = 0x00000030;
  static const tomOpenAlways = 0x00000040;
  static const tomTruncateExisting = 0x00000050;
  static const tomRTF = 0x00000001;
  static const tomText = 0x00000002;
  static const tomHTML = 0x00000003;
  static const tomWordDocument = 0x00000004;
  static const tomBold = 0x80000001;
  static const tomItalic = 0x80000002;
  static const tomUnderline = 0x80000004;
  static const tomStrikeout = 0x80000008;
  static const tomProtected = 0x80000010;
  static const tomLink = 0x80000020;
  static const tomSmallCaps = 0x80000040;
  static const tomAllCaps = 0x80000080;
  static const tomHidden = 0x80000100;
  static const tomOutline = 0x80000200;
  static const tomShadow = 0x80000400;
  static const tomEmboss = 0x80000800;
  static const tomImprint = 0x80001000;
  static const tomDisabled = 0x80002000;
  static const tomRevised = 0x80004000;
  static const tomSubscriptCF = 0x80010000;
  static const tomSuperscriptCF = 0x80020000;
  static const tomFontBound = 0x80100000;
  static const tomLinkProtected = 0x80800000;
  static const tomInlineObjectStart = 0x81000000;
  static const tomExtendedChar = 0x82000000;
  static const tomAutoBackColor = 0x84000000;
  static const tomMathZoneNoBuildUp = 0x88000000;
  static const tomMathZone = 0x90000000;
  static const tomMathZoneOrdinary = 0xa0000000;
  static const tomAutoTextColor = 0xc0000000;
  static const tomMathZoneDisplay = 0x00040000;
  static const tomParaEffectRTL = 0x00000001;
  static const tomParaEffectKeep = 0x00000002;
  static const tomParaEffectKeepNext = 0x00000004;
  static const tomParaEffectPageBreakBefore = 0x00000008;
  static const tomParaEffectNoLineNumber = 0x00000010;
  static const tomParaEffectNoWidowControl = 0x00000020;
  static const tomParaEffectDoNotHyphen = 0x00000040;
  static const tomParaEffectSideBySide = 0x00000080;
  static const tomParaEffectCollapsed = 0x00000100;
  static const tomParaEffectOutlineLevel = 0x00000200;
  static const tomParaEffectBox = 0x00000400;
  static const tomParaEffectTableRowDelimiter = 0x00001000;
  static const tomParaEffectTable = 0x00004000;
  static const tomModWidthPairs = 0x00000001;
  static const tomModWidthSpace = 0x00000002;
  static const tomAutoSpaceAlpha = 0x00000004;
  static const tomAutoSpaceNumeric = 0x00000008;
  static const tomAutoSpaceParens = 0x00000010;
  static const tomEmbeddedFont = 0x00000020;
  static const tomDoublestrike = 0x00000040;
  static const tomOverlapping = 0x00000080;
  static const tomNormalCaret = 0x00000000;
  static const tomKoreanBlockCaret = 0x00000001;
  static const tomNullCaret = 0x00000002;
  static const tomIncludeInset = 0x00000001;
  static const tomUnicodeBiDi = 0x00000001;
  static const tomMathCFCheck = 0x00000004;
  static const tomUnlink = 0x00000008;
  static const tomUnhide = 0x00000010;
  static const tomCheckTextLimit = 0x00000020;
  static const tomIgnoreCurrentFont = 0x00000000;
  static const tomMatchCharRep = 0x00000001;
  static const tomMatchFontSignature = 0x00000002;
  static const tomMatchAscii = 0x00000004;
  static const tomGetHeightOnly = 0x00000008;
  static const tomMatchMathFont = 0x00000010;
  static const tomCharset = 0x80000000;
  static const tomCharRepFromLcid = 0x40000000;
  static const tomAnsi = 0x00000000;
  static const tomEastEurope = 0x00000001;
  static const tomCyrillic = 0x00000002;
  static const tomGreek = 0x00000003;
  static const tomTurkish = 0x00000004;
  static const tomHebrew = 0x00000005;
  static const tomArabic = 0x00000006;
  static const tomBaltic = 0x00000007;
  static const tomVietnamese = 0x00000008;
  static const tomDefaultCharRep = 0x00000009;
  static const tomSymbol = 0x0000000a;
  static const tomThai = 0x0000000b;
  static const tomShiftJIS = 0x0000000c;
  static const tomGB2312 = 0x0000000d;
  static const tomHangul = 0x0000000e;
  static const tomBIG5 = 0x0000000f;
  static const tomPC437 = 0x00000010;
  static const tomOEM = 0x00000011;
  static const tomMac = 0x00000012;
  static const tomArmenian = 0x00000013;
  static const tomSyriac = 0x00000014;
  static const tomThaana = 0x00000015;
  static const tomDevanagari = 0x00000016;
  static const tomBengali = 0x00000017;
  static const tomGurmukhi = 0x00000018;
  static const tomGujarati = 0x00000019;
  static const tomOriya = 0x0000001a;
  static const tomTamil = 0x0000001b;
  static const tomTelugu = 0x0000001c;
  static const tomKannada = 0x0000001d;
  static const tomMalayalam = 0x0000001e;
  static const tomSinhala = 0x0000001f;
  static const tomLao = 0x00000020;
  static const tomTibetan = 0x00000021;
  static const tomMyanmar = 0x00000022;
  static const tomGeorgian = 0x00000023;
  static const tomJamo = 0x00000024;
  static const tomEthiopic = 0x00000025;
  static const tomCherokee = 0x00000026;
  static const tomAboriginal = 0x00000027;
  static const tomOgham = 0x00000028;
  static const tomRunic = 0x00000029;
  static const tomKhmer = 0x0000002a;
  static const tomMongolian = 0x0000002b;
  static const tomBraille = 0x0000002c;
  static const tomYi = 0x0000002d;
  static const tomLimbu = 0x0000002e;
  static const tomTaiLe = 0x0000002f;
  static const tomNewTaiLue = 0x00000030;
  static const tomSylotiNagri = 0x00000031;
  static const tomKharoshthi = 0x00000032;
  static const tomKayahli = 0x00000033;
  static const tomUsymbol = 0x00000034;
  static const tomEmoji = 0x00000035;
  static const tomGlagolitic = 0x00000036;
  static const tomLisu = 0x00000037;
  static const tomVai = 0x00000038;
  static const tomNKo = 0x00000039;
  static const tomOsmanya = 0x0000003a;
  static const tomPhagsPa = 0x0000003b;
  static const tomGothic = 0x0000003c;
  static const tomDeseret = 0x0000003d;
  static const tomTifinagh = 0x0000003e;
  static const tomCharRepMax = 0x0000003f;
  static const tomRE10Mode = 0x00000001;
  static const tomUseAtFont = 0x00000002;
  static const tomTextFlowMask = 0x0000000c;
  static const tomTextFlowES = 0x00000000;
  static const tomTextFlowSW = 0x00000004;
  static const tomTextFlowWN = 0x00000008;
  static const tomTextFlowNE = 0x0000000c;
  static const tomNoIME = 0x00080000;
  static const tomSelfIME = 0x00040000;
  static const tomNoUpScroll = 0x00010000;
  static const tomNoVpScroll = 0x00040000;
  static const tomNoLink = 0x00000000;
  static const tomClientLink = 0x00000001;
  static const tomFriendlyLinkName = 0x00000002;
  static const tomFriendlyLinkAddress = 0x00000003;
  static const tomAutoLinkURL = 0x00000004;
  static const tomAutoLinkEmail = 0x00000005;
  static const tomAutoLinkPhone = 0x00000006;
  static const tomAutoLinkPath = 0x00000007;
  static const tomCompressNone = 0x00000000;
  static const tomCompressPunctuation = 0x00000001;
  static const tomCompressPunctuationAndKana = 0x00000002;
  static const tomCompressMax = 0x00000002;
  static const tomUnderlinePositionAuto = 0x00000000;
  static const tomUnderlinePositionBelow = 0x00000001;
  static const tomUnderlinePositionAbove = 0x00000002;
  static const tomUnderlinePositionMax = 0x00000002;
  static const tomFontAlignmentAuto = 0x00000000;
  static const tomFontAlignmentTop = 0x00000001;
  static const tomFontAlignmentBaseline = 0x00000002;
  static const tomFontAlignmentBottom = 0x00000003;
  static const tomFontAlignmentCenter = 0x00000004;
  static const tomFontAlignmentMax = 0x00000004;
  static const tomRubyBelow = 0x00000080;
  static const tomRubyAlignCenter = 0x00000000;
  static const tomRubyAlign010 = 0x00000001;
  static const tomRubyAlign121 = 0x00000002;
  static const tomRubyAlignLeft = 0x00000003;
  static const tomRubyAlignRight = 0x00000004;
  static const tomLimitsDefault = 0x00000000;
  static const tomLimitsUnderOver = 0x00000001;
  static const tomLimitsSubSup = 0x00000002;
  static const tomUpperLimitAsSuperScript = 0x00000003;
  static const tomLimitsOpposite = 0x00000004;
  static const tomShowLLimPlaceHldr = 0x00000008;
  static const tomShowULimPlaceHldr = 0x00000010;
  static const tomDontGrowWithContent = 0x00000040;
  static const tomGrowWithContent = 0x00000080;
  static const tomSubSupAlign = 0x00000001;
  static const tomLimitAlignMask = 0x00000003;
  static const tomLimitAlignCenter = 0x00000000;
  static const tomLimitAlignLeft = 0x00000001;
  static const tomLimitAlignRight = 0x00000002;
  static const tomShowDegPlaceHldr = 0x00000008;
  static const tomAlignDefault = 0x00000000;
  static const tomAlignMatchAscentDescent = 0x00000002;
  static const tomMathVariant = 0x00000020;
  static const tomStyleDefault = 0x00000000;
  static const tomStyleScriptScriptCramped = 0x00000001;
  static const tomStyleScriptScript = 0x00000002;
  static const tomStyleScriptCramped = 0x00000003;
  static const tomStyleScript = 0x00000004;
  static const tomStyleTextCramped = 0x00000005;
  static const tomStyleText = 0x00000006;
  static const tomStyleDisplayCramped = 0x00000007;
  static const tomStyleDisplay = 0x00000008;
  static const tomMathRelSize = 0x00000040;
  static const tomDecDecSize = 0x000000fe;
  static const tomDecSize = 0x000000ff;
  static const tomIncSize = 0x00000041;
  static const tomIncIncSize = 0x00000042;
  static const tomGravityUI = 0x00000000;
  static const tomGravityBack = 0x00000001;
  static const tomGravityFore = 0x00000002;
  static const tomGravityIn = 0x00000003;
  static const tomGravityOut = 0x00000004;
  static const tomGravityBackward = 0x20000000;
  static const tomGravityForward = 0x40000000;
  static const tomAdjustCRLF = 0x00000001;
  static const tomUseCRLF = 0x00000002;
  static const tomTextize = 0x00000004;
  static const tomAllowFinalEOP = 0x00000008;
  static const tomFoldMathAlpha = 0x00000010;
  static const tomNoHidden = 0x00000020;
  static const tomIncludeNumbering = 0x00000040;
  static const tomTranslateTableCell = 0x00000080;
  static const tomNoMathZoneBrackets = 0x00000100;
  static const tomConvertMathChar = 0x00000200;
  static const tomNoUCGreekItalic = 0x00000400;
  static const tomAllowMathBold = 0x00000800;
  static const tomLanguageTag = 0x00001000;
  static const tomConvertRTF = 0x00002000;
  static const tomApplyRtfDocProps = 0x00004000;
  static const tomPhantomShow = 0x00000001;
  static const tomPhantomZeroWidth = 0x00000002;
  static const tomPhantomZeroAscent = 0x00000004;
  static const tomPhantomZeroDescent = 0x00000008;
  static const tomPhantomTransparent = 0x00000010;
  static const tomPhantomASmash = 0x00000005;
  static const tomPhantomDSmash = 0x00000009;
  static const tomPhantomHSmash = 0x00000003;
  static const tomPhantomSmash = 0x0000000d;
  static const tomPhantomHorz = 0x0000000c;
  static const tomPhantomVert = 0x00000002;
  static const tomBoxHideTop = 0x00000001;
  static const tomBoxHideBottom = 0x00000002;
  static const tomBoxHideLeft = 0x00000004;
  static const tomBoxHideRight = 0x00000008;
  static const tomBoxStrikeH = 0x00000010;
  static const tomBoxStrikeV = 0x00000020;
  static const tomBoxStrikeTLBR = 0x00000040;
  static const tomBoxStrikeBLTR = 0x00000080;
  static const tomBoxAlignCenter = 0x00000001;
  static const tomSpaceMask = 0x0000001c;
  static const tomSpaceDefault = 0x00000000;
  static const tomSpaceUnary = 0x00000004;
  static const tomSpaceBinary = 0x00000008;
  static const tomSpaceRelational = 0x0000000c;
  static const tomSpaceSkip = 0x00000010;
  static const tomSpaceOrd = 0x00000014;
  static const tomSpaceDifferential = 0x00000018;
  static const tomSizeText = 0x00000020;
  static const tomSizeScript = 0x00000040;
  static const tomSizeScriptScript = 0x00000060;
  static const tomNoBreak = 0x00000080;
  static const tomTransparentForPositioning = 0x00000100;
  static const tomTransparentForSpacing = 0x00000200;
  static const tomStretchCharBelow = 0x00000000;
  static const tomStretchCharAbove = 0x00000001;
  static const tomStretchBaseBelow = 0x00000002;
  static const tomStretchBaseAbove = 0x00000003;
  static const tomMatrixAlignMask = 0x00000003;
  static const tomMatrixAlignCenter = 0x00000000;
  static const tomMatrixAlignTopRow = 0x00000001;
  static const tomMatrixAlignBottomRow = 0x00000003;
  static const tomShowMatPlaceHldr = 0x00000008;
  static const tomEqArrayLayoutWidth = 0x00000001;
  static const tomEqArrayAlignMask = 0x0000000c;
  static const tomEqArrayAlignCenter = 0x00000000;
  static const tomEqArrayAlignTopRow = 0x00000004;
  static const tomEqArrayAlignBottomRow = 0x0000000c;
  static const tomMathManualBreakMask = 0x0000007f;
  static const tomMathBreakLeft = 0x0000007d;
  static const tomMathBreakCenter = 0x0000007e;
  static const tomMathBreakRight = 0x0000007f;
  static const tomMathEqAlign = 0x00000080;
  static const tomMathArgShadingStart = 0x00000251;
  static const tomMathArgShadingEnd = 0x00000252;
  static const tomMathObjShadingStart = 0x00000253;
  static const tomMathObjShadingEnd = 0x00000254;
  static const tomFunctionTypeNone = 0x00000000;
  static const tomFunctionTypeTakesArg = 0x00000001;
  static const tomFunctionTypeTakesLim = 0x00000002;
  static const tomFunctionTypeTakesLim2 = 0x00000003;
  static const tomFunctionTypeIsLim = 0x00000004;
  static const tomMathParaAlignDefault = 0x00000000;
  static const tomMathParaAlignCenterGroup = 0x00000001;
  static const tomMathParaAlignCenter = 0x00000002;
  static const tomMathParaAlignLeft = 0x00000003;
  static const tomMathParaAlignRight = 0x00000004;
  static const tomMathDispAlignMask = 0x00000003;
  static const tomMathDispAlignCenterGroup = 0x00000000;
  static const tomMathDispAlignCenter = 0x00000001;
  static const tomMathDispAlignLeft = 0x00000002;
  static const tomMathDispAlignRight = 0x00000003;
  static const tomMathDispIntUnderOver = 0x00000004;
  static const tomMathDispFracTeX = 0x00000008;
  static const tomMathDispNaryGrow = 0x00000010;
  static const tomMathDocEmptyArgMask = 0x00000060;
  static const tomMathDocEmptyArgAuto = 0x00000000;
  static const tomMathDocEmptyArgAlways = 0x00000020;
  static const tomMathDocEmptyArgNever = 0x00000040;
  static const tomMathDocSbSpOpUnchanged = 0x00000080;
  static const tomMathDocDiffMask = 0x00000300;
  static const tomMathDocDiffDefault = 0x00000000;
  static const tomMathDocDiffUpright = 0x00000100;
  static const tomMathDocDiffItalic = 0x00000200;
  static const tomMathDocDiffOpenItalic = 0x00000300;
  static const tomMathDispNarySubSup = 0x00000400;
  static const tomMathDispDef = 0x00000800;
  static const tomMathEnableRtl = 0x00001000;
  static const tomMathBrkBinMask = 0x00030000;
  static const tomMathBrkBinBefore = 0x00000000;
  static const tomMathBrkBinAfter = 0x00010000;
  static const tomMathBrkBinDup = 0x00020000;
  static const tomMathBrkBinSubMask = 0x000c0000;
  static const tomMathBrkBinSubMM = 0x00000000;
  static const tomMathBrkBinSubPM = 0x00040000;
  static const tomMathBrkBinSubMP = 0x00080000;
  static const tomSelRange = 0x00000255;
  static const tomHstring = 0x00000254;
  static const tomFontPropTeXStyle = 0x0000033c;
  static const tomFontPropAlign = 0x0000033d;
  static const tomFontStretch = 0x0000033e;
  static const tomFontStyle = 0x0000033f;
  static const tomFontStyleUpright = 0x00000000;
  static const tomFontStyleOblique = 0x00000001;
  static const tomFontStyleItalic = 0x00000002;
  static const tomFontStretchDefault = 0x00000000;
  static const tomFontStretchUltraCondensed = 0x00000001;
  static const tomFontStretchExtraCondensed = 0x00000002;
  static const tomFontStretchCondensed = 0x00000003;
  static const tomFontStretchSemiCondensed = 0x00000004;
  static const tomFontStretchNormal = 0x00000005;
  static const tomFontStretchSemiExpanded = 0x00000006;
  static const tomFontStretchExpanded = 0x00000007;
  static const tomFontStretchExtraExpanded = 0x00000008;
  static const tomFontStretchUltraExpanded = 0x00000009;
  static const tomFontWeightDefault = 0x00000000;
  static const tomFontWeightThin = 0x00000064;
  static const tomFontWeightExtraLight = 0x000000c8;
  static const tomFontWeightLight = 0x0000012c;
  static const tomFontWeightNormal = 0x00000190;
  static const tomFontWeightRegular = 0x00000190;
  static const tomFontWeightMedium = 0x000001f4;
  static const tomFontWeightSemiBold = 0x00000258;
  static const tomFontWeightBold = 0x000002bc;
  static const tomFontWeightExtraBold = 0x00000320;
  static const tomFontWeightBlack = 0x00000384;
  static const tomFontWeightHeavy = 0x00000384;
  static const tomFontWeightExtraBlack = 0x000003b6;
  static const tomParaPropMathAlign = 0x00000437;
  static const tomDocMathBuild = 0x00000080;
  static const tomMathLMargin = 0x00000081;
  static const tomMathRMargin = 0x00000082;
  static const tomMathWrapIndent = 0x00000083;
  static const tomMathWrapRight = 0x00000084;
  static const tomMathPostSpace = 0x00000086;
  static const tomMathPreSpace = 0x00000085;
  static const tomMathInterSpace = 0x00000087;
  static const tomMathIntraSpace = 0x00000088;
  static const tomCanCopy = 0x00000089;
  static const tomCanRedo = 0x0000008a;
  static const tomCanUndo = 0x0000008b;
  static const tomUndoLimit = 0x0000008c;
  static const tomDocAutoLink = 0x0000008d;
  static const tomEllipsisMode = 0x0000008e;
  static const tomEllipsisState = 0x0000008f;
  static const tomEllipsisNone = 0x00000000;
  static const tomEllipsisEnd = 0x00000001;
  static const tomEllipsisWord = 0x00000003;
  static const tomEllipsisPresent = 0x00000001;
  static const tomVTopCell = 0x00000001;
  static const tomVLowCell = 0x00000002;
  static const tomHStartCell = 0x00000004;
  static const tomHContCell = 0x00000008;
  static const tomRowUpdate = 0x00000001;
  static const tomRowApplyDefault = 0x00000000;
  static const tomCellStructureChangeOnly = 0x00000001;
  static const tomRowHeightActual = 0x0000080b;
}
