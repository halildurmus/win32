/// {@category Enum}
class BGTYPE {
  static const BT_IMAGEFILE = 0x00000000;
  static const BT_BORDERFILL = 0x00000001;
  static const BT_NONE = 0x00000002;
}

/// {@category Enum}
class BORDERTYPE {
  static const BT_RECT = 0x00000000;
  static const BT_ROUNDRECT = 0x00000001;
  static const BT_ELLIPSE = 0x00000002;
}

/// {@category Enum}
class BP_ANIMATIONSTYLE {
  static const BPAS_NONE = 0x00000000;
  static const BPAS_LINEAR = 0x00000001;
  static const BPAS_CUBIC = 0x00000002;
  static const BPAS_SINE = 0x00000003;
}

/// {@category Enum}
class BP_BUFFERFORMAT {
  static const BPBF_COMPATIBLEBITMAP = 0x00000000;
  static const BPBF_DIB = 0x00000001;
  static const BPBF_TOPDOWNDIB = 0x00000002;
  static const BPBF_TOPDOWNMONODIB = 0x00000003;
}

/// {@category Enum}
class BP_PAINTPARAMS_FLAGS {
  static const BPPF_ERASE = 0x00000001;
  static const BPPF_NOCLIP = 0x00000002;
  static const BPPF_NONCLIENT = 0x00000004;
}

/// {@category Enum}
class BUTTON_IMAGELIST_ALIGN {
  static const BUTTON_IMAGELIST_ALIGN_LEFT = 0x00000000;
  static const BUTTON_IMAGELIST_ALIGN_RIGHT = 0x00000001;
  static const BUTTON_IMAGELIST_ALIGN_TOP = 0x00000002;
  static const BUTTON_IMAGELIST_ALIGN_BOTTOM = 0x00000003;
  static const BUTTON_IMAGELIST_ALIGN_CENTER = 0x00000004;
}

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
  static const CFM_SUPERSCRIPT = 0x00030000;
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
class CLOCKPARTS {
  static const CLP_TIME = 0x00000001;
}

/// {@category Enum}
class CLOCKSTATES {
  static const CLS_NORMAL = 0x00000001;
  static const CLS_HOT = 0x00000002;
  static const CLS_PRESSED = 0x00000003;
}

/// {@category Enum}
class COMBOBOXINFO_BUTTON_STATE {
  static const STATE_SYSTEM_INVISIBLE = 0x00008000;
  static const STATE_SYSTEM_PRESSED = 0x00000008;
  static const STATE_SYSTEM_FOCUSABLE = 0x00100000;
  static const STATE_SYSTEM_OFFSCREEN = 0x00010000;
  static const STATE_SYSTEM_UNAVAILABLE = 0x00000001;
}

/// {@category Enum}
class COMBOBOX_EX_ITEM_FLAGS {
  static const CBEIF_DI_SETITEM = 0x10000000;
  static const CBEIF_IMAGE = 0x00000002;
  static const CBEIF_INDENT = 0x00000010;
  static const CBEIF_LPARAM = 0x00000020;
  static const CBEIF_OVERLAY = 0x00000008;
  static const CBEIF_SELECTEDIMAGE = 0x00000004;
  static const CBEIF_TEXT = 0x00000001;
}

/// {@category Enum}
class CONTENTALIGNMENT {
  static const CA_LEFT = 0x00000000;
  static const CA_CENTER = 0x00000001;
  static const CA_RIGHT = 0x00000002;
}

/// {@category Enum}
class DLG_BUTTON_CHECK_STATE {
  static const BST_CHECKED = 0x00000001;
  static const BST_INDETERMINATE = 0x00000002;
  static const BST_UNCHECKED = 0x00000000;
}

/// {@category Enum}
class DLG_DIR_LIST_FILE_TYPE {
  static const DDL_ARCHIVE = 0x00000020;
  static const DDL_DIRECTORY = 0x00000010;
  static const DDL_DRIVES = 0x00004000;
  static const DDL_EXCLUSIVE = 0x00008000;
  static const DDL_HIDDEN = 0x00000002;
  static const DDL_READONLY = 0x00000001;
  static const DDL_READWRITE = 0x00000000;
  static const DDL_SYSTEM = 0x00000004;
  static const DDL_POSTMSGS = 0x00002000;
}

/// {@category Enum}
class DPAMM_MESSAGE {
  static const DPAMM_MERGE = 0x00000001;
  static const DPAMM_DELETE = 0x00000002;
  static const DPAMM_INSERT = 0x00000003;
}

/// {@category Enum}
class DRAGLISTINFO_NOTIFICATION_FLAGS {
  static const DL_BEGINDRAG = 0x00000485;
  static const DL_CANCELDRAG = 0x00000488;
  static const DL_DRAGGING = 0x00000486;
  static const DL_DROPPED = 0x00000487;
}

/// {@category Enum}
class DRAWITEMSTRUCT_CTL_TYPE {
  static const ODT_BUTTON = 0x00000004;
  static const ODT_COMBOBOX = 0x00000003;
  static const ODT_LISTBOX = 0x00000002;
  static const ODT_LISTVIEW = 0x00000066;
  static const ODT_MENU = 0x00000001;
  static const ODT_STATIC = 0x00000005;
  static const ODT_TAB = 0x00000065;
}

/// {@category Enum}
class DRAW_THEME_PARENT_BACKGROUND_FLAGS {
  static const DTPB_WINDOWDC = 0x00000001;
  static const DTPB_USECTLCOLORSTATIC = 0x00000002;
  static const DTPB_USEERASEBKGND = 0x00000004;
}

/// {@category Enum}
class EC_ENDOFLINE {
  static const EC_ENDOFLINE_DETECTFROMCONTENT = 0x00000000;
  static const EC_ENDOFLINE_CRLF = 0x00000001;
  static const EC_ENDOFLINE_CR = 0x00000002;
  static const EC_ENDOFLINE_LF = 0x00000003;
}

/// {@category Enum}
class EC_SEARCHWEB_ENTRYPOINT {
  static const EC_SEARCHWEB_ENTRYPOINT_EXTERNAL = 0x00000000;
  static const EC_SEARCHWEB_ENTRYPOINT_CONTEXTMENU = 0x00000001;
}

/// {@category Enum}
class EDITBALLOONTIP_ICON {
  static const TTI_ERROR = 0x00000003;
  static const TTI_INFO = 0x00000001;
  static const TTI_NONE = 0x00000000;
  static const TTI_WARNING = 0x00000002;
  static const TTI_INFO_LARGE = 0x00000004;
  static const TTI_WARNING_LARGE = 0x00000005;
  static const TTI_ERROR_LARGE = 0x00000006;
}

/// {@category Enum}
class EMPTYMARKUPPARTS {
  static const EMP_MARKUPTEXT = 0x00000001;
}

/// {@category Enum}
class ENABLE_SCROLL_BAR_ARROWS {
  static const ESB_DISABLE_BOTH = 0x00000003;
  static const ESB_DISABLE_DOWN = 0x00000002;
  static const ESB_DISABLE_LEFT = 0x00000001;
  static const ESB_DISABLE_LTUP = 0x00000001;
  static const ESB_DISABLE_RIGHT = 0x00000002;
  static const ESB_DISABLE_RTDN = 0x00000002;
  static const ESB_DISABLE_UP = 0x00000001;
  static const ESB_ENABLE_BOTH = 0x00000000;
}

/// {@category Enum}
class ENDCOMPOSITIONNOTIFY_CODE {
  static const ECN_ENDCOMPOSITION = 0x00000001;
  static const ECN_NEWTEXT = 0x00000002;
}

/// {@category Enum}
class FEEDBACK_TYPE {
  static const FEEDBACK_TOUCH_CONTACTVISUALIZATION = 0x00000001;
  static const FEEDBACK_PEN_BARRELVISUALIZATION = 0x00000002;
  static const FEEDBACK_PEN_TAP = 0x00000003;
  static const FEEDBACK_PEN_DOUBLETAP = 0x00000004;
  static const FEEDBACK_PEN_PRESSANDHOLD = 0x00000005;
  static const FEEDBACK_PEN_RIGHTTAP = 0x00000006;
  static const FEEDBACK_TOUCH_TAP = 0x00000007;
  static const FEEDBACK_TOUCH_DOUBLETAP = 0x00000008;
  static const FEEDBACK_TOUCH_PRESSANDHOLD = 0x00000009;
  static const FEEDBACK_TOUCH_RIGHTTAP = 0x0000000a;
  static const FEEDBACK_GESTURE_PRESSANDTAP = 0x0000000b;
  static const FEEDBACK_MAX = 0xffffffff;
}

