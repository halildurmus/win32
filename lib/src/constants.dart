// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Standard constants exposed by the Win32 API

import 'dart:ffi';
import 'package:ffi/ffi.dart';

// General constants

/// A zero value; used to represent an empty bitmask.
const NULL = 0;

/// Boolean false value returned from the Win32 API
const FALSE = 0;

/// Boolean true value returned from the Win32 API
const TRUE = 1;

/// Success status
const STATUS_SUCCESS = 0;

// Path length
const MAX_PATH = 260;

/// @nodoc
const FACILITY_NULL = 0;

/// @nodoc
const FACILITY_RPC = 1;

/// @nodoc
const FACILITY_DISPATCH = 2;

/// @nodoc
const FACILITY_STORAGE = 3;

/// @nodoc
const FACILITY_ITF = 4;

/// @nodoc
const FACILITY_WIN32 = 7;

/// @nodoc
const FACILITY_WINDOWS = 8;

/// @nodoc
const FACILITY_SSPI = 9;

/// @nodoc
const FACILITY_SECURITY = 9;

/// @nodoc
const FACILITY_CONTROL = 10;

/// @nodoc
const FACILITY_CERT = 11;

/// @nodoc
const FACILITY_INTERNET = 12;

// Error constants
/// @nodoc
const ERROR_SUCCESS = 0;

/// @nodoc
const NO_ERROR = 0;

/// @nodoc
const SEC_E_OK = 0;

/// @nodoc
const ERROR_INVALID_FUNCTION = 1;

/// @nodoc
const ERROR_FILE_NOT_FOUND = 2;

/// @nodoc
const ERROR_PATH_NOT_FOUND = 3;

/// @nodoc
const ERROR_TOO_MANY_OPEN_FILES = 4;

/// @nodoc
const ERROR_ACCESS_DENIED = 5;

/// @nodoc
const ERROR_INVALID_HANDLE = 6;

/// @nodoc
const ERROR_ARENA_TRASHED = 7;

/// @nodoc
const ERROR_NOT_ENOUGH_MEMORY = 8;

/// @nodoc
const ERROR_INVALID_BLOCK = 9;

/// @nodoc
const ERROR_BAD_ENVIRONMENT = 10;

/// @nodoc
const ERROR_BAD_FORMAT = 11;

/// @nodoc
const ERROR_INVALID_ACCESS = 12;

/// @nodoc
const ERROR_INVALID_DATA = 13;

/// @nodoc
const ERROR_OUTOFMEMORY = 14;

/// @nodoc
const ERROR_INVALID_DRIVE = 15;

/// @nodoc
const ERROR_CURRENT_DIRECTORY = 16;

/// @nodoc
const ERROR_NOT_SAME_DEVICE = 17;

/// @nodoc
const ERROR_NO_MORE_FILES = 18;

/// @nodoc
const ERROR_WRITE_PROTECT = 19;

/// @nodoc
const ERROR_BAD_UNIT = 20;

/// @nodoc
const ERROR_NOT_READY = 21;

/// @nodoc
const ERROR_BAD_COMMAND = 22;

/// @nodoc
const ERROR_CRC = 23;

/// @nodoc
const ERROR_BAD_LENGTH = 24;

/// @nodoc
const ERROR_SEEK = 25;

/// @nodoc
const ERROR_NOT_DOS_DISK = 26;

/// @nodoc
const ERROR_SECTOR_NOT_FOUND = 27;

/// @nodoc
const ERROR_OUT_OF_PAPER = 28;

/// @nodoc
const ERROR_WRITE_FAULT = 29;

/// @nodoc
const ERROR_READ_FAULT = 30;

/// @nodoc
const ERROR_GEN_FAILURE = 31;

/// @nodoc
const ERROR_SHARING_VIOLATION = 32;

/// @nodoc
const ERROR_LOCK_VIOLATION = 33;

/// @nodoc
const ERROR_WRONG_DISK = 34;

/// @nodoc
const ERROR_SHARING_BUFFER_EXCEEDED = 36;

/// @nodoc
const ERROR_HANDLE_EOF = 38;

/// @nodoc
const ERROR_HANDLE_DISK_FULL = 39;

/// @nodoc
const ERROR_NOT_SUPPORTED = 50;

/// @nodoc
const ERROR_REM_NOT_LIST = 51;

/// @nodoc
const ERROR_DUP_NAME = 52;

/// @nodoc
const ERROR_BAD_NETPATH = 53;

/// @nodoc
const ERROR_NETWORK_BUSY = 54;

/// @nodoc
const ERROR_DEV_NOT_EXIST = 55;

/// @nodoc
const ERROR_TOO_MANY_CMDS = 56;

/// @nodoc
const ERROR_ADAP_HDW_ERR = 57;

/// @nodoc
const ERROR_BAD_NET_RESP = 58;

/// @nodoc
const ERROR_UNEXP_NET_ERR = 59;

/// @nodoc
const ERROR_BAD_REM_ADAP = 60;

/// @nodoc
const ERROR_PRINTQ_FULL = 61;

/// @nodoc
const ERROR_NO_SPOOL_SPACE = 62;

/// @nodoc
const ERROR_PRINT_CANCELLED = 63;

/// @nodoc
const ERROR_NETNAME_DELETED = 64;

/// @nodoc
const ERROR_NETWORK_ACCESS_DENIED = 65;

/// @nodoc
const ERROR_BAD_DEV_TYPE = 66;

/// @nodoc
const ERROR_BAD_NET_NAME = 67;

/// @nodoc
const ERROR_TOO_MANY_NAMES = 68;

/// @nodoc
const ERROR_TOO_MANY_SESS = 69;

/// @nodoc
const ERROR_SHARING_PAUSED = 70;

/// @nodoc
const ERROR_REQ_NOT_ACCEP = 71;

/// @nodoc
const ERROR_REDIR_PAUSED = 72;

/// @nodoc
const ERROR_FILE_EXISTS = 80;

/// @nodoc
const ERROR_CANNOT_MAKE = 82;

/// @nodoc
const ERROR_FAIL_I24 = 83;

/// @nodoc
const ERROR_OUT_OF_STRUCTURES = 84;

/// @nodoc
const ERROR_ALREADY_ASSIGNED = 85;

/// @nodoc
const ERROR_INVALID_PASSWORD = 86;

/// @nodoc
const ERROR_INVALID_PARAMETER = 87;

/// @nodoc
const ERROR_NET_WRITE_FAULT = 88;

/// @nodoc
const ERROR_NO_PROC_SLOTS = 89;

/// @nodoc
const ERROR_TOO_MANY_SEMAPHORES = 100;

/// @nodoc
const ERROR_EXCL_SEM_ALREADY_OWNED = 101;

/// @nodoc
const ERROR_SEM_IS_SET = 102;

/// @nodoc
const ERROR_TOO_MANY_SEM_REQUESTS = 103;

/// @nodoc
const ERROR_INVALID_AT_INTERRUPT_TIME = 104;

/// @nodoc
const ERROR_SEM_OWNER_DIED = 105;

/// @nodoc
const ERROR_SEM_USER_LIMIT = 106;

/// @nodoc
const ERROR_DISK_CHANGE = 107;

/// @nodoc
const ERROR_DRIVE_LOCKED = 108;

/// @nodoc
const ERROR_BROKEN_PIPE = 109;

/// @nodoc
const ERROR_OPEN_FAILED = 110;

/// @nodoc
const ERROR_BUFFER_OVERFLOW = 111;

/// @nodoc
const ERROR_DISK_FULL = 112;

/// @nodoc
const ERROR_NO_MORE_SEARCH_HANDLES = 113;

/// @nodoc
const ERROR_INVALID_TARGET_HANDLE = 114;

/// @nodoc
const ERROR_INVALID_CATEGORY = 117;

/// @nodoc
const ERROR_INVALID_VERIFY_SWITCH = 118;

/// @nodoc
const ERROR_BAD_DRIVER_LEVEL = 119;

/// @nodoc
const ERROR_CALL_NOT_IMPLEMENTED = 120;

/// @nodoc
const ERROR_SEM_TIMEOUT = 121;

/// @nodoc
const ERROR_INSUFFICIENT_BUFFER = 122;

/// @nodoc
const ERROR_INVALID_NAME = 123;

/// @nodoc
const ERROR_INVALID_LEVEL = 124;

/// @nodoc
const ERROR_NO_VOLUME_LABEL = 125;

/// @nodoc
const ERROR_MOD_NOT_FOUND = 126;

/// @nodoc
const ERROR_PROC_NOT_FOUND = 127;

/// @nodoc
const ERROR_WAIT_NO_CHILDREN = 128;

/// @nodoc
const ERROR_CHILD_NOT_COMPLETE = 129;

/// @nodoc
const ERROR_DIRECT_ACCESS_HANDLE = 130;

/// @nodoc
const ERROR_NEGATIVE_SEEK = 131;

/// @nodoc
const ERROR_SEEK_ON_DEVICE = 132;

/// @nodoc
const ERROR_IS_JOIN_TARGET = 133;

/// @nodoc
const ERROR_IS_JOINED = 134;

/// @nodoc
const ERROR_IS_SUBSTED = 135;

/// @nodoc
const ERROR_NOT_JOINED = 136;

/// @nodoc
const ERROR_NOT_SUBSTED = 137;

/// @nodoc
const ERROR_JOIN_TO_JOIN = 138;

/// @nodoc
const ERROR_SUBST_TO_SUBST = 139;

/// @nodoc
const ERROR_JOIN_TO_SUBST = 140;

/// @nodoc
const ERROR_SUBST_TO_JOIN = 141;

/// @nodoc
const ERROR_BUSY_DRIVE = 142;

/// @nodoc
const ERROR_SAME_DRIVE = 143;

/// @nodoc
const ERROR_DIR_NOT_ROOT = 144;

/// @nodoc
const ERROR_DIR_NOT_EMPTY = 145;

/// @nodoc
const ERROR_IS_SUBST_PATH = 146;

/// @nodoc
const ERROR_IS_JOIN_PATH = 147;

/// @nodoc
const ERROR_PATH_BUSY = 148;

/// @nodoc
const ERROR_IS_SUBST_TARGET = 149;

/// @nodoc
const ERROR_SYSTEM_TRACE = 150;

/// @nodoc
const ERROR_INVALID_EVENT_COUNT = 151;

/// @nodoc
const ERROR_TOO_MANY_MUXWAITERS = 152;

/// @nodoc
const ERROR_INVALID_LIST_FORMAT = 153;

/// @nodoc
const ERROR_LABEL_TOO_LONG = 154;

/// @nodoc
const ERROR_TOO_MANY_TCBS = 155;

/// @nodoc
const ERROR_SIGNAL_REFUSED = 156;

/// @nodoc
const ERROR_DISCARDED = 157;

/// @nodoc
const ERROR_NOT_LOCKED = 158;

/// @nodoc
const ERROR_BAD_THREADID_ADDR = 159;

/// @nodoc
const ERROR_BAD_ARGUMENTS = 160;

/// @nodoc
const ERROR_BAD_PATHNAME = 161;

/// @nodoc
const ERROR_SIGNAL_PENDING = 162;

/// @nodoc
const ERROR_MAX_THRDS_REACHED = 164;

/// @nodoc
const ERROR_LOCK_FAILED = 167;

/// @nodoc
const ERROR_BUSY = 170;

/// @nodoc
const ERROR_DEVICE_SUPPORT_IN_PROGRESS = 171;

/// @nodoc
const ERROR_CANCEL_VIOLATION = 173;

/// @nodoc
const ERROR_ATOMIC_LOCKS_NOT_SUPPORTED = 174;

/// @nodoc
const ERROR_INVALID_SEGMENT_NUMBER = 180;

/// @nodoc
const ERROR_INVALID_ORDINAL = 182;

/// @nodoc
const ERROR_ALREADY_EXISTS = 183;

/// @nodoc
const ERROR_INVALID_FLAG_NUMBER = 186;

/// @nodoc
const ERROR_SEM_NOT_FOUND = 187;

/// @nodoc
const ERROR_INVALID_STARTING_CODESEG = 188;

/// @nodoc
const ERROR_INVALID_STACKSEG = 189;

/// @nodoc
const ERROR_INVALID_MODULETYPE = 190;

/// @nodoc
const ERROR_INVALID_EXE_SIGNATURE = 191;

/// @nodoc
const ERROR_EXE_MARKED_INVALID = 192;

/// @nodoc
const ERROR_BAD_EXE_FORMAT = 193;

/// @nodoc
const ERROR_ITERATED_DATA_EXCEEDS_64k = 194;

/// @nodoc
const ERROR_INVALID_MINALLOCSIZE = 195;

/// @nodoc
const ERROR_DYNLINK_FROM_INVALID_RING = 196;

/// @nodoc
const ERROR_IOPL_NOT_ENABLED = 197;

/// @nodoc
const ERROR_INVALID_SEGDPL = 198;

/// @nodoc
const ERROR_AUTODATASEG_EXCEEDS_64k = 199;

/// @nodoc
const ERROR_MORE_DATA = 234;

/// @nodoc
const ERROR_CANCELLED = 1223;

/// @nodoc
const APPMODEL_ERROR_NO_PACKAGE = 15700;

/// @nodoc
const APPMODEL_ERROR_PACKAGE_RUNTIME_CORRUPT = 15701;

/// @nodoc
const APPMODEL_ERROR_PACKAGE_IDENTITY_CORRUPT = 15702;

/// @nodoc
const APPMODEL_ERROR_NO_APPLICATION = 15703;

/// @nodoc
const APPMODEL_ERROR_DYNAMIC_PROPERTY_READ_FAILED = 15704;

/// @nodoc
const APPMODEL_ERROR_DYNAMIC_PROPERTY_INVALID = 15705;

/// @nodoc
const APPMODEL_ERROR_PACKAGE_NOT_AVAILABLE = 15706;

/// @nodoc
const APPMODEL_ERROR_NO_MUTABLE_DIRECTORY = 15707;

/// @nodoc
const FORMAT_MESSAGE_IGNORE_INSERTS = 0x00000200;

/// @nodoc
const FORMAT_MESSAGE_FROM_STRING = 0x00000400;

/// @nodoc
const FORMAT_MESSAGE_FROM_HMODULE = 0x00000800;

/// @nodoc
const FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000;

/// @nodoc
const FORMAT_MESSAGE_ARGUMENT_ARRAY = 0x00002000;

/// @nodoc
const FORMAT_MESSAGE_MAX_WIDTH_MASK = 0x000000FF;

/// @nodoc
const CO_E_NOTINITIALIZED = 0x800401F0;

/// @nodoc
const CO_E_ALREADYINITIALIZED = 0x800401F1;

/// @nodoc
const CO_E_CANTDETERMINECLASS = 0x800401F2;

/// @nodoc
const CO_E_CLASSSTRING = 0x800401F3;

/// @nodoc
const CO_E_IIDSTRING = 0x800401F4;

/// @nodoc
const CO_E_APPNOTFOUND = 0x800401F5;

/// @nodoc
const CO_E_APPSINGLEUSE = 0x800401F6;

/// @nodoc
const CO_E_ERRORINAPP = 0x800401F7;

/// @nodoc
const CO_E_DLLNOTFOUND = 0x800401F8;

/// @nodoc
const CO_E_ERRORINDLL = 0x800401F9;

/// @nodoc
const CO_E_WRONGOSFORAPP = 0x800401FA;

/// @nodoc
const CO_E_OBJNOTREG = 0x800401FB;

/// @nodoc
const CO_E_OBJISREG = 0x800401FC;

/// @nodoc
const CO_E_OBJNOTCONNECTED = 0x800401FD;

/// @nodoc
const CO_E_APPDIDNTREG = 0x800401FE;

/// @nodoc
const CLASS_E_NOAGGREGATION = 0x80040110;

/// @nodoc
const CLASS_E_CLASSNOTAVAILABLE = 0x80040111;

/// @nodoc
const CLASS_E_NOTLICENSED = 0x80040112;

// WindowStyle constants

/// @nodoc
const WS_BORDER = 0x00800000;

/// @nodoc
const WS_CAPTION = 0x00C00000;

/// @nodoc
const WS_CHILD = 0x40000000;

/// @nodoc
const WS_CHILDWINDOW = 0x40000000;

/// @nodoc
const WS_CLIPCHILDREN = 0x02000000;

/// @nodoc
const WS_CLIPSIBLINGS = 0x04000000;

/// @nodoc
const WS_DISABLED = 0x08000000;

/// @nodoc
const WS_DLGFRAME = 0x00400000;

/// @nodoc
const WS_GROUP = 0x00020000;

/// @nodoc
const WS_HSCROLL = 0x00100000;

/// @nodoc
const WS_ICONIC = 0x20000000;

/// @nodoc
const WS_MAXIMIZE = 0x01000000;

/// @nodoc
const WS_MAXIMIZEBOX = 0x00010000;

/// @nodoc
const WS_MINIMIZE = 0x20000000;

/// @nodoc
const WS_MINIMIZEBOX = 0x00020000;

/// @nodoc
const WS_OVERLAPPED = 0x00000000;

/// @nodoc
const WS_OVERLAPPEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;

/// @nodoc
const WS_POPUP = 0x80000000;

/// @nodoc
const WS_POPUPWINDOW = WS_POPUP | WS_BORDER | WS_SYSMENU;

/// @nodoc
const WS_SIZEBOX = 0x00040000;

/// @nodoc
const WS_SYSMENU = 0x00080000;

/// @nodoc
const WS_TABSTOP = 0x00010000;

/// @nodoc
const WS_THICKFRAME = 0x00040000;

/// @nodoc
const WS_TILED = 0x00000000;

/// @nodoc
const WS_TILEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;

/// @nodoc
const WS_VISIBLE = 0x10000000;

/// @nodoc
const WS_VSCROLL = 0x00200000;

// WindowMessage constants

/// @nodoc
const WM_NULL = 0x0000;

/// @nodoc
const WM_CREATE = 0x0001;

/// @nodoc
const WM_DESTROY = 0x0002;

/// @nodoc
const WM_MOVE = 0x0003;

/// @nodoc
const WM_SIZE = 0x0005;

/// @nodoc
const WM_ACTIVATE = 0x0006;

/// @nodoc
const WM_SETFOCUS = 0x0007;

/// @nodoc
const WM_KILLFOCUS = 0x0008;

/// @nodoc
const WM_ENABLE = 0x000A;

/// @nodoc
const WM_SETREDRAW = 0x000B;

/// @nodoc
const WM_SETTEXT = 0x000C;

/// @nodoc
const WM_GETTEXT = 0x000D;

/// @nodoc
const WM_GETTEXTLENGTH = 0x000E;

/// @nodoc
const WM_PAINT = 0x000F;

/// @nodoc
const WM_CLOSE = 0x0010;

/// @nodoc
const WM_QUERYENDSESSION = 0x0011;

/// @nodoc
const WM_QUERYOPEN = 0x0013;

/// @nodoc
const WM_ENDSESSION = 0x0016;

/// @nodoc
const WM_QUIT = 0x0012;

/// @nodoc
const WM_ERASEBKGND = 0x0014;

/// @nodoc
const WM_SYSCOLORCHANGE = 0x0015;

/// @nodoc
const WM_SHOWWINDOW = 0x0018;

/// @nodoc
const WM_WININICHANGE = 0x001A;

/// @nodoc
const WM_SETTINGCHANGE = WM_WININICHANGE;

/// @nodoc
const WM_DEVMODECHANGE = 0x001B;

/// @nodoc
const WM_ACTIVATEAPP = 0x001C;

/// @nodoc
const WM_FONTCHANGE = 0x001D;

/// @nodoc
const WM_TIMECHANGE = 0x001E;

/// @nodoc
const WM_CANCELMODE = 0x001F;

/// @nodoc
const WM_SETCURSOR = 0x0020;

