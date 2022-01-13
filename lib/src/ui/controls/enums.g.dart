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
class IMAGELIST_CREATION_FLAGS {
  static const ILC_MASK = 0x00000001;
  static const ILC_COLOR = 0x00000000;
  static const ILC_COLORDDB = 0x000000fe;
  static const ILC_COLOR4 = 0x00000004;
  static const ILC_COLOR8 = 0x00000008;
  static const ILC_COLOR16 = 0x00000010;
  static const ILC_COLOR24 = 0x00000018;
  static const ILC_COLOR32 = 0x00000020;
  static const ILC_PALETTE = 0x00000800;
  static const ILC_MIRROR = 0x00002000;
  static const ILC_PERITEMMIRROR = 0x00008000;
  static const ILC_ORIGINALSIZE = 0x00010000;
  static const ILC_HIGHQUALITYSCALE = 0x00020000;
}

/// {@category Enum}
class IMAGESELECTTYPE {
  static const IST_NONE = 0x00000000;
  static const IST_SIZE = 0x00000001;
  static const IST_DPI = 0x00000002;
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
  static const PGK_NONE = 0x62020000;
  static const PGK_SHIFT = 0x02020001;
  static const PGK_CONTROL = 0x04020002;
  static const PGK_MENU = 0x00020004;
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
class TASKDIALOG_COMMON_BUTTON_FLAGS {
  static const TDCBF_OK_BUTTON = 0x00000001;
  static const TDCBF_YES_BUTTON = 0x00000002;
  static const TDCBF_NO_BUTTON = 0x00000004;
  static const TDCBF_CANCEL_BUTTON = 0x00000008;
  static const TDCBF_RETRY_BUTTON = 0x00000010;
  static const TDCBF_CLOSE_BUTTON = 0x00000020;
}

/// {@category Enum}
class TASKDIALOG_ELEMENTS {
  static const TDE_CONTENT = 0x00000000;
  static const TDE_EXPANDED_INFORMATION = 0x00000001;
  static const TDE_FOOTER = 0x00000002;
  static const TDE_MAIN_INSTRUCTION = 0x00000003;
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
class TEXTSHADOWTYPE {
  static const TST_NONE = 0x00000000;
  static const TST_SINGLE = 0x00000001;
  static const TST_CONTINUOUS = 0x00000002;
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
class TTTOOLINFO_FLAGS {
  static const TTF_ABSOLUTE = 0x00000080;
  static const TTF_CENTERTIP = 0x00000002;
  static const TTF_IDISHWND = 0x00000001;
  static const TTF_PARSELINKS = 0x00001000;
  static const TTF_RTLREADING = 0x00000004;
  static const TTF_SUBCLASS = 0x00000010;
  static const TTF_TRACK = 0x00000020;
  static const TTF_TRANSPARENT = 0x00000100;
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