/// {@category Enum}
class FILLTYPE {
  static const FT_SOLID = 0x00000000;
  static const FT_VERTGRADIENT = 0x00000001;
  static const FT_HORZGRADIENT = 0x00000002;
  static const FT_RADIALGRADIENT = 0x00000003;
  static const FT_TILEIMAGE = 0x00000004;
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
class GET_THEME_BITMAP_FLAGS {
  static const GBF_DIRECT = 0x00000001;
  static const GBF_COPY = 0x00000002;
  static const GBF_VALIDBITS = 0x00000003;
}

/// {@category Enum}
class GLYPHFONTSIZINGTYPE {
  static const GFST_NONE = 0x00000000;
  static const GFST_SIZE = 0x00000001;
  static const GFST_DPI = 0x00000002;
}

/// {@category Enum}
class GLYPHTYPE {
  static const GT_NONE = 0x00000000;
  static const GT_IMAGEGLYPH = 0x00000001;
  static const GT_FONTGLYPH = 0x00000002;
}

/// {@category Enum}
class GRIDCELLBACKGROUNDSTATES {
  static const MCGCB_SELECTED = 0x00000001;
  static const MCGCB_HOT = 0x00000002;
  static const MCGCB_SELECTEDHOT = 0x00000003;
  static const MCGCB_SELECTEDNOTFOCUSED = 0x00000004;
  static const MCGCB_TODAY = 0x00000005;
  static const MCGCB_TODAYSELECTED = 0x00000006;
}

/// {@category Enum}
class GRIDCELLSTATES {
  static const MCGC_HOT = 0x00000001;
  static const MCGC_HASSTATE = 0x00000002;
  static const MCGC_HASSTATEHOT = 0x00000003;
  static const MCGC_TODAY = 0x00000004;
  static const MCGC_TODAYSELECTED = 0x00000005;
  static const MCGC_SELECTED = 0x00000006;
  static const MCGC_SELECTEDHOT = 0x00000007;
}

/// {@category Enum}
class GRIDCELLUPPERSTATES {
  static const MCGCU_HOT = 0x00000001;
  static const MCGCU_HASSTATE = 0x00000002;
  static const MCGCU_HASSTATEHOT = 0x00000003;
  static const MCGCU_SELECTED = 0x00000004;
  static const MCGCU_SELECTEDHOT = 0x00000005;
}

/// {@category Enum}
class HALIGN {
  static const HA_LEFT = 0x00000000;
  static const HA_CENTER = 0x00000001;
  static const HA_RIGHT = 0x00000002;
}

/// {@category Enum}
class HDI_MASK {
  static const HDI_WIDTH = 0x00000001;
  static const HDI_HEIGHT = 0x00000001;
  static const HDI_TEXT = 0x00000002;
  static const HDI_FORMAT = 0x00000004;
  static const HDI_LPARAM = 0x00000008;
  static const HDI_BITMAP = 0x00000010;
  static const HDI_IMAGE = 0x00000020;
  static const HDI_DI_SETITEM = 0x00000040;
  static const HDI_ORDER = 0x00000080;
  static const HDI_FILTER = 0x00000100;
  static const HDI_STATE = 0x00000200;
}

/// {@category Enum}
class HEADER_CONTROL_NOTIFICATION_BUTTON {
  static const HEADER_CONTROL_NOTIFICATION_BUTTON_LEFT = 0x00000000;
  static const HEADER_CONTROL_NOTIFICATION_BUTTON_RIGHT = 0x00000001;
  static const HEADER_CONTROL_NOTIFICATION_BUTTON_MIDDLE = 0x00000002;
}

/// {@category Enum}
class HYPERLINKSTATES {
  static const HLS_NORMALTEXT = 0x00000001;
  static const HLS_LINKTEXT = 0x00000002;
}

/// {@category Enum}
class ICONEFFECT {
  static const ICE_NONE = 0x00000000;
  static const ICE_GLOW = 0x00000001;
  static const ICE_SHADOW = 0x00000002;
  static const ICE_PULSE = 0x00000003;
  static const ICE_ALPHA = 0x00000004;
}

/// {@category Enum}
class IMAGELAYOUT {
  static const IL_VERTICAL = 0x00000000;
  static const IL_HORIZONTAL = 0x00000001;
}

/// {@category Enum}
class IMAGESELECTTYPE {
  static const IST_NONE = 0x00000000;
  static const IST_SIZE = 0x00000001;
  static const IST_DPI = 0x00000002;
}

/// {@category Enum}
class IMAGE_FLAGS {
  static const LR_CREATEDIBSECTION = 0x00002000;
  static const LR_DEFAULTCOLOR = 0x00000000;
  static const LR_DEFAULTSIZE = 0x00000040;
  static const LR_LOADFROMFILE = 0x00000010;
  static const LR_LOADMAP3DCOLORS = 0x00001000;
  static const LR_LOADTRANSPARENT = 0x00000020;
  static const LR_MONOCHROME = 0x00000001;
  static const LR_SHARED = 0x00008000;
  static const LR_VGACOLOR = 0x00000080;
  static const LR_COPYDELETEORG = 0x00000008;
  static const LR_COPYFROMRESOURCE = 0x00004000;
  static const LR_COPYRETURNORG = 0x00000004;
}

/// {@category Enum}
class IMAGE_LIST_COPY_FLAGS {
  static const ILCF_MOVE = 0x00000000;
  static const ILCF_SWAP = 0x00000001;
}

/// {@category Enum}
class IMAGE_LIST_DRAW_STYLE {
  static const ILD_BLEND = 0x00000004;
  static const ILD_BLEND50 = 0x00000004;
  static const ILD_FOCUS = 0x00000002;
  static const ILD_MASK = 0x00000010;
  static const ILD_NORMAL = 0x00000000;
  static const ILD_SELECTED = 0x00000004;
}

/// {@category Enum}
class IMAGE_LIST_ITEM_FLAGS {
  static const ILIF_ALPHA = 0x00000001;
  static const ILIF_LOWQUALITY = 0x00000002;
}

/// {@category Enum}
class IMECOMPTEXT_FLAGS {
  static const ICT_RESULTREADSTR = 0x00000001;
}

/// {@category Enum}
class INITCOMMONCONTROLSEX_ICC {
  static const ICC_ANIMATE_CLASS = 0x00000080;
  static const ICC_BAR_CLASSES = 0x00000004;
  static const ICC_COOL_CLASSES = 0x00000400;
  static const ICC_DATE_CLASSES = 0x00000100;
  static const ICC_HOTKEY_CLASS = 0x00000040;
  static const ICC_INTERNET_CLASSES = 0x00000800;
  static const ICC_LINK_CLASS = 0x00008000;
  static const ICC_LISTVIEW_CLASSES = 0x00000001;
  static const ICC_NATIVEFNTCTL_CLASS = 0x00002000;
  static const ICC_PAGESCROLLER_CLASS = 0x00001000;
  static const ICC_PROGRESS_CLASS = 0x00000020;
  static const ICC_STANDARD_CLASSES = 0x00004000;
  static const ICC_TAB_CLASSES = 0x00000008;
  static const ICC_TREEVIEW_CLASSES = 0x00000002;
  static const ICC_UPDOWN_CLASS = 0x00000010;
  static const ICC_USEREX_CLASSES = 0x00000200;
  static const ICC_WIN95_CLASSES = 0x000000ff;
}

/// {@category Enum}
class INPUT_MESSAGE_DEVICE_TYPE {
  static const IMDT_UNAVAILABLE = 0x00000000;
  static const IMDT_KEYBOARD = 0x00000001;
  static const IMDT_MOUSE = 0x00000002;
  static const IMDT_TOUCH = 0x00000004;
  static const IMDT_PEN = 0x00000008;
  static const IMDT_TOUCHPAD = 0x00000010;
}

/// {@category Enum}
class INPUT_MESSAGE_ORIGIN_ID {
  static const IMO_UNAVAILABLE = 0x00000000;
  static const IMO_HARDWARE = 0x00000001;
  static const IMO_INJECTED = 0x00000002;
  static const IMO_SYSTEM = 0x00000004;
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
class LINKPARTS {
  static const LP_HYPERLINK = 0x00000001;
}

/// {@category Enum}
class LOGOFFBUTTONSSTATES {
  static const SPLS_NORMAL = 0x00000001;
  static const SPLS_HOT = 0x00000002;
  static const SPLS_PRESSED = 0x00000003;
}

/// {@category Enum}
class LVCOLUMNW_FORMAT {
  static const LVCFMT_LEFT = 0x00000000;
  static const LVCFMT_RIGHT = 0x00000001;
  static const LVCFMT_CENTER = 0x00000002;
  static const LVCFMT_JUSTIFYMASK = 0x00000003;
  static const LVCFMT_IMAGE = 0x00000800;
  static const LVCFMT_BITMAP_ON_RIGHT = 0x00001000;
  static const LVCFMT_COL_HAS_IMAGES = 0x00008000;
  static const LVCFMT_FIXED_WIDTH = 0x00000100;
  static const LVCFMT_NO_DPI_SCALE = 0x00040000;
  static const LVCFMT_FIXED_RATIO = 0x00080000;
  static const LVCFMT_SPLITBUTTON = 0x01000000;
}

/// {@category Enum}
class LVCOLUMNW_MASK {
  static const LVCF_FMT = 0x00000001;
  static const LVCF_WIDTH = 0x00000002;
  static const LVCF_TEXT = 0x00000004;
  static const LVCF_SUBITEM = 0x00000008;
  static const LVCF_IMAGE = 0x00000010;
  static const LVCF_ORDER = 0x00000020;
  static const LVCF_MINWIDTH = 0x00000040;
  static const LVCF_DEFAULTWIDTH = 0x00000080;
  static const LVCF_IDEALWIDTH = 0x00000100;
}

/// {@category Enum}
class LVFINDINFOW_FLAGS {
  static const LVFI_PARAM = 0x00000001;
  static const LVFI_PARTIAL = 0x00000008;
  static const LVFI_STRING = 0x00000002;
  static const LVFI_SUBSTRING = 0x00000004;
  static const LVFI_WRAP = 0x00000020;
  static const LVFI_NEARESTXY = 0x00000040;
}

/// {@category Enum}
class LVFOOTERITEM_MASK {
  static const LVFIF_TEXT = 0x00000001;
  static const LVFIF_STATE = 0x00000002;
}

/// {@category Enum}
class LVGROUP_MASK {
  static const LVGF_NONE = 0x00000000;
  static const LVGF_HEADER = 0x00000001;
  static const LVGF_FOOTER = 0x00000002;
  static const LVGF_STATE = 0x00000004;
}

/// {@category Enum}
class LVHITTESTINFO_FLAGS {
  static const LVHT_ABOVE = 0x00000008;
  static const LVHT_BELOW = 0x00000010;
  static const LVHT_NOWHERE = 0x00000001;
  static const LVHT_ONITEMICON = 0x00000002;
  static const LVHT_ONITEMLABEL = 0x00000004;
  static const LVHT_ONITEMSTATEICON = 0x00000008;
  static const LVHT_TOLEFT = 0x00000040;
  static const LVHT_TORIGHT = 0x00000020;
  static const LVHT_EX_GROUP_HEADER = 0x10000000;
  static const LVHT_EX_GROUP_FOOTER = 0x20000000;
  static const LVHT_EX_GROUP_COLLAPSE = 0x40000000;
  static const LVHT_EX_GROUP_BACKGROUND = 0x80000000;
  static const LVHT_EX_GROUP_STATEICON = 0x01000000;
  static const LVHT_EX_GROUP_SUBSETLINK = 0x02000000;
  static const LVHT_EX_GROUP = 0xf3000000;
  static const LVHT_EX_ONCONTENTS = 0x04000000;
  static const LVHT_EX_FOOTER = 0x08000000;
}

/// {@category Enum}
class LVITEMA_GROUP_ID {
  static const I_GROUPIDCALLBACK = 0xffffffff;
  static const I_GROUPIDNONE = 0xfffffffe;
}

/// {@category Enum}
class LVTILEVIEWINFO_FLAGS {
  static const LVTVIF_EXTENDED = 0x00000004;
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
class MARKUPTEXTSTATES {
  static const EMT_NORMALTEXT = 0x00000001;
  static const EMT_LINKTEXT = 0x00000002;
}

/// {@category Enum}
class MCGRIDINFO_FLAGS {
  static const MCGIF_DATE = 0x00000001;
  static const MCGIF_RECT = 0x00000002;
  static const MCGIF_NAME = 0x00000004;
}

/// {@category Enum}
class MCGRIDINFO_PART {
  static const MCGIP_CALENDARCONTROL = 0x00000000;
  static const MCGIP_NEXT = 0x00000001;
  static const MCGIP_PREV = 0x00000002;
  static const MCGIP_FOOTER = 0x00000003;
  static const MCGIP_CALENDAR = 0x00000004;
  static const MCGIP_CALENDARHEADER = 0x00000005;
  static const MCGIP_CALENDARBODY = 0x00000006;
  static const MCGIP_CALENDARROW = 0x00000007;
  static const MCGIP_CALENDARCELL = 0x00000008;
}

/// {@category Enum}
class MENUBANDPARTS {
  static const MDP_NEWAPPBUTTON = 0x00000001;
  static const MDP_SEPERATOR = 0x00000002;
}

/// {@category Enum}
class MENUBANDSTATES {
  static const MDS_NORMAL = 0x00000001;
  static const MDS_HOT = 0x00000002;
  static const MDS_PRESSED = 0x00000003;
  static const MDS_DISABLED = 0x00000004;
  static const MDS_CHECKED = 0x00000005;
  static const MDS_HOTCHECKED = 0x00000006;
}

/// {@category Enum}
class MONTHCALPARTS {
  static const MC_BACKGROUND = 0x00000001;
  static const MC_BORDERS = 0x00000002;
  static const MC_GRIDBACKGROUND = 0x00000003;
  static const MC_COLHEADERSPLITTER = 0x00000004;
  static const MC_GRIDCELLBACKGROUND = 0x00000005;
  static const MC_GRIDCELL = 0x00000006;
  static const MC_GRIDCELLUPPER = 0x00000007;
  static const MC_TRAILINGGRIDCELL = 0x00000008;
  static const MC_TRAILINGGRIDCELLUPPER = 0x00000009;
  static const MC_NAVNEXT = 0x0000000a;
  static const MC_NAVPREV = 0x0000000b;
}

/// {@category Enum}
class MOREPROGRAMSARROWBACKSTATES {
  static const SPSB_NORMAL = 0x00000001;
  static const SPSB_HOT = 0x00000002;
  static const SPSB_PRESSED = 0x00000003;
}

/// {@category Enum}
class MOREPROGRAMSARROWSTATES {
  static const SPS_NORMAL = 0x00000001;
  static const SPS_HOT = 0x00000002;
  static const SPS_PRESSED = 0x00000003;
}

/// {@category Enum}
class MOREPROGRAMSTABSTATES {
  static const SPMPT_NORMAL = 0x00000001;
  static const SPMPT_HOT = 0x00000002;
  static const SPMPT_SELECTED = 0x00000003;
  static const SPMPT_DISABLED = 0x00000004;
  static const SPMPT_FOCUSED = 0x00000005;
}

/// {@category Enum}
class NAVNEXTSTATES {
  static const MCNN_NORMAL = 0x00000001;
  static const MCNN_HOT = 0x00000002;
  static const MCNN_PRESSED = 0x00000003;
  static const MCNN_DISABLED = 0x00000004;
}

/// {@category Enum}
class NAVPREVSTATES {
  static const MCNP_NORMAL = 0x00000001;
  static const MCNP_HOT = 0x00000002;
  static const MCNP_PRESSED = 0x00000003;
  static const MCNP_DISABLED = 0x00000004;
}

/// {@category Enum}
class NMCUSTOMDRAW_DRAW_STAGE {
  static const CDDS_POSTPAINT = 0x00000002;
  static const CDDS_PREERASE = 0x00000003;
  static const CDDS_PREPAINT = 0x00000001;
  static const CDDS_ITEMPOSTERASE = 0x00010004;
  static const CDDS_ITEMPOSTPAINT = 0x00010002;
  static const CDDS_ITEMPREERASE = 0x00010003;
  static const CDDS_ITEMPREPAINT = 0x00010001;
  static const CDDS_SUBITEM = 0x00020000;
}

/// {@category Enum}
class NMLVCUSTOMDRAW_ALIGN {
  static const LVGA_HEADER_CENTER = 0x00000002;
  static const LVGA_HEADER_LEFT = 0x00000001;
  static const LVGA_HEADER_RIGHT = 0x00000004;
}

/// {@category Enum}
class NMLVCUSTOMDRAW_ITEM_TYPE {
  static const LVCDI_ITEM = 0x00000000;
  static const LVCDI_GROUP = 0x00000001;
  static const LVCDI_ITEMSLIST = 0x00000002;
}

/// {@category Enum}
class NMLVEMPTYMARKUP_FLAGS {
  static const EMF_CENTERED = 0x00000001;
}

/// {@category Enum}
class NMPGCALCSIZE_FLAGS {
  static const PGF_CALCHEIGHT = 0x00000002;
  static const PGF_CALCWIDTH = 0x00000001;
}

/// {@category Enum}
class NMPGSCROLL_DIR {
  static const PGF_SCROLLDOWN = 0x00000002;
  static const PGF_SCROLLLEFT = 0x00000004;
  static const PGF_SCROLLRIGHT = 0x00000008;
  static const PGF_SCROLLUP = 0x00000001;
}

/// {@category Enum}
class NMPGSCROLL_KEYS {
  static const PGK_NONE = 0x00000000;
  static const PGK_SHIFT = 0x00000001;
  static const PGK_CONTROL = 0x00000002;
  static const PGK_MENU = 0x00000004;
}

/// {@category Enum}
class NMREBAR_MASK_FLAGS {
  static const RBNM_ID = 0x00000001;
  static const RBNM_LPARAM = 0x00000004;
  static const RBNM_STYLE = 0x00000002;
}

/// {@category Enum}
class NMTBDISPINFOW_MASK {
  static const TBNF_IMAGE = 0x00000001;
  static const TBNF_TEXT = 0x00000002;
  static const TBNF_DI_SETITEM = 0x10000000;
}

/// {@category Enum}
class NMTBHOTITEM_FLAGS {
  static const HICF_ACCELERATOR = 0x00000004;
  static const HICF_ARROWKEYS = 0x00000002;
  static const HICF_DUPACCEL = 0x00000008;
  static const HICF_ENTERING = 0x00000010;
  static const HICF_LEAVING = 0x00000020;
  static const HICF_LMOUSE = 0x00000080;
  static const HICF_MOUSE = 0x00000001;
  static const HICF_OTHER = 0x00000000;
  static const HICF_RESELECT = 0x00000040;
  static const HICF_TOGGLEDROPDOWN = 0x00000100;
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
class OFFSETTYPE {
  static const OT_TOPLEFT = 0x00000000;
  static const OT_TOPRIGHT = 0x00000001;
  static const OT_TOPMIDDLE = 0x00000002;
  static const OT_BOTTOMLEFT = 0x00000003;
  static const OT_BOTTOMRIGHT = 0x00000004;
  static const OT_BOTTOMMIDDLE = 0x00000005;
  static const OT_MIDDLELEFT = 0x00000006;
  static const OT_MIDDLERIGHT = 0x00000007;
  static const OT_LEFTOFCAPTION = 0x00000008;
  static const OT_RIGHTOFCAPTION = 0x00000009;
  static const OT_LEFTOFLASTBUTTON = 0x0000000a;
  static const OT_RIGHTOFLASTBUTTON = 0x0000000b;
  static const OT_ABOVELASTBUTTON = 0x0000000c;
  static const OT_BELOWLASTBUTTON = 0x0000000d;
}

/// {@category Enum}
class OPENBOXSTATES {
  static const SPOB_NORMAL = 0x00000001;
  static const SPOB_HOT = 0x00000002;
  static const SPOB_SELECTED = 0x00000003;
  static const SPOB_DISABLED = 0x00000004;
  static const SPOB_FOCUSED = 0x00000005;
}

/// {@category Enum}
class OPEN_THEME_DATA_FLAGS {
  static const OTD_FORCE_RECT_SIZING = 0x00000001;
  static const OTD_NONCLIENT = 0x00000002;
}

/// {@category Enum}
class PAGEPARTS {
  static const PGRP_UP = 0x00000001;
  static const PGRP_DOWN = 0x00000002;
  static const PGRP_UPHORZ = 0x00000003;
  static const PGRP_DOWNHORZ = 0x00000004;
}

/// {@category Enum}
class PARAFORMAT_ALIGNMENT {
  static const PFA_CENTER = 0x00000003;
  static const PFA_LEFT = 0x00000001;
  static const PFA_RIGHT = 0x00000002;
}

/// {@category Enum}
class PARAFORMAT_BORDERS {
  static const PARAFORMAT_BORDERS_LEFT = 0x00000001;
  static const PARAFORMAT_BORDERS_RIGHT = 0x00000002;
  static const PARAFORMAT_BORDERS_TOP = 0x00000004;
  static const PARAFORMAT_BORDERS_BOTTOM = 0x00000008;
  static const PARAFORMAT_BORDERS_INSIDE = 0x00000010;
  static const PARAFORMAT_BORDERS_OUTSIDE = 0x00000020;
  static const PARAFORMAT_BORDERS_AUTOCOLOR = 0x00000040;
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
  static const PFNS_PAREN = 0x00000000;
  static const PFNS_PARENS = 0x00000100;
  static const PFNS_PERIOD = 0x00000200;
  static const PFNS_PLAIN = 0x00000300;
  static const PFNS_NONUMBER = 0x00000400;
  static const PFNS_NEWNUMBER = 0x00008000;
}

/// {@category Enum}
class PARAFORMAT_SHADING_STYLE {
  static const PARAFORMAT_SHADING_STYLE_NONE = 0x00000000;
  static const PARAFORMAT_SHADING_STYLE_DARK_HORIZ = 0x00000001;
  static const PARAFORMAT_SHADING_STYLE_DARK_VERT = 0x00000002;
  static const PARAFORMAT_SHADING_STYLE_DARK_DOWN_DIAG = 0x00000003;
  static const PARAFORMAT_SHADING_STYLE_DARK_UP_DIAG = 0x00000004;
  static const PARAFORMAT_SHADING_STYLE_DARK_GRID = 0x00000005;
  static const PARAFORMAT_SHADING_STYLE_DARK_TRELLIS = 0x00000006;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_HORZ = 0x00000007;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_VERT = 0x00000008;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_DOWN_DIAG = 0x00000009;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_UP_DIAG = 0x0000000a;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_GRID = 0x0000000b;
  static const PARAFORMAT_SHADING_STYLE_LIGHT_TRELLIS = 0x0000000c;
}

/// {@category Enum}
class POINTER_DEVICE_CURSOR_TYPE {
  static const POINTER_DEVICE_CURSOR_TYPE_UNKNOWN = 0x00000000;
  static const POINTER_DEVICE_CURSOR_TYPE_TIP = 0x00000001;
  static const POINTER_DEVICE_CURSOR_TYPE_ERASER = 0x00000002;
  static const POINTER_DEVICE_CURSOR_TYPE_MAX = 0xffffffff;
}

/// {@category Enum}
class POINTER_DEVICE_TYPE {
  static const POINTER_DEVICE_TYPE_INTEGRATED_PEN = 0x00000001;
  static const POINTER_DEVICE_TYPE_EXTERNAL_PEN = 0x00000002;
  static const POINTER_DEVICE_TYPE_TOUCH = 0x00000003;
  static const POINTER_DEVICE_TYPE_TOUCH_PAD = 0x00000004;
  static const POINTER_DEVICE_TYPE_MAX = 0xffffffff;
}

/// {@category Enum}
class POINTER_FEEDBACK_MODE {
  static const POINTER_FEEDBACK_DEFAULT = 0x00000001;
  static const POINTER_FEEDBACK_INDIRECT = 0x00000002;
  static const POINTER_FEEDBACK_NONE = 0x00000003;
}

/// {@category Enum}
class PROPERTYORIGIN {
  static const PO_STATE = 0x00000000;
  static const PO_PART = 0x00000001;
  static const PO_CLASS = 0x00000002;
  static const PO_GLOBAL = 0x00000003;
  static const PO_NOTFOUND = 0x00000004;
}

/// {@category Enum}
class PSPCB_MESSAGE {
  static const PSPCB_ADDREF = 0x00000000;
  static const PSPCB_CREATE = 0x00000002;
  static const PSPCB_RELEASE = 0x00000001;
  static const PSPCB_SI_INITDIALOG = 0x00000401;
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
  static const SEL_EMPTY = 0x00000000;
  static const SEL_TEXT = 0x00000001;
  static const SEL_OBJECT = 0x00000002;
  static const SEL_MULTICHAR = 0x00000004;
  static const SEL_MULTIOBJECT = 0x00000008;
  static const GCM_RIGHTMOUSEDROP = 0x00008000;
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
class SCROLLBAR_CONSTANTS {
  static const SB_CTL = 0x00000002;
  static const SB_HORZ = 0x00000000;
  static const SB_VERT = 0x00000001;
  static const SB_BOTH = 0x00000003;
}

/// {@category Enum}
class SCROLLBAR_OBJID {
  static const OBJID_CLIENT = 0xfffffffc;
  static const OBJID_HSCROLL = 0xfffffffa;
  static const OBJID_VSCROLL = 0xfffffffb;
  static const OBJID_MENU = 0xfffffffd;
  static const OBJID_SYSMENU = 0xffffffff;
}

/// {@category Enum}
class SCROLLINFO_MASK {
  static const SIF_ALL = 0x00000017;
  static const SIF_DISABLENOSCROLL = 0x00000008;
  static const SIF_PAGE = 0x00000002;
  static const SIF_POS = 0x00000004;
  static const SIF_RANGE = 0x00000001;
  static const SIF_TRACKPOS = 0x00000010;
}

/// {@category Enum}
class SIZINGTYPE {
  static const ST_TRUESIZE = 0x00000000;
  static const ST_STRETCH = 0x00000001;
  static const ST_TILE = 0x00000002;
}

/// {@category Enum}
class SOFTWAREEXPLORERSTATES {
  static const SPSE_NORMAL = 0x00000001;
  static const SPSE_HOT = 0x00000002;
  static const SPSE_SELECTED = 0x00000003;
  static const SPSE_DISABLED = 0x00000004;
  static const SPSE_FOCUSED = 0x00000005;
}

/// {@category Enum}
class STARTPANELPARTS {
  static const SPP_USERPANE = 0x00000001;
  static const SPP_MOREPROGRAMS = 0x00000002;
  static const SPP_MOREPROGRAMSARROW = 0x00000003;
  static const SPP_PROGLIST = 0x00000004;
  static const SPP_PROGLISTSEPARATOR = 0x00000005;
  static const SPP_PLACESLIST = 0x00000006;
  static const SPP_PLACESLISTSEPARATOR = 0x00000007;
  static const SPP_LOGOFF = 0x00000008;
  static const SPP_LOGOFFBUTTONS = 0x00000009;
  static const SPP_USERPICTURE = 0x0000000a;
  static const SPP_PREVIEW = 0x0000000b;
  static const SPP_MOREPROGRAMSTAB = 0x0000000c;
  static const SPP_NSCHOST = 0x0000000d;
  static const SPP_SOFTWAREEXPLORER = 0x0000000e;
  static const SPP_OPENBOX = 0x0000000f;
  static const SPP_SEARCHVIEW = 0x00000010;
  static const SPP_MOREPROGRAMSARROWBACK = 0x00000011;
  static const SPP_TOPMATCH = 0x00000012;
  static const SPP_LOGOFFSPLITBUTTONDROPDOWN = 0x00000013;
}

/// {@category Enum}
class STATICPARTS {
  static const STAT_TEXT = 0x00000001;
}

/// {@category Enum}
class TASKBANDPARTS {
  static const TDP_GROUPCOUNT = 0x00000001;
  static const TDP_FLASHBUTTON = 0x00000002;
  static const TDP_FLASHBUTTONGROUPMENU = 0x00000003;
}

/// {@category Enum}
class TASKBARPARTS {
  static const TBP_BACKGROUNDBOTTOM = 0x00000001;
  static const TBP_BACKGROUNDRIGHT = 0x00000002;
  static const TBP_BACKGROUNDTOP = 0x00000003;
  static const TBP_BACKGROUNDLEFT = 0x00000004;
  static const TBP_SIZINGBARBOTTOM = 0x00000005;
  static const TBP_SIZINGBARRIGHT = 0x00000006;
  static const TBP_SIZINGBARTOP = 0x00000007;
  static const TBP_SIZINGBARLEFT = 0x00000008;
}

/// {@category Enum}
class TASKDIALOG_ELEMENTS {
  static const TDE_CONTENT = 0x00000000;
  static const TDE_EXPANDED_INFORMATION = 0x00000001;
  static const TDE_FOOTER = 0x00000002;
  static const TDE_MAIN_INSTRUCTION = 0x00000003;
}

/// {@category Enum}
class TASKDIALOG_ICON_ELEMENTS {
  static const TDIE_ICON_MAIN = 0x00000000;
  static const TDIE_ICON_FOOTER = 0x00000001;
}

/// {@category Enum}
class TASKDIALOG_MESSAGES {
  static const TDM_NAVIGATE_PAGE = 0x00000465;
  static const TDM_CLICK_BUTTON = 0x00000466;
  static const TDM_SET_MARQUEE_PROGRESS_BAR = 0x00000467;
  static const TDM_SET_PROGRESS_BAR_STATE = 0x00000468;
  static const TDM_SET_PROGRESS_BAR_RANGE = 0x00000469;
  static const TDM_SET_PROGRESS_BAR_POS = 0x0000046a;
  static const TDM_SET_PROGRESS_BAR_MARQUEE = 0x0000046b;
  static const TDM_SET_ELEMENT_TEXT = 0x0000046c;
  static const TDM_CLICK_RADIO_BUTTON = 0x0000046e;
  static const TDM_ENABLE_BUTTON = 0x0000046f;
  static const TDM_ENABLE_RADIO_BUTTON = 0x00000470;
  static const TDM_CLICK_VERIFICATION = 0x00000471;
  static const TDM_UPDATE_ELEMENT_TEXT = 0x00000472;
  static const TDM_SET_BUTTON_ELEVATION_REQUIRED_STATE = 0x00000473;
  static const TDM_UPDATE_ICON = 0x00000474;
}

/// {@category Enum}
class TASKDIALOG_NOTIFICATIONS {
  static const TDN_CREATED = 0x00000000;
  static const TDN_NAVIGATED = 0x00000001;
  static const TDN_BUTTON_CLICKED = 0x00000002;
  static const TDN_HYPERLINK_CLICKED = 0x00000003;
  static const TDN_TIMER = 0x00000004;
  static const TDN_DESTROYED = 0x00000005;
  static const TDN_RADIO_BUTTON_CLICKED = 0x00000006;
  static const TDN_DIALOG_CONSTRUCTED = 0x00000007;
  static const TDN_VERIFICATION_CLICKED = 0x00000008;
  static const TDN_HELP = 0x00000009;
  static const TDN_EXPANDO_BUTTON_CLICKED = 0x0000000a;
}

/// {@category Enum}
class TA_PROPERTY {
  static const TAP_FLAGS = 0x00000000;
  static const TAP_TRANSFORMCOUNT = 0x00000001;
  static const TAP_STAGGERDELAY = 0x00000002;
  static const TAP_STAGGERDELAYCAP = 0x00000003;
  static const TAP_STAGGERDELAYFACTOR = 0x00000004;
  static const TAP_ZORDER = 0x00000005;
}

/// {@category Enum}
class TA_PROPERTY_FLAG {
  static const TAPF_NONE = 0x00000000;
  static const TAPF_HASSTAGGER = 0x00000001;
  static const TAPF_ISRTLAWARE = 0x00000002;
  static const TAPF_ALLOWCOLLECTION = 0x00000004;
  static const TAPF_HASBACKGROUND = 0x00000008;
  static const TAPF_HASPERSPECTIVE = 0x00000010;
}

/// {@category Enum}
class TA_TIMINGFUNCTION_TYPE {
  static const TTFT_UNDEFINED = 0x00000000;
  static const TTFT_CUBIC_BEZIER = 0x00000001;
}

/// {@category Enum}
class TA_TRANSFORM_FLAG {
  static const TATF_NONE = 0x00000000;
  static const TATF_TARGETVALUES_USER = 0x00000001;
  static const TATF_HASINITIALVALUES = 0x00000002;
  static const TATF_HASORIGINVALUES = 0x00000004;
}

/// {@category Enum}
class TA_TRANSFORM_TYPE {
  static const TATT_TRANSLATE_2D = 0x00000000;
  static const TATT_SCALE_2D = 0x00000001;
  static const TATT_OPACITY = 0x00000002;
  static const TATT_CLIP = 0x00000003;
}

/// {@category Enum}
class TBBUTTONINFOW_MASK {
  static const TBIF_BYINDEX = 0x80000000;
  static const TBIF_COMMAND = 0x00000020;
  static const TBIF_IMAGE = 0x00000001;
  static const TBIF_LPARAM = 0x00000010;
  static const TBIF_SIZE = 0x00000040;
  static const TBIF_STATE = 0x00000004;
  static const TBIF_STYLE = 0x00000008;
  static const TBIF_TEXT = 0x00000002;
}

/// {@category Enum}
class TBINSERTMARK_FLAGS {
  static const TBIMHT_NONE = 0x00000000;
  static const TBIMHT_AFTER = 0x00000001;
  static const TBIMHT_BACKGROUND = 0x00000002;
}

/// {@category Enum}
class TCHITTESTINFO_FLAGS {
  static const TCHT_NOWHERE = 0x00000001;
  static const TCHT_ONITEM = 0x00000006;
  static const TCHT_ONITEMICON = 0x00000002;
  static const TCHT_ONITEMLABEL = 0x00000004;
}

/// {@category Enum}
class TCITEMHEADERA_MASK {
  static const TCIF_IMAGE = 0x00000002;
  static const TCIF_RTLREADING = 0x00000004;
  static const TCIF_TEXT = 0x00000001;
  static const TCIF_PARAM = 0x00000008;
  static const TCIF_STATE = 0x00000010;
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
class TEXTSHADOWTYPE {
  static const TST_NONE = 0x00000000;
  static const TST_SINGLE = 0x00000001;
  static const TST_CONTINUOUS = 0x00000002;
}

/// {@category Enum}
class TEXT_ALIGN_OPTIONS {
  static const TA_NOUPDATECP = 0x00000000;
  static const TA_UPDATECP = 0x00000001;
  static const TA_LEFT = 0x00000000;
  static const TA_RIGHT = 0x00000002;
  static const TA_CENTER = 0x00000006;
  static const TA_TOP = 0x00000000;
  static const TA_BOTTOM = 0x00000008;
  static const TA_BASELINE = 0x00000018;
  static const TA_RTLREADING = 0x00000100;
  static const TA_MASK = 0x0000011f;
  static const VTA_BASELINE = 0x00000018;
  static const VTA_LEFT = 0x00000008;
  static const VTA_RIGHT = 0x00000000;
  static const VTA_CENTER = 0x00000006;
  static const VTA_BOTTOM = 0x00000002;
  static const VTA_TOP = 0x00000000;
}

/// {@category Enum}
class THEMESIZE {
  static const TS_MIN = 0x00000000;
  static const TS_TRUE = 0x00000001;
  static const TS_DRAW = 0x00000002;
}

/// {@category Enum}
class THEME_PROPERTY_SYMBOL_ID {
  static const TMT_RESERVEDLOW = 0x00000000;
  static const TMT_RESERVEDHIGH = 0x00001f3f;
  static const TMT_DIBDATA = 0x00000002;
  static const TMT_GLYPHDIBDATA = 0x00000008;
  static const TMT_ENUM = 0x000000c8;
  static const TMT_STRING = 0x000000c9;
  static const TMT_INT = 0x000000ca;
  static const TMT_BOOL = 0x000000cb;
  static const TMT_COLOR = 0x000000cc;
  static const TMT_MARGINS = 0x000000cd;
  static const TMT_FILENAME = 0x000000ce;
  static const TMT_SIZE = 0x000000cf;
  static const TMT_POSITION = 0x000000d0;
  static const TMT_RECT = 0x000000d1;
  static const TMT_FONT = 0x000000d2;
  static const TMT_INTLIST = 0x000000d3;
  static const TMT_HBITMAP = 0x000000d4;
  static const TMT_DISKSTREAM = 0x000000d5;
  static const TMT_STREAM = 0x000000d6;
  static const TMT_BITMAPREF = 0x000000d7;
  static const TMT_FLOAT = 0x000000d8;
  static const TMT_FLOATLIST = 0x000000d9;
  static const TMT_COLORSCHEMES = 0x00000191;
  static const TMT_SIZES = 0x00000192;
  static const TMT_CHARSET = 0x00000193;
  static const TMT_NAME = 0x00000258;
  static const TMT_DISPLAYNAME = 0x00000259;
  static const TMT_TOOLTIP = 0x0000025a;
  static const TMT_COMPANY = 0x0000025b;
  static const TMT_AUTHOR = 0x0000025c;
  static const TMT_COPYRIGHT = 0x0000025d;
  static const TMT_URL = 0x0000025e;
  static const TMT_VERSION = 0x0000025f;
  static const TMT_DESCRIPTION = 0x00000260;
  static const TMT_FIRST_RCSTRING_NAME = 0x00000259;
  static const TMT_LAST_RCSTRING_NAME = 0x00000260;
  static const TMT_CAPTIONFONT = 0x00000321;
  static const TMT_SMALLCAPTIONFONT = 0x00000322;
  static const TMT_MENUFONT = 0x00000323;
  static const TMT_STATUSFONT = 0x00000324;
  static const TMT_MSGBOXFONT = 0x00000325;
  static const TMT_ICONTITLEFONT = 0x00000326;
  static const TMT_HEADING1FONT = 0x00000327;
  static const TMT_HEADING2FONT = 0x00000328;
  static const TMT_BODYFONT = 0x00000329;
  static const TMT_FIRSTFONT = 0x00000321;
  static const TMT_LASTFONT = 0x00000329;
  static const TMT_FLATMENUS = 0x000003e9;
  static const TMT_FIRSTBOOL = 0x000003e9;
  static const TMT_LASTBOOL = 0x000003e9;
  static const TMT_SIZINGBORDERWIDTH = 0x000004b1;
  static const TMT_SCROLLBARWIDTH = 0x000004b2;
  static const TMT_SCROLLBARHEIGHT = 0x000004b3;
  static const TMT_CAPTIONBARWIDTH = 0x000004b4;
  static const TMT_CAPTIONBARHEIGHT = 0x000004b5;
  static const TMT_SMCAPTIONBARWIDTH = 0x000004b6;
  static const TMT_SMCAPTIONBARHEIGHT = 0x000004b7;
  static const TMT_MENUBARWIDTH = 0x000004b8;
  static const TMT_MENUBARHEIGHT = 0x000004b9;
  static const TMT_PADDEDBORDERWIDTH = 0x000004ba;
  static const TMT_FIRSTSIZE = 0x000004b1;
  static const TMT_LASTSIZE = 0x000004ba;
  static const TMT_MINCOLORDEPTH = 0x00000515;
  static const TMT_FIRSTINT = 0x00000515;
  static const TMT_LASTINT = 0x00000515;
  static const TMT_CSSNAME = 0x00000579;
  static const TMT_XMLNAME = 0x0000057a;
  static const TMT_LASTUPDATED = 0x0000057b;
  static const TMT_ALIAS = 0x0000057c;
  static const TMT_FIRSTSTRING = 0x00000579;
  static const TMT_LASTSTRING = 0x0000057c;
  static const TMT_SCROLLBAR = 0x00000641;
  static const TMT_BACKGROUND = 0x00000642;
  static const TMT_ACTIVECAPTION = 0x00000643;
  static const TMT_INACTIVECAPTION = 0x00000644;
  static const TMT_MENU = 0x00000645;
  static const TMT_WINDOW = 0x00000646;
  static const TMT_WINDOWFRAME = 0x00000647;
  static const TMT_MENUTEXT = 0x00000648;
  static const TMT_WINDOWTEXT = 0x00000649;
  static const TMT_CAPTIONTEXT = 0x0000064a;
  static const TMT_ACTIVEBORDER = 0x0000064b;
  static const TMT_INACTIVEBORDER = 0x0000064c;
  static const TMT_APPWORKSPACE = 0x0000064d;
  static const TMT_HIGHLIGHT = 0x0000064e;
  static const TMT_HIGHLIGHTTEXT = 0x0000064f;
  static const TMT_BTNFACE = 0x00000650;
  static const TMT_BTNSHADOW = 0x00000651;
  static const TMT_GRAYTEXT = 0x00000652;
  static const TMT_BTNTEXT = 0x00000653;
  static const TMT_INACTIVECAPTIONTEXT = 0x00000654;
  static const TMT_BTNHIGHLIGHT = 0x00000655;
  static const TMT_DKSHADOW3D = 0x00000656;
  static const TMT_LIGHT3D = 0x00000657;
  static const TMT_INFOTEXT = 0x00000658;
  static const TMT_INFOBK = 0x00000659;
  static const TMT_BUTTONALTERNATEFACE = 0x0000065a;
  static const TMT_HOTTRACKING = 0x0000065b;
  static const TMT_GRADIENTACTIVECAPTION = 0x0000065c;
  static const TMT_GRADIENTINACTIVECAPTION = 0x0000065d;
  static const TMT_MENUHILIGHT = 0x0000065e;
  static const TMT_MENUBAR = 0x0000065f;
  static const TMT_FIRSTCOLOR = 0x00000641;
  static const TMT_LASTCOLOR = 0x0000065f;
  static const TMT_FROMHUE1 = 0x00000709;
  static const TMT_FROMHUE2 = 0x0000070a;
  static const TMT_FROMHUE3 = 0x0000070b;
  static const TMT_FROMHUE4 = 0x0000070c;
  static const TMT_FROMHUE5 = 0x0000070d;
  static const TMT_TOHUE1 = 0x0000070e;
  static const TMT_TOHUE2 = 0x0000070f;
  static const TMT_TOHUE3 = 0x00000710;
  static const TMT_TOHUE4 = 0x00000711;
  static const TMT_TOHUE5 = 0x00000712;
  static const TMT_FROMCOLOR1 = 0x000007d1;
  static const TMT_FROMCOLOR2 = 0x000007d2;
  static const TMT_FROMCOLOR3 = 0x000007d3;
  static const TMT_FROMCOLOR4 = 0x000007d4;
  static const TMT_FROMCOLOR5 = 0x000007d5;
  static const TMT_TOCOLOR1 = 0x000007d6;
  static const TMT_TOCOLOR2 = 0x000007d7;
  static const TMT_TOCOLOR3 = 0x000007d8;
  static const TMT_TOCOLOR4 = 0x000007d9;
  static const TMT_TOCOLOR5 = 0x000007da;
  static const TMT_TRANSPARENT = 0x00000899;
  static const TMT_AUTOSIZE = 0x0000089a;
  static const TMT_BORDERONLY = 0x0000089b;
  static const TMT_COMPOSITED = 0x0000089c;
  static const TMT_BGFILL = 0x0000089d;
  static const TMT_GLYPHTRANSPARENT = 0x0000089e;
  static const TMT_GLYPHONLY = 0x0000089f;
  static const TMT_ALWAYSSHOWSIZINGBAR = 0x000008a0;
  static const TMT_MIRRORIMAGE = 0x000008a1;
  static const TMT_UNIFORMSIZING = 0x000008a2;
  static const TMT_INTEGRALSIZING = 0x000008a3;
  static const TMT_SOURCEGROW = 0x000008a4;
  static const TMT_SOURCESHRINK = 0x000008a5;
  static const TMT_DRAWBORDERS = 0x000008a6;
  static const TMT_NOETCHEDEFFECT = 0x000008a7;
  static const TMT_TEXTAPPLYOVERLAY = 0x000008a8;
  static const TMT_TEXTGLOW = 0x000008a9;
  static const TMT_TEXTITALIC = 0x000008aa;
  static const TMT_COMPOSITEDOPAQUE = 0x000008ab;
  static const TMT_LOCALIZEDMIRRORIMAGE = 0x000008ac;
  static const TMT_IMAGECOUNT = 0x00000961;
  static const TMT_ALPHALEVEL = 0x00000962;
  static const TMT_BORDERSIZE = 0x00000963;
  static const TMT_ROUNDCORNERWIDTH = 0x00000964;
  static const TMT_ROUNDCORNERHEIGHT = 0x00000965;
  static const TMT_GRADIENTRATIO1 = 0x00000966;
  static const TMT_GRADIENTRATIO2 = 0x00000967;
  static const TMT_GRADIENTRATIO3 = 0x00000968;
  static const TMT_GRADIENTRATIO4 = 0x00000969;
  static const TMT_GRADIENTRATIO5 = 0x0000096a;
  static const TMT_PROGRESSCHUNKSIZE = 0x0000096b;
  static const TMT_PROGRESSSPACESIZE = 0x0000096c;
  static const TMT_SATURATION = 0x0000096d;
  static const TMT_TEXTBORDERSIZE = 0x0000096e;
  static const TMT_ALPHATHRESHOLD = 0x0000096f;
  static const TMT_WIDTH = 0x00000970;
  static const TMT_HEIGHT = 0x00000971;
  static const TMT_GLYPHINDEX = 0x00000972;
  static const TMT_TRUESIZESTRETCHMARK = 0x00000973;
  static const TMT_MINDPI1 = 0x00000974;
  static const TMT_MINDPI2 = 0x00000975;
  static const TMT_MINDPI3 = 0x00000976;
  static const TMT_MINDPI4 = 0x00000977;
  static const TMT_MINDPI5 = 0x00000978;
  static const TMT_TEXTGLOWSIZE = 0x00000979;
  static const TMT_FRAMESPERSECOND = 0x0000097a;
  static const TMT_PIXELSPERFRAME = 0x0000097b;
  static const TMT_ANIMATIONDELAY = 0x0000097c;
  static const TMT_GLOWINTENSITY = 0x0000097d;
  static const TMT_OPACITY = 0x0000097e;
  static const TMT_COLORIZATIONCOLOR = 0x0000097f;
  static const TMT_COLORIZATIONOPACITY = 0x00000980;
  static const TMT_MINDPI6 = 0x00000981;
  static const TMT_MINDPI7 = 0x00000982;
  static const TMT_GLYPHFONT = 0x00000a29;
  static const TMT_IMAGEFILE = 0x00000bb9;
  static const TMT_IMAGEFILE1 = 0x00000bba;
  static const TMT_IMAGEFILE2 = 0x00000bbb;
  static const TMT_IMAGEFILE3 = 0x00000bbc;
  static const TMT_IMAGEFILE4 = 0x00000bbd;
  static const TMT_IMAGEFILE5 = 0x00000bbe;
  static const TMT_GLYPHIMAGEFILE = 0x00000bc0;
  static const TMT_IMAGEFILE6 = 0x00000bc1;
  static const TMT_IMAGEFILE7 = 0x00000bc2;
  static const TMT_TEXT = 0x00000c81;
  static const TMT_CLASSICVALUE = 0x00000c82;
  static const TMT_OFFSET = 0x00000d49;
  static const TMT_TEXTSHADOWOFFSET = 0x00000d4a;
  static const TMT_MINSIZE = 0x00000d4b;
  static const TMT_MINSIZE1 = 0x00000d4c;
  static const TMT_MINSIZE2 = 0x00000d4d;
  static const TMT_MINSIZE3 = 0x00000d4e;
  static const TMT_MINSIZE4 = 0x00000d4f;
  static const TMT_MINSIZE5 = 0x00000d50;
  static const TMT_NORMALSIZE = 0x00000d51;
  static const TMT_MINSIZE6 = 0x00000d52;
  static const TMT_MINSIZE7 = 0x00000d53;
  static const TMT_SIZINGMARGINS = 0x00000e11;
  static const TMT_CONTENTMARGINS = 0x00000e12;
  static const TMT_CAPTIONMARGINS = 0x00000e13;
  static const TMT_BORDERCOLOR = 0x00000ed9;
  static const TMT_FILLCOLOR = 0x00000eda;
  static const TMT_TEXTCOLOR = 0x00000edb;
  static const TMT_EDGELIGHTCOLOR = 0x00000edc;
  static const TMT_EDGEHIGHLIGHTCOLOR = 0x00000edd;
  static const TMT_EDGESHADOWCOLOR = 0x00000ede;
  static const TMT_EDGEDKSHADOWCOLOR = 0x00000edf;
  static const TMT_EDGEFILLCOLOR = 0x00000ee0;
  static const TMT_TRANSPARENTCOLOR = 0x00000ee1;
  static const TMT_GRADIENTCOLOR1 = 0x00000ee2;
  static const TMT_GRADIENTCOLOR2 = 0x00000ee3;
  static const TMT_GRADIENTCOLOR3 = 0x00000ee4;
  static const TMT_GRADIENTCOLOR4 = 0x00000ee5;
  static const TMT_GRADIENTCOLOR5 = 0x00000ee6;
  static const TMT_SHADOWCOLOR = 0x00000ee7;
  static const TMT_GLOWCOLOR = 0x00000ee8;
  static const TMT_TEXTBORDERCOLOR = 0x00000ee9;
  static const TMT_TEXTSHADOWCOLOR = 0x00000eea;
  static const TMT_GLYPHTEXTCOLOR = 0x00000eeb;
  static const TMT_GLYPHTRANSPARENTCOLOR = 0x00000eec;
  static const TMT_FILLCOLORHINT = 0x00000eed;
  static const TMT_BORDERCOLORHINT = 0x00000eee;
  static const TMT_ACCENTCOLORHINT = 0x00000eef;
  static const TMT_TEXTCOLORHINT = 0x00000ef0;
  static const TMT_HEADING1TEXTCOLOR = 0x00000ef1;
  static const TMT_HEADING2TEXTCOLOR = 0x00000ef2;
  static const TMT_BODYTEXTCOLOR = 0x00000ef3;
  static const TMT_BGTYPE = 0x00000fa1;
  static const TMT_BORDERTYPE = 0x00000fa2;
  static const TMT_FILLTYPE = 0x00000fa3;
  static const TMT_SIZINGTYPE = 0x00000fa4;
  static const TMT_HALIGN = 0x00000fa5;
  static const TMT_CONTENTALIGNMENT = 0x00000fa6;
  static const TMT_VALIGN = 0x00000fa7;
  static const TMT_OFFSETTYPE = 0x00000fa8;
  static const TMT_ICONEFFECT = 0x00000fa9;
  static const TMT_TEXTSHADOWTYPE = 0x00000faa;
  static const TMT_IMAGELAYOUT = 0x00000fab;
  static const TMT_GLYPHTYPE = 0x00000fac;
  static const TMT_IMAGESELECTTYPE = 0x00000fad;
  static const TMT_GLYPHFONTSIZINGTYPE = 0x00000fae;
  static const TMT_TRUESIZESCALINGTYPE = 0x00000faf;
  static const TMT_USERPICTURE = 0x00001389;
  static const TMT_DEFAULTPANESIZE = 0x0000138a;
  static const TMT_BLENDCOLOR = 0x0000138b;
  static const TMT_CUSTOMSPLITRECT = 0x0000138c;
  static const TMT_ANIMATIONBUTTONRECT = 0x0000138d;
  static const TMT_ANIMATIONDURATION = 0x0000138e;
  static const TMT_TRANSITIONDURATIONS = 0x00001770;
  static const TMT_SCALEDBACKGROUND = 0x00001b59;
  static const TMT_ATLASIMAGE = 0x00001f40;
  static const TMT_ATLASINPUTIMAGE = 0x00001f41;
  static const TMT_ATLASRECT = 0x00001f42;
}

/// {@category Enum}
class TOUCH_FEEDBACK_MODE {
  static const TOUCH_FEEDBACK_DEFAULT = 0x00000001;
  static const TOUCH_FEEDBACK_INDIRECT = 0x00000002;
  static const TOUCH_FEEDBACK_NONE = 0x00000003;
}

/// {@category Enum}
class TRAILINGGRIDCELLSTATES {
  static const MCTGC_HOT = 0x00000001;
  static const MCTGC_HASSTATE = 0x00000002;
  static const MCTGC_HASSTATEHOT = 0x00000003;
  static const MCTGC_TODAY = 0x00000004;
  static const MCTGC_TODAYSELECTED = 0x00000005;
  static const MCTGC_SELECTED = 0x00000006;
  static const MCTGC_SELECTEDHOT = 0x00000007;
}

/// {@category Enum}
class TRAILINGGRIDCELLUPPERSTATES {
  static const MCTGCU_HOT = 0x00000001;
  static const MCTGCU_HASSTATE = 0x00000002;
  static const MCTGCU_HASSTATEHOT = 0x00000003;
  static const MCTGCU_SELECTED = 0x00000004;
  static const MCTGCU_SELECTEDHOT = 0x00000005;
}

/// {@category Enum}
class TRAYNOTIFYPARTS {
  static const TNP_BACKGROUND = 0x00000001;
  static const TNP_ANIMBACKGROUND = 0x00000002;
}

/// {@category Enum}
class TRUESIZESCALINGTYPE {
  static const TSST_NONE = 0x00000000;
  static const TSST_SIZE = 0x00000001;
  static const TSST_DPI = 0x00000002;
}

/// {@category Enum}
class TVHITTESTINFO_FLAGS {
  static const TVHT_ABOVE = 0x00000100;
  static const TVHT_BELOW = 0x00000200;
  static const TVHT_NOWHERE = 0x00000001;
  static const TVHT_ONITEM = 0x00000046;
  static const TVHT_ONITEMBUTTON = 0x00000010;
  static const TVHT_ONITEMICON = 0x00000002;
  static const TVHT_ONITEMINDENT = 0x00000008;
  static const TVHT_ONITEMLABEL = 0x00000004;
  static const TVHT_ONITEMRIGHT = 0x00000020;
  static const TVHT_ONITEMSTATEICON = 0x00000040;
  static const TVHT_TOLEFT = 0x00000800;
  static const TVHT_TORIGHT = 0x00000400;
}

/// {@category Enum}
class TVITEMEXW_CHILDREN {
  static const I_ZERO = 0x00000000;
  static const I_ONE_OR_MORE = 0x00000001;
  static const I_CHILDRENCALLBACK = 0xffffffff;
  static const I_CHILDRENAUTO = 0xfffffffe;
}

/// {@category Enum}
class TVITEMPART {
  static const TVGIPR_BUTTON = 0x00000001;
}

/// {@category Enum}
class TVITEM_MASK {
  static const TVIF_CHILDREN = 0x00000040;
  static const TVIF_DI_SETITEM = 0x00001000;
  static const TVIF_HANDLE = 0x00000010;
  static const TVIF_IMAGE = 0x00000002;
  static const TVIF_PARAM = 0x00000004;
  static const TVIF_SELECTEDIMAGE = 0x00000020;
  static const TVIF_STATE = 0x00000008;
  static const TVIF_TEXT = 0x00000001;
  static const TVIF_EXPANDEDIMAGE = 0x00000200;
  static const TVIF_INTEGRAL = 0x00000080;
  static const TVIF_STATEEX = 0x00000100;
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
class VALIGN {
  static const VA_TOP = 0x00000000;
  static const VA_CENTER = 0x00000001;
  static const VA_BOTTOM = 0x00000002;
}

/// {@category Enum}
class WINDOWTHEMEATTRIBUTETYPE {
  static const WTA_NONCLIENT = 0x00000001;
}

/// {@category Enum}
class WORD_BREAK_ACTION {
  static const WB_CLASSIFY = 0x00000003;
  static const WB_ISDELIMITER = 0x00000002;
  static const WB_LEFT = 0x00000000;
  static const WB_LEFTBREAK = 0x00000006;
  static const WB_MOVEWORDLEFT = 0x00000004;
  static const WB_MOVEWORDRIGHT = 0x00000005;
  static const WB_RIGHT = 0x00000001;
  static const WB_RIGHTBREAK = 0x00000007;
}

/// {@category Enum}
class WSB_PROP {
  static const WSB_PROP_CXHSCROLL = 0x00000002;
  static const WSB_PROP_CXHTHUMB = 0x00000010;
  static const WSB_PROP_CXVSCROLL = 0x00000008;
  static const WSB_PROP_CYHSCROLL = 0x00000004;
  static const WSB_PROP_CYVSCROLL = 0x00000001;
  static const WSB_PROP_CYVTHUMB = 0x00000020;
  static const WSB_PROP_HBKGCOLOR = 0x00000080;
  static const WSB_PROP_HSTYLE = 0x00000200;
  static const WSB_PROP_PALETTE = 0x00000800;
  static const WSB_PROP_VBKGCOLOR = 0x00000040;
  static const WSB_PROP_VSTYLE = 0x00000100;
  static const WSB_PROP_WINSTYLE = 0x00000400;
}

/// {@category Enum}
class LI_METRIC {
  static const LIM_SMALL = 0x00000000;
  static const LIM_LARGE = 0x00000001;
}

/// {@category Enum}
class TASKDIALOG_COMMON_BUTTON_FLAGS {
  static const TDCBF_OK_BUTTON = 0x00000001;
  static const TDCBF_YES_BUTTON = 0x00000002;
  static const TDCBF_NO_BUTTON = 0x00000004;
  static const TDCBF_CANCEL_BUTTON = 0x00000008;
  static const TDCBF_RETRY_BUTTON = 0x00000010;
  static const TDCBF_CLOSE_BUTTON = 0x00000020;
}

/// {@category Enum}
class TASKDIALOG_FLAGS {
  static const TDF_ENABLE_HYPERLINKS = 0x00000001;
  static const TDF_USE_HICON_MAIN = 0x00000002;
  static const TDF_USE_HICON_FOOTER = 0x00000004;
  static const TDF_ALLOW_DIALOG_CANCELLATION = 0x00000008;
  static const TDF_USE_COMMAND_LINKS = 0x00000010;
  static const TDF_USE_COMMAND_LINKS_NO_ICON = 0x00000020;
  static const TDF_EXPAND_FOOTER_AREA = 0x00000040;
  static const TDF_EXPANDED_BY_DEFAULT = 0x00000080;
  static const TDF_VERIFICATION_FLAG_CHECKED = 0x00000100;
  static const TDF_SHOW_PROGRESS_BAR = 0x00000200;
  static const TDF_SHOW_MARQUEE_PROGRESS_BAR = 0x00000400;
  static const TDF_CALLBACK_TIMER = 0x00000800;
  static const TDF_POSITION_RELATIVE_TO_WINDOW = 0x00001000;
  static const TDF_RTL_LAYOUT = 0x00002000;
  static const TDF_NO_DEFAULT_RADIO_BUTTON = 0x00004000;
  static const TDF_CAN_BE_MINIMIZED = 0x00008000;
  static const TDF_NO_SET_FOREGROUND = 0x00010000;
  static const TDF_SIZE_TO_CONTENT = 0x01000000;
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