/// @nodoc
const WM_MOUSEACTIVATE = 0x0021;

/// @nodoc
const WM_CHILDACTIVATE = 0x0022;

/// @nodoc
const WM_QUEUESYNC = 0x0023;

/// @nodoc
const WM_GETMINMAXINFO = 0x0024;

/// @nodoc
const WM_PAINTICON = 0x0026;

/// @nodoc
const WM_ICONERASEBKGND = 0x0027;

/// @nodoc
const WM_NEXTDLGCTL = 0x0028;

/// @nodoc
const WM_SPOOLERSTATUS = 0x002A;

/// @nodoc
const WM_DRAWITEM = 0x002B;

/// @nodoc
const WM_MEASUREITEM = 0x002C;

/// @nodoc
const WM_DELETEITEM = 0x002D;

/// @nodoc
const WM_VKEYTOITEM = 0x002E;

/// @nodoc
const WM_CHARTOITEM = 0x002F;

/// @nodoc
const WM_SETFONT = 0x0030;

/// @nodoc
const WM_GETFONT = 0x0031;

/// @nodoc
const WM_SETHOTKEY = 0x0032;

/// @nodoc
const WM_GETHOTKEY = 0x0033;

/// @nodoc
const WM_QUERYDRAGICON = 0x0037;

/// @nodoc
const WM_COMPAREITEM = 0x0039;

/// @nodoc
const WM_GETOBJECT = 0x003D;

/// @nodoc
const WM_COMPACTING = 0x0041;

/// @nodoc
const WM_COMMNOTIFY = 0x0044;

/// @nodoc
const WM_WINDOWPOSCHANGING = 0x0046;

/// @nodoc
const WM_WINDOWPOSCHANGED = 0x0047;

/// @nodoc
const WM_POWER = 0x0048;

/// @nodoc
const WM_NOTIFY = 0x004E;

/// @nodoc
const WM_INPUTLANGCHANGEREQUEST = 0x0050;

/// @nodoc
const WM_INPUTLANGCHANGE = 0x0051;

/// @nodoc
const WM_TCARD = 0x0052;

/// @nodoc
const WM_HELP = 0x0053;

/// @nodoc
const WM_USERCHANGED = 0x0054;

/// @nodoc
const WM_NOTIFYFORMAT = 0x0055;

/// @nodoc
const WM_CONTEXTMENU = 0x007B;

/// @nodoc
const WM_STYLECHANGING = 0x007C;

/// @nodoc
const WM_STYLECHANGED = 0x007D;

/// @nodoc
const WM_DISPLAYCHANGE = 0x007E;

/// @nodoc
const WM_GETICON = 0x007F;

/// @nodoc
const WM_SETICON = 0x0080;

/// @nodoc
const WM_NCCREATE = 0x0081;

/// @nodoc
const WM_NCDESTROY = 0x0082;

/// @nodoc
const WM_NCCALCSIZE = 0x0083;

/// @nodoc
const WM_NCHITTEST = 0x0084;

/// @nodoc
const WM_NCPAINT = 0x0085;

/// @nodoc
const WM_NCACTIVATE = 0x0086;

/// @nodoc
const WM_GETDLGCODE = 0x0087;

/// @nodoc
const WM_SYNCPAINT = 0x0088;

/// @nodoc
const WM_NCMOUSEMOVE = 0x00A0;

/// @nodoc
const WM_NCLBUTTONDOWN = 0x00A1;

/// @nodoc
const WM_NCLBUTTONUP = 0x00A2;

/// @nodoc
const WM_NCLBUTTONDBLCLK = 0x00A3;

/// @nodoc
const WM_NCRBUTTONDOWN = 0x00A4;

/// @nodoc
const WM_NCRBUTTONUP = 0x00A5;

/// @nodoc
const WM_NCRBUTTONDBLCLK = 0x00A6;

/// @nodoc
const WM_NCMBUTTONDOWN = 0x00A7;

/// @nodoc
const WM_NCMBUTTONUP = 0x00A8;

/// @nodoc
const WM_NCMBUTTONDBLCLK = 0x00A9;

/// @nodoc
const WM_NCXBUTTONDOWN = 0x00AB;

/// @nodoc
const WM_NCXBUTTONUP = 0x00AC;

/// @nodoc
const WM_NCXBUTTONDBLCLK = 0x00AD;

/// @nodoc
const WM_INPUT_DEVICE_CHANGE = 0x00FE;

/// @nodoc
const WM_INPUT = 0x00FF;

/// @nodoc
const WM_KEYFIRST = 0x0100;

/// @nodoc
const WM_KEYDOWN = 0x0100;

/// @nodoc
const WM_KEYUP = 0x0101;

/// @nodoc
const WM_CHAR = 0x0102;

/// @nodoc
const WM_DEADCHAR = 0x0103;

/// @nodoc
const WM_SYSKEYDOWN = 0x0104;

/// @nodoc
const WM_SYSKEYUP = 0x0105;

/// @nodoc
const WM_SYSCHAR = 0x0106;

/// @nodoc
const WM_SYSDEADCHAR = 0x0107;

/// @nodoc
const WM_INITDIALOG = 0x0110;

/// @nodoc
const WM_COMMAND = 0x0111;

/// @nodoc
const WM_SYSCOMMAND = 0x0112;

/// @nodoc
const WM_TIMER = 0x0113;

/// @nodoc
const WM_HSCROLL = 0x0114;

/// @nodoc
const WM_VSCROLL = 0x0115;

/// @nodoc
const WM_INITMENU = 0x0116;

/// @nodoc
const WM_INITMENUPOPUP = 0x0117;

/// @nodoc
const WM_GESTURE = 0x0119;

/// @nodoc
const WM_GESTURENOTIFY = 0x011A;

/// @nodoc
const WM_MENUSELECT = 0x011F;

/// @nodoc
const WM_MENUCHAR = 0x0120;

/// @nodoc
const WM_ENTERIDLE = 0x0121;

/// @nodoc
const WM_MENURBUTTONUP = 0x0122;

/// @nodoc
const WM_MENUDRAG = 0x0123;

/// @nodoc
const WM_MENUGETOBJECT = 0x0124;

/// @nodoc
const WM_UNINITMENUPOPUP = 0x0125;

/// @nodoc
const WM_MENUCOMMAND = 0x0126;

/// @nodoc
const WM_CHANGEUISTATE = 0x0127;

/// @nodoc
const WM_UPDATEUISTATE = 0x0128;

/// @nodoc
const WM_QUERYUISTATE = 0x0129;

/// @nodoc
const WM_CTLCOLORMSGBOX = 0x0132;

/// @nodoc
const WM_CTLCOLOREDIT = 0x0133;

/// @nodoc
const WM_CTLCOLORLISTBOX = 0x0134;

/// @nodoc
const WM_CTLCOLORBTN = 0x0135;

/// @nodoc
const WM_CTLCOLORDLG = 0x0136;

/// @nodoc
const WM_CTLCOLORSCROLLBAR = 0x0137;

/// @nodoc
const WM_CTLCOLORSTATIC = 0x0138;

/// @nodoc
const MN_GETHMENU = 0x01E1;

/// @nodoc
const WM_MOUSEFIRST = 0x0200;

/// @nodoc
const WM_MOUSEMOVE = 0x0200;

/// @nodoc
const WM_LBUTTONDOWN = 0x0201;

/// @nodoc
const WM_LBUTTONUP = 0x0202;

/// @nodoc
const WM_LBUTTONDBLCLK = 0x0203;

/// @nodoc
const WM_RBUTTONDOWN = 0x0204;

/// @nodoc
const WM_RBUTTONUP = 0x0205;

/// @nodoc
const WM_RBUTTONDBLCLK = 0x0206;

/// @nodoc
const WM_MBUTTONDOWN = 0x0207;

/// @nodoc
const WM_MBUTTONUP = 0x0208;

/// @nodoc
const WM_MBUTTONDBLCLK = 0x0209;

/// @nodoc
const WM_MOUSEWHEEL = 0x020A;

/// @nodoc
const WM_XBUTTONDOWN = 0x020B;

/// @nodoc
const WM_XBUTTONUP = 0x020C;

/// @nodoc
const WM_XBUTTONDBLCLK = 0x020D;

/// @nodoc
const WM_MOUSEHWHEEL = 0x020E;

/// @nodoc
const WM_MOUSELAST = 0x020E;

/// @nodoc
const WM_CUT = 0x0300;

/// @nodoc
const WM_COPY = 0x0301;

/// @nodoc
const WM_PASTE = 0x0302;

/// @nodoc
const WM_CLEAR = 0x0303;

/// @nodoc
const WM_UNDO = 0x0304;

/// @nodoc
const WM_RENDERFORMAT = 0x0305;

/// @nodoc
const WM_RENDERALLFORMATS = 0x0306;

/// @nodoc
const WM_DESTROYCLIPBOARD = 0x0307;

/// @nodoc
const WM_DRAWCLIPBOARD = 0x0308;

/// @nodoc
const WM_PAINTCLIPBOARD = 0x0309;

/// @nodoc
const WM_VSCROLLCLIPBOARD = 0x030A;

/// @nodoc
const WM_SIZECLIPBOARD = 0x030B;

/// @nodoc
const WM_ASKCBFORMATNAME = 0x030C;

/// @nodoc
const WM_CHANGECBCHAIN = 0x030D;

/// @nodoc
const WM_HSCROLLCLIPBOARD = 0x030E;

/// @nodoc
const WM_QUERYNEWPALETTE = 0x030F;

/// @nodoc
const WM_PALETTEISCHANGING = 0x0310;

/// @nodoc
const WM_PALETTECHANGED = 0x0311;

/// @nodoc
const WM_HOTKEY = 0x0312;

/// @nodoc
const FVIRTKEY = TRUE;

/// @nodoc
const FNOINVERT = 0x02;

/// @nodoc
const FSHIFT = 0x04;

/// @nodoc
const FCONTROL = 0x08;

/// @nodoc
const FALT = 0x10;

/// @nodoc
const LF_FACESIZE = 32;

/// @nodoc
const LF_FULLFACESIZE = 64;

// ShowWindow constants

/// @nodoc
const SW_HIDE = 0;

/// @nodoc
const SW_SHOWNORMAL = 1;

/// @nodoc
const SW_SHOWMINIMIZED = 2;

/// @nodoc
const SW_MAXIMIZE = 3;

/// @nodoc
const SW_SHOWMAXIMIZED = 3;

/// @nodoc
const SW_SHOWNOACTIVATE = 4;

/// @nodoc
const SW_SHOW = 5;

/// @nodoc
const SW_MINIMIZE = 6;

/// @nodoc
const SW_SHOWMINNOACTIVE = 7;

/// @nodoc
const SW_SHOWNA = 8;

/// @nodoc
const SW_RESTORE = 9;

/// @nodoc
const SW_SHOWDEFAULT = 10;

/// @nodoc
const SW_FORCEMINIMIZE = 11;

// Edit Control constants

/// @nodoc
const ES_LEFT = 0x0000;

/// @nodoc
const ES_CENTER = 0x0001;

/// @nodoc
const ES_RIGHT = 0x0002;

/// @nodoc
const ES_MULTILINE = 0x0004;

/// @nodoc
const ES_UPPERCASE = 0x0008;

/// @nodoc
const ES_LOWERCASE = 0x0010;

/// @nodoc
const ES_PASSWORD = 0x0020;

/// @nodoc
const ES_AUTOVSCROLL = 0x0040;

/// @nodoc
const ES_AUTOHSCROLL = 0x0080;

/// @nodoc
const ES_NOHIDESEL = 0x0100;

/// @nodoc
const ES_OEMCONVERT = 0x0400;

/// @nodoc
const ES_READONLY = 0x0800;

/// @nodoc
const ES_WANTRETURN = 0x1000;

/// @nodoc
const ES_NUMBER = 0x2000;

/// @nodoc
const EN_SETFOCUS = 0x0100;

/// @nodoc
const EN_KILLFOCUS = 0x0200;

/// @nodoc
const EN_CHANGE = 0x0300;

/// @nodoc
const EN_UPDATE = 0x0400;

/// @nodoc
const EN_ERRSPACE = 0x0500;

/// @nodoc
const EN_MAXTEXT = 0x0501;

/// @nodoc
const EN_HSCROLL = 0x0601;

/// @nodoc
const EN_VSCROLL = 0x0602;

/// @nodoc
const EN_ALIGN_LTR_EC = 0x0700;

/// @nodoc
const EN_ALIGN_RTL_EC = 0x0701;

/// @nodoc
const EN_BEFORE_PASTE = 0x0800;

/// @nodoc
const EN_AFTER_PASTE = 0x0801;

/// @nodoc
const EC_LEFTMARGIN = 0x0001;

/// @nodoc
const EC_RIGHTMARGIN = 0x0002;

/// @nodoc
const EC_USEFONTINFO = 0xffff;

// Edit Control messages

/// @nodoc
const EM_GETSEL = 0x00B0;

/// @nodoc
const EM_SETSEL = 0x00B1;

/// @nodoc
const EM_GETRECT = 0x00B2;

/// @nodoc
const EM_SETRECT = 0x00B3;

/// @nodoc
const EM_SETRECTNP = 0x00B4;

/// @nodoc
const EM_SCROLL = 0x00B5;

/// @nodoc
const EM_LINESCROLL = 0x00B6;

/// @nodoc
const EM_SCROLLCARET = 0x00B7;

/// @nodoc
const EM_GETMODIFY = 0x00B8;

/// @nodoc
const EM_SETMODIFY = 0x00B9;

/// @nodoc
const EM_GETLINECOUNT = 0x00BA;

/// @nodoc
const EM_LINEINDEX = 0x00BB;

/// @nodoc
const EM_SETHANDLE = 0x00BC;

/// @nodoc
const EM_GETHANDLE = 0x00BD;

/// @nodoc
const EM_GETTHUMB = 0x00BE;

/// @nodoc
const EM_LINELENGTH = 0x00C1;

/// @nodoc
const EM_REPLACESEL = 0x00C2;

/// @nodoc
const EM_GETLINE = 0x00C4;

/// @nodoc
const EM_LIMITTEXT = 0x00C5;

/// @nodoc
const EM_CANUNDO = 0x00C6;

/// @nodoc
const EM_UNDO = 0x00C7;

/// @nodoc
const EM_FMTLINES = 0x00C8;

/// @nodoc
const EM_LINEFROMCHAR = 0x00C9;

/// @nodoc
const EM_SETTABSTOPS = 0x00CB;

/// @nodoc
const EM_SETPASSWORDCHAR = 0x00CC;

/// @nodoc
const EM_EMPTYUNDOBUFFER = 0x00CD;

/// @nodoc
const EM_GETFIRSTVISIBLELINE = 0x00CE;

/// @nodoc
const EM_SETREADONLY = 0x00CF;

/// @nodoc
const EM_SETWORDBREAKPROC = 0x00D0;

/// @nodoc
const EM_GETWORDBREAKPROC = 0x00D1;

/// @nodoc
const EM_GETPASSWORDCHAR = 0x00D2;

/// @nodoc
const EM_SETMARGINS = 0x00D3;

/// @nodoc
const EM_GETMARGINS = 0x00D4;

/// @nodoc
const EM_SETLIMITTEXT = EM_LIMITTEXT;

/// @nodoc
const EM_GETLIMITTEXT = 0x00D5;

/// @nodoc
const EM_POSFROMCHAR = 0x00D6;

/// @nodoc
const EM_CHARFROMPOS = 0x00D7;

/// @nodoc
const EM_SETIMESTATUS = 0x00D8;

/// @nodoc
const EM_GETIMESTATUS = 0x00D9;

/// @nodoc
const EM_ENABLEFEATURE = 0x00DA;

// Menu flags

/// @nodoc
const MF_INSERT = 0x00000000;

/// @nodoc
const MF_CHANGE = 0x00000080;

/// @nodoc
const MF_APPEND = 0x00000100;

/// @nodoc
const MF_DELETE = 0x00000200;

/// @nodoc
const MF_REMOVE = 0x00001000;

/// @nodoc
const MF_BYCOMMAND = 0x00000000;

/// @nodoc
const MF_BYPOSITION = 0x00000400;

/// @nodoc
const MF_SEPARATOR = 0x00000800;

/// @nodoc
const MF_ENABLED = 0x00000000;

/// @nodoc
const MF_GRAYED = 0x00000001;

/// @nodoc
const MF_DISABLED = 0x00000002;

/// @nodoc
const MF_UNCHECKED = 0x00000000;

/// @nodoc
const MF_CHECKED = 0x00000008;

/// @nodoc
const MF_USECHECKBITMAPS = 0x00000200;

/// @nodoc
const MF_STRING = 0x00000000;

/// @nodoc
const MF_BITMAP = 0x00000004;

/// @nodoc
const MF_OWNERDRAW = 0x00000100;

/// @nodoc
const MF_POPUP = 0x00000010;

/// @nodoc
const MF_MENUBARBREAK = 0x00000020;

/// @nodoc
const MF_MENUBREAK = 0x00000040;

/// @nodoc
const MF_UNHILITE = 0x00000000;

/// @nodoc
const MF_HILITE = 0x00000080;

/// @nodoc
const MF_DEFAULT = 0x00001000;

/// @nodoc
const MF_SYSMENU = 0x00002000;

/// @nodoc
const MF_HELP = 0x00004000;

/// @nodoc
const MF_RIGHTJUSTIFY = 0x00004000;

/// @nodoc
const MF_MOUSESELECT = 0x00008000;

/// @nodoc
const MF_END = 0x00000080;

/// @nodoc
const ANSI_CHARSET = 0;

/// @nodoc
const DEFAULT_CHARSET = 1;

/// @nodoc
const SYMBOL_CHARSET = 2;

/// @nodoc
const SHIFTJIS_CHARSET = 128;

/// @nodoc
const HANGEUL_CHARSET = 129;

/// @nodoc
const HANGUL_CHARSET = 129;

/// @nodoc
const GB2312_CHARSET = 134;

/// @nodoc
const CHINESEBIG5_CHARSET = 136;

/// @nodoc
const OEM_CHARSET = 255;

/// @nodoc
const JOHAB_CHARSET = 130;

/// @nodoc
const HEBREW_CHARSET = 177;

/// @nodoc
const ARABIC_CHARSET = 178;

/// @nodoc
const GREEK_CHARSET = 161;

/// @nodoc
const TURKISH_CHARSET = 162;

/// @nodoc
const VIETNAMESE_CHARSET = 163;

/// @nodoc
const THAI_CHARSET = 222;

/// @nodoc
const EASTEUROPE_CHARSET = 238;

/// @nodoc
const RUSSIAN_CHARSET = 204;

// ScrollInfo constants

/// @nodoc
const SIF_RANGE = 0x0001;

/// @nodoc
const SIF_PAGE = 0x0002;

/// @nodoc
const SIF_POS = 0x0004;

/// @nodoc
const SIF_DISABLENOSCROLL = 0x0008;

/// @nodoc
const SIF_TRACKPOS = 0x0010;

/// @nodoc
const SIF_ALL = (SIF_RANGE | SIF_PAGE | SIF_POS | SIF_TRACKPOS);

// Scrollbar constants

/// @nodoc
const SB_HORZ = 0;

/// @nodoc
const SB_VERT = 1;

/// @nodoc
const SB_CTL = 2;

/// @nodoc
const SB_BOTH = 3;

/// @nodoc
const SB_LINEUP = 0;

/// @nodoc
const SB_LINELEFT = 0;

/// @nodoc
const SB_LINEDOWN = 1;

/// @nodoc
const SB_LINERIGHT = 1;

/// @nodoc
const SB_PAGEUP = 2;

/// @nodoc
const SB_PAGELEFT = 2;

/// @nodoc
const SB_PAGEDOWN = 3;

/// @nodoc
const SB_PAGERIGHT = 3;

