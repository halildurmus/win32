/// {@category Enum}
class MMC_PROPERTY_ACTION {
  static const MMC_PROPACT_DELETING = 0x00000001;
  static const MMC_PROPACT_CHANGING = 0x00000002;
  static const MMC_PROPACT_INITIALIZED = 0x00000003;
}

/// {@category Enum}
class DocumentMode {
  static const DocumentMode_Author = 0x00000000;
  static const DocumentMode_User = 0x00000001;
  static const DocumentMode_User_MDI = 0x00000002;
  static const DocumentMode_User_SDI = 0x00000003;
}

/// {@category Enum}
class ListViewMode {
  static const ListMode_Small_Icons = 0x00000000;
  static const ListMode_Large_Icons = 0x00000001;
  static const ListMode_List = 0x00000002;
  static const ListMode_Detail = 0x00000003;
  static const ListMode_Filtered = 0x00000004;
}

/// {@category Enum}
class ViewOptions {
  static const ViewOption_Default = 0x00000000;
  static const ViewOption_ScopeTreeHidden = 0x00000001;
  static const ViewOption_NoToolBars = 0x00000002;
  static const ViewOption_NotPersistable = 0x00000004;
  static const ViewOption_ActionPaneHidden = 0x00000008;
}

/// {@category Enum}
class ExportListOptions {
  static const ExportListOptions_Default = 0x00000000;
  static const ExportListOptions_Unicode = 0x00000001;
  static const ExportListOptions_TabDelimited = 0x00000002;
  static const ExportListOptions_SelectedItemsOnly = 0x00000004;
}

/// {@category Enum}
class MMC_RESULT_VIEW_STYLE {
  static const MMC_SINGLESEL = 0x00000001;
  static const MMC_SHOWSELALWAYS = 0x00000002;
  static const MMC_NOSORTHEADER = 0x00000004;
  static const MMC_ENSUREFOCUSVISIBLE = 0x00000008;
}

/// {@category Enum}
class MMC_CONTROL_TYPE {
  static const TOOLBAR = 0x00000000;
  static const MENUBUTTON = 0x00000001;
  static const COMBOBOXBAR = 0x00000002;
}

/// {@category Enum}
class MMC_CONSOLE_VERB {
  static const MMC_VERB_NONE = 0x00000000;
  static const MMC_VERB_OPEN = 0x00008000;
  static const MMC_VERB_COPY = 0x00008001;
  static const MMC_VERB_PASTE = 0x00008002;
  static const MMC_VERB_DELETE = 0x00008003;
  static const MMC_VERB_PROPERTIES = 0x00008004;
  static const MMC_VERB_RENAME = 0x00008005;
  static const MMC_VERB_REFRESH = 0x00008006;
  static const MMC_VERB_PRINT = 0x00008007;
  static const MMC_VERB_CUT = 0x00008008;
  static const MMC_VERB_MAX = 0x00008009;
  static const MMC_VERB_FIRST = 0x00008000;
  static const MMC_VERB_LAST = 0x00008008;
}

/// {@category Enum}
class MMC_BUTTON_STATE {
  static const ENABLED = 0x00000001;
  static const CHECKED = 0x00000002;
  static const HIDDEN = 0x00000004;
  static const INDETERMINATE = 0x00000008;
  static const BUTTONPRESSED = 0x00000010;
}

/// {@category Enum}
class MMC_SCOPE_ITEM_STATE {
  static const MMC_SCOPE_ITEM_STATE_NORMAL = 0x00000001;
  static const MMC_SCOPE_ITEM_STATE_BOLD = 0x00000002;
  static const MMC_SCOPE_ITEM_STATE_EXPANDEDONCE = 0x00000003;
}

/// {@category Enum}
class MMC_MENU_COMMAND_IDS {
  static const MMCC_STANDARD_VIEW_SELECT = 0xffffffff;
}

/// {@category Enum}
class MMC_FILTER_TYPE {
  static const MMC_STRING_FILTER = 0x00000000;
  static const MMC_INT_FILTER = 0x00000001;
  static const MMC_FILTER_NOVALUE = 0x00008000;
}

/// {@category Enum}
class MMC_FILTER_CHANGE_CODE {
  static const MFCC_DISABLE = 0x00000000;
  static const MFCC_ENABLE = 0x00000001;
  static const MFCC_VALUE_CHANGE = 0x00000002;
}

/// {@category Enum}
class MMC_NOTIFY_TYPE {
  static const MMCN_ACTIVATE = 0x00008001;
  static const MMCN_ADD_IMAGES = 0x00008002;
  static const MMCN_BTN_CLICK = 0x00008003;
  static const MMCN_CLICK = 0x00008004;
  static const MMCN_COLUMN_CLICK = 0x00008005;
  static const MMCN_CONTEXTMENU = 0x00008006;
  static const MMCN_CUTORMOVE = 0x00008007;
  static const MMCN_DBLCLICK = 0x00008008;
  static const MMCN_DELETE = 0x00008009;
  static const MMCN_DESELECT_ALL = 0x0000800a;
  static const MMCN_EXPAND = 0x0000800b;
  static const MMCN_HELP = 0x0000800c;
  static const MMCN_MENU_BTNCLICK = 0x0000800d;
  static const MMCN_MINIMIZED = 0x0000800e;
  static const MMCN_PASTE = 0x0000800f;
  static const MMCN_PROPERTY_CHANGE = 0x00008010;
  static const MMCN_QUERY_PASTE = 0x00008011;
  static const MMCN_REFRESH = 0x00008012;
  static const MMCN_REMOVE_CHILDREN = 0x00008013;
  static const MMCN_RENAME = 0x00008014;
  static const MMCN_SELECT = 0x00008015;
  static const MMCN_SHOW = 0x00008016;
  static const MMCN_VIEW_CHANGE = 0x00008017;
  static const MMCN_SNAPINHELP = 0x00008018;
  static const MMCN_CONTEXTHELP = 0x00008019;
  static const MMCN_INITOCX = 0x0000801a;
  static const MMCN_FILTER_CHANGE = 0x0000801b;
  static const MMCN_FILTERBTN_CLICK = 0x0000801c;
  static const MMCN_RESTORE_VIEW = 0x0000801d;
  static const MMCN_PRINT = 0x0000801e;
  static const MMCN_PRELOAD = 0x0000801f;
  static const MMCN_LISTPAD = 0x00008020;
  static const MMCN_EXPANDSYNC = 0x00008021;
  static const MMCN_COLUMNS_CHANGED = 0x00008022;
  static const MMCN_CANPASTE_OUTOFPROC = 0x00008023;
}