/// @nodoc
const SB_THUMBPOSITION = 4;

/// @nodoc
const SB_THUMBTRACK = 5;

/// @nodoc
const SB_TOP = 6;

/// @nodoc
const SB_LEFT = 6;

/// @nodoc
const SB_BOTTOM = 7;

/// @nodoc
const SB_RIGHT = 7;

/// @nodoc
const SB_ENDSCROLL = 8;

// DrawText constants

/// @nodoc
const DT_TOP = 0x000;

/// @nodoc
const DT_LEFT = 0x000;

/// @nodoc
const DT_CENTER = 0x001;

/// @nodoc
const DT_RIGHT = 0x002;

/// @nodoc
const DT_VCENTER = 0x004;

/// @nodoc
const DT_BOTTOM = 0x008;

/// @nodoc
const DT_WORDBREAK = 0x0010;

/// @nodoc
const DT_SINGLELINE = 0x0020;

// Class styles

/// @nodoc
const CS_VREDRAW = 0x0001;

/// @nodoc
const CS_HREDRAW = 0x0002;

/// @nodoc
const CS_DBLCLKS = 0x0008;

/// @nodoc
const CS_OWNDC = 0x0020;

/// @nodoc
const CS_CLASSDC = 0x0040;

/// @nodoc
const CS_PARENTDC = 0x0080;

/// @nodoc
const CS_NOCLOSE = 0x0200;

/// @nodoc
const CS_SAVEBITS = 0x0800;

/// @nodoc
const CS_BYTEALIGNCLIENT = 0x1000;

/// @nodoc
const CS_BYTEALIGNWINDOW = 0x2000;

/// @nodoc
const CS_GLOBALCLASS = 0x4000;

/// @nodoc
const CS_IME = 0x00010000;

/// @nodoc
const CS_DROPSHADOW = 0x00020000;

// ControlWord constant

/// @nodoc
const CW_USEDEFAULT = 0x80000000;

// Common Dialog window strings

/// @nodoc
const LBSELCHSTRING = 'commdlg_LBSelChangedNotify';

/// @nodoc
const SHAREVISTRING = 'commdlg_ShareViolation';

/// @nodoc
const FILEOKSTRING = 'commdlg_FileNameOK';

/// @nodoc
const COLOROKSTRING = 'commdlg_ColorOK';

/// @nodoc
const SETRGBSTRING = 'commdlg_SetRGBColor';

/// @nodoc
const HELPMSGSTRING = 'commdlg_help';

/// @nodoc
const FINDMSGSTRING = 'commdlg_FindReplace';

// Font Common Dialog constants

/// @nodoc
const CF_SCREENFONTS = 0x00000001;

/// @nodoc
const CF_PRINTERFONTS = 0x00000002;

/// @nodoc
const CF_BOTH = (CF_SCREENFONTS | CF_PRINTERFONTS);

/// @nodoc
const CF_SHOWHELP = 0x00000004;

/// @nodoc
const CF_ENABLEHOOK = 0x00000008;

/// @nodoc
const CF_ENABLETEMPLATE = 0x00000010;

/// @nodoc
const CF_ENABLETEMPLATEHANDLE = 0x00000020;

/// @nodoc
const CF_INITTOLOGFONTSTRUCT = 0x00000040;

/// @nodoc
const CF_USESTYLE = 0x00000080;

/// @nodoc
const CF_EFFECTS = 0x00000100;

/// @nodoc
const CF_APPLY = 0x00000200;

/// @nodoc
const CF_ANSIONLY = 0x00000400;

/// @nodoc
const CF_SCRIPTSONLY = CF_ANSIONLY;

/// @nodoc
const CF_NOVECTORFONTS = 0x00000800;

/// @nodoc
const CF_NOOEMFONTS = CF_NOVECTORFONTS;

/// @nodoc
const CF_NOSIMULATIONS = 0x00001000;

/// @nodoc
const CF_LIMITSIZE = 0x00002000;

/// @nodoc
const CF_FIXEDPITCHONLY = 0x00004000;

/// @nodoc
const CF_WYSIWYG = 0x00008000;

/// @nodoc
const CF_FORCEFONTEXIST = 0x00010000;

/// @nodoc
const CF_SCALABLEONLY = 0x00020000;

/// @nodoc
const CF_TTONLY = 0x00040000;

/// @nodoc
const CF_NOFACESEL = 0x00080000;

/// @nodoc
const CF_NOSTYLESEL = 0x00100000;

/// @nodoc
const CF_NOSIZESEL = 0x00200000;

/// @nodoc
const CF_SELECTSCRIPT = 0x00400000;

/// @nodoc
const CF_NOSCRIPTSEL = 0x00800000;

/// @nodoc
const CF_NOVERTFONTS = 0x01000000;

/// @nodoc
const CF_INACTIVEFONTS = 0x02000000;

// Find/Replace constants

/// @nodoc
const FR_DOWN = 0x00000001;

/// @nodoc
const FR_WHOLEWORD = 0x00000002;

/// @nodoc
const FR_MATCHCASE = 0x00000004;

/// @nodoc
const FR_FINDNEXT = 0x00000008;

/// @nodoc
const FR_REPLACE = 0x00000010;

/// @nodoc
const FR_REPLACEALL = 0x00000020;

/// @nodoc
const FR_DIALOGTERM = 0x00000040;

/// @nodoc
const FR_SHOWHELP = 0x00000080;

/// @nodoc
const FR_ENABLEHOOK = 0x00000100;

/// @nodoc
const FR_ENABLETEMPLATE = 0x00000200;

/// @nodoc
const FR_NOUPDOWN = 0x00000400;

/// @nodoc
const FR_NOMATCHCASE = 0x00000800;

/// @nodoc
const FR_NOWHOLEWORD = 0x00001000;

/// @nodoc
const FR_ENABLETEMPLATEHANDLE = 0x00002000;

/// @nodoc
const FR_HIDEUPDOWN = 0x00004000;

/// @nodoc
const FR_HIDEMATCHCASE = 0x00008000;

/// @nodoc
const FR_HIDEWHOLEWORD = 0x00010000;

/// @nodoc
const FR_RAW = 0x00020000;

/// @nodoc
const FR_SHOWWRAPAROUND = 0x00040000;

/// @nodoc
const FR_NOWRAPAROUND = 0x00080000;

/// @nodoc
const FR_WRAPAROUND = 0x00100000;

/// @nodoc
const FR_MATCHDIAC = 0x20000000;

/// @nodoc
const FR_MATCHKASHIDA = 0x40000000;

/// @nodoc
const FR_MATCHALEFHAMZA = 0x80000000;

// Open File Common Dialog constants

/// @nodoc
const OFN_READONLY = 0x00000001;

/// @nodoc
const OFN_OVERWRITEPROMPT = 0x00000002;

/// @nodoc
const OFN_HIDEREADONLY = 0x00000004;

/// @nodoc
const OFN_NOCHANGEDIR = 0x00000008;

/// @nodoc
const OFN_SHOWHELP = 0x00000010;

/// @nodoc
const OFN_ENABLEHOOK = 0x00000020;

/// @nodoc
const OFN_ENABLETEMPLATE = 0x00000040;

/// @nodoc
const OFN_ENABLETEMPLATEHANDLE = 0x00000080;

/// @nodoc
const OFN_NOVALIDATE = 0x00000100;

/// @nodoc
const OFN_ALLOWMULTISELECT = 0x00000200;

/// @nodoc
const OFN_EXTENSIONDIFFERENT = 0x00000400;

/// @nodoc
const OFN_PATHMUSTEXIST = 0x00000800;

/// @nodoc
const OFN_FILEMUSTEXIST = 0x00001000;

/// @nodoc
const OFN_CREATEPROMPT = 0x00002000;

/// @nodoc
const OFN_SHAREAWARE = 0x00004000;

/// @nodoc
const OFN_NOREADONLYRETURN = 0x00008000;

/// @nodoc
const OFN_NOTESTFILECREATE = 0x00010000;

/// @nodoc
const OFN_NONETWORKBUTTON = 0x00020000;

/// @nodoc
const OFN_NOLONGNAMES = 0x00040000;

/// @nodoc
const OFN_EXPLORER = 0x00080000;

/// @nodoc
const OFN_NODEREFERENCELINKS = 0x00100000;

/// @nodoc
const OFN_LONGNAMES = 0x00200000;

/// @nodoc
const OFN_ENABLEINCLUDENOTIFY = 0x00400000;

/// @nodoc
const OFN_ENABLESIZING = 0x00800000;

/// @nodoc
const OFN_DONTADDTORECENT = 0x02000000;

/// @nodoc
const OFN_FORCESHOWHIDDEN = 0x10000000;

/// @nodoc
const OFN_EX_NOPLACESBAR = 0x00000001;

// Color Common Dialog constants

/// @nodoc
const CC_RGBINIT = 0x00000001;

/// @nodoc
const CC_FULLOPEN = 0x00000002;

/// @nodoc
const CC_PREVENTFULLOPEN = 0x00000004;

/// @nodoc
const CC_SHOWHELP = 0x00000008;

/// @nodoc
const CC_ENABLEHOOK = 0x00000010;

/// @nodoc
const CC_ENABLETEMPLATE = 0x00000020;

/// @nodoc
const CC_ENABLETEMPLATEHANDLE = 0x00000040;

/// @nodoc
const CC_SOLIDCOLOR = 0x00000080;

/// @nodoc
const CC_ANYCOLOR = 0x00000100;
// PeekMessage options

/// @nodoc
const PM_NOREMOVE = 0x0000;

/// @nodoc
const PM_REMOVE = 0x0001;

/// @nodoc
const PM_NOYIELD = 0x0002;

// System colors

/// @nodoc
const COLOR_SCROLLBAR = 0;

/// @nodoc
const COLOR_BACKGROUND = 1;

/// @nodoc
const COLOR_ACTIVECAPTION = 2;

/// @nodoc
const COLOR_INACTIVECAPTION = 3;

/// @nodoc
const COLOR_MENU = 4;

/// @nodoc
const COLOR_WINDOW = 5;

/// @nodoc
const COLOR_WINDOWFRAME = 6;

/// @nodoc
const COLOR_MENUTEXT = 7;

/// @nodoc
const COLOR_WINDOWTEXT = 8;

/// @nodoc
const COLOR_CAPTIONTEXT = 9;

/// @nodoc
const COLOR_ACTIVEBORDER = 10;

/// @nodoc
const COLOR_INACTIVEBORDER = 11;

/// @nodoc
const COLOR_APPWORKSPACE = 12;

/// @nodoc
const COLOR_HIGHLIGHT = 13;

/// @nodoc
const COLOR_HIGHLIGHTTEXT = 14;

/// @nodoc
const COLOR_BTNFACE = 15;

/// @nodoc
const COLOR_BTNSHADOW = 16;

/// @nodoc
const COLOR_GRAYTEXT = 17;

/// @nodoc
const COLOR_BTNTEXT = 18;

/// @nodoc
const COLOR_INACTIVECAPTIONTEXT = 19;

/// @nodoc
const COLOR_BTNHIGHLIGHT = 20;

// Stock logical objects

/// @nodoc
const WHITE_BRUSH = 0;

/// @nodoc
const LTGRAY_BRUSH = 1;

/// @nodoc
const GRAY_BRUSH = 2;

/// @nodoc
const DKGRAY_BRUSH = 3;

/// @nodoc
const BLACK_BRUSH = 4;

/// @nodoc
const NULL_BRUSH = 5;

/// @nodoc
const HOLLOW_BRUSH = NULL_BRUSH;

/// @nodoc
const WHITE_PEN = 6;

/// @nodoc
const BLACK_PEN = 7;

/// @nodoc
const NULL_PEN = 8;

/// @nodoc
const OEM_FIXED_FONT = 10;

/// @nodoc
const ANSI_FIXED_FONT = 11;

/// @nodoc
const ANSI_VAR_FONT = 12;

/// @nodoc
const SYSTEM_FONT = 13;

/// @nodoc
const DEVICE_DEFAULT_FONT = 14;

/// @nodoc
const DEFAULT_PALETTE = 15;

/// @nodoc
const SYSTEM_FIXED_FONT = 16;

// In the original header files, these take the form:
//   #define IDI_APPLICATION     MAKEINTRESOURCE(32512)
// The MAKEINTRESOURCE() macro creates a pointer to a known memory address. The
// address itself has no meaning other than as a marker.

/// @nodoc
final IDI_APPLICATION = Pointer<Utf16>.fromAddress(32512);

/// @nodoc
final IDI_HAND = Pointer<Utf16>.fromAddress(32513);

/// @nodoc
final IDI_QUESTION = Pointer<Utf16>.fromAddress(32514);

/// @nodoc
final IDI_EXCLAMATION = Pointer<Utf16>.fromAddress(32515);

/// @nodoc
final IDI_ASTERISK = Pointer<Utf16>.fromAddress(32516);

/// @nodoc
final IDI_WINLOGO = Pointer<Utf16>.fromAddress(32517);

/// @nodoc
final IDI_SHIELD = Pointer<Utf16>.fromAddress(32518);

/// @nodoc
final IDI_WARNING = IDI_EXCLAMATION;

/// @nodoc
final IDI_ERROR = IDI_HAND;

/// @nodoc
final IDI_INFORMATION = IDI_ASTERISK;

// Stock cursors
/// @nodoc
final IDC_ARROW = Pointer<Utf16>.fromAddress(32512);

/// @nodoc
final IDC_IBEAM = Pointer<Utf16>.fromAddress(32513);

/// @nodoc
final IDC_WAIT = Pointer<Utf16>.fromAddress(32514);

/// @nodoc
final IDC_CROSS = Pointer<Utf16>.fromAddress(32515);

/// @nodoc
final IDC_UPARROW = Pointer<Utf16>.fromAddress(32516);

// MessageBox flags

/// @nodoc
const MB_OK = 0x00000000;

/// @nodoc
const MB_OKCANCEL = 0x00000001;

/// @nodoc
const MB_ABORTRETRYIGNORE = 0x00000002;

/// @nodoc
const MB_YESNOCANCEL = 0x00000003;

/// @nodoc
const MB_YESNO = 0x00000004;

/// @nodoc
const MB_RETRYCANCEL = 0x00000005;

/// @nodoc
const MB_CANCELTRYCONTINUE = 0x00000006;

/// @nodoc
const MB_ICONHAND = 0x00000010;

/// @nodoc
const MB_ICONQUESTION = 0x00000020;

/// @nodoc
const MB_ICONEXCLAMATION = 0x00000030;

/// @nodoc
const MB_ICONASTERISK = 0x00000040;

/// @nodoc
const MB_USERICON = 0x00000080;

/// @nodoc
const MB_ICONWARNING = MB_ICONEXCLAMATION;

/// @nodoc
const MB_ICONERROR = MB_ICONHAND;

/// @nodoc
const MB_ICONINFORMATION = MB_ICONASTERISK;

/// @nodoc
const MB_ICONSTOP = MB_ICONHAND;

/// @nodoc
const MB_DEFBUTTON1 = 0x00000000;

/// @nodoc
const MB_DEFBUTTON2 = 0x00000100;

/// @nodoc
const MB_DEFBUTTON3 = 0x00000200;

/// @nodoc
const MB_DEFBUTTON4 = 0x00000300;

/// @nodoc
const MB_APPLMODAL = 0x00000000;

/// @nodoc
const MB_SYSTEMMODAL = 0x00001000;

/// @nodoc
const MB_TASKMODAL = 0x00002000;

/// @nodoc
const MB_HELP = 0x00004000;

/// @nodoc
const MB_NOFOCUS = 0x00008000;

/// @nodoc
const MB_SETFOREGROUND = 0x00010000;

/// @nodoc
const MB_DEFAULT_DESKTOP_ONLY = 0x00020000;

/// @nodoc
const MB_TOPMOST = 0x00040000;

/// @nodoc
const MB_RIGHT = 0x00080000;

/// @nodoc
const MB_RTLREADING = 0x00100000;

/// @nodoc
const MB_SERVICE_NOTIFICATION = 0x00200000;

// Mapping modes

/// @nodoc
const MM_TEXT = 1;

/// @nodoc
const MM_LOMETRIC = 2;

/// @nodoc
const MM_HIMETRIC = 3;

/// @nodoc
const MM_LOENGLISH = 4;

/// @nodoc
const MM_HIENGLISH = 5;

/// @nodoc
const MM_TWIPS = 6;

/// @nodoc
const MM_ISOTROPIC = 7;

/// @nodoc
const MM_ANISOTROPIC = 8;

/// @nodoc
const MM_MIN = MM_TEXT;

/// @nodoc
const MM_MAX = MM_ANISOTROPIC;

/// @nodoc
const MM_MAX_FIXEDSCALE = MM_TWIPS;

// Background modes

/// @nodoc
const TRANSPARENT = 1;

/// @nodoc
const OPAQUE = 2;

/// @nodoc
const BKMODE_LAST = 2;

// biCompression constants

/// @nodoc
const BI_RGB = 0;

/// @nodoc
const BI_RLE8 = 1;

/// @nodoc
const BI_RLE4 = 2;

/// @nodoc
const BI_BITFIELDS = 3;

/// @nodoc
const BI_JPEG = 4;

/// @nodoc
const BI_PNG = 5;

// DIB color table identifiers

/// @nodoc
const DIB_RGB_COLORS = 0;

/// @nodoc
const DIB_PAL_COLORS = 1;

/* Ternary raster operations */

/// @nodoc
const SRCCOPY = 0x00CC0020;

/// @nodoc
const SRCPAINT = 0x00EE0086;

/// @nodoc
const SRCAND = 0x008800C6;

/// @nodoc
const SRCINVERT = 0x00660046;

/// @nodoc
const SRCERASE = 0x00440328;

/// @nodoc
const NOTSRCCOPY = 0x00330008;

/// @nodoc
const NOTSRCERASE = 0x001100A6;

/// @nodoc
const MERGECOPY = 0x00C000CA;

/// @nodoc
const MERGEPAINT = 0x00BB0226;

/// @nodoc
const PATCOPY = 0x00F00021;

/// @nodoc
const PATPAINT = 0x00FB0A09;

/// @nodoc
const PATINVERT = 0x005A0049;

/// @nodoc
const DSTINVERT = 0x00550009;

/// @nodoc
const BLACKNESS = 0x00000042;

/// @nodoc
const WHITENESS = 0x00FF0062;

/// @nodoc
const NOMIRRORBITMAP = 0x80000000;

/// @nodoc
const CAPTUREBLT = 0x40000000;

// Dialog box command IDs

/// @nodoc
const IDOK = 1;

/// @nodoc
const IDCANCEL = 2;

/// @nodoc
const IDABORT = 3;

/// @nodoc
const IDRETRY = 4;

/// @nodoc
const IDIGNORE = 5;

/// @nodoc
const IDYES = 6;

/// @nodoc
const IDNO = 7;

/// @nodoc
const IDCLOSE = 8;

/// @nodoc
const IDHELP = 9;

/// @nodoc
const IDTRYAGAIN = 10;

/// @nodoc
const IDCONTINUE = 11;

/// @nodoc
const IDTIMEOUT = 32000;

// Virtual keys

/// @nodoc
const VK_LBUTTON = 0x01;

/// @nodoc
const VK_RBUTTON = 0x02;

/// @nodoc
const VK_CANCEL = 0x03;

/// @nodoc
const VK_MBUTTON = 0x04;

/// @nodoc
const VK_XBUTTON1 = 0x05;

/// @nodoc
const VK_XBUTTON2 = 0x06;

/// @nodoc
const VK_BACK = 0x08;

/// @nodoc
const VK_TAB = 0x09;

/// @nodoc
const VK_CLEAR = 0x0C;

/// @nodoc
const VK_RETURN = 0x0D;

/// @nodoc
const VK_SHIFT = 0x10;

/// @nodoc
const VK_CONTROL = 0x11;

/// @nodoc
const VK_MENU = 0x12;

/// @nodoc
const VK_PAUSE = 0x13;

/// @nodoc
const VK_CAPITAL = 0x14;

/// @nodoc
const VK_KANA = 0x15;

/// @nodoc
const VK_HANGEUL = 0x15;

/// @nodoc
const VK_HANGUL = 0x15;

/// @nodoc
const VK_JUNJA = 0x17;

/// @nodoc
const VK_FINAL = 0x18;

/// @nodoc
const VK_HANJA = 0x19;

/// @nodoc
const VK_KANJI = 0x19;

/// @nodoc
const VK_ESCAPE = 0x1B;

/// @nodoc
const VK_CONVERT = 0x1C;

/// @nodoc
const VK_NONCONVERT = 0x1D;

/// @nodoc
const VK_ACCEPT = 0x1E;

/// @nodoc
const VK_MODECHANGE = 0x1F;

/// @nodoc
const VK_SPACE = 0x20;

/// @nodoc
const VK_PRIOR = 0x21;

/// @nodoc
const VK_NEXT = 0x22;

/// @nodoc
const VK_END = 0x23;

/// @nodoc
const VK_HOME = 0x24;

/// @nodoc
const VK_LEFT = 0x25;

/// @nodoc
const VK_UP = 0x26;

/// @nodoc
const VK_RIGHT = 0x27;

/// @nodoc
const VK_DOWN = 0x28;

/// @nodoc
const VK_SELECT = 0x29;

/// @nodoc
const VK_PRINT = 0x2A;

/// @nodoc
const VK_EXECUTE = 0x2B;

/// @nodoc
const VK_SNAPSHOT = 0x2C;

/// @nodoc
const VK_INSERT = 0x2D;

/// @nodoc
const VK_DELETE = 0x2E;

/// @nodoc
const VK_HELP = 0x2F;

/// @nodoc
const VK_LWIN = 0x5B;

/// @nodoc
const VK_RWIN = 0x5C;

/// @nodoc
const VK_APPS = 0x5D;

/// @nodoc
const VK_SLEEP = 0x5F;

/// @nodoc
const VK_NUMPAD0 = 0x60;

/// @nodoc
const VK_NUMPAD1 = 0x61;

/// @nodoc
const VK_NUMPAD2 = 0x62;

/// @nodoc
const VK_NUMPAD3 = 0x63;

/// @nodoc
const VK_NUMPAD4 = 0x64;

/// @nodoc
const VK_NUMPAD5 = 0x65;

/// @nodoc
const VK_NUMPAD6 = 0x66;

/// @nodoc
const VK_NUMPAD7 = 0x67;

/// @nodoc
const VK_NUMPAD8 = 0x68;

/// @nodoc
const VK_NUMPAD9 = 0x69;

/// @nodoc
const VK_MULTIPLY = 0x6A;

/// @nodoc
const VK_ADD = 0x6B;

/// @nodoc
const VK_SEPARATOR = 0x6C;

/// @nodoc
const VK_SUBTRACT = 0x6D;

/// @nodoc
const VK_DECIMAL = 0x6E;

/// @nodoc
const VK_DIVIDE = 0x6F;

/// @nodoc
const VK_F1 = 0x70;

/// @nodoc
const VK_F2 = 0x71;

/// @nodoc
const VK_F3 = 0x72;

/// @nodoc
const VK_F4 = 0x73;

/// @nodoc
const VK_F5 = 0x74;

/// @nodoc
const VK_F6 = 0x75;

/// @nodoc
const VK_F7 = 0x76;

/// @nodoc
const VK_F8 = 0x77;

/// @nodoc
const VK_F9 = 0x78;

/// @nodoc
const VK_F10 = 0x79;

/// @nodoc
const VK_F11 = 0x7A;

/// @nodoc
const VK_F12 = 0x7B;

/// @nodoc
const VK_F13 = 0x7C;

/// @nodoc
const VK_F14 = 0x7D;

/// @nodoc
const VK_F15 = 0x7E;

/// @nodoc
const VK_F16 = 0x7F;

/// @nodoc
const VK_F17 = 0x80;

/// @nodoc
const VK_F18 = 0x81;

/// @nodoc
const VK_F19 = 0x82;

/// @nodoc
const VK_F20 = 0x83;

/// @nodoc
const VK_F21 = 0x84;

/// @nodoc
const VK_F22 = 0x85;

/// @nodoc
const VK_F23 = 0x86;

/// @nodoc
const VK_F24 = 0x87;

/// @nodoc
const VK_NUMLOCK = 0x90;

/// @nodoc
const VK_SCROLL = 0x91;

/// @nodoc
const VK_LSHIFT = 0xA0;

/// @nodoc
const VK_RSHIFT = 0xA1;

/// @nodoc
const VK_LCONTROL = 0xA2;

/// @nodoc
const VK_RCONTROL = 0xA3;

/// @nodoc
const VK_LMENU = 0xA4;

/// @nodoc
const VK_RMENU = 0xA5;

/// @nodoc
const VK_BROWSER_BACK = 0xA6;

/// @nodoc
const VK_BROWSER_FORWARD = 0xA7;

/// @nodoc
const VK_BROWSER_REFRESH = 0xA8;

/// @nodoc
const VK_BROWSER_STOP = 0xA9;

/// @nodoc
const VK_BROWSER_SEARCH = 0xAA;

/// @nodoc
const VK_BROWSER_FAVORITES = 0xAB;

/// @nodoc
const VK_BROWSER_HOME = 0xAC;

/// @nodoc
const VK_VOLUME_MUTE = 0xAD;

/// @nodoc
const VK_VOLUME_DOWN = 0xAE;

/// @nodoc
const VK_VOLUME_UP = 0xAF;

/// @nodoc
const VK_MEDIA_NEXT_TRACK = 0xB0;

/// @nodoc
const VK_MEDIA_PREV_TRACK = 0xB1;

/// @nodoc
const VK_MEDIA_STOP = 0xB2;

/// @nodoc
const VK_MEDIA_PLAY_PAUSE = 0xB3;

/// @nodoc
const VK_LAUNCH_MAIL = 0xB4;

/// @nodoc
const VK_LAUNCH_MEDIA_SELECT = 0xB5;

/// @nodoc
const VK_LAUNCH_APP1 = 0xB6;

/// @nodoc
const VK_LAUNCH_APP2 = 0xB7;

/// @nodoc
const VK_OEM_1 = 0xBA;

/// @nodoc
const VK_OEM_PLUS = 0xBB;

/// @nodoc
const VK_OEM_COMMA = 0xBC;

/// @nodoc
const VK_OEM_MINUS = 0xBD;

/// @nodoc
const VK_OEM_PERIOD = 0xBE;

/// @nodoc
const VK_OEM_2 = 0xBF;

/// @nodoc
const VK_OEM_3 = 0xC0;

/// @nodoc
const VK_OEM_4 = 0xDB;

/// @nodoc
const VK_OEM_5 = 0xDC;

/// @nodoc
const VK_OEM_6 = 0xDD;

/// @nodoc
const VK_OEM_7 = 0xDE;

/// @nodoc
const VK_OEM_8 = 0xDF;

/// @nodoc
const VK_OEM_AX = 0xE1;

/// @nodoc
const VK_OEM_102 = 0xE2;

/// @nodoc
const VK_ICO_HELP = 0xE3;

/// @nodoc
const VK_ICO_00 = 0xE4;

/// @nodoc
const VK_PROCESSKEY = 0xE5;

/// @nodoc
const VK_ICO_CLEAR = 0xE6;

/// @nodoc
const VK_PACKET = 0xE7;

/// @nodoc
const CF_TEXT = 1;

/// @nodoc
const CF_BITMAP = 2;

/// @nodoc
const CF_METAFILEPICT = 3;

/// @nodoc
const CF_SYLK = 4;

/// @nodoc
const CF_DIF = 5;

/// @nodoc
const CF_TIFF = 6;

/// @nodoc
const CF_OEMTEXT = 7;

/// @nodoc
const CF_DIB = 8;

/// @nodoc
const CF_PALETTE = 9;

/// @nodoc
const CF_PENDATA = 10;

/// @nodoc
const CF_RIFF = 11;

/// @nodoc
const CF_WAVE = 12;

/// @nodoc
const CF_UNICODETEXT = 13;

/// @nodoc
const CF_ENHMETAFILE = 14;

/// @nodoc
const CF_HDROP = 15;

/// @nodoc
const CF_LOCALE = 16;

/// @nodoc
const CF_DIBV5 = 17;

/// @nodoc
const CF_MAX = 18;

/// @nodoc
const CF_OWNERDISPLAY = 0x0080;

/// @nodoc
const CF_DSPTEXT = 0x0081;

/// @nodoc
const CF_DSPBITMAP = 0x0082;

/// @nodoc
const CF_DSPMETAFILEPICT = 0x0083;

/// @nodoc
const CF_DSPENHMETAFILE = 0x008E;

/// @nodoc
const CF_PRIVATEFIRST = 0x0200;

/// @nodoc
const CF_PRIVATELAST = 0x02FF;

/// @nodoc
const CF_GDIOBJFIRST = 0x0300;

/// @nodoc
const CF_GDIOBJLAST = 0x03FF;

// Input types

/// @nodoc
const INPUT_MOUSE = 0;

/// @nodoc
const INPUT_KEYBOARD = 1;

/// @nodoc
const INPUT_HARDWARE = 2;

// Keyboard and mouse events

/// @nodoc
const KEYEVENTF_EXTENDEDKEY = 0x0001;

/// @nodoc
const KEYEVENTF_KEYUP = 0x0002;

/// @nodoc
const KEYEVENTF_UNICODE = 0x0004;

/// @nodoc
const KEYEVENTF_SCANCODE = 0x0008;

/// @nodoc
const MOUSEEVENTF_MOVE = 0x0001;

/// @nodoc
const MOUSEEVENTF_LEFTDOWN = 0x0002;

/// @nodoc
const MOUSEEVENTF_LEFTUP = 0x0004;

/// @nodoc
const MOUSEEVENTF_RIGHTDOWN = 0x0008;

/// @nodoc
const MOUSEEVENTF_RIGHTUP = 0x0010;

/// @nodoc
const MOUSEEVENTF_MIDDLEDOWN = 0x0020;

/// @nodoc
const MOUSEEVENTF_MIDDLEUP = 0x0040;

/// @nodoc
const MOUSEEVENTF_XDOWN = 0x0080;

/// @nodoc
const MOUSEEVENTF_XUP = 0x0100;

/// @nodoc
const MOUSEEVENTF_WHEEL = 0x0800;

/// @nodoc
const MOUSEEVENTF_HWHEEL = 0x01000;

/// @nodoc
const MOUSEEVENTF_MOVE_NOCOALESCE = 0x2000;

/// @nodoc
const MOUSEEVENTF_VIRTUALDESK = 0x4000;

/// @nodoc
const MOUSEEVENTF_ABSOLUTE = 0x8000;

// Classic Folder IDs

/// @nodoc
const CSIDL_DESKTOP = 0x0000;

/// @nodoc
const CSIDL_INTERNET = 0x0001;

/// @nodoc
const CSIDL_PROGRAMS = 0x0002;

/// @nodoc
const CSIDL_CONTROLS = 0x0003;

/// @nodoc
const CSIDL_PRINTERS = 0x0004;

/// @nodoc
const CSIDL_PERSONAL = 0x0005;

/// @nodoc
const CSIDL_FAVORITES = 0x0006;

/// @nodoc
const CSIDL_STARTUP = 0x0007;

/// @nodoc
const CSIDL_RECENT = 0x0008;

/// @nodoc
const CSIDL_SENDTO = 0x0009;

/// @nodoc
const CSIDL_BITBUCKET = 0x000a;

/// @nodoc
const CSIDL_STARTMENU = 0x000b;

/// @nodoc
const CSIDL_MYDOCUMENTS = CSIDL_PERSONAL;

/// @nodoc
const CSIDL_MYMUSIC = 0x000d;

/// @nodoc
const CSIDL_MYVIDEO = 0x000e;

/// @nodoc
const CSIDL_DESKTOPDIRECTORY = 0x0010;

/// @nodoc
const CSIDL_DRIVES = 0x0011;

/// @nodoc
const CSIDL_NETWORK = 0x0012;

/// @nodoc
const CSIDL_NETHOOD = 0x0013;

/// @nodoc
const CSIDL_FONTS = 0x0014;

/// @nodoc
const CSIDL_TEMPLATES = 0x0015;

/// @nodoc
const CSIDL_COMMON_STARTMENU = 0x0016;

/// @nodoc
const CSIDL_COMMON_PROGRAMS = 0X0017;

/// @nodoc
const CSIDL_COMMON_STARTUP = 0x0018;

/// @nodoc
const CSIDL_COMMON_DESKTOPDIRECTORY = 0x0019;

/// @nodoc
const CSIDL_APPDATA = 0x001a;

/// @nodoc
const CSIDL_PRINTHOOD = 0x001b;

/// @nodoc
const CSIDL_LOCAL_APPDATA = 0x001c;

/// @nodoc
const CSIDL_ALTSTARTUP = 0x001d;

/// @nodoc
const CSIDL_COMMON_ALTSTARTUP = 0x001e;

/// @nodoc
const CSIDL_COMMON_FAVORITES = 0x001f;

/// @nodoc
const CSIDL_INTERNET_CACHE = 0x0020;

/// @nodoc
const CSIDL_COOKIES = 0x0021;

/// @nodoc
const CSIDL_HISTORY = 0x0022;

/// @nodoc
const CSIDL_COMMON_APPDATA = 0x0023;

/// @nodoc
const CSIDL_WINDOWS = 0x0024;

/// @nodoc
const CSIDL_SYSTEM = 0x0025;

/// @nodoc
const CSIDL_PROGRAM_FILES = 0x0026;

/// @nodoc
const CSIDL_MYPICTURES = 0x0027;

/// @nodoc
const CSIDL_PROFILE = 0x0028;

/// @nodoc
const CSIDL_SYSTEMX86 = 0x0029;

/// @nodoc
const CSIDL_PROGRAM_FILESX86 = 0x002a;

/// @nodoc
const CSIDL_PROGRAM_FILES_COMMON = 0x002b;

/// @nodoc
const CSIDL_PROGRAM_FILES_COMMONX86 = 0x002c;

/// @nodoc
const CSIDL_COMMON_TEMPLATES = 0x002d;

/// @nodoc
const CSIDL_COMMON_DOCUMENTS = 0x002e;

/// @nodoc
const CSIDL_COMMON_ADMINTOOLS = 0x002f;

/// @nodoc
const CSIDL_ADMINTOOLS = 0x0030;

/// @nodoc
const CSIDL_CONNECTIONS = 0x0031;

/// @nodoc
const CSIDL_COMMON_MUSIC = 0x0035;

/// @nodoc
const CSIDL_COMMON_PICTURES = 0x0036;

/// @nodoc
const CSIDL_COMMON_VIDEO = 0x0037;

/// @nodoc
const CSIDL_RESOURCES = 0x0038;

/// @nodoc
const CSIDL_RESOURCES_LOCALIZED = 0x0039;

/// @nodoc
const CSIDL_COMMON_OEM_LINKS = 0x003a;

/// @nodoc
const CSIDL_CDBURN_AREA = 0x003b;

/// @nodoc
const CSIDL_COMPUTERSNEARME = 0x003d;

/// @nodoc
const CSIDL_FLAG_CREATE = 0x8000;

/// @nodoc
const CSIDL_FLAG_DONT_VERIFY = 0x4000;

/// @nodoc
const CSIDL_FLAG_DONT_UNEXPAND = 0x2000;

/// @nodoc
const CSIDL_FLAG_NO_ALIAS = 0x1000;

/// @nodoc
const CSIDL_FLAG_PER_USER_INIT = 0x0800;

/// @nodoc
const CSIDL_FLAG_MASK = 0xFF00;

// Process constants

/// @nodoc
const PROCESS_TERMINATE = 0x0001;

/// @nodoc
const PROCESS_CREATE_THREAD = 0x0002;

/// @nodoc
const PROCESS_SET_SESSIONID = 0x0004;

/// @nodoc
const PROCESS_VM_OPERATION = 0x0008;

/// @nodoc
const PROCESS_VM_READ = 0x0010;

/// @nodoc
const PROCESS_VM_WRITE = 0x0020;

/// @nodoc
const PROCESS_DUP_HANDLE = 0x0040;

/// @nodoc
const PROCESS_CREATE_PROCESS = 0x0080;

/// @nodoc
const PROCESS_SET_QUOTA = 0x0100;

/// @nodoc
const PROCESS_SET_INFORMATION = 0x0200;

/// @nodoc
const PROCESS_QUERY_INFORMATION = 0x0400;

/// @nodoc
const PROCESS_SUSPEND_RESUME = 0x0800;

/// @nodoc
const PROCESS_QUERY_LIMITED_INFORMATION = 0x1000;

/// @nodoc
const PROCESS_SET_LIMITED_INFORMATION = 0x2000;

/// @nodoc
const PROCESS_ALL_ACCESS = STANDARD_RIGHTS_REQUIRED | SYNCHRONIZE | 0xFFFF;

/// @nodoc
const PROC_THREAD_ATTRIBUTE_NUMBER = 0x0000FFFF;

/// @nodoc
const PROC_THREAD_ATTRIBUTE_THREAD = 0x00010000;

/// @nodoc
const PROC_THREAD_ATTRIBUTE_INPUT = 0x00020000;

/// @nodoc
const PROC_THREAD_ATTRIBUTE_ADDITIVE = 0x00040000;

/// @nodoc
const PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE =
    (PROC_THREAD_ATTRIBUTE_NUM.ProcThreadAttributePseudoConsole &
            PROC_THREAD_ATTRIBUTE_NUMBER) |
        PROC_THREAD_ATTRIBUTE_INPUT;

/// {@category Enum}
class PROC_THREAD_ATTRIBUTE_NUM {
  static const ProcThreadAttributeParentProcess = 0;
  static const ProcThreadAttributeHandleList = 2;
  static const ProcThreadAttributeGroupAffinity = 3;
  static const ProcThreadAttributePreferredNode = 4;
  static const ProcThreadAttributeIdealProcessor = 5;
  static const ProcThreadAttributeUmsThread = 6;
  static const ProcThreadAttributeMitigationPolicy = 7;
  static const ProcThreadAttributeSecurityCapabilities = 9;
  static const ProcThreadAttributeJobList = 13;
  static const ProcThreadAttributeChildProcessPolicy = 14;
  static const ProcThreadAttributeAllApplicationPackagesPolicy = 15;
  static const ProcThreadAttributeWin32kFilter = 16;
  static const ProcThreadAttributeSafeOpenPromptOriginClaim = 17;
  static const ProcThreadAttributeDesktopAppPolicy = 18;
  static const ProcThreadAttributePseudoConsole = 22;
}

// Process dwCreationFlags info

/// @nodoc
const DEBUG_PROCESS = 0x00000001;

/// @nodoc
const DEBUG_ONLY_THIS_PROCESS = 0x00000002;

/// @nodoc
const CREATE_SUSPENDED = 0x00000004;

/// @nodoc
const DETACHED_PROCESS = 0x00000008;

/// @nodoc
const CREATE_NEW_CONSOLE = 0x00000010;

/// @nodoc
const NORMAL_PRIORITY_CLASS = 0x00000020;

/// @nodoc
const IDLE_PRIORITY_CLASS = 0x00000040;

/// @nodoc
const HIGH_PRIORITY_CLASS = 0x00000080;

/// @nodoc
const REALTIME_PRIORITY_CLASS = 0x00000100;

/// @nodoc
const CREATE_NEW_PROCESS_GROUP = 0x00000200;