/// {@category Enum}
class DATA_OBJECT_TYPES {
  static const CCT_SCOPE = 0x00008000;
  static const CCT_RESULT = 0x00008001;
  static const CCT_SNAPIN_MANAGER = 0x00008002;
  static const CCT_UNINITIALIZED = 0x0000ffff;
}

/// {@category Enum}
class CCM_INSERTIONPOINTID {
  static const CCM_INSERTIONPOINTID_MASK_SPECIAL = 0xffff0000;
  static const CCM_INSERTIONPOINTID_MASK_SHARED = 0x80000000;
  static const CCM_INSERTIONPOINTID_MASK_CREATE_PRIMARY = 0x40000000;
  static const CCM_INSERTIONPOINTID_MASK_ADD_PRIMARY = 0x20000000;
  static const CCM_INSERTIONPOINTID_MASK_ADD_3RDPARTY = 0x10000000;
  static const CCM_INSERTIONPOINTID_MASK_RESERVED = 0x0fff0000;
  static const CCM_INSERTIONPOINTID_MASK_FLAGINDEX = 0x0000001f;
  static const CCM_INSERTIONPOINTID_PRIMARY_TOP = 0xa0000000;
  static const CCM_INSERTIONPOINTID_PRIMARY_NEW = 0xa0000001;
  static const CCM_INSERTIONPOINTID_PRIMARY_TASK = 0xa0000002;
  static const CCM_INSERTIONPOINTID_PRIMARY_VIEW = 0xa0000003;
  static const CCM_INSERTIONPOINTID_PRIMARY_HELP = 0xa0000004;
  static const CCM_INSERTIONPOINTID_3RDPARTY_NEW = 0x90000001;
  static const CCM_INSERTIONPOINTID_3RDPARTY_TASK = 0x90000002;
  static const CCM_INSERTIONPOINTID_ROOT_MENU = 0x80000000;
}

/// {@category Enum}
class CCM_INSERTIONALLOWED {
  static const CCM_INSERTIONALLOWED_TOP = 0x00000001;
  static const CCM_INSERTIONALLOWED_NEW = 0x00000002;
  static const CCM_INSERTIONALLOWED_TASK = 0x00000004;
  static const CCM_INSERTIONALLOWED_VIEW = 0x00000008;
}

/// {@category Enum}
class CCM_COMMANDID_MASK_CONSTANTS {
  static const CCM_COMMANDID_MASK_RESERVED = 0xffff0000;
}

/// {@category Enum}
class CCM_SPECIAL {
  static const CCM_SPECIAL_SEPARATOR = 0x00000001;
  static const CCM_SPECIAL_SUBMENU = 0x00000002;
  static const CCM_SPECIAL_DEFAULT_ITEM = 0x00000004;
  static const CCM_SPECIAL_INSERTION_POINT = 0x00000008;
  static const CCM_SPECIAL_TESTONLY = 0x00000010;
}

/// {@category Enum}
class MMC_TASK_DISPLAY_TYPE {
  static const MMC_TASK_DISPLAY_UNINITIALIZED = 0x00000000;
  static const MMC_TASK_DISPLAY_TYPE_SYMBOL = 0x00000001;
  static const MMC_TASK_DISPLAY_TYPE_VANILLA_GIF = 0x00000002;
  static const MMC_TASK_DISPLAY_TYPE_CHOCOLATE_GIF = 0x00000003;
  static const MMC_TASK_DISPLAY_TYPE_BITMAP = 0x00000004;
}

/// {@category Enum}
class MMC_ACTION_TYPE {
  static const MMC_ACTION_UNINITIALIZED = 0xffffffff;
  static const MMC_ACTION_ID = 0x00000000;
  static const MMC_ACTION_LINK = 0x00000001;
  static const MMC_ACTION_SCRIPT = 0x00000002;
}

/// {@category Enum}
class IconIdentifier {
  static const Icon_None = 0x00000000;
  static const Icon_Error = 0x00007f01;
  static const Icon_Question = 0x00007f02;
  static const Icon_Warning = 0x00007f03;
  static const Icon_Information = 0x00007f04;
  static const Icon_First = 0x00007f01;
  static const Icon_Last = 0x00007f04;
}

/// {@category Enum}
class MMC_VIEW_TYPE {
  static const MMC_VIEW_TYPE_LIST = 0x00000000;
  static const MMC_VIEW_TYPE_HTML = 0x00000001;
  static const MMC_VIEW_TYPE_OCX = 0x00000002;
}