/// @nodoc
const CREATE_UNICODE_ENVIRONMENT = 0x00000400;

/// @nodoc
const CREATE_SEPARATE_WOW_VDM = 0x00000800;

/// @nodoc
const CREATE_SHARED_WOW_VDM = 0x00001000;

/// @nodoc
const CREATE_FORCEDOS = 0x00002000;

/// @nodoc
const BELOW_NORMAL_PRIORITY_CLASS = 0x00004000;

/// @nodoc
const ABOVE_NORMAL_PRIORITY_CLASS = 0x00008000;

/// @nodoc
const INHERIT_PARENT_AFFINITY = 0x00010000;

/// @nodoc
const INHERIT_CALLER_PRIORITY = 0x00020000;

/// @nodoc
const CREATE_PROTECTED_PROCESS = 0x00040000;

/// @nodoc
const EXTENDED_STARTUPINFO_PRESENT = 0x00080000;

/// @nodoc
const PROCESS_MODE_BACKGROUND_BEGIN = 0x00100000;

/// @nodoc
const PROCESS_MODE_BACKGROUND_END = 0x00200000;

/// @nodoc
const CREATE_SECURE_PROCESS = 0x00400000;

/// @nodoc
const CREATE_BREAKAWAY_FROM_JOB = 0x01000000;

/// @nodoc
const CREATE_PRESERVE_CODE_AUTHZ_LEVEL = 0x02000000;

/// @nodoc
const CREATE_DEFAULT_ERROR_MODE = 0x04000000;

/// @nodoc
const CREATE_NO_WINDOW = 0x08000000;

/// @nodoc
const PROFILE_USER = 0x10000000;

/// @nodoc
const PROFILE_KERNEL = 0x20000000;

/// @nodoc
const PROFILE_SERVER = 0x40000000;

/// @nodoc
const CREATE_IGNORE_SYSTEM_DEFAULT = 0x80000000;

// Process masks

/// @nodoc
const DELETE = 0x00010000;

/// @nodoc
const READ_CONTROL = 0x00020000;

/// @nodoc
const WRITE_DAC = 0x00040000;

/// @nodoc
const WRITE_OWNER = 0x00080000;

/// @nodoc
const SYNCHRONIZE = 0x00100000;

/// @nodoc
const STANDARD_RIGHTS_REQUIRED = 0x000F0000;

/// @nodoc
const STANDARD_RIGHTS_READ = READ_CONTROL;

/// @nodoc
const STANDARD_RIGHTS_WRITE = READ_CONTROL;

/// @nodoc
const STANDARD_RIGHTS_EXECUTE = READ_CONTROL;

/// @nodoc
const STANDARD_RIGHTS_ALL = 0x001F0000;

/// @nodoc
const SPECIFIC_RIGHTS_ALL = 0x0000FFFF;

// Registry keys

/// @nodoc
const HKEY_CLASSES_ROOT = 0x80000000;

/// @nodoc
const HKEY_CURRENT_USER = 0x80000001;

/// @nodoc
const HKEY_LOCAL_MACHINE = 0x80000002;

/// @nodoc
const HKEY_USERS = 0x80000003;

/// @nodoc
const HKEY_PERFORMANCE_DATA = 0x80000004;

/// @nodoc
const HKEY_PERFORMANCE_TEXT = 0x80000050;

/// @nodoc
const HKEY_PERFORMANCE_NLSTEXT = 0x80000060;

/// @nodoc
const HKEY_CURRENT_CONFIG = 0x80000005;

/// @nodoc
const HKEY_DYN_DATA = 0x80000006;

/// @nodoc
const HKEY_CURRENT_USER_LOCAL_SETTINGS = 0x80000007;

/// @nodoc
const RRF_RT_REG_NONE = 0x00000001;

/// @nodoc
const RRF_RT_REG_SZ = 0x00000002;

/// @nodoc
const RRF_RT_REG_EXPAND_SZ = 0x00000004;

/// @nodoc
const RRF_RT_REG_BINARY = 0x00000008;

/// @nodoc
const RRF_RT_REG_DWORD = 0x00000010;

/// @nodoc
const RRF_RT_REG_MULTI_SZ = 0x00000020;

/// @nodoc
const RRF_RT_REG_QWORD = 0x00000040;

/// @nodoc
const RRF_RT_DWORD = (RRF_RT_REG_BINARY | RRF_RT_REG_DWORD);

/// @nodoc
const RRF_RT_QWORD = (RRF_RT_REG_BINARY | RRF_RT_REG_QWORD);

/// @nodoc
const RRF_RT_ANY = 0x0000ffff;

/// @nodoc
const RRF_SUBKEY_WOW6464KEY = 0x00010000;

/// @nodoc
const RRF_SUBKEY_WOW6432KEY = 0x00020000;

/// @nodoc
const RRF_WOW64_MASK = 0x00030000;

/// @nodoc
const RRF_NOEXPAND = 0x10000000;

/// @nodoc
const RRF_ZEROONFAILURE = 0x20000000;

/// @nodoc
const REG_NONE = (0);

/// @nodoc
const REG_SZ = (1);

/// @nodoc
const REG_EXPAND_SZ = (2);

/// @nodoc
const REG_BINARY = (3);

/// @nodoc
const REG_DWORD = (4);

/// @nodoc
const REG_DWORD_LITTLE_ENDIAN = (4);

/// @nodoc
const REG_DWORD_BIG_ENDIAN = (5);

/// @nodoc
const REG_LINK = (6);

/// @nodoc
const REG_MULTI_SZ = (7);

/// @nodoc
const REG_RESOURCE_LIST = (8);

/// @nodoc
const REG_FULL_RESOURCE_DESCRIPTOR = (9);

/// @nodoc
const REG_RESOURCE_REQUIREMENTS_LIST = (10);

/// @nodoc
const REG_QWORD = (11);

/// @nodoc
const REG_QWORD_LITTLE_ENDIAN = (11);

/// @nodoc
const KEY_QUERY_VALUE = (0x0001);

/// @nodoc
const KEY_SET_VALUE = (0x0002);

/// @nodoc
const KEY_CREATE_SUB_KEY = (0x0004);

/// @nodoc
const KEY_ENUMERATE_SUB_KEYS = (0x0008);

/// @nodoc
const KEY_NOTIFY = (0x0010);

/// @nodoc
const KEY_CREATE_LINK = (0x0020);

/// @nodoc
const KEY_WOW64_32KEY = (0x0200);

/// @nodoc
const KEY_WOW64_64KEY = (0x0100);

/// @nodoc
const KEY_WOW64_RES = (0x0300);

/// @nodoc
const KEY_READ = ((STANDARD_RIGHTS_READ |
        KEY_QUERY_VALUE |
        KEY_ENUMERATE_SUB_KEYS |
        KEY_NOTIFY) &
    (~SYNCHRONIZE));

/// @nodoc
const KEY_WRITE =
    ((STANDARD_RIGHTS_WRITE | KEY_SET_VALUE | KEY_CREATE_SUB_KEY) &
        (~SYNCHRONIZE));

/// @nodoc
const KEY_EXECUTE = ((KEY_READ) & (~SYNCHRONIZE));

/// @nodoc
const KEY_ALL_ACCESS = ((STANDARD_RIGHTS_ALL |
        KEY_QUERY_VALUE |
        KEY_SET_VALUE |
        KEY_CREATE_SUB_KEY |
        KEY_ENUMERATE_SUB_KEYS |
        KEY_NOTIFY |
        KEY_CREATE_LINK) &
    (~SYNCHRONIZE));

// *** CONSOLE CONSTANTS ***

// Handles

/// @nodoc
const STD_INPUT_HANDLE = -10;

/// @nodoc
const STD_OUTPUT_HANDLE = -11;

/// @nodoc
const STD_ERROR_HANDLE = -12;

/// @nodoc
const INVALID_HANDLE_VALUE = -1;

/// @nodoc
const FOREGROUND_BLUE = 0x0001;

/// @nodoc
const FOREGROUND_GREEN = 0x0002;

/// @nodoc
const FOREGROUND_RED = 0x0004;

/// @nodoc
const FOREGROUND_INTENSITY = 0x0008;

/// @nodoc
const BACKGROUND_BLUE = 0x0010;

/// @nodoc
const BACKGROUND_GREEN = 0x0020;

/// @nodoc
const BACKGROUND_RED = 0x0040;

/// @nodoc
const BACKGROUND_INTENSITY = 0x0080;

// input flags

/// @nodoc
const ENABLE_ECHO_INPUT = 0x0004;

/// @nodoc
const ENABLE_EXTENDED_FLAGS = 0x0080;

/// @nodoc
const ENABLE_INSERT_MODE = 0x0020;

/// @nodoc
const ENABLE_LINE_INPUT = 0x0002;

/// @nodoc
const ENABLE_MOUSE_INPUT = 0x0010;

/// @nodoc
const ENABLE_PROCESSED_INPUT = 0x0001;

/// @nodoc
const ENABLE_QUICK_EDIT_MODE = 0x0040;

/// @nodoc
const ENABLE_WINDOW_INPUT = 0x0008;

/// @nodoc
const ENABLE_VIRTUAL_TERMINAL_INPUT = 0x0200;

// output flags

/// @nodoc
const ENABLE_PROCESSED_OUTPUT = 0x0001;

/// @nodoc
const ENABLE_WRAP_AT_EOL_OUTPUT = 0x0002;

/// @nodoc
const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x0004;

/// @nodoc
const DISABLE_NEWLINE_AUTO_RETURN = 0x0008;

/// @nodoc
const ENABLE_LVB_GRID_WORLDWIDE = 0x0010;

// Monitor APIs
/// @nodoc
const MONITOR_DEFAULTTONULL = 0x00000000;

/// @nodoc
const MONITOR_DEFAULTTOPRIMARY = 0x00000001;

/// @nodoc
const MONITOR_DEFAULTTONEAREST = 0x00000002;

/// @nodoc
const MONITORINFOF_PRIMARY = 0x00000001;

/// @nodoc
const MC_CAPS_NONE = 0x00000000;

/// @nodoc
const MC_CAPS_MONITOR_TECHNOLOGY_TYPE = 0x00000001;

/// @nodoc
const MC_CAPS_BRIGHTNESS = 0x00000002;

/// @nodoc
const MC_CAPS_CONTRAST = 0x00000004;

/// @nodoc
const MC_CAPS_COLOR_TEMPERATURE = 0x00000008;

/// @nodoc
const MC_CAPS_RED_GREEN_BLUE_GAIN = 0x00000010;

/// @nodoc
const MC_CAPS_RED_GREEN_BLUE_DRIVE = 0x00000020;

/// @nodoc
const MC_CAPS_DEGAUSS = 0x00000040;

/// @nodoc
const MC_CAPS_DISPLAY_AREA_POSITION = 0x00000080;

/// @nodoc
const MC_CAPS_DISPLAY_AREA_SIZE = 0x00000100;

/// @nodoc
const MC_CAPS_RESTORE_FACTORY_DEFAULTS = 0x00000400;

/// @nodoc
const MC_CAPS_RESTORE_FACTORY_COLOR_DEFAULTS = 0x00000800;

/// @nodoc
const MC_RESTORE_FACTORY_DEFAULTS_ENABLES_MONITOR_SETTINGS = 0x00001000;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_NONE = 0x00000000;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_4000K = 0x00000001;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_5000K = 0x00000002;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_6500K = 0x00000004;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_7500K = 0x00000008;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_8200K = 0x00000010;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_9300K = 0x00000020;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_10000K = 0x00000040;

/// @nodoc
const MC_SUPPORTED_COLOR_TEMPERATURE_11500K = 0x00000080;

/// {@category Enum}
class MC_COLOR_TEMPERATURE {
  static const MC_COLOR_TEMPERATURE_UNKNOWN = 0;
  static const MC_COLOR_TEMPERATURE_4000K = 1;
  static const MC_COLOR_TEMPERATURE_5000K = 2;
  static const MC_COLOR_TEMPERATURE_6500K = 3;
  static const MC_COLOR_TEMPERATURE_7500K = 4;
  static const MC_COLOR_TEMPERATURE_8200K = 5;
  static const MC_COLOR_TEMPERATURE_9300K = 6;
  static const MC_COLOR_TEMPERATURE_10000K = 7;
  static const MC_COLOR_TEMPERATURE_11500K = 8;
}

/// {@category Enum}
class MC_DISPLAY_TECHNOLOGY_TYPE {
  static const MC_SHADOW_MASK_CATHODE_RAY_TUBE = 0;
  static const MC_APERTURE_GRILL_CATHODE_RAY_TUBE = 1;
  static const MC_THIN_FILM_TRANSISTOR = 2;
  static const MC_LIQUID_CRYSTAL_ON_SILICON = 3;
  static const MC_PLASMA = 4;
  static const MC_ORGANIC_LIGHT_EMITTING_DIODE = 5;
  static const MC_ELECTROLUMINESCENT = 6;
  static const MC_MICROELECTROMECHANICAL = 7;
  static const MC_FIELD_EMISSION_DEVICE = 8;
}

/// {@category Enum}
class MC_DRIVE_TYPE {
  static const MC_RED_DRIVE = 0;
  static const MC_GREEN_DRIVE = 1;
  static const MC_BLUE_DRIVE = 2;
}

/// {@category Enum}
class MC_GAIN_TYPE {
  static const MC_RED_GAIN = 0;
  static const MC_GREEN_GAIN = 1;
  static const MC_BLUE_GAIN = 2;
}

/// {@category Enum}
class MC_POSITION_TYPE {
  static const MC_HORIZONTAL_POSITION = 0;
  static const MC_VERTICAL_POSITION = 1;
}

/// {@category Enum}
class MC_SIZE_TYPE {
  static const MC_WIDTH = 0;
  static const MC_HEIGHT = 1;
}

/// @nodoc
const DEACTIVATE_ACTCTX_FLAG_FORCE_EARLY_DEACTIVATION = 1;

// *** COM CONSTANTS ***

/// @nodoc
const S_OK = 0;

/// @nodoc
const S_FALSE = 1;

/// @nodoc
const E_UNEXPECTED = 0x8000FFFF;

/// @nodoc
const E_NOTIMPL = 0x80004001;

/// @nodoc
const E_OUTOFMEMORY = 0x8007000E;

/// @nodoc
const E_INVALIDARG = 0x80070057;

/// @nodoc
const E_NOINTERFACE = 0x80004002;

/// @nodoc
const E_POINTER = 0x80004003;

/// @nodoc
const E_HANDLE = 0x80070006;

/// @nodoc
const E_ABORT = 0x80004004;

/// @nodoc
const E_FAIL = 0x80004005;

/// @nodoc
const E_ACCESSDENIED = 0x80070005;

/// @nodoc
const E_PENDING = 0x8000000A;

/// @nodoc
const RPC_E_TOO_LATE = 0x80010119;

/// @nodoc
const REGDB_E_CLASSNOTREG = 0x80040154;

/// @nodoc
const REGDB_E_IIDNOTREG = 0x80040155;

/// @nodoc
const COINITBASE_MULTITHREADED = 0x0;

/// @nodoc
const COINIT_APARTMENTTHREADED = 0x2;

/// @nodoc
const COINIT_MULTITHREADED = COINITBASE_MULTITHREADED;

/// @nodoc
const COINIT_DISABLE_OLE1DDE = 0x4;

/// @nodoc
const COINIT_SPEED_OVER_MEMORY = 0x8;

/// @nodoc
const CLSCTX_INPROC_SERVER = 0x1;

/// @nodoc
const CLSCTX_INPROC_HANDLER = 0x2;

/// @nodoc
const CLSCTX_LOCAL_SERVER = 0x4;

/// @nodoc
const CLSCTX_INPROC_SERVER16 = 0x8;

/// @nodoc
const CLSCTX_REMOTE_SERVER = 0x10;

/// @nodoc
const CLSCTX_INPROC_HANDLER16 = 0x20;

/// @nodoc
const CLSCTX_RESERVED1 = 0x40;

/// @nodoc
const CLSCTX_RESERVED2 = 0x80;

/// @nodoc
const CLSCTX_RESERVED3 = 0x100;

/// @nodoc
const CLSCTX_RESERVED4 = 0x200;

/// @nodoc
const CLSCTX_NO_CODE_DOWNLOAD = 0x400;

/// @nodoc
const CLSCTX_RESERVED5 = 0x800;

/// @nodoc
const CLSCTX_NO_CUSTOM_MARSHAL = 0x1000;

/// @nodoc
const CLSCTX_ENABLE_CODE_DOWNLOAD = 0x2000;

/// @nodoc
const CLSCTX_NO_FAILURE_LOG = 0x4000;

/// @nodoc
const CLSCTX_DISABLE_AAA = 0x8000;

/// @nodoc
const CLSCTX_ENABLE_AAA = 0x10000;

/// @nodoc
const CLSCTX_FROM_DEFAULT_CONTEXT = 0x20000;

/// @nodoc
const CLSCTX_ACTIVATE_X86_SERVER = 0x40000;

/// @nodoc
const CLSCTX_ACTIVATE_32_BIT_SERVER = CLSCTX_ACTIVATE_X86_SERVER;

/// @nodoc
const CLSCTX_ACTIVATE_64_BIT_SERVER = 0x80000;

/// @nodoc
const CLSCTX_ENABLE_CLOAKING = 0x100000;

/// @nodoc
const CLSCTX_APPCONTAINER = 0x400000;

/// @nodoc
const CLSCTX_ACTIVATE_AAA_AS_IU = 0x800000;

/// @nodoc
const CLSCTX_RESERVED6 = 0x1000000;

/// @nodoc
const CLSCTX_ACTIVATE_ARM32_SERVER = 0x2000000;

/// @nodoc
const CLSCTX_PS_DLL = 0x80000000;

/// @nodoc
const CLSCTX_ALL = (CLSCTX_INPROC_SERVER |
    CLSCTX_INPROC_HANDLER |
    CLSCTX_LOCAL_SERVER |
    CLSCTX_REMOTE_SERVER);

// RPC authentication

/// @nodoc
const RPC_C_AUTHN_LEVEL_DEFAULT = 0;

/// @nodoc
const RPC_C_AUTHN_LEVEL_NONE = 1;

/// @nodoc
const RPC_C_AUTHN_LEVEL_CONNECT = 2;

/// @nodoc
const RPC_C_AUTHN_LEVEL_CALL = 3;

/// @nodoc
const RPC_C_AUTHN_LEVEL_PKT = 4;

/// @nodoc
const RPC_C_AUTHN_LEVEL_PKT_INTEGRITY = 5;

/// @nodoc
const RPC_C_AUTHN_LEVEL_PKT_PRIVACY = 6;

/// @nodoc
const RPC_C_IMP_LEVEL_DEFAULT = 0;

/// @nodoc
const RPC_C_IMP_LEVEL_ANONYMOUS = 1;

/// @nodoc
const RPC_C_IMP_LEVEL_IDENTIFY = 2;

/// @nodoc
const RPC_C_IMP_LEVEL_IMPERSONATE = 3;

/// @nodoc
const RPC_C_IMP_LEVEL_DELEGATE = 4;

/// @nodoc
const RPC_C_AUTHN_NONE = 0;

/// @nodoc
const RPC_C_AUTHN_DCE_PRIVATE = 1;

/// @nodoc
const RPC_C_AUTHN_DCE_PUBLIC = 2;

/// @nodoc
const RPC_C_AUTHN_DEC_PUBLIC = 4;

/// @nodoc
const RPC_C_AUTHN_GSS_NEGOTIATE = 9;

/// @nodoc
const RPC_C_AUTHN_WINNT = 10;

/// @nodoc
const RPC_C_AUTHN_GSS_SCHANNEL = 14;

/// @nodoc
const RPC_C_AUTHN_GSS_KERBEROS = 16;

/// @nodoc
const RPC_C_AUTHN_DPA = 17;

/// @nodoc
const RPC_C_AUTHN_MSN = 18;

/// @nodoc
const RPC_C_AUTHZ_NONE = 0;

/// @nodoc
const RPC_C_AUTHZ_NAME = 1;

/// @nodoc
const RPC_C_AUTHZ_DCE = 2;

/// @nodoc
const RPC_C_AUTHZ_DEFAULT = 0xffffffff;

// Known folder flags

/// @nodoc
const KF_FLAG_DEFAULT = 0x00000000;

/// @nodoc
const KF_FLAG_FORCE_APP_DATA_REDIRECTION = 0x00080000;

/// @nodoc
const KF_FLAG_RETURN_FILTER_REDIRECTION_TARGET = 0x00040000;

/// @nodoc
const KF_FLAG_FORCE_PACKAGE_REDIRECTION = 0x00020000;

/// @nodoc
const KF_FLAG_NO_PACKAGE_REDIRECTION = 0x00010000;

/// @nodoc
const KF_FLAG_FORCE_APPCONTAINER_REDIRECTION = 0x00020000;

/// @nodoc
const KF_FLAG_NO_APPCONTAINER_REDIRECTION = 0x00010000;

/// @nodoc
const KF_FLAG_CREATE = 0x00008000;

/// @nodoc
const KF_FLAG_DONT_VERIFY = 0x00004000;

/// @nodoc
const KF_FLAG_DONT_UNEXPAND = 0x00002000;

/// @nodoc
const KF_FLAG_NO_ALIAS = 0x00001000;

/// @nodoc
const KF_FLAG_INIT = 0x00000800;

/// @nodoc
const KF_FLAG_DEFAULT_PATH = 0x00000400;

/// @nodoc
const KF_FLAG_NOT_PARENT_RELATIVE = 0x00000200;

/// @nodoc
const KF_FLAG_SIMPLE_IDLIST = 0x00000100;

/// @nodoc
const KF_FLAG_ALIAS_ONLY = 0x80000000;

// Task dialog icons.
//
// In the Windows header files, these are defined in the following format:
//   #define TD_WARNING_ICON         MAKEINTRESOURCEW(-1)
/// @nodoc
final TD_WARNING_ICON = Pointer<Utf16>.fromAddress(0xFFFF);

/// @nodoc
final TD_ERROR_ICON = Pointer<Utf16>.fromAddress(0xFFFE);

/// @nodoc
final TD_INFORMATION_ICON = Pointer<Utf16>.fromAddress(0xFFFD);

/// @nodoc
final TD_SHIELD_ICON = Pointer<Utf16>.fromAddress(0xFFFC);

/// {@category Enum}
class TASKDIALOG_COMMON_BUTTON_FLAGS {
  static const int TDCBF_OK_BUTTON = 0x0001;
  static const int TDCBF_YES_BUTTON = 0x0002;
  static const int TDCBF_NO_BUTTON = 0x0004;
  static const int TDCBF_CANCEL_BUTTON = 0x0008;
  static const int TDCBF_RETRY_BUTTON = 0x0010;
  static const int TDCBF_CLOSE_BUTTON = 0x0020;
}

// Folder IDs

/// @nodoc
const FOLDERID_NetworkFolder = '{D20BEEC4-5CA8-4905-AE3B-BF251EA09B53}';

/// @nodoc
const FOLDERID_ComputerFolder = '{0AC0837C-BBF8-452A-850D-79D08E667CA7}';

/// @nodoc
const FOLDERID_InternetFolder = '{4D9F7874-4E0C-4904-967B-40B0D20C3E4B}';

/// @nodoc
const FOLDERID_ControlPanelFolder = '{82A74AEB-AEB4-465C-A014-D097EE346D63}';

/// @nodoc
const FOLDERID_PrintersFolder = '{76FC4E2D-D6AD-4519-A663-37BD56068185}';

/// @nodoc
const FOLDERID_SyncManagerFolder = '{43668BF8-C14E-49B2-97C9-747784D784B7}';

/// @nodoc
const FOLDERID_SyncSetupFolder = '{0F214138-B1D3-4a90-BBA9-27CBC0C5389A}';

/// @nodoc
const FOLDERID_ConflictFolder = '{4bfefb45-347d-4006-a5be-ac0cb0567192}';

/// @nodoc
const FOLDERID_SyncResultsFolder = '{289a9a43-be44-4057-a41b-587a76d7e7f9}';

/// @nodoc
const FOLDERID_RecycleBinFolder = '{B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC}';

/// @nodoc
const FOLDERID_ConnectionsFolder = '{6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD}';

/// @nodoc
const FOLDERID_Fonts = '{FD228CB7-AE11-4AE3-864C-16F3910AB8FE}';

/// @nodoc
const FOLDERID_Desktop = '{B4BFCC3A-DB2C-424C-B029-7FE99A87C641}';

/// @nodoc
const FOLDERID_Startup = '{B97D20BB-F46A-4C97-BA10-5E3608430854}';

/// @nodoc
const FOLDERID_Programs = '{A77F5D77-2E2B-44C3-A6A2-ABA601054A51}';

/// @nodoc
const FOLDERID_StartMenu = '{625B53C3-AB48-4EC1-BA1F-A1EF4146FC19}';

/// @nodoc
const FOLDERID_Recent = '{AE50C081-EBD2-438A-8655-8A092E34987A}';

/// @nodoc
const FOLDERID_SendTo = '{8983036C-27C0-404B-8F08-102D10DCFD74}';

/// @nodoc
const FOLDERID_Documents = '{FDD39AD0-238F-46AF-ADB4-6C85480369C7}';

/// @nodoc
const FOLDERID_Favorites = '{1777F761-68AD-4D8A-87BD-30B759FA33DD}';

/// @nodoc
const FOLDERID_NetHood = '{C5ABBF53-E17F-4121-8900-86626FC2C973}';

/// @nodoc
const FOLDERID_PrintHood = '{9274BD8D-CFD1-41C3-B35E-B13F55A758F4}';

/// @nodoc
const FOLDERID_Templates = '{A63293E8-664E-48DB-A079-DF759E0509F7}';

/// @nodoc
const FOLDERID_CommonStartup = '{82A5EA35-D9CD-47C5-9629-E15D2F714E6E}';

/// @nodoc
const FOLDERID_CommonPrograms = '{0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8}';

/// @nodoc
const FOLDERID_CommonStartMenu = '{A4115719-D62E-491D-AA7C-E74B8BE3B067}';

/// @nodoc
const FOLDERID_PublicDesktop = '{C4AA340D-F20F-4863-AFEF-F87EF2E6BA25}';

/// @nodoc
const FOLDERID_ProgramData = '{62AB5D82-FDC1-4DC3-A9DD-070D1D495D97}';

/// @nodoc
const FOLDERID_CommonTemplates = '{B94237E7-57AC-4347-9151-B08C6C32D1F7}';

/// @nodoc
const FOLDERID_PublicDocuments = '{ED4824AF-DCE4-45A8-81E2-FC7965083634}';

/// @nodoc
const FOLDERID_RoamingAppData = '{3EB685DB-65F9-4CF6-A03A-E3EF65729F3D}';

/// @nodoc
const FOLDERID_LocalAppData = '{F1B32785-6FBA-4FCF-9D55-7B8E7F157091}';

/// @nodoc
const FOLDERID_LocalAppDataLow = '{A520A1A4-1780-4FF6-BD18-167343C5AF16}';

/// @nodoc
const FOLDERID_InternetCache = '{352481E8-33BE-4251-BA85-6007CAEDCF9D}';

/// @nodoc
const FOLDERID_Cookies = '{2B0F765D-C0E9-4171-908E-08A611B84FF6}';

/// @nodoc
const FOLDERID_History = '{D9DC8A3B-B784-432E-A781-5A1130A75963}';

/// @nodoc
const FOLDERID_System = '{1AC14E77-02E7-4E5D-B744-2EB1AE5198B7}';

/// @nodoc
const FOLDERID_SystemX86 = '{D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27}';

/// @nodoc
const FOLDERID_Windows = '{F38BF404-1D43-42F2-9305-67DE0B28FC23}';

/// @nodoc
const FOLDERID_Profile = '{5E6C858F-0E22-4760-9AFE-EA3317B67173}';

/// @nodoc
const FOLDERID_Pictures = '{33E28130-4E1E-4676-835A-98395C3BC3BB}';

/// @nodoc
const FOLDERID_ProgramFilesX86 = '{7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E}';

/// @nodoc
const FOLDERID_ProgramFilesCommonX86 = '{DE974D24-D9C6-4D3E-BF91-F4455120B917}';

/// @nodoc
const FOLDERID_ProgramFilesX64 = '{6D809377-6AF0-444b-8957-A3773F02200E}';

/// @nodoc
const FOLDERID_ProgramFilesCommonX64 = '{6365D5A7-0F0D-45e5-87F6-0DA56B6A4F7D}';

/// @nodoc
const FOLDERID_ProgramFiles = '{905e63b6-c1bf-494e-b29c-65b732d3d21a}';

/// @nodoc
const FOLDERID_ProgramFilesCommon = '{F7F1ED05-9F6D-47A2-AAAE-29D317C6F066}';

/// @nodoc
const FOLDERID_UserProgramFiles = '{5cd7aee2-2219-4a67-b85d-6c9ce15660cb}';

/// @nodoc
const FOLDERID_UserProgramFilesCommon =
    '{bcbd3057-ca5c-4622-b42d-bc56db0ae516}';

/// @nodoc
const FOLDERID_AdminTools = '{724EF170-A42D-4FEF-9F26-B60E846FBA4F}';

/// @nodoc
const FOLDERID_CommonAdminTools = '{D0384E7D-BAC3-4797-8F14-CBA229B392B5}';

/// @nodoc
const FOLDERID_Music = '{4BD8D571-6D19-48D3-BE97-422220080E43}';

/// @nodoc
const FOLDERID_Videos = '{18989B1D-99B5-455B-841C-AB7C74E4DDFC}';

/// @nodoc
const FOLDERID_Ringtones = '{C870044B-F49E-4126-A9C3-B52A1FF411E8}';

/// @nodoc
const FOLDERID_PublicPictures = '{B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5}';

/// @nodoc
const FOLDERID_PublicMusic = '{3214FAB5-9757-4298-BB61-92A9DEAA44FF}';

/// @nodoc
const FOLDERID_PublicVideos = '{2400183A-6185-49FB-A2D8-4A392A602BA3}';

/// @nodoc
const FOLDERID_PublicRingtones = '{E555AB60-153B-4D17-9F04-A5FE99FC15EC}';

/// @nodoc
const FOLDERID_ResourceDir = '{8AD10C31-2ADB-4296-A8F7-E4701232C972}';

/// @nodoc
const FOLDERID_LocalizedResourcesDir = '{2A00375E-224C-49DE-B8D1-440DF7EF3DDC}';

/// @nodoc
const FOLDERID_CommonOEMLinks = '{C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D}';

/// @nodoc
const FOLDERID_CDBurning = '{9E52AB10-F80D-49DF-ACB8-4330F5687855}';

/// @nodoc
const FOLDERID_UserProfiles = '{0762D272-C50A-4BB0-A382-697DCD729B80}';

/// @nodoc
const FOLDERID_Playlists = '{DE92C1C7-837F-4F69-A3BB-86E631204A23}';

/// @nodoc
const FOLDERID_SamplePlaylists = '{15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5}';

/// @nodoc
const FOLDERID_SampleMusic = '{B250C668-F57D-4EE1-A63C-290EE7D1AA1F}';

/// @nodoc
const FOLDERID_SamplePictures = '{C4900540-2379-4C75-844B-64E6FAF8716B}';

/// @nodoc
const FOLDERID_SampleVideos = '{859EAD94-2E85-48AD-A71A-0969CB56A6CD}';

/// @nodoc
const FOLDERID_PhotoAlbums = '{69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C}';

/// @nodoc
const FOLDERID_Public = '{DFDF76A2-C82A-4D63-906A-5644AC457385}';

/// @nodoc
const FOLDERID_ChangeRemovePrograms = '{df7266ac-9274-4867-8d55-3bd661de872d}';

/// @nodoc
const FOLDERID_AppUpdates = '{a305ce99-f527-492b-8b1a-7e76fa98d6e4}';

/// @nodoc
const FOLDERID_AddNewPrograms = '{de61d971-5ebc-4f02-a3a9-6c82895e5c04}';

/// @nodoc
const FOLDERID_Downloads = '{374DE290-123F-4565-9164-39C4925E467B}';

/// @nodoc
const FOLDERID_PublicDownloads = '{3D644C9B-1FB8-4f30-9B45-F670235F79C0}';

/// @nodoc
const FOLDERID_SavedSearches = '{7d1d3a04-debb-4115-95cf-2f29da2920da}';

/// @nodoc
const FOLDERID_QuickLaunch = '{52a4f021-7b75-48a9-9f6b-4b87a210bc8f}';

/// @nodoc
const FOLDERID_Contacts = '{56784854-C6CB-462b-8169-88E350ACB882}';

/// @nodoc
const FOLDERID_SidebarParts = '{A75D362E-50FC-4fb7-AC2C-A8BEAA314493}';

/// @nodoc
const FOLDERID_SidebarDefaultParts = '{7B396E54-9EC5-4300-BE0A-2482EBAE1A26}';

/// @nodoc
const FOLDERID_PublicGameTasks = '{DEBF2536-E1A8-4c59-B6A2-414586476AEA}';

/// @nodoc
const FOLDERID_GameTasks = '{054FAE61-4DD8-4787-80B6-090220C4B700}';

/// @nodoc
const FOLDERID_SavedGames = '{4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4}';

/// @nodoc
const FOLDERID_Games = '{CAC52C1A-B53D-4edc-92D7-6B2E8AC19434}';

/// @nodoc
const FOLDERID_SEARCH_MAPI = '{98ec0e18-2098-4d44-8644-66979315a281}';

/// @nodoc
const FOLDERID_SEARCH_CSC = '{ee32e446-31ca-4aba-814f-a5ebd2fd6d5e}';

/// @nodoc
const FOLDERID_Links = '{bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968}';

/// @nodoc
const FOLDERID_UsersFiles = '{f3ce0f7c-4901-4acc-8648-d5d44b04ef8f}';

/// @nodoc
const FOLDERID_UsersLibraries = '{A302545D-DEFF-464b-ABE8-61C8648D939B}';

/// @nodoc
const FOLDERID_SearchHome = '{190337d1-b8ca-4121-a639-6d472d16972a}';

/// @nodoc
const FOLDERID_OriginalImages = '{2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39}';

/// @nodoc
const FOLDERID_DocumentsLibrary = '{7b0db17d-9cd2-4a93-9733-46cc89022e7c}';

/// @nodoc
const FOLDERID_MusicLibrary = '{2112AB0A-C86A-4ffe-A368-0DE96E47012E}';

/// @nodoc
const FOLDERID_PicturesLibrary = '{A990AE9F-A03B-4e80-94BC-9912D7504104}';

/// @nodoc
const FOLDERID_VideosLibrary = '{491E922F-5643-4af4-A7EB-4E7A138D8174}';

/// @nodoc
const FOLDERID_RecordedTVLibrary = '{1A6FDBA2-F42D-4358-A798-B74D745926C5}';

/// @nodoc
const FOLDERID_HomeGroup = '{52528A6B-B9E3-4add-B60D-588C2DBA842D}';

/// @nodoc
const FOLDERID_HomeGroupCurrentUser = '{9B74B6A3-0DFD-4f11-9E78-5F7800F2E772}';

/// @nodoc
const FOLDERID_DeviceMetadataStore = '{5CE4A5E9-E4EB-479D-B89F-130C02886155}';

/// @nodoc
const FOLDERID_Libraries = '{1B3EA5DC-B587-4786-B4EF-BD1DC332AEAE}';

/// @nodoc
const FOLDERID_PublicLibraries = '{48daf80b-e6cf-4f4e-b800-0e69d84ee384}';

/// @nodoc
const FOLDERID_UserPinned = '{9e3995ab-1f9c-4f13-b827-48b24b6c7174}';

/// @nodoc
const FOLDERID_ImplicitAppShortcuts = '{bcb5256f-79f6-4cee-b725-dc34e402fd46}';

/// @nodoc
const FOLDERID_AccountPictures = '{008ca0b1-55b4-4c56-b8a8-4de4b299d3be}';

/// @nodoc
const FOLDERID_PublicUserTiles = '{0482af6c-08f1-4c34-8c90-e17ec98b1e17}';

/// @nodoc
const FOLDERID_AppsFolder = '{1e87508d-89c2-42f0-8a7e-645a0f50ca58}';

/// @nodoc
const FOLDERID_StartMenuAllPrograms = '{F26305EF-6948-40B9-B255-81453D09C785}';

/// @nodoc
const FOLDERID_CommonStartMenuPlaces = '{A440879F-87A0-4F7D-B700-0207B966194A}';

/// @nodoc
const FOLDERID_ApplicationShortcuts = '{A3918781-E5F2-4890-B3D9-A7E54332328C}';

/// @nodoc
const FOLDERID_RoamingTiles = '{00BCFC5A-ED94-4e48-96A1-3F6217F21990}';

/// @nodoc
const FOLDERID_RoamedTileImages = '{AAA8D5A5-F1D6-4259-BAA8-78E7EF60835E}';

/// @nodoc
const FOLDERID_Screenshots = '{b7bede81-df94-4682-a7d8-57a52620b86f}';

/// @nodoc
const FOLDERID_CameraRoll = '{AB5FB87B-7CE2-4F83-915D-550846C9537B}';

/// @nodoc
const FOLDERID_SkyDrive = '{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}';

/// @nodoc
const FOLDERID_OneDrive = '{A52BBA46-E9E1-435f-B3D9-28DAA648C0F6}';

/// @nodoc
const FOLDERID_SkyDriveDocuments = '{24D89E24-2F19-4534-9DDE-6A6671FBB8FE}';

/// @nodoc
const FOLDERID_SkyDrivePictures = '{339719B5-8C47-4894-94C2-D8F77ADD44A6}';

/// @nodoc
const FOLDERID_SkyDriveMusic = '{C3F2459E-80D6-45DC-BFEF-1F769F2BE730}';

/// @nodoc
const FOLDERID_SkyDriveCameraRoll = '{767E6811-49CB-4273-87C2-20F355E1085B}';

/// @nodoc
const FOLDERID_SearchHistory = '{0D4C3DB6-03A3-462F-A0E6-08924C41B5D4}';

/// @nodoc
const FOLDERID_SearchTemplates = '{7E636BFE-DFA9-4D5E-B456-D7B39851D8A9}';

/// @nodoc
const FOLDERID_CameraRollLibrary = '{2B20DF75-1EDA-4039-8097-38798227D5B7}';

/// @nodoc
const FOLDERID_SavedPictures = '{3B193882-D3AD-4eab-965A-69829D1FB59F}';

/// @nodoc
const FOLDERID_SavedPicturesLibrary = '{E25B5812-BE88-4bd9-94B0-29233477B6C3}';

/// @nodoc
const FOLDERID_RetailDemo = '{12D4C69E-24AD-4923-BE19-31321C43A767}';

/// @nodoc
const FOLDERID_Device = '{1C2AC1DC-4358-4B6C-9733-AF21156576F0}';

/// @nodoc
const FOLDERID_DevelopmentFiles = '{DBE8E08E-3053-4BBC-B183-2A7B2B191E59}';

/// @nodoc
const FOLDERID_Objects3D = '{31C0DD25-9439-4F12-BF41-7FF4EDA38722}';

/// @nodoc
const FOLDERID_AppCaptures = '{EDC0FE71-98D8-4F4A-B920-C8DC133CB165}';

/// @nodoc
const FOLDERID_LocalDocuments = '{f42ee2d3-909f-4907-8871-4c22fc0bf756}';

/// @nodoc
const FOLDERID_LocalPictures = '0ddd015d-b06c-45d5-8c4c-f59713854639 }';

/// @nodoc
const FOLDERID_LocalVideos = '{35286a68-3c57-41a1-bbb1-0eae73d76c95}';

/// @nodoc
const FOLDERID_LocalMusic = '{a0c69a99-21c8-4671-8703-7934162fcf1d}';

/// @nodoc
const FOLDERID_LocalDownloads = '{7d83ee9b-2244-4e70-b1f5-5393042af1e4}';

/// @nodoc
const FOLDERID_RecordedCalls = '{2f8b40c2-83ed-48ee-b383-a1f157ec6f9a}';

/// @nodoc
const FOLDERID_AllAppMods = '{7ad67899-66af-43ba-9156-6aad42e6c596}';

/// @nodoc
const FOLDERID_CurrentAppMods = '{3db40b20-2a30-4dbe-917e-771dd21dd099}';

/// @nodoc
const FOLDERID_AppDataDesktop = '{B2C5E279-7ADD-439F-B28C-C41FE1BBF672}';

/// @nodoc
const FOLDERID_AppDataDocuments = '{7BE16610-1F7F-44AC-BFF0-83E15F2FFCA1}';

/// @nodoc
const FOLDERID_AppDataFavorites = '{7CFBEFBC-DE1F-45AA-B843-A542AC536CC9}';

/// @nodoc
const FOLDERID_AppDataProgramData = '{559D40A3-A036-40FA-AF61-84CB430A4D34}';

// *** Kernel constants ***

// memory management

/// @nodoc
const PAGE_NOACCESS = 0x01;

/// @nodoc
const PAGE_READONLY = 0x02;

/// @nodoc
const PAGE_READWRITE = 0x04;

/// @nodoc
const PAGE_WRITECOPY = 0x08;

/// @nodoc
const PAGE_EXECUTE = 0x10;

/// @nodoc
const PAGE_EXECUTE_READ = 0x20;

/// @nodoc
const PAGE_EXECUTE_READWRITE = 0x40;

/// @nodoc
const PAGE_EXECUTE_WRITECOPY = 0x80;

/// @nodoc
const PAGE_GUARD = 0x100;

/// @nodoc
const PAGE_NOCACHE = 0x200;

/// @nodoc
const PAGE_WRITECOMBINE = 0x400;

/// @nodoc
const PAGE_GRAPHICS_NOACCESS = 0x0800;

/// @nodoc
const PAGE_GRAPHICS_READONLY = 0x1000;

/// @nodoc
const PAGE_GRAPHICS_READWRITE = 0x2000;

/// @nodoc
const PAGE_GRAPHICS_EXECUTE = 0x4000;

/// @nodoc
const PAGE_GRAPHICS_EXECUTE_READ = 0x8000;

/// @nodoc
const PAGE_GRAPHICS_EXECUTE_READWRITE = 0x10000;

/// @nodoc
const PAGE_GRAPHICS_COHERENT = 0x20000;

/// @nodoc
const PAGE_ENCLAVE_THREAD_CONTROL = 0x80000000;

/// @nodoc
const PAGE_REVERT_TO_FILE_MAP = 0x80000000;

/// @nodoc
const PAGE_TARGETS_NO_UPDATE = 0x40000000;

/// @nodoc
const PAGE_TARGETS_INVALID = 0x40000000;

/// @nodoc
const PAGE_ENCLAVE_UNVALIDATED = 0x20000000;

/// @nodoc
const PAGE_ENCLAVE_DECOMMIT = 0x10000000;

/// @nodoc
const MEM_COMMIT = 0x00001000;

/// @nodoc
const MEM_RESERVE = 0x00002000;

/// @nodoc
const MEM_REPLACE_PLACEHOLDER = 0x00004000;

/// @nodoc
const MEM_RESERVE_PLACEHOLDER = 0x00040000;

/// @nodoc
const MEM_RESET = 0x00080000;

/// @nodoc
const MEM_TOP_DOWN = 0x00100000;

/// @nodoc
const MEM_WRITE_WATCH = 0x00200000;

/// @nodoc
const MEM_PHYSICAL = 0x00400000;

/// @nodoc
const MEM_ROTATE = 0x00800000;

/// @nodoc
const MEM_DIFFERENT_IMAGE_BASE_OK = 0x00800000;

/// @nodoc
const MEM_RESET_UNDO = 0x01000000;

/// @nodoc
const MEM_LARGE_PAGES = 0x20000000;

/// @nodoc
const MEM_4MB_PAGES = 0x80000000;

/// @nodoc
const MEM_64K_PAGES = (MEM_LARGE_PAGES | MEM_PHYSICAL);

/// @nodoc
const MEM_UNMAP_WITH_TRANSIENT_BOOST = 0x00000001;

/// @nodoc
const MEM_COALESCE_PLACEHOLDERS = 0x00000001;

/// @nodoc
const MEM_PRESERVE_PLACEHOLDER = 0x00000002;

/// @nodoc
const MEM_DECOMMIT = 0x00004000;

/// @nodoc
const MEM_RELEASE = 0x00008000;

/// @nodoc
const MEM_FREE = 0x00010000;

// Processor architectures
/// @nodoc
const PROCESSOR_ARCHITECTURE_INTEL = 0;

/// @nodoc
const PROCESSOR_ARCHITECTURE_MIPS = 1;

/// @nodoc
const PROCESSOR_ARCHITECTURE_ALPHA = 2;

/// @nodoc
const PROCESSOR_ARCHITECTURE_PPC = 3;

/// @nodoc
const PROCESSOR_ARCHITECTURE_SHX = 4;

/// @nodoc
const PROCESSOR_ARCHITECTURE_ARM = 5;

/// @nodoc
const PROCESSOR_ARCHITECTURE_IA64 = 6;

/// @nodoc
const PROCESSOR_ARCHITECTURE_ALPHA64 = 7;

/// @nodoc
const PROCESSOR_ARCHITECTURE_MSIL = 8;

/// @nodoc
const PROCESSOR_ARCHITECTURE_AMD64 = 9;

/// @nodoc
const PROCESSOR_ARCHITECTURE_IA32_ON_WIN64 = 10;

/// @nodoc
const PROCESSOR_ARCHITECTURE_NEUTRAL = 11;

/// @nodoc
const PROCESSOR_ARCHITECTURE_ARM64 = 12;

/// @nodoc
const PROCESSOR_ARCHITECTURE_ARM32_ON_WIN64 = 13;

/// @nodoc
const PROCESSOR_ARCHITECTURE_IA32_ON_ARM64 = 14;

/// @nodoc
const PROCESSOR_ARCHITECTURE_UNKNOWN = 0xFFFF;

/// @nodoc
const DISPID_UNKNOWN = -1;

/// @nodoc
const DISPID_VALUE = 0;

/// @nodoc
const DISPID_PROPERTYPUT = -3;

/// @nodoc
const DISPID_NEWENUM = -4;

/// @nodoc
const DISPID_EVALUATE = -5;

/// @nodoc
const DISPID_CONSTRUCTOR = -6;

/// @nodoc
const DISPID_DESTRUCTOR = -7;

/// @nodoc
const DISPID_COLLECT = -8;

/// @nodoc
const BLUETOOTH_MAX_NAME_SIZE = (248);

/// @nodoc
const BLUETOOTH_MAX_PASSKEY_SIZE = (16);

/// @nodoc
const BLUETOOTH_MAX_PASSKEY_BUFFER_SIZE = (BLUETOOTH_MAX_PASSKEY_SIZE + 1);

/// @nodoc
const BLUETOOTH_MAX_SERVICE_NAME_SIZE = (256);

/// @nodoc
const BLUETOOTH_DEVICE_NAME_SIZE = (256);

/// @nodoc
const BTH_MAX_PIN_SIZE = (16);

/// @nodoc
const BTH_LINK_KEY_LENGTH = (16);

/// {@category Enum}
class BLUETOOTH_AUTHENTICATION_METHOD {
  static const BLUETOOTH_AUTHENTICATION_METHOD_LEGACY = 0;
  static const BLUETOOTH_AUTHENTICATION_METHOD_OOB = 1;
  static const BLUETOOTH_AUTHENTICATION_METHOD_NUMERIC_COMPARISON = 2;
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY_NOTIFICATION = 3;
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY = 4;
}

/// {@category Enum}
class BLUETOOTH_AUTHENTICATION_REQUIREMENTS {
  static const BLUETOOTH_MITM_ProtectionNotRequired = 0;
  static const BLUETOOTH_MITM_ProtectionRequired = 1;
  static const BLUETOOTH_MITM_ProtectionNotRequiredBonding = 2;
  static const BLUETOOTH_MITM_ProtectionRequiredBonding = 3;
  static const BLUETOOTH_MITM_ProtectionNotRequiredGeneralBonding = 4;
  static const BLUETOOTH_MITM_ProtectionRequiredGeneralBonding = 5;
  static const BLUETOOTH_MITM_ProtectionNotDefined = 6;
}

/// {@category Enum}
class BLUETOOTH_IO_CAPABILITY {
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYONLY = 0;
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYYESNO = 1;
  static const BLUETOOTH_IO_CAPABILITY_KEYBOARDONLY = 2;
  static const BLUETOOTH_IO_CAPABILITY_NOINPUTNOOUTPUT = 3;
  static const BLUETOOTH_IO_CAPABILITY_UNDEFINED = 4;
}

/// {@category Enum}
class FILEOPENDIALOGOPTIONS {
  static const FOS_OVERWRITEPROMPT = 0x2;
  static const FOS_STRICTFILETYPES = 0x4;
  static const FOS_NOCHANGEDIR = 0x8;
  static const FOS_PICKFOLDERS = 0x20;
  static const FOS_FORCEFILESYSTEM = 0x40;
  static const FOS_ALLNONSTORAGEITEMS = 0x80;
  static const FOS_NOVALIDATE = 0x100;
  static const FOS_ALLOWMULTISELECT = 0x200;
  static const FOS_PATHMUSTEXIST = 0x800;
  static const FOS_FILEMUSTEXIST = 0x1000;
  static const FOS_CREATEPROMPT = 0x2000;
  static const FOS_SHAREAWARE = 0x4000;
  static const FOS_NOREADONLYRETURN = 0x8000;
  static const FOS_NOTESTFILECREATE = 0x10000;
  static const FOS_HIDEMRUPLACES = 0x20000;
  static const FOS_HIDEPINNEDPLACES = 0x40000;
  static const FOS_NODEREFERENCELINKS = 0x100000;
  static const FOS_OKBUTTONNEEDSINTERACTION = 0x200000;
  static const FOS_DONTADDTORECENT = 0x2000000;
  static const FOS_FORCESHOWHIDDEN = 0x10000000;
  static const FOS_DEFAULTNOMINIMODE = 0x20000000;
  static const FOS_FORCEPREVIEWPANEON = 0x40000000;
  static const FOS_SUPPORTSTREAMABLEITEMS = 0x80000000;
}

/// {@category Enum}
class POWER_INFORMATION_LEVEL {
  static const SystemPowerPolicyAc = 0;
  static const SystemPowerPolicyDc = 1;
  static const VerifySystemPolicyAc = 2;
  static const VerifySystemPolicyDc = 3;
  static const SystemPowerCapabilities = 4;
  static const SystemBatteryState = 5;
  static const SystemPowerStateHandler = 6;
  static const ProcessorStateHandler = 7;
  static const SystemPowerPolicyCurrent = 8;
  static const AdministratorPowerPolicy = 9;
  static const SystemReserveHiberFile = 10;
  static const ProcessorInformation = 11;
  static const SystemPowerInformation = 12;
  static const ProcessorStateHandler2 = 13;
  static const LastWakeTime = 14;
  static const LastSleepTime = 15;
  static const SystemExecutionState = 16;
  static const SystemPowerStateNotifyHandler = 17;
  static const ProcessorPowerPolicyAc = 18;
  static const ProcessorPowerPolicyDc = 19;
  static const VerifyProcessorPowerPolicyAc = 20;
  static const VerifyProcessorPowerPolicyDc = 21;
  static const ProcessorPowerPolicyCurrent = 22;
  static const SystemPowerStateLogging = 23;
  static const SystemPowerLoggingEntry = 24;
  static const SetPowerSettingValue = 25;
  static const NotifyUserPowerSetting = 26;
  static const PowerInformationLevelUnused0 = 27;
  static const SystemMonitorHiberBootPowerOff = 28;
  static const SystemVideoState = 29;
  static const TraceApplicationPowerMessage = 30;
  static const TraceApplicationPowerMessageEnd = 31;
  static const ProcessorPerfStates = 32;
  static const ProcessorIdleStates = 33;
  static const ProcessorCap = 34;
  static const SystemWakeSource = 35;
  static const SystemHiberFileInformation = 36;
  static const TraceServicePowerMessage = 37;
  static const ProcessorLoad = 38;
  static const PowerShutdownNotification = 39;
  static const MonitorCapabilities = 40;
  static const SessionPowerInit = 41;
  static const SessionDisplayState = 42;
  static const PowerRequestCreate = 43;
  static const PowerRequestAction = 44;
  static const GetPowerRequestList = 45;
  static const ProcessorInformationEx = 46;
  static const NotifyUserModeLegacyPowerEvent = 47;
  static const GroupPark = 48;
  static const ProcessorIdleDomains = 49;
  static const WakeTimerList = 50;
  static const SystemHiberFileSize = 51;
  static const ProcessorIdleStatesHv = 52;
  static const ProcessorPerfStatesHv = 53;
  static const ProcessorPerfCapHv = 54;
  static const ProcessorSetIdle = 55;
  static const LogicalProcessorIdling = 56;
  static const UserPresence = 57;
  static const PowerSettingNotificationName = 58;
  static const GetPowerSettingValue = 59;
  static const IdleResiliency = 60;
  static const SessionRITState = 61;
  static const SessionConnectNotification = 62;
  static const SessionPowerCleanup = 63;
  static const SessionLockState = 64;
  static const SystemHiberbootState = 65;
  static const PlatformInformation = 66;
  static const PdcInvocation = 67;
  static const MonitorInvocation = 68;
  static const FirmwareTableInformationRegistered = 69;
  static const SetShutdownSelectedTime = 70;
  static const SuspendResumeInvocation = 71;
  static const PlmPowerRequestCreate = 72;
  static const ScreenOff = 73;
  static const CsDeviceNotification = 74;
  static const PlatformRole = 75;
  static const LastResumePerformance = 76;
  static const DisplayBurst = 77;
  static const ExitLatencySamplingPercentage = 78;
  static const RegisterSpmPowerSettings = 79;
  static const PlatformIdleStates = 80;
  static const ProcessorIdleVeto = 81;
  static const PlatformIdleVeto = 82;
  static const SystemBatteryStatePrecise = 83;
  static const ThermalEvent = 84;
  static const PowerRequestActionInternal = 85;
  static const BatteryDeviceState = 86;
  static const PowerInformationInternal = 87;
  static const ThermalStandby = 88;
  static const SystemHiberFileType = 89;
  static const PhysicalPowerButtonPress = 90;
  static const QueryPotentialDripsConstraint = 91;
  static const EnergyTrackerCreate = 92;
  static const EnergyTrackerQuery = 93;
  static const UpdateBlackBoxRecorder = 94;
  static const SessionAllowExternalDmaDevices = 95;
  static const PowerInformationLevelMaximum = 96;
}

/// {@category Enum}
class FFFP_MODE {
  static const FFFP_EXACTMATCH = 0;
  static const FFFP_NEARESTPARENTMATCH = (FFFP_EXACTMATCH + 1);
}

/// {@category Enum}
class FDAP {
  static const FDAP_BOTTOM = 0;
  static const FDAP_TOP = 1;
}

/// {@category Enum}
class KF_CATEGORY {
  static const KF_CATEGORY_VIRTUAL = 1;
  static const KF_CATEGORY_FIXED = 2;
  static const KF_CATEGORY_COMMON = 3;
  static const KF_CATEGORY_PERUSER = 4;
}

/// {@category Enum}
class KF_DEFINITION_FLAGS {
  static const KFDF_LOCAL_REDIRECT_ONLY = 0x2;
  static const KFDF_ROAMABLE = 0x4;
  static const KFDF_PRECREATE = 0x8;
  static const KFDF_STREAM = 0x10;
  static const KFDF_PUBLISHEXPANDEDPATH = 0x20;
  static const KFDF_NO_REDIRECT_UI = 0x4;
}

/// {@category Enum}
class KF_REDIRECT_FLAGS {
  static const KF_REDIRECT_USER_EXCLUSIVE = 0x1;
  static const KF_REDIRECT_COPY_SOURCE_DACL = 0x2;
  static const KF_REDIRECT_OWNER_USER = 0x4;
  static const KF_REDIRECT_SET_OWNER_EXPLICIT = 0x8;
  static const KF_REDIRECT_CHECK_ONLY = 0x10;
  static const KF_REDIRECT_WITH_UI = 0x20;
  static const KF_REDIRECT_UNPIN = 0x40;
  static const KF_REDIRECT_PIN = 0x80;
  static const KF_REDIRECT_COPY_CONTENTS = 0x200;
  static const KF_REDIRECT_DEL_SOURCE_CONTENTS = 0x400;
  static const KF_REDIRECT_EXCLUDE_ALL_KNOWN_SUBFOLDERS = 0x800;
}

/// {@category Enum}
class COMPUTER_NAME_FORMAT {
  static const ComputerNameNetBIOS = 0;
  static const ComputerNameDnsHostname = 1;
  static const ComputerNameDnsDomain = 2;
  static const ComputerNameDnsFullyQualified = 3;
  static const ComputerNamePhysicalNetBIOS = 4;
  static const ComputerNamePhysicalDnsHostname = 5;
  static const ComputerNamePhysicalDnsDomain = 6;
  static const ComputerNamePhysicalDnsFullyQualified = 7;
  static const ComputerNameMax = 8;
}

/// {@category Enum}
class KF_REDIRECTION_CAPABILITIES {
  static const KF_REDIRECTION_CAPABILITIES_ALLOW_ALL = 0xff;
  static const KF_REDIRECTION_CAPABILITIES_REDIRECTABLE = 0x1;
  static const KF_REDIRECTION_CAPABILITIES_DENY_ALL = 0xfff00;
  static const KF_REDIRECTION_CAPABILITIES_DENY_POLICY_REDIRECTED = 0x100;
  static const KF_REDIRECTION_CAPABILITIES_DENY_POLICY = 0x200;
  static const KF_REDIRECTION_CAPABILITIES_DENY_PERMISSIONS = 0x400;
}

/// {@category Enum}
class SIGDN {
  static const SIGDN_NORMALDISPLAY = 0;
  static const SIGDN_PARENTRELATIVEPARSING = 0x80018001;
  static const SIGDN_DESKTOPABSOLUTEPARSING = 0x80028000;
  static const SIGDN_PARENTRELATIVEEDITING = 0x80031001;
  static const SIGDN_DESKTOPABSOLUTEEDITING = 0x8004c000;
  static const SIGDN_FILESYSPATH = 0x80058000;
  static const SIGDN_URL = 0x80068000;
  static const SIGDN_PARENTRELATIVEFORADDRESSBAR = 0x8007c001;
  static const SIGDN_PARENTRELATIVE = 0x80080001;
  static const SIGDN_PARENTRELATIVEFORUI = 0x8009400;
}

/// {@category Enum}
class EOLE_AUTHENTICATION_CAPABILITIES {
  static const EOAC_NONE = 0;
  static const EOAC_MUTUAL_AUTH = 0x1;
  static const EOAC_STATIC_CLOAKING = 0x20;
  static const EOAC_DYNAMIC_CLOAKING = 0x40;
  static const EOAC_ANY_AUTHORITY = 0x80;
  static const EOAC_MAKE_FULLSIC = 0x100;
  static const EOAC_DEFAULT = 0x800;
  static const EOAC_SECURE_REFS = 0x2;
  static const EOAC_ACCESS_CONTROL = 0x4;
  static const EOAC_APPID = 0x8;
  static const EOAC_DYNAMIC = 0x10;
  static const EOAC_REQUIRE_FULLSIC = 0x200;
  static const EOAC_AUTO_IMPERSONATE = 0x400;
  static const EOAC_DISABLE_AAA = 0x1000;
  static const EOAC_NO_CUSTOM_MARSHAL = 0x2000;
  static const EOAC_RESERVED1 = 0x4000;
}

/// {@category Enum}
class WBEM_GENERIC_FLAG_TYPE {
  static const WBEM_FLAG_RETURN_IMMEDIATELY = 0x10;
  static const WBEM_FLAG_RETURN_WBEM_COMPLETE = 0;
  static const WBEM_FLAG_BIDIRECTIONAL = 0;
  static const WBEM_FLAG_FORWARD_ONLY = 0x20;
  static const WBEM_FLAG_NO_ERROR_OBJECT = 0x40;
  static const WBEM_FLAG_RETURN_ERROR_OBJECT = 0;
  static const WBEM_FLAG_SEND_STATUS = 0x80;
  static const WBEM_FLAG_DONT_SEND_STATUS = 0;
  static const WBEM_FLAG_ENSURE_LOCATABLE = 0x100;
  static const WBEM_FLAG_DIRECT_READ = 0x200;
  static const WBEM_FLAG_SEND_ONLY_SELECTED = 0;
  static const WBEM_RETURN_WHEN_COMPLETE = 0;
  static const WBEM_RETURN_IMMEDIATELY = 0x10;
  static const WBEM_MASK_RESERVED_FLAGS = 0x1f000;
  static const WBEM_FLAG_USE_AMENDED_QUALIFIERS = 0x20000;
  static const WBEM_FLAG_STRONG_VALIDATION = 0x100000;
}

/// {@category Enum}
class WBEM_TIMEOUT_TYPE {
  static const WBEM_NO_WAIT = 0;
  static const WBEM_INFINITE = 0xffffffff;
}

/// {@category Enum}
class DESKTOP_SLIDESHOW_OPTIONS {
  static const DSO_SHUFFLEIMAGES = 0x1;
}

/// {@category Enum}
class DESKTOP_SLIDESHOW_STATE {
  static const DSS_ENABLED = 0x1;
  static const DSS_SLIDESHOW = 0x2;
  static const DSS_DISABLED_BY_REMOTE_SESSION = 0x4;
}

/// {@category Enum}
class DESKTOP_SLIDESHOW_DIRECTION {
  static const DSD_FORWARD = 0;
  static const DSD_BACKWARD = 1;
}

/// {@category Enum}
class DESKTOP_WALLPAPER_POSITION {
  static const DWPOS_CENTER = 0;
  static const DWPOS_TILE = 1;
  static const DWPOS_STRETCH = 2;
  static const DWPOS_FIT = 3;
  static const DWPOS_FILL = 4;
  static const DWPOS_SPAN = 5;
}

/// {@category Enum}
class NLM_CONNECTIVITY {
  static const NLM_CONNECTIVITY_DISCONNECTED = 0;
  static const NLM_CONNECTIVITY_IPV4_NOTRAFFIC = 0x1;
  static const NLM_CONNECTIVITY_IPV6_NOTRAFFIC = 0x2;
  static const NLM_CONNECTIVITY_IPV4_SUBNET = 0x10;
  static const NLM_CONNECTIVITY_IPV4_LOCALNETWORK = 0x20;
  static const NLM_CONNECTIVITY_IPV4_INTERNET = 0x40;
  static const NLM_CONNECTIVITY_IPV6_SUBNET = 0x100;
  static const NLM_CONNECTIVITY_IPV6_LOCALNETWORK = 0x200;
  static const NLM_CONNECTIVITY_IPV6_INTERNET = 0x400;
}

/// {@category Enum}
class NLM_ENUM_NETWORK {
  static const NLM_ENUM_NETWORK_CONNECTED = 0x1;
  static const NLM_ENUM_NETWORK_DISCONNECTED = 0x2;
  static const NLM_ENUM_NETWORK_ALL = 0x3;
}

/// @nodoc
const PRODUCT_UNDEFINED = 0x00000000;

/// @nodoc
const PRODUCT_ULTIMATE = 0x00000001;

/// @nodoc
const PRODUCT_HOME_BASIC = 0x00000002;

/// @nodoc
const PRODUCT_HOME_PREMIUM = 0x00000003;

/// @nodoc
const PRODUCT_ENTERPRISE = 0x00000004;

/// @nodoc
const PRODUCT_HOME_BASIC_N = 0x00000005;

/// @nodoc
const PRODUCT_BUSINESS = 0x00000006;

/// @nodoc
const PRODUCT_STANDARD_SERVER = 0x00000007;

/// @nodoc
const PRODUCT_DATACENTER_SERVER = 0x00000008;

/// @nodoc
const PRODUCT_SMALLBUSINESS_SERVER = 0x00000009;

/// @nodoc
const PRODUCT_ENTERPRISE_SERVER = 0x0000000A;

/// @nodoc
const PRODUCT_STARTER = 0x0000000B;

/// @nodoc
const PRODUCT_DATACENTER_SERVER_CORE = 0x0000000C;

/// @nodoc
const PRODUCT_STANDARD_SERVER_CORE = 0x0000000D;

/// @nodoc
const PRODUCT_ENTERPRISE_SERVER_CORE = 0x0000000E;

/// @nodoc
const PRODUCT_ENTERPRISE_SERVER_IA64 = 0x0000000F;

/// @nodoc
const PRODUCT_BUSINESS_N = 0x00000010;

/// @nodoc
const PRODUCT_WEB_SERVER = 0x00000011;

/// @nodoc
const PRODUCT_CLUSTER_SERVER = 0x00000012;

/// @nodoc
const PRODUCT_HOME_SERVER = 0x00000013;

/// @nodoc
const PRODUCT_STORAGE_EXPRESS_SERVER = 0x00000014;

/// @nodoc
const PRODUCT_STORAGE_STANDARD_SERVER = 0x00000015;

/// @nodoc
const PRODUCT_STORAGE_WORKGROUP_SERVER = 0x00000016;

/// @nodoc
const PRODUCT_STORAGE_ENTERPRISE_SERVER = 0x00000017;

/// @nodoc
const PRODUCT_SERVER_FOR_SMALLBUSINESS = 0x00000018;

/// @nodoc
const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM = 0x00000019;

/// @nodoc
const PRODUCT_HOME_PREMIUM_N = 0x0000001A;

/// @nodoc
const PRODUCT_ENTERPRISE_N = 0x0000001B;

/// @nodoc
const PRODUCT_ULTIMATE_N = 0x0000001C;

/// @nodoc
const PRODUCT_WEB_SERVER_CORE = 0x0000001D;

/// @nodoc
const PRODUCT_MEDIUMBUSINESS_SERVER_MANAGEMENT = 0x0000001E;

/// @nodoc
const PRODUCT_MEDIUMBUSINESS_SERVER_SECURITY = 0x0000001F;

/// @nodoc
const PRODUCT_MEDIUMBUSINESS_SERVER_MESSAGING = 0x00000020;

/// @nodoc
const PRODUCT_SERVER_FOUNDATION = 0x00000021;

/// @nodoc
const PRODUCT_HOME_PREMIUM_SERVER = 0x00000022;

/// @nodoc
const PRODUCT_SERVER_FOR_SMALLBUSINESS_V = 0x00000023;

/// @nodoc
const PRODUCT_STANDARD_SERVER_V = 0x00000024;

/// @nodoc
const PRODUCT_DATACENTER_SERVER_V = 0x00000025;

/// @nodoc
const PRODUCT_ENTERPRISE_SERVER_V = 0x00000026;

/// @nodoc
const PRODUCT_DATACENTER_SERVER_CORE_V = 0x00000027;

/// @nodoc
const PRODUCT_STANDARD_SERVER_CORE_V = 0x00000028;

/// @nodoc
const PRODUCT_ENTERPRISE_SERVER_CORE_V = 0x00000029;

/// @nodoc
const PRODUCT_HYPERV = 0x0000002A;

/// @nodoc
const PRODUCT_STORAGE_EXPRESS_SERVER_CORE = 0x0000002B;

/// @nodoc
const PRODUCT_STORAGE_STANDARD_SERVER_CORE = 0x0000002C;

/// @nodoc
const PRODUCT_STORAGE_WORKGROUP_SERVER_CORE = 0x0000002D;

/// @nodoc
const PRODUCT_STORAGE_ENTERPRISE_SERVER_CORE = 0x0000002E;

/// @nodoc
const PRODUCT_STARTER_N = 0x0000002F;

/// @nodoc
const PRODUCT_PROFESSIONAL = 0x00000030;

/// @nodoc
const PRODUCT_PROFESSIONAL_N = 0x00000031;

/// @nodoc
const PRODUCT_SB_SOLUTION_SERVER = 0x00000032;

/// @nodoc
const PRODUCT_SERVER_FOR_SB_SOLUTIONS = 0x00000033;

/// @nodoc
const PRODUCT_STANDARD_SERVER_SOLUTIONS = 0x00000034;

/// @nodoc
const PRODUCT_STANDARD_SERVER_SOLUTIONS_CORE = 0x00000035;

/// @nodoc
const PRODUCT_SB_SOLUTION_SERVER_EM = 0x00000036;

/// @nodoc
const PRODUCT_SERVER_FOR_SB_SOLUTIONS_EM = 0x00000037;

/// @nodoc
const PRODUCT_SOLUTION_EMBEDDEDSERVER = 0x00000038;

/// @nodoc
const PRODUCT_SOLUTION_EMBEDDEDSERVER_CORE = 0x00000039;

/// @nodoc
const PRODUCT_PROFESSIONAL_EMBEDDED = 0x0000003A;

/// @nodoc
const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMT = 0x0000003B;

/// @nodoc
const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDL = 0x0000003C;

/// @nodoc
const PRODUCT_ESSENTIALBUSINESS_SERVER_MGMTSVC = 0x0000003D;

/// @nodoc
const PRODUCT_ESSENTIALBUSINESS_SERVER_ADDLSVC = 0x0000003E;

/// @nodoc
const PRODUCT_SMALLBUSINESS_SERVER_PREMIUM_CORE = 0x0000003F;

/// @nodoc
const PRODUCT_CLUSTER_SERVER_V = 0x00000040;

/// @nodoc
const PRODUCT_EMBEDDED = 0x00000041;

/// @nodoc
const PRODUCT_STARTER_E = 0x00000042;

/// @nodoc
const PRODUCT_HOME_BASIC_E = 0x00000043;

/// @nodoc
const PRODUCT_HOME_PREMIUM_E = 0x00000044;

/// @nodoc
const PRODUCT_PROFESSIONAL_E = 0x00000045;

/// @nodoc
const PRODUCT_ENTERPRISE_E = 0x00000046;

/// @nodoc
const PRODUCT_ULTIMATE_E = 0x00000047;

/// @nodoc
const PRODUCT_ENTERPRISE_EVALUATION = 0x00000048;

/// @nodoc
const PRODUCT_MULTIPOINT_STANDARD_SERVER = 0x0000004C;

/// @nodoc
const PRODUCT_MULTIPOINT_PREMIUM_SERVER = 0x0000004D;

/// @nodoc
const PRODUCT_STANDARD_EVALUATION_SERVER = 0x0000004F;

/// @nodoc
const PRODUCT_DATACENTER_EVALUATION_SERVER = 0x00000050;

/// @nodoc
const PRODUCT_ENTERPRISE_N_EVALUATION = 0x00000054;

/// @nodoc
const PRODUCT_EMBEDDED_AUTOMOTIVE = 0x00000055;

/// @nodoc
const PRODUCT_EMBEDDED_INDUSTRY_A = 0x00000056;

/// @nodoc
const PRODUCT_THINPC = 0x00000057;

/// @nodoc
const PRODUCT_EMBEDDED_A = 0x00000058;

/// @nodoc
const PRODUCT_EMBEDDED_INDUSTRY = 0x00000059;

/// @nodoc
const PRODUCT_EMBEDDED_E = 0x0000005A;

/// @nodoc
const PRODUCT_EMBEDDED_INDUSTRY_E = 0x0000005B;

/// @nodoc
const PRODUCT_EMBEDDED_INDUSTRY_A_E = 0x0000005C;

/// @nodoc
const PRODUCT_STORAGE_WORKGROUP_EVALUATION_SERVER = 0x0000005F;

/// @nodoc
const PRODUCT_STORAGE_STANDARD_EVALUATION_SERVER = 0x00000060;

/// @nodoc
const PRODUCT_CORE_ARM = 0x00000061;

/// @nodoc
const PRODUCT_CORE_N = 0x00000062;

/// @nodoc
const PRODUCT_CORE_COUNTRYSPECIFIC = 0x00000063;

/// @nodoc
const PRODUCT_CORE_SINGLELANGUAGE = 0x00000064;

/// @nodoc
const PRODUCT_CORE = 0x00000065;

/// @nodoc
const PRODUCT_PROFESSIONAL_WMC = 0x00000067;

/// @nodoc
const PRODUCT_EMBEDDED_INDUSTRY_EVAL = 0x00000069;

/// @nodoc
const PRODUCT_EMBEDDED_INDUSTRY_E_EVAL = 0x0000006A;

/// @nodoc
const PRODUCT_EMBEDDED_EVAL = 0x0000006B;

/// @nodoc
const PRODUCT_EMBEDDED_E_EVAL = 0x0000006C;

/// @nodoc
const PRODUCT_NANO_SERVER = 0x0000006D;

/// @nodoc
const PRODUCT_CLOUD_STORAGE_SERVER = 0x0000006E;

/// @nodoc
const PRODUCT_CORE_CONNECTED = 0x0000006F;

/// @nodoc
const PRODUCT_PROFESSIONAL_STUDENT = 0x00000070;

/// @nodoc
const PRODUCT_CORE_CONNECTED_N = 0x00000071;

/// @nodoc
const PRODUCT_PROFESSIONAL_STUDENT_N = 0x00000072;

/// @nodoc
const PRODUCT_CORE_CONNECTED_SINGLELANGUAGE = 0x00000073;

/// @nodoc
const PRODUCT_CORE_CONNECTED_COUNTRYSPECIFIC = 0x00000074;

/// @nodoc
const PRODUCT_CONNECTED_CAR = 0x00000075;

/// @nodoc
const PRODUCT_INDUSTRY_HANDHELD = 0x00000076;

/// @nodoc
const PRODUCT_PPI_PRO = 0x00000077;

/// @nodoc
const PRODUCT_ARM64_SERVER = 0x00000078;

/// @nodoc
const PRODUCT_EDUCATION = 0x00000079;

/// @nodoc
const PRODUCT_EDUCATION_N = 0x0000007A;

/// @nodoc
const PRODUCT_IOTUAP = 0x0000007B;

/// @nodoc
const PRODUCT_CLOUD_HOST_INFRASTRUCTURE_SERVER = 0x0000007C;

/// @nodoc
const PRODUCT_ENTERPRISE_S = 0x0000007D;

/// @nodoc
const PRODUCT_ENTERPRISE_S_N = 0x0000007E;

/// @nodoc
const PRODUCT_PROFESSIONAL_S = 0x0000007F;

/// @nodoc
const PRODUCT_PROFESSIONAL_S_N = 0x00000080;

/// @nodoc
const PRODUCT_ENTERPRISE_S_EVALUATION = 0x00000081;

/// @nodoc
const PRODUCT_ENTERPRISE_S_N_EVALUATION = 0x00000082;

/// @nodoc
const PRODUCT_HOLOGRAPHIC = 0x00000087;

/// @nodoc
const PRODUCT_HOLOGRAPHIC_BUSINESS = 0x00000088;

/// @nodoc
const PRODUCT_PRO_SINGLE_LANGUAGE = 0x0000008A;

/// @nodoc
const PRODUCT_PRO_CHINA = 0x0000008B;

/// @nodoc
const PRODUCT_ENTERPRISE_SUBSCRIPTION = 0x0000008C;

/// @nodoc
const PRODUCT_ENTERPRISE_SUBSCRIPTION_N = 0x0000008D;

/// @nodoc
const PRODUCT_DATACENTER_NANO_SERVER = 0x0000008F;

/// @nodoc
const PRODUCT_STANDARD_NANO_SERVER = 0x00000090;

/// @nodoc
const PRODUCT_DATACENTER_A_SERVER_CORE = 0x00000091;

/// @nodoc
const PRODUCT_STANDARD_A_SERVER_CORE = 0x00000092;

/// @nodoc
const PRODUCT_DATACENTER_WS_SERVER_CORE = 0x00000093;

/// @nodoc
const PRODUCT_STANDARD_WS_SERVER_CORE = 0x00000094;

/// @nodoc
const PRODUCT_UTILITY_VM = 0x00000095;

/// @nodoc
const PRODUCT_DATACENTER_EVALUATION_SERVER_CORE = 0x0000009F;

/// @nodoc
const PRODUCT_STANDARD_EVALUATION_SERVER_CORE = 0x000000A0;

/// @nodoc
const PRODUCT_PRO_WORKSTATION = 0x000000A1;

/// @nodoc
const PRODUCT_PRO_WORKSTATION_N = 0x000000A2;

/// @nodoc
const PRODUCT_PRO_FOR_EDUCATION = 0x000000A4;

/// @nodoc
const PRODUCT_PRO_FOR_EDUCATION_N = 0x000000A5;

/// @nodoc
const PRODUCT_AZURE_SERVER_CORE = 0x000000A8;

/// @nodoc
const PRODUCT_AZURE_NANO_SERVER = 0x000000A9;

/// @nodoc
const PRODUCT_ENTERPRISEG = 0x000000AB;

/// @nodoc
const PRODUCT_ENTERPRISEGN = 0x000000AC;

/// @nodoc
const PRODUCT_SERVERRDSH = 0x000000AF;

/// @nodoc
const PRODUCT_CLOUD = 0x000000B2;

/// @nodoc
const PRODUCT_CLOUDN = 0x000000B3;

/// @nodoc
const PRODUCT_HUBOS = 0x000000B4;

/// @nodoc
const PRODUCT_ONECOREUPDATEOS = 0x000000B6;

/// @nodoc
const PRODUCT_CLOUDE = 0x000000B7;

/// @nodoc
const PRODUCT_ANDROMEDA = 0x000000B8;

/// @nodoc
const PRODUCT_IOTOS = 0x000000B9;

/// @nodoc
const PRODUCT_CLOUDEN = 0x000000BA;

/// @nodoc
const PRODUCT_IOTEDGEOS = 0x000000BB;

/// @nodoc
const PRODUCT_IOTENTERPRISE = 0x000000BC;

/// @nodoc
const PRODUCT_LITE = 0x000000BD;

/// @nodoc
const PRODUCT_IOTENTERPRISES = 0x000000BF;

/// @nodoc
const PRODUCT_XBOX_SYSTEMOS = 0x000000C0;

/// @nodoc
const PRODUCT_XBOX_NATIVEOS = 0x000000C1;

/// @nodoc
const PRODUCT_XBOX_GAMEOS = 0x000000C2;

/// @nodoc
const PRODUCT_XBOX_ERAOS = 0x000000C3;

/// @nodoc
const PRODUCT_XBOX_DURANGOHOSTOS = 0x000000C4;

/// @nodoc
const PRODUCT_XBOX_SCARLETTHOSTOS = 0x000000C5;

/// @nodoc
const PRODUCT_UNLICENSED = 0xABCDABCD;
