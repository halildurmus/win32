// Dart representations of Win32 constants.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: camel_case_types, constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'guid.dart';
import 'hresult.dart';
import 'ntstatus.dart';
import 'propertykey.dart';

const ACCESS_SYSTEM_SECURITY = 16777216;

const ALL_PROCESSOR_GROUPS = 65535;

const ATTACH_PARENT_PROCESS = 4294967295;

const BKMODE_LAST = 2;

const BLUETOOTH_DEVICE_NAME_SIZE = 256;

const BLUETOOTH_GATT_FLAG_CONNECTION_AUTHENTICATED = 2;

const BLUETOOTH_GATT_FLAG_CONNECTION_ENCRYPTED = 1;

const BLUETOOTH_GATT_FLAG_FORCE_READ_FROM_CACHE = 8;

const BLUETOOTH_GATT_FLAG_FORCE_READ_FROM_DEVICE = 4;

const BLUETOOTH_GATT_FLAG_NONE = 0;

const BLUETOOTH_GATT_FLAG_RETURN_ALL = 64;

const BLUETOOTH_GATT_FLAG_SIGNED_WRITE = 16;

const BLUETOOTH_GATT_FLAG_WRITE_WITHOUT_RESPONSE = 32;

const BLUETOOTH_MAX_NAME_SIZE = 248;

const BLUETOOTH_MAX_PASSKEY_BUFFER_SIZE = 17;

const BLUETOOTH_MAX_PASSKEY_SIZE = 16;

const BLUETOOTH_MAX_SERVICE_NAME_SIZE = 256;

const BS_3STATE = 5;

const BS_AUTO3STATE = 6;

const BS_AUTOCHECKBOX = 3;

const BS_AUTORADIOBUTTON = 9;

const BS_BITMAP = 128;

const BS_BOTTOM = 2048;

const BS_CENTER = 768;

const BS_CHECKBOX = 2;

const BS_DEFPUSHBUTTON = 1;

const BS_FLAT = 32768;

const BS_GROUPBOX = 7;

const BS_ICON = 64;

const BS_LEFT = 256;

const BS_LEFTTEXT = 32;

const BS_MULTILINE = 8192;

const BS_NOTIFY = 16384;

const BS_OWNERDRAW = 11;

const BS_PUSHBOX = 10;

const BS_PUSHBUTTON = 0;

const BS_PUSHLIKE = 4096;

const BS_RADIOBUTTON = 4;

const BS_RIGHT = 512;

const BS_RIGHTBUTTON = 32;

const BS_TEXT = 0;

const BS_TOP = 1024;

const BS_TYPEMASK = 15;

const BS_USERBUTTON = 8;

const BS_VCENTER = 3072;

const BTH_LINK_KEY_LENGTH = 16;

const BTH_MAX_PIN_SIZE = 16;

const CBR_110 = 110;

const CBR_115200 = 115200;

const CBR_1200 = 1200;

const CBR_128000 = 128000;

const CBR_14400 = 14400;

const CBR_19200 = 19200;

const CBR_2400 = 2400;

const CBR_256000 = 256000;

const CBR_300 = 300;

const CBR_38400 = 38400;

const CBR_4800 = 4800;

const CBR_56000 = 56000;

const CBR_57600 = 57600;

const CBR_600 = 600;

const CBR_9600 = 9600;

const CCM_FIRST = 8192;

/// Gets the Unicode character format flag for the control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/ccm-getunicodeformat>.
const CCM_GETUNICODEFORMAT = 8198;

/// Sets the Unicode character format flag for the control.
///
/// This message enables you to change the character set used by the control at
/// run time rather than having to re-create the control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/ccm-setunicodeformat>.
const CCM_SETUNICODEFORMAT = 8197;

const CC_CHORD = 4;

const CC_CIRCLES = 1;

const CC_ELLIPSES = 8;

const CC_INTERIORS = 128;

const CC_NONE = 0;

const CC_PIE = 2;

const CC_ROUNDRECT = 256;

const CC_STYLED = 32;

const CC_WIDE = 16;

const CC_WIDESTYLED = 64;

/// Represents the HRESULT value `0x80040111` (`-2147221231`).
const CLASS_E_CLASSNOTAVAILABLE = HRESULT(0x80040111 - 0x100000000);

/// Represents the HRESULT value `0x80040110` (`-2147221232`).
const CLASS_E_NOAGGREGATION = HRESULT(0x80040110 - 0x100000000);

/// Represents the HRESULT value `0x80040112` (`-2147221230`).
const CLASS_E_NOTLICENSED = HRESULT(0x80040112 - 0x100000000);

final CLSID_CorMetaDataDispenser = Guid.fromComponents(
  0xe5cb7a31,
  0x7512,
  0x11d2,
  Uint8List.fromList(const [0x89, 0xce, 0x0, 0x80, 0xc7, 0x92, 0xe5, 0xd8]),
);

const CM_CMYK_COLOR = 4;

const CM_DEVICE_ICM = 1;

const CM_GAMMA_RAMP = 2;

const CM_NONE = 0;

/// A Color dialog box sends the COLOROKSTRING registered message to your hook
/// procedure, CCHookProc, when the user selects a color and clicks the OK
/// button.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/colorokstring>.
const COLOROKSTRING = 'commdlg_ColorOK';

/// Represents the HRESULT value `0x800401F1` (`-2147221007`).
const CO_E_ALREADYINITIALIZED = HRESULT(0x800401F1 - 0x100000000);

/// Represents the HRESULT value `0x800401FE` (`-2147220994`).
const CO_E_APPDIDNTREG = HRESULT(0x800401FE - 0x100000000);

/// Represents the HRESULT value `0x800401F5` (`-2147221003`).
const CO_E_APPNOTFOUND = HRESULT(0x800401F5 - 0x100000000);

/// Represents the HRESULT value `0x800401F6` (`-2147221002`).
const CO_E_APPSINGLEUSE = HRESULT(0x800401F6 - 0x100000000);

/// Represents the HRESULT value `0x800401F2` (`-2147221006`).
const CO_E_CANTDETERMINECLASS = HRESULT(0x800401F2 - 0x100000000);

/// Represents the HRESULT value `0x800401F3` (`-2147221005`).
const CO_E_CLASSSTRING = HRESULT(0x800401F3 - 0x100000000);

/// Represents the HRESULT value `0x800401F8` (`-2147221000`).
const CO_E_DLLNOTFOUND = HRESULT(0x800401F8 - 0x100000000);

/// Represents the HRESULT value `0x800401F7` (`-2147221001`).
const CO_E_ERRORINAPP = HRESULT(0x800401F7 - 0x100000000);

/// Represents the HRESULT value `0x800401F9` (`-2147220999`).
const CO_E_ERRORINDLL = HRESULT(0x800401F9 - 0x100000000);

/// Represents the HRESULT value `0x800401F4` (`-2147221004`).
const CO_E_IIDSTRING = HRESULT(0x800401F4 - 0x100000000);

/// Represents the HRESULT value `0x800401F0` (`-2147221008`).
const CO_E_NOTINITIALIZED = HRESULT(0x800401F0 - 0x100000000);

/// Represents the HRESULT value `0x800401FC` (`-2147220996`).
const CO_E_OBJISREG = HRESULT(0x800401FC - 0x100000000);

/// Represents the HRESULT value `0x800401FD` (`-2147220995`).
const CO_E_OBJNOTCONNECTED = HRESULT(0x800401FD - 0x100000000);

/// Represents the HRESULT value `0x800401FB` (`-2147220997`).
const CO_E_OBJNOTREG = HRESULT(0x800401FB - 0x100000000);

/// Represents the HRESULT value `0x800401FA` (`-2147220998`).
const CO_E_WRONGOSFORAPP = HRESULT(0x800401FA - 0x100000000);

const CP_NONE = 0;

const CP_RECTANGLE = 1;

const CP_REGION = 2;

const CRED_PRESERVE_CREDENTIAL_BLOB = 1;

const CSIDL_ADMINTOOLS = 48;

const CSIDL_ALTSTARTUP = 29;

const CSIDL_APPDATA = 26;

const CSIDL_BITBUCKET = 10;

const CSIDL_CDBURN_AREA = 59;

const CSIDL_COMMON_ADMINTOOLS = 47;

const CSIDL_COMMON_ALTSTARTUP = 30;

const CSIDL_COMMON_APPDATA = 35;

const CSIDL_COMMON_DESKTOPDIRECTORY = 25;

const CSIDL_COMMON_DOCUMENTS = 46;

const CSIDL_COMMON_FAVORITES = 31;

const CSIDL_COMMON_MUSIC = 53;

const CSIDL_COMMON_OEM_LINKS = 58;

const CSIDL_COMMON_PICTURES = 54;

const CSIDL_COMMON_PROGRAMS = 23;

const CSIDL_COMMON_STARTMENU = 22;

const CSIDL_COMMON_STARTUP = 24;

const CSIDL_COMMON_TEMPLATES = 45;

const CSIDL_COMMON_VIDEO = 55;

const CSIDL_COMPUTERSNEARME = 61;

const CSIDL_CONNECTIONS = 49;

const CSIDL_CONTROLS = 3;

const CSIDL_COOKIES = 33;

const CSIDL_DESKTOP = 0;

const CSIDL_DESKTOPDIRECTORY = 16;

const CSIDL_DRIVES = 17;

const CSIDL_FAVORITES = 6;

const CSIDL_FLAG_CREATE = 32768;

const CSIDL_FLAG_DONT_UNEXPAND = 8192;

const CSIDL_FLAG_DONT_VERIFY = 16384;

const CSIDL_FLAG_MASK = 65280;

const CSIDL_FLAG_NO_ALIAS = 4096;

const CSIDL_FLAG_PER_USER_INIT = 2048;

const CSIDL_FONTS = 20;

const CSIDL_HISTORY = 34;

const CSIDL_INTERNET = 1;

const CSIDL_INTERNET_CACHE = 32;

const CSIDL_LOCAL_APPDATA = 28;

const CSIDL_MYDOCUMENTS = 5;

const CSIDL_MYMUSIC = 13;

const CSIDL_MYPICTURES = 39;

const CSIDL_MYVIDEO = 14;

const CSIDL_NETHOOD = 19;

const CSIDL_NETWORK = 18;

const CSIDL_PERSONAL = 5;

const CSIDL_PRINTERS = 4;

const CSIDL_PRINTHOOD = 27;

const CSIDL_PROFILE = 40;

const CSIDL_PROGRAMS = 2;

const CSIDL_PROGRAM_FILES = 38;

const CSIDL_PROGRAM_FILESX86 = 42;

const CSIDL_PROGRAM_FILES_COMMON = 43;

const CSIDL_PROGRAM_FILES_COMMONX86 = 44;

const CSIDL_RECENT = 8;

const CSIDL_RESOURCES = 56;

const CSIDL_RESOURCES_LOCALIZED = 57;

const CSIDL_SENDTO = 9;

const CSIDL_STARTMENU = 11;

const CSIDL_STARTUP = 7;

const CSIDL_SYSTEM = 37;

const CSIDL_SYSTEMX86 = 41;

const CSIDL_TEMPLATES = 21;

const CSIDL_WINDOWS = 36;

const CW_USEDEFAULT = -2147483648;

/// The system broadcasts the DBT_CONFIGCHANGECANCELED device event when a
/// request to change the current configuration (dock or undock) has been
/// canceled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-configchangecanceled>.
const DBT_CONFIGCHANGECANCELED = 25;

/// The system broadcasts the DBT_CONFIGCHANGED device event to indicate that
/// the current configuration has changed, due to a dock or undock.
///
/// An application or driver that stores data in the registry under the
/// HKEY_CURRENT_CONFIG key should update the data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-configchanged>.
const DBT_CONFIGCHANGED = 24;

/// The system sends the DBT_CUSTOMEVENT device event when a driver-defined
/// custom event has occurred.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-customevent>.
const DBT_CUSTOMEVENT = 32774;

/// The system broadcasts the DBT_DEVICEARRIVAL device event when a device or
/// piece of media has been inserted and becomes available.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-devicearrival>.
const DBT_DEVICEARRIVAL = 32768;

/// The system broadcasts the DBT_DEVICEQUERYREMOVE device event to request
/// permission to remove a device or piece of media.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-devicequeryremove>.
const DBT_DEVICEQUERYREMOVE = 32769;

/// The system broadcasts the DBT_DEVICEQUERYREMOVEFAILED device event when a
/// request to remove a device or piece of media has been canceled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-devicequeryremovefailed>.
const DBT_DEVICEQUERYREMOVEFAILED = 32770;

/// The system broadcasts the DBT_DEVICEREMOVECOMPLETE device event when a
/// device or piece of media has been physically removed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-deviceremovecomplete>.
const DBT_DEVICEREMOVECOMPLETE = 32772;

/// The system broadcasts the DBT_DEVICEREMOVEPENDING device event when a device
/// or piece of media is being removed and is no longer available for use.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-deviceremovepending>.
const DBT_DEVICEREMOVEPENDING = 32771;

/// The system broadcasts the DBT_DEVICETYPESPECIFIC device event when a
/// device-specific event occurs.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-devicetypespecific>.
const DBT_DEVICETYPESPECIFIC = 32773;

/// The system broadcasts the DBT_DEVNODES_CHANGED device event when a device
/// has been added to or removed from the system.
///
/// Applications that maintain lists of devices in the system should refresh
/// their lists.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-devnodes-changed>.
const DBT_DEVNODES_CHANGED = 7;

/// The system broadcasts the DBT_QUERYCHANGECONFIG device event to request
/// permission to change the current configuration (dock or undock).
///
/// Any application can deny this request and cancel the change.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-querychangeconfig>.
const DBT_QUERYCHANGECONFIG = 23;

/// The DBT_USERDEFINED device event identifies a user-defined event.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/dbt-userdefined>.
const DBT_USERDEFINED = 65535;

const DEACTIVATE_ACTCTX_FLAG_FORCE_EARLY_DEACTIVATION = 1;

const DIREG_BOTH = 4;

const DIREG_DEV = 1;

const DIREG_DRV = 2;

const DISPID_COLLECT = -8;

const DISPID_CONSTRUCTOR = -6;

const DISPID_DESTRUCTOR = -7;

const DISPID_EVALUATE = -5;

const DISPID_NEWENUM = -4;

const DISPID_PROPERTYPUT = -3;

const DISPID_UNKNOWN = -1;

const DISPID_VALUE = 0;

/// Represents the HRESULT value `0x8002000D` (`-2147352563`).
const DISP_E_ARRAYISLOCKED = HRESULT(0x8002000D - 0x100000000);

/// Represents the HRESULT value `0x80020010` (`-2147352560`).
const DISP_E_BADCALLEE = HRESULT(0x80020010 - 0x100000000);

/// Represents the HRESULT value `0x8002000B` (`-2147352565`).
const DISP_E_BADINDEX = HRESULT(0x8002000B - 0x100000000);

/// Represents the HRESULT value `0x8002000E` (`-2147352562`).
const DISP_E_BADPARAMCOUNT = HRESULT(0x8002000E - 0x100000000);

/// Represents the HRESULT value `0x80020008` (`-2147352568`).
const DISP_E_BADVARTYPE = HRESULT(0x80020008 - 0x100000000);

/// Represents the HRESULT value `0x80020013` (`-2147352557`).
const DISP_E_BUFFERTOOSMALL = HRESULT(0x80020013 - 0x100000000);

/// Represents the HRESULT value `0x80020012` (`-2147352558`).
const DISP_E_DIVBYZERO = HRESULT(0x80020012 - 0x100000000);

/// Represents the HRESULT value `0x80020009` (`-2147352567`).
const DISP_E_EXCEPTION = HRESULT(0x80020009 - 0x100000000);

/// Represents the HRESULT value `0x80020003` (`-2147352573`).
const DISP_E_MEMBERNOTFOUND = HRESULT(0x80020003 - 0x100000000);

/// Represents the HRESULT value `0x80020007` (`-2147352569`).
const DISP_E_NONAMEDARGS = HRESULT(0x80020007 - 0x100000000);

/// Represents the HRESULT value `0x80020011` (`-2147352559`).
const DISP_E_NOTACOLLECTION = HRESULT(0x80020011 - 0x100000000);

/// Represents the HRESULT value `0x8002000A` (`-2147352566`).
const DISP_E_OVERFLOW = HRESULT(0x8002000A - 0x100000000);

/// Represents the HRESULT value `0x80020004` (`-2147352572`).
const DISP_E_PARAMNOTFOUND = HRESULT(0x80020004 - 0x100000000);

/// Represents the HRESULT value `0x8002000F` (`-2147352561`).
const DISP_E_PARAMNOTOPTIONAL = HRESULT(0x8002000F - 0x100000000);

/// Represents the HRESULT value `0x80020005` (`-2147352571`).
const DISP_E_TYPEMISMATCH = HRESULT(0x80020005 - 0x100000000);

/// Represents the HRESULT value `0x80020001` (`-2147352575`).
const DISP_E_UNKNOWNINTERFACE = HRESULT(0x80020001 - 0x100000000);

/// Represents the HRESULT value `0x8002000C` (`-2147352564`).
const DISP_E_UNKNOWNLCID = HRESULT(0x8002000C - 0x100000000);

/// Represents the HRESULT value `0x80020006` (`-2147352570`).
const DISP_E_UNKNOWNNAME = HRESULT(0x80020006 - 0x100000000);

const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE = -3;

const DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2 = -4;

const DPI_AWARENESS_CONTEXT_SYSTEM_AWARE = -2;

const DPI_AWARENESS_CONTEXT_UNAWARE = -1;

const DPI_AWARENESS_CONTEXT_UNAWARE_GDISCALED = -5;

const DRIVE_CDROM = 5;

const DRIVE_FIXED = 3;

const DRIVE_NO_ROOT_DIR = 1;

const DRIVE_RAMDISK = 6;

const DRIVE_REMOTE = 4;

const DRIVE_REMOVABLE = 2;

const DRIVE_UNKNOWN = 0;

const DS_3DLOOK = 4;

const DS_ABSALIGN = 1;

const DS_CENTER = 2048;

const DS_CENTERMOUSE = 4096;

const DS_CONTEXTHELP = 8192;

const DS_CONTROL = 1024;

const DS_FIXEDSYS = 8;

const DS_LOCALEDIT = 32;

const DS_MODALFRAME = 128;

const DS_NOFAILCREATE = 16;

const DS_NOIDLEMSG = 256;

const DS_SETFONT = 64;

const DS_SETFOREGROUND = 512;

const DS_SYSMODAL = 2;

/// Disables the DTR line when the device is opened and leaves it disabled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
const DTR_CONTROL_DISABLE = 0;

/// Enables the DTR line when the device is opened and leaves it on.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
const DTR_CONTROL_ENABLE = 1;

/// Enables DTR handshaking.
///
/// If handshaking is enabled, it is an error for the application to adjust the
/// line by using the <a
/// href="https://docs.microsoft.com/windows/desktop/api/winbase/nf-winbase-escapecommfunction">EscapeCommFunction</a>
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
const DTR_CONTROL_HANDSHAKE = 2;

const DT_CHARSTREAM = 4;

const DT_DISPFILE = 6;

const DT_METAFILE = 5;

const DT_PLOTTER = 0;

const DT_RASCAMERA = 3;

const DT_RASDISPLAY = 1;

const DT_RASPRINTER = 2;

const DWM_BB_BLURREGION = 2;

const DWM_BB_ENABLE = 1;

const DWM_BB_TRANSITIONONMAXIMIZED = 4;

const EC_LEFTMARGIN = 1;

const EC_RIGHTMARGIN = 2;

const EC_USEFONTINFO = 65535;

/// Determines whether there are any actions in an edit control's undo queue.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-canundo>.
const EM_CANUNDO = 198;

/// Gets information about the character closest to a specified point in the
/// client area of an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-charfrompos>.
const EM_CHARFROMPOS = 215;

/// Resets the undo flag of an edit control.
///
/// The undo flag is set whenever an operation within the edit control can be
/// undone. You can send this message to either an edit control or a rich edit
/// control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-emptyundobuffer>.
const EM_EMPTYUNDOBUFFER = 205;

const EM_ENABLEFEATURE = 218;

/// Sets a flag that determines whether a multiline edit control includes soft
/// line-break characters.
///
/// A soft line break consists of two carriage returns and a line feed and is
/// inserted at the end of a line that is broken because of wordwrapping.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-fmtlines>.
const EM_FMTLINES = 200;

/// Gets the zero-based index of the uppermost visible line in a multiline edit
/// control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getfirstvisibleline>.
const EM_GETFIRSTVISIBLELINE = 206;

/// Gets a handle of the memory currently allocated for a multiline edit
/// control's text.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-gethandle>.
const EM_GETHANDLE = 189;

/// Gets a set of status flags that indicate how the edit control interacts with
/// the Input Method Editor (IME).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getimestatus>.
const EM_GETIMESTATUS = 217;

/// Gets the current text limit for an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getlimittext>.
const EM_GETLIMITTEXT = 213;

/// Copies a line of text from an edit control and places it in a specified
/// buffer.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getline>.
const EM_GETLINE = 196;

/// Gets the number of lines in a multiline edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getlinecount>.
const EM_GETLINECOUNT = 186;

/// Gets the widths of the left and right margins for an edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getmargins>.
const EM_GETMARGINS = 212;

/// Gets the state of an edit control's modification flag.
///
/// The flag indicates whether the contents of the edit control have been
/// modified. You can send this message to either an edit control or a rich edit
/// control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getmodify>.
const EM_GETMODIFY = 184;

/// Gets the password character that an edit control displays when the user
/// enters text.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getpasswordchar>.
const EM_GETPASSWORDCHAR = 210;

/// Gets the formatting rectangle of an edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getrect>.
const EM_GETRECT = 178;

/// Gets the starting and ending character positions (in TCHARs) of the current
/// selection in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getsel>.
const EM_GETSEL = 176;

/// Gets the position of the scroll box (thumb) in the vertical scroll bar of a
/// multiline edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getthumb>.
const EM_GETTHUMB = 190;

/// Gets the address of the current Wordwrap function.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-getwordbreakproc>.
const EM_GETWORDBREAKPROC = 209;

/// EM_LIMITTEXT message - Sets the text limit of an edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-limittext>.
const EM_LIMITTEXT = 197;

/// Gets the index of the line that contains the specified character index in a
/// multiline edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-linefromchar>.
const EM_LINEFROMCHAR = 201;

/// Gets the character index of the first character of a specified line in a
/// multiline edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-lineindex>.
const EM_LINEINDEX = 187;

/// Retrieves the length, in characters, of a line in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-linelength>.
const EM_LINELENGTH = 193;

/// Scrolls the text in a multiline edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-linescroll>.
const EM_LINESCROLL = 182;

/// Retrieves the client area coordinates of a specified character in an edit
/// control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-posfromchar>.
const EM_POSFROMCHAR = 214;

/// Replaces the selected text in an edit control or a rich edit control with
/// the specified text.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-replacesel>.
const EM_REPLACESEL = 194;

/// Scrolls the text vertically in a multiline edit control.
///
/// This message is equivalent to sending a WM_VSCROLL message to the edit
/// control. You can send this message to either an edit control or a rich edit
/// control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-scroll>.
const EM_SCROLL = 181;

/// Scrolls the caret into view in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-scrollcaret>.
const EM_SCROLLCARET = 183;

/// Sets the handle of the memory that will be used by a multiline edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-sethandle>.
const EM_SETHANDLE = 188;

/// Sets the status flags that determine how an edit control interacts with the
/// Input Method Editor (IME).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setimestatus>.
const EM_SETIMESTATUS = 216;

/// EM_SETLIMITTEXT message - Sets the text limit of an edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setlimittext>.
const EM_SETLIMITTEXT = 197;

/// Sets the widths of the left and right margins for an edit control.
///
/// The message redraws the control to reflect the new margins. You can send
/// this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setmargins>.
const EM_SETMARGINS = 211;

/// Sets or clears the modification flag for an edit control.
///
/// The modification flag indicates whether the text within the edit control has
/// been modified. You can send this message to either an edit control or a rich
/// edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setmodify>.
const EM_SETMODIFY = 185;

/// Sets or removes the password character for an edit control.
///
/// When a password character is set, that character is displayed in place of
/// the characters typed by the user. You can send this message to either an
/// edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setpasswordchar>.
const EM_SETPASSWORDCHAR = 204;

/// Sets or removes the read-only style (ES_READONLY) of an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setreadonly>.
const EM_SETREADONLY = 207;

/// EM_SETRECT message - Sets the formatting rectangle of a multiline edit
/// control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setrect>.
const EM_SETRECT = 179;

/// EM_SETRECTNP message - Sets the formatting rectangle of a multiline edit
/// control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setrectnp>.
const EM_SETRECTNP = 180;

/// Selects a range of characters in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setsel>.
const EM_SETSEL = 177;

/// The EM_SETTABSTOPS message sets the tab stops in a multiline edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-settabstops>.
const EM_SETTABSTOPS = 203;

/// Replaces an edit control's default Wordwrap function with an
/// application-defined Wordwrap function.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-setwordbreakproc>.
const EM_SETWORDBREAKPROC = 208;

/// This message undoes the last edit control operation in the control's undo
/// queue.
///
/// You can send this message to either an edit control or a rich edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/em-undo>.
const EM_UNDO = 199;

/// Sent when the user has changed the edit control direction to left-to-right.
///
/// The parent window of the edit control receives this notification code
/// through a WM_COMMAND message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-align-ltr-ec>.
const EN_ALIGN_LTR_EC = 1792;

/// Sent when the user has changed the edit control direction to right-to-left.
///
/// The parent window of the edit control receives this notification code
/// through a WM_COMMAND message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-align-rtl-ec>.
const EN_ALIGN_RTL_EC = 1793;

/// Notifies a windowless rich edit control's host window that a change has
/// occurred.
///
/// A rich edit control sends this notification code in the form of a WM_NOTIFY
/// message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-change--rich-edit-control->.
const EN_CHANGE = 768;

/// Sent when an edit control cannot allocate enough memory to meet a specific
/// request.
///
/// The parent window of the edit control receives this notification code
/// through a WM_COMMAND message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-errspace>.
const EN_ERRSPACE = 1280;

/// Sent when the user clicks an edit control's horizontal scroll bar.
///
/// The parent window of the edit control receives this notification code
/// through a WM_COMMAND message. The parent window is notified before the
/// screen is updated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-hscroll>.
const EN_HSCROLL = 1537;

/// Sent when an edit control loses the keyboard focus.
///
/// The parent window of the edit control receives this notification code
/// through a WM_COMMAND message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-killfocus>.
const EN_KILLFOCUS = 512;

/// Sent when the current text insertion has exceeded the specified number of
/// characters for the edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-maxtext>.
const EN_MAXTEXT = 1281;

/// Sent when an edit control receives the keyboard focus.
///
/// The parent window of the edit control receives this notification code
/// through a WM_COMMAND message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-setfocus>.
const EN_SETFOCUS = 256;

/// Sent when an edit control is about to redraw itself.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-update>.
const EN_UPDATE = 1024;

/// Sent when the user clicks an edit control's vertical scroll bar or when the
/// user scrolls the mouse wheel over the edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/en-vscroll>.
const EN_VSCROLL = 1538;

const ES_AUTOHSCROLL = 128;

const ES_AUTOVSCROLL = 64;

const ES_CENTER = 1;

const ES_LEFT = 0;

const ES_LOWERCASE = 16;

const ES_MULTILINE = 4;

const ES_NOHIDESEL = 256;

const ES_NUMBER = 8192;

const ES_OEMCONVERT = 1024;

const ES_PASSWORD = 32;

const ES_READONLY = 2048;

const ES_RIGHT = 2;

const ES_UPPERCASE = 8;

const ES_WANTRETURN = 4096;

/// Represents the HRESULT value `0x80004004` (`-2147467260`).
const E_ABORT = HRESULT(0x80004004 - 0x100000000);

/// Represents the HRESULT value `0x80070005` (`-2147024891`).
const E_ACCESSDENIED = HRESULT(0x80070005 - 0x100000000);

/// The operation could not be completed.
///
/// Represents the HRESULT value `0x80004005` (`-2147467259`).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mbnapi/nf-mbnapi-imbnpinevents-ondisablecomplete>.
const E_FAIL = HRESULT(0x80004005 - 0x100000000);

/// Represents the HRESULT value `0x80070006` (`-2147024890`).
const E_HANDLE = HRESULT(0x80070006 - 0x100000000);

/// Represents the HRESULT value `0x80070057` (`-2147024809`).
const E_INVALIDARG = HRESULT(0x80070057 - 0x100000000);

/// Represents the HRESULT value `0x80004002` (`-2147467262`).
const E_NOINTERFACE = HRESULT(0x80004002 - 0x100000000);

/// Represents the HRESULT value `0x80004001` (`-2147467263`).
const E_NOTIMPL = HRESULT(0x80004001 - 0x100000000);

/// Represents the HRESULT value `0x8007000E` (`-2147024882`).
const E_OUTOFMEMORY = HRESULT(0x8007000E - 0x100000000);

/// Represents the HRESULT value `0x8000000A` (`-2147483638`).
const E_PENDING = HRESULT(0x8000000A - 0x100000000);

/// Represents the HRESULT value `0x80004003` (`-2147467261`).
const E_POINTER = HRESULT(0x80004003 - 0x100000000);

/// Represents the HRESULT value `0x8000FFFF` (`-2147418113`).
const E_UNEXPECTED = HRESULT(0x8000FFFF - 0x100000000);

const FALSE = 0;

/// An Open or Save As dialog box sends the FILEOKSTRING registered message to
/// your hook procedure, OFNHookProc, when the user specifies a file name and
/// clicks the OK button.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/fileokstring>.
const FILEOKSTRING = 'commdlg_FileNameOK';

const FILE_ANY_ACCESS = 0;

const FILE_ATTRIBUTE_STRICTLY_SEQUENTIAL = 536870912;

const FILE_CASE_PRESERVED_NAMES = 2;

const FILE_CASE_SENSITIVE_SEARCH = 1;

const FILE_DAX_VOLUME = 536870912;

const FILE_DEVICE_8042_PORT = 39;

const FILE_DEVICE_ACPI = 50;

const FILE_DEVICE_BATTERY = 41;

const FILE_DEVICE_BEEP = 1;

const FILE_DEVICE_BIOMETRIC = 68;

const FILE_DEVICE_BLUETOOTH = 65;

const FILE_DEVICE_BUS_EXTENDER = 42;

const FILE_DEVICE_CD_ROM_FILE_SYSTEM = 3;

const FILE_DEVICE_CHANGER = 48;

const FILE_DEVICE_CONSOLE = 80;

const FILE_DEVICE_CONTROLLER = 4;

const FILE_DEVICE_CRYPT_PROVIDER = 63;

const FILE_DEVICE_DATALINK = 5;

const FILE_DEVICE_DEVAPI = 71;

const FILE_DEVICE_DFS = 6;

const FILE_DEVICE_DFS_FILE_SYSTEM = 53;

const FILE_DEVICE_DFS_VOLUME = 54;

const FILE_DEVICE_DISK_FILE_SYSTEM = 8;

const FILE_DEVICE_EHSTOR = 70;

const FILE_DEVICE_FILE_SYSTEM = 9;

const FILE_DEVICE_FIPS = 58;

const FILE_DEVICE_FULLSCREEN_VIDEO = 52;

const FILE_DEVICE_GPIO = 72;

const FILE_DEVICE_HOLOGRAPHIC = 91;

const FILE_DEVICE_INFINIBAND = 59;

const FILE_DEVICE_INPORT_PORT = 10;

const FILE_DEVICE_KEYBOARD = 11;

const FILE_DEVICE_KS = 47;

const FILE_DEVICE_KSEC = 57;

const FILE_DEVICE_MAILSLOT = 12;

const FILE_DEVICE_MASS_STORAGE = 45;

const FILE_DEVICE_MIDI_IN = 13;

const FILE_DEVICE_MIDI_OUT = 14;

const FILE_DEVICE_MODEM = 43;

const FILE_DEVICE_MOUSE = 15;

const FILE_DEVICE_MT_COMPOSITE = 66;

const FILE_DEVICE_MT_TRANSPORT = 67;

const FILE_DEVICE_MULTI_UNC_PROVIDER = 16;

const FILE_DEVICE_NAMED_PIPE = 17;

const FILE_DEVICE_NETWORK = 18;

const FILE_DEVICE_NETWORK_BROWSER = 19;

const FILE_DEVICE_NETWORK_FILE_SYSTEM = 20;

const FILE_DEVICE_NETWORK_REDIRECTOR = 40;

const FILE_DEVICE_NFP = 81;

const FILE_DEVICE_NULL = 21;

const FILE_DEVICE_NVDIMM = 90;

const FILE_DEVICE_PARALLEL_PORT = 22;

const FILE_DEVICE_PERSISTENT_MEMORY = 89;

const FILE_DEVICE_PHYSICAL_NETCARD = 23;

const FILE_DEVICE_PMI = 69;

const FILE_DEVICE_POINT_OF_SERVICE = 84;

const FILE_DEVICE_PRINTER = 24;

const FILE_DEVICE_SCANNER = 25;

const FILE_DEVICE_SCREEN = 28;

const FILE_DEVICE_SDFXHCI = 92;

const FILE_DEVICE_SERENUM = 55;

const FILE_DEVICE_SERIAL_MOUSE_PORT = 26;

const FILE_DEVICE_SERIAL_PORT = 27;

const FILE_DEVICE_SMARTCARD = 49;

const FILE_DEVICE_SMB = 46;

const FILE_DEVICE_SOUND = 29;

const FILE_DEVICE_STORAGE_REPLICATION = 85;

const FILE_DEVICE_STREAMS = 30;

const FILE_DEVICE_SYSENV = 82;

const FILE_DEVICE_TAPE_FILE_SYSTEM = 32;

const FILE_DEVICE_TERMSRV = 56;

const FILE_DEVICE_TRANSPORT = 33;

const FILE_DEVICE_TRUST_ENV = 86;

const FILE_DEVICE_UCM = 87;

const FILE_DEVICE_UCMTCPCI = 88;

const FILE_DEVICE_UCMUCSI = 93;

const FILE_DEVICE_UNKNOWN = 34;

const FILE_DEVICE_USBEX = 73;

const FILE_DEVICE_VDM = 44;

const FILE_DEVICE_VIDEO = 35;

const FILE_DEVICE_VIRTUAL_BLOCK = 83;

const FILE_DEVICE_VIRTUAL_DISK = 36;

const FILE_DEVICE_VMBUS = 62;

const FILE_DEVICE_WAVE_IN = 37;

const FILE_DEVICE_WAVE_OUT = 38;

const FILE_DEVICE_WPD = 64;

const FILE_FILE_COMPRESSION = 16;

const FILE_NAMED_STREAMS = 262144;

const FILE_PERSISTENT_ACLS = 8;

const FILE_READ_ACCESS = 1;

const FILE_READ_ONLY_VOLUME = 524288;

const FILE_RETURNS_CLEANUP_RESULT_INFO = 512;

const FILE_SEQUENTIAL_WRITE_ONCE = 1048576;

const FILE_SPECIAL_ACCESS = 0;

const FILE_SUPPORTS_BLOCK_REFCOUNTING = 134217728;

const FILE_SUPPORTS_ENCRYPTION = 131072;

const FILE_SUPPORTS_EXTENDED_ATTRIBUTES = 8388608;

const FILE_SUPPORTS_GHOSTING = 1073741824;

const FILE_SUPPORTS_HARD_LINKS = 4194304;

const FILE_SUPPORTS_INTEGRITY_STREAMS = 67108864;

const FILE_SUPPORTS_OBJECT_IDS = 65536;

const FILE_SUPPORTS_OPEN_BY_FILE_ID = 16777216;

const FILE_SUPPORTS_POSIX_UNLINK_RENAME = 1024;

const FILE_SUPPORTS_REMOTE_STORAGE = 256;

const FILE_SUPPORTS_REPARSE_POINTS = 128;

const FILE_SUPPORTS_SPARSE_FILES = 64;

const FILE_SUPPORTS_SPARSE_VDL = 268435456;

const FILE_SUPPORTS_TRANSACTIONS = 2097152;

const FILE_SUPPORTS_USN_JOURNAL = 33554432;

const FILE_UNICODE_ON_DISK = 4;

const FILE_VOLUME_IS_COMPRESSED = 32768;

const FILE_VOLUME_QUOTAS = 32;

const FILE_WRITE_ACCESS = 2;

/// A Find or Replace dialog box sends the FINDMSGSTRING registered message to
/// the window procedure of its owner window when the user clicks the Find Next,
/// Replace, or Replace All button, or closes the dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/findmsgstring>.
const FINDMSGSTRING = 'commdlg_FindReplace';

final FOLDERID_AccountPictures = Guid.fromComponents(
  0x8ca0b1,
  0x55b4,
  0x4c56,
  Uint8List.fromList(const [0xb8, 0xa8, 0x4d, 0xe4, 0xb2, 0x99, 0xd3, 0xbe]),
);

final FOLDERID_AddNewPrograms = Guid.fromComponents(
  0xde61d971,
  0x5ebc,
  0x4f02,
  Uint8List.fromList(const [0xa3, 0xa9, 0x6c, 0x82, 0x89, 0x5e, 0x5c, 0x4]),
);

final FOLDERID_AdminTools = Guid.fromComponents(
  0x724ef170,
  0xa42d,
  0x4fef,
  Uint8List.fromList(const [0x9f, 0x26, 0xb6, 0xe, 0x84, 0x6f, 0xba, 0x4f]),
);

final FOLDERID_AllAppMods = Guid.fromComponents(
  0x7ad67899,
  0x66af,
  0x43ba,
  Uint8List.fromList(const [0x91, 0x56, 0x6a, 0xad, 0x42, 0xe6, 0xc5, 0x96]),
);

final FOLDERID_AppCaptures = Guid.fromComponents(
  0xedc0fe71,
  0x98d8,
  0x4f4a,
  Uint8List.fromList(const [0xb9, 0x20, 0xc8, 0xdc, 0x13, 0x3c, 0xb1, 0x65]),
);

final FOLDERID_AppDataDesktop = Guid.fromComponents(
  0xb2c5e279,
  0x7add,
  0x439f,
  Uint8List.fromList(const [0xb2, 0x8c, 0xc4, 0x1f, 0xe1, 0xbb, 0xf6, 0x72]),
);

final FOLDERID_AppDataDocuments = Guid.fromComponents(
  0x7be16610,
  0x1f7f,
  0x44ac,
  Uint8List.fromList(const [0xbf, 0xf0, 0x83, 0xe1, 0x5f, 0x2f, 0xfc, 0xa1]),
);

final FOLDERID_AppDataFavorites = Guid.fromComponents(
  0x7cfbefbc,
  0xde1f,
  0x45aa,
  Uint8List.fromList(const [0xb8, 0x43, 0xa5, 0x42, 0xac, 0x53, 0x6c, 0xc9]),
);

final FOLDERID_AppDataProgramData = Guid.fromComponents(
  0x559d40a3,
  0xa036,
  0x40fa,
  Uint8List.fromList(const [0xaf, 0x61, 0x84, 0xcb, 0x43, 0xa, 0x4d, 0x34]),
);

final FOLDERID_AppUpdates = Guid.fromComponents(
  0xa305ce99,
  0xf527,
  0x492b,
  Uint8List.fromList(const [0x8b, 0x1a, 0x7e, 0x76, 0xfa, 0x98, 0xd6, 0xe4]),
);

final FOLDERID_ApplicationShortcuts = Guid.fromComponents(
  0xa3918781,
  0xe5f2,
  0x4890,
  Uint8List.fromList(const [0xb3, 0xd9, 0xa7, 0xe5, 0x43, 0x32, 0x32, 0x8c]),
);

final FOLDERID_AppsFolder = Guid.fromComponents(
  0x1e87508d,
  0x89c2,
  0x42f0,
  Uint8List.fromList(const [0x8a, 0x7e, 0x64, 0x5a, 0xf, 0x50, 0xca, 0x58]),
);

final FOLDERID_CDBurning = Guid.fromComponents(
  0x9e52ab10,
  0xf80d,
  0x49df,
  Uint8List.fromList(const [0xac, 0xb8, 0x43, 0x30, 0xf5, 0x68, 0x78, 0x55]),
);

final FOLDERID_CameraRoll = Guid.fromComponents(
  0xab5fb87b,
  0x7ce2,
  0x4f83,
  Uint8List.fromList(const [0x91, 0x5d, 0x55, 0x8, 0x46, 0xc9, 0x53, 0x7b]),
);

final FOLDERID_CameraRollLibrary = Guid.fromComponents(
  0x2b20df75,
  0x1eda,
  0x4039,
  Uint8List.fromList(const [0x80, 0x97, 0x38, 0x79, 0x82, 0x27, 0xd5, 0xb7]),
);

final FOLDERID_ChangeRemovePrograms = Guid.fromComponents(
  0xdf7266ac,
  0x9274,
  0x4867,
  Uint8List.fromList(const [0x8d, 0x55, 0x3b, 0xd6, 0x61, 0xde, 0x87, 0x2d]),
);

final FOLDERID_CommonAdminTools = Guid.fromComponents(
  0xd0384e7d,
  0xbac3,
  0x4797,
  Uint8List.fromList(const [0x8f, 0x14, 0xcb, 0xa2, 0x29, 0xb3, 0x92, 0xb5]),
);

final FOLDERID_CommonOEMLinks = Guid.fromComponents(
  0xc1bae2d0,
  0x10df,
  0x4334,
  Uint8List.fromList(const [0xbe, 0xdd, 0x7a, 0xa2, 0xb, 0x22, 0x7a, 0x9d]),
);

final FOLDERID_CommonPrograms = Guid.fromComponents(
  0x139d44e,
  0x6afe,
  0x49f2,
  Uint8List.fromList(const [0x86, 0x90, 0x3d, 0xaf, 0xca, 0xe6, 0xff, 0xb8]),
);

final FOLDERID_CommonStartMenu = Guid.fromComponents(
  0xa4115719,
  0xd62e,
  0x491d,
  Uint8List.fromList(const [0xaa, 0x7c, 0xe7, 0x4b, 0x8b, 0xe3, 0xb0, 0x67]),
);

final FOLDERID_CommonStartMenuPlaces = Guid.fromComponents(
  0xa440879f,
  0x87a0,
  0x4f7d,
  Uint8List.fromList(const [0xb7, 0x0, 0x2, 0x7, 0xb9, 0x66, 0x19, 0x4a]),
);

final FOLDERID_CommonStartup = Guid.fromComponents(
  0x82a5ea35,
  0xd9cd,
  0x47c5,
  Uint8List.fromList(const [0x96, 0x29, 0xe1, 0x5d, 0x2f, 0x71, 0x4e, 0x6e]),
);

final FOLDERID_CommonTemplates = Guid.fromComponents(
  0xb94237e7,
  0x57ac,
  0x4347,
  Uint8List.fromList(const [0x91, 0x51, 0xb0, 0x8c, 0x6c, 0x32, 0xd1, 0xf7]),
);

final FOLDERID_ComputerFolder = Guid.fromComponents(
  0xac0837c,
  0xbbf8,
  0x452a,
  Uint8List.fromList(const [0x85, 0xd, 0x79, 0xd0, 0x8e, 0x66, 0x7c, 0xa7]),
);

final FOLDERID_ConflictFolder = Guid.fromComponents(
  0x4bfefb45,
  0x347d,
  0x4006,
  Uint8List.fromList(const [0xa5, 0xbe, 0xac, 0xc, 0xb0, 0x56, 0x71, 0x92]),
);

final FOLDERID_ConnectionsFolder = Guid.fromComponents(
  0x6f0cd92b,
  0x2e97,
  0x45d1,
  Uint8List.fromList(const [0x88, 0xff, 0xb0, 0xd1, 0x86, 0xb8, 0xde, 0xdd]),
);

final FOLDERID_Contacts = Guid.fromComponents(
  0x56784854,
  0xc6cb,
  0x462b,
  Uint8List.fromList(const [0x81, 0x69, 0x88, 0xe3, 0x50, 0xac, 0xb8, 0x82]),
);

final FOLDERID_ControlPanelFolder = Guid.fromComponents(
  0x82a74aeb,
  0xaeb4,
  0x465c,
  Uint8List.fromList(const [0xa0, 0x14, 0xd0, 0x97, 0xee, 0x34, 0x6d, 0x63]),
);

final FOLDERID_Cookies = Guid.fromComponents(
  0x2b0f765d,
  0xc0e9,
  0x4171,
  Uint8List.fromList(const [0x90, 0x8e, 0x8, 0xa6, 0x11, 0xb8, 0x4f, 0xf6]),
);

final FOLDERID_CurrentAppMods = Guid.fromComponents(
  0x3db40b20,
  0x2a30,
  0x4dbe,
  Uint8List.fromList(const [0x91, 0x7e, 0x77, 0x1d, 0xd2, 0x1d, 0xd0, 0x99]),
);

final FOLDERID_Desktop = Guid.fromComponents(
  0xb4bfcc3a,
  0xdb2c,
  0x424c,
  Uint8List.fromList(const [0xb0, 0x29, 0x7f, 0xe9, 0x9a, 0x87, 0xc6, 0x41]),
);

final FOLDERID_DevelopmentFiles = Guid.fromComponents(
  0xdbe8e08e,
  0x3053,
  0x4bbc,
  Uint8List.fromList(const [0xb1, 0x83, 0x2a, 0x7b, 0x2b, 0x19, 0x1e, 0x59]),
);

final FOLDERID_Device = Guid.fromComponents(
  0x1c2ac1dc,
  0x4358,
  0x4b6c,
  Uint8List.fromList(const [0x97, 0x33, 0xaf, 0x21, 0x15, 0x65, 0x76, 0xf0]),
);

final FOLDERID_DeviceMetadataStore = Guid.fromComponents(
  0x5ce4a5e9,
  0xe4eb,
  0x479d,
  Uint8List.fromList(const [0xb8, 0x9f, 0x13, 0xc, 0x2, 0x88, 0x61, 0x55]),
);

final FOLDERID_Documents = Guid.fromComponents(
  0xfdd39ad0,
  0x238f,
  0x46af,
  Uint8List.fromList(const [0xad, 0xb4, 0x6c, 0x85, 0x48, 0x3, 0x69, 0xc7]),
);

final FOLDERID_DocumentsLibrary = Guid.fromComponents(
  0x7b0db17d,
  0x9cd2,
  0x4a93,
  Uint8List.fromList(const [0x97, 0x33, 0x46, 0xcc, 0x89, 0x2, 0x2e, 0x7c]),
);

final FOLDERID_Downloads = Guid.fromComponents(
  0x374de290,
  0x123f,
  0x4565,
  Uint8List.fromList(const [0x91, 0x64, 0x39, 0xc4, 0x92, 0x5e, 0x46, 0x7b]),
);

final FOLDERID_Favorites = Guid.fromComponents(
  0x1777f761,
  0x68ad,
  0x4d8a,
  Uint8List.fromList(const [0x87, 0xbd, 0x30, 0xb7, 0x59, 0xfa, 0x33, 0xdd]),
);

final FOLDERID_Fonts = Guid.fromComponents(
  0xfd228cb7,
  0xae11,
  0x4ae3,
  Uint8List.fromList(const [0x86, 0x4c, 0x16, 0xf3, 0x91, 0xa, 0xb8, 0xfe]),
);

final FOLDERID_GameTasks = Guid.fromComponents(
  0x54fae61,
  0x4dd8,
  0x4787,
  Uint8List.fromList(const [0x80, 0xb6, 0x9, 0x2, 0x20, 0xc4, 0xb7, 0x0]),
);

final FOLDERID_Games = Guid.fromComponents(
  0xcac52c1a,
  0xb53d,
  0x4edc,
  Uint8List.fromList(const [0x92, 0xd7, 0x6b, 0x2e, 0x8a, 0xc1, 0x94, 0x34]),
);

final FOLDERID_History = Guid.fromComponents(
  0xd9dc8a3b,
  0xb784,
  0x432e,
  Uint8List.fromList(const [0xa7, 0x81, 0x5a, 0x11, 0x30, 0xa7, 0x59, 0x63]),
);

final FOLDERID_HomeGroup = Guid.fromComponents(
  0x52528a6b,
  0xb9e3,
  0x4add,
  Uint8List.fromList(const [0xb6, 0xd, 0x58, 0x8c, 0x2d, 0xba, 0x84, 0x2d]),
);

final FOLDERID_HomeGroupCurrentUser = Guid.fromComponents(
  0x9b74b6a3,
  0xdfd,
  0x4f11,
  Uint8List.fromList(const [0x9e, 0x78, 0x5f, 0x78, 0x0, 0xf2, 0xe7, 0x72]),
);

final FOLDERID_ImplicitAppShortcuts = Guid.fromComponents(
  0xbcb5256f,
  0x79f6,
  0x4cee,
  Uint8List.fromList(const [0xb7, 0x25, 0xdc, 0x34, 0xe4, 0x2, 0xfd, 0x46]),
);

final FOLDERID_InternetCache = Guid.fromComponents(
  0x352481e8,
  0x33be,
  0x4251,
  Uint8List.fromList(const [0xba, 0x85, 0x60, 0x7, 0xca, 0xed, 0xcf, 0x9d]),
);

final FOLDERID_InternetFolder = Guid.fromComponents(
  0x4d9f7874,
  0x4e0c,
  0x4904,
  Uint8List.fromList(const [0x96, 0x7b, 0x40, 0xb0, 0xd2, 0xc, 0x3e, 0x4b]),
);

final FOLDERID_Libraries = Guid.fromComponents(
  0x1b3ea5dc,
  0xb587,
  0x4786,
  Uint8List.fromList(const [0xb4, 0xef, 0xbd, 0x1d, 0xc3, 0x32, 0xae, 0xae]),
);

final FOLDERID_Links = Guid.fromComponents(
  0xbfb9d5e0,
  0xc6a9,
  0x404c,
  Uint8List.fromList(const [0xb2, 0xb2, 0xae, 0x6d, 0xb6, 0xaf, 0x49, 0x68]),
);

final FOLDERID_LocalAppData = Guid.fromComponents(
  0xf1b32785,
  0x6fba,
  0x4fcf,
  Uint8List.fromList(const [0x9d, 0x55, 0x7b, 0x8e, 0x7f, 0x15, 0x70, 0x91]),
);

final FOLDERID_LocalAppDataLow = Guid.fromComponents(
  0xa520a1a4,
  0x1780,
  0x4ff6,
  Uint8List.fromList(const [0xbd, 0x18, 0x16, 0x73, 0x43, 0xc5, 0xaf, 0x16]),
);

final FOLDERID_LocalDocuments = Guid.fromComponents(
  0xf42ee2d3,
  0x909f,
  0x4907,
  Uint8List.fromList(const [0x88, 0x71, 0x4c, 0x22, 0xfc, 0xb, 0xf7, 0x56]),
);

final FOLDERID_LocalDownloads = Guid.fromComponents(
  0x7d83ee9b,
  0x2244,
  0x4e70,
  Uint8List.fromList(const [0xb1, 0xf5, 0x53, 0x93, 0x4, 0x2a, 0xf1, 0xe4]),
);

final FOLDERID_LocalMusic = Guid.fromComponents(
  0xa0c69a99,
  0x21c8,
  0x4671,
  Uint8List.fromList(const [0x87, 0x3, 0x79, 0x34, 0x16, 0x2f, 0xcf, 0x1d]),
);

final FOLDERID_LocalPictures = Guid.fromComponents(
  0xddd015d,
  0xb06c,
  0x45d5,
  Uint8List.fromList(const [0x8c, 0x4c, 0xf5, 0x97, 0x13, 0x85, 0x46, 0x39]),
);

final FOLDERID_LocalVideos = Guid.fromComponents(
  0x35286a68,
  0x3c57,
  0x41a1,
  Uint8List.fromList(const [0xbb, 0xb1, 0xe, 0xae, 0x73, 0xd7, 0x6c, 0x95]),
);

final FOLDERID_LocalizedResourcesDir = Guid.fromComponents(
  0x2a00375e,
  0x224c,
  0x49de,
  Uint8List.fromList(const [0xb8, 0xd1, 0x44, 0xd, 0xf7, 0xef, 0x3d, 0xdc]),
);

final FOLDERID_Music = Guid.fromComponents(
  0x4bd8d571,
  0x6d19,
  0x48d3,
  Uint8List.fromList(const [0xbe, 0x97, 0x42, 0x22, 0x20, 0x8, 0xe, 0x43]),
);

final FOLDERID_MusicLibrary = Guid.fromComponents(
  0x2112ab0a,
  0xc86a,
  0x4ffe,
  Uint8List.fromList(const [0xa3, 0x68, 0xd, 0xe9, 0x6e, 0x47, 0x1, 0x2e]),
);

final FOLDERID_NetHood = Guid.fromComponents(
  0xc5abbf53,
  0xe17f,
  0x4121,
  Uint8List.fromList(const [0x89, 0x0, 0x86, 0x62, 0x6f, 0xc2, 0xc9, 0x73]),
);

final FOLDERID_NetworkFolder = Guid.fromComponents(
  0xd20beec4,
  0x5ca8,
  0x4905,
  Uint8List.fromList(const [0xae, 0x3b, 0xbf, 0x25, 0x1e, 0xa0, 0x9b, 0x53]),
);

final FOLDERID_Objects3D = Guid.fromComponents(
  0x31c0dd25,
  0x9439,
  0x4f12,
  Uint8List.fromList(const [0xbf, 0x41, 0x7f, 0xf4, 0xed, 0xa3, 0x87, 0x22]),
);

final FOLDERID_OneDrive = Guid.fromComponents(
  0xa52bba46,
  0xe9e1,
  0x435f,
  Uint8List.fromList(const [0xb3, 0xd9, 0x28, 0xda, 0xa6, 0x48, 0xc0, 0xf6]),
);

final FOLDERID_OriginalImages = Guid.fromComponents(
  0x2c36c0aa,
  0x5812,
  0x4b87,
  Uint8List.fromList(const [0xbf, 0xd0, 0x4c, 0xd0, 0xdf, 0xb1, 0x9b, 0x39]),
);

final FOLDERID_PhotoAlbums = Guid.fromComponents(
  0x69d2cf90,
  0xfc33,
  0x4fb7,
  Uint8List.fromList(const [0x9a, 0xc, 0xeb, 0xb0, 0xf0, 0xfc, 0xb4, 0x3c]),
);

final FOLDERID_Pictures = Guid.fromComponents(
  0x33e28130,
  0x4e1e,
  0x4676,
  Uint8List.fromList(const [0x83, 0x5a, 0x98, 0x39, 0x5c, 0x3b, 0xc3, 0xbb]),
);

final FOLDERID_PicturesLibrary = Guid.fromComponents(
  0xa990ae9f,
  0xa03b,
  0x4e80,
  Uint8List.fromList(const [0x94, 0xbc, 0x99, 0x12, 0xd7, 0x50, 0x41, 0x4]),
);

final FOLDERID_Playlists = Guid.fromComponents(
  0xde92c1c7,
  0x837f,
  0x4f69,
  Uint8List.fromList(const [0xa3, 0xbb, 0x86, 0xe6, 0x31, 0x20, 0x4a, 0x23]),
);

final FOLDERID_PrintHood = Guid.fromComponents(
  0x9274bd8d,
  0xcfd1,
  0x41c3,
  Uint8List.fromList(const [0xb3, 0x5e, 0xb1, 0x3f, 0x55, 0xa7, 0x58, 0xf4]),
);

final FOLDERID_PrintersFolder = Guid.fromComponents(
  0x76fc4e2d,
  0xd6ad,
  0x4519,
  Uint8List.fromList(const [0xa6, 0x63, 0x37, 0xbd, 0x56, 0x6, 0x81, 0x85]),
);

final FOLDERID_Profile = Guid.fromComponents(
  0x5e6c858f,
  0xe22,
  0x4760,
  Uint8List.fromList(const [0x9a, 0xfe, 0xea, 0x33, 0x17, 0xb6, 0x71, 0x73]),
);

final FOLDERID_ProgramData = Guid.fromComponents(
  0x62ab5d82,
  0xfdc1,
  0x4dc3,
  Uint8List.fromList(const [0xa9, 0xdd, 0x7, 0xd, 0x1d, 0x49, 0x5d, 0x97]),
);

final FOLDERID_ProgramFiles = Guid.fromComponents(
  0x905e63b6,
  0xc1bf,
  0x494e,
  Uint8List.fromList(const [0xb2, 0x9c, 0x65, 0xb7, 0x32, 0xd3, 0xd2, 0x1a]),
);

final FOLDERID_ProgramFilesCommon = Guid.fromComponents(
  0xf7f1ed05,
  0x9f6d,
  0x47a2,
  Uint8List.fromList(const [0xaa, 0xae, 0x29, 0xd3, 0x17, 0xc6, 0xf0, 0x66]),
);

final FOLDERID_ProgramFilesCommonX64 = Guid.fromComponents(
  0x6365d5a7,
  0xf0d,
  0x45e5,
  Uint8List.fromList(const [0x87, 0xf6, 0xd, 0xa5, 0x6b, 0x6a, 0x4f, 0x7d]),
);

final FOLDERID_ProgramFilesCommonX86 = Guid.fromComponents(
  0xde974d24,
  0xd9c6,
  0x4d3e,
  Uint8List.fromList(const [0xbf, 0x91, 0xf4, 0x45, 0x51, 0x20, 0xb9, 0x17]),
);

final FOLDERID_ProgramFilesX64 = Guid.fromComponents(
  0x6d809377,
  0x6af0,
  0x444b,
  Uint8List.fromList(const [0x89, 0x57, 0xa3, 0x77, 0x3f, 0x2, 0x20, 0xe]),
);

final FOLDERID_ProgramFilesX86 = Guid.fromComponents(
  0x7c5a40ef,
  0xa0fb,
  0x4bfc,
  Uint8List.fromList(const [0x87, 0x4a, 0xc0, 0xf2, 0xe0, 0xb9, 0xfa, 0x8e]),
);

final FOLDERID_Programs = Guid.fromComponents(
  0xa77f5d77,
  0x2e2b,
  0x44c3,
  Uint8List.fromList(const [0xa6, 0xa2, 0xab, 0xa6, 0x1, 0x5, 0x4a, 0x51]),
);

final FOLDERID_Public = Guid.fromComponents(
  0xdfdf76a2,
  0xc82a,
  0x4d63,
  Uint8List.fromList(const [0x90, 0x6a, 0x56, 0x44, 0xac, 0x45, 0x73, 0x85]),
);

final FOLDERID_PublicDesktop = Guid.fromComponents(
  0xc4aa340d,
  0xf20f,
  0x4863,
  Uint8List.fromList(const [0xaf, 0xef, 0xf8, 0x7e, 0xf2, 0xe6, 0xba, 0x25]),
);

final FOLDERID_PublicDocuments = Guid.fromComponents(
  0xed4824af,
  0xdce4,
  0x45a8,
  Uint8List.fromList(const [0x81, 0xe2, 0xfc, 0x79, 0x65, 0x8, 0x36, 0x34]),
);

final FOLDERID_PublicDownloads = Guid.fromComponents(
  0x3d644c9b,
  0x1fb8,
  0x4f30,
  Uint8List.fromList(const [0x9b, 0x45, 0xf6, 0x70, 0x23, 0x5f, 0x79, 0xc0]),
);

final FOLDERID_PublicGameTasks = Guid.fromComponents(
  0xdebf2536,
  0xe1a8,
  0x4c59,
  Uint8List.fromList(const [0xb6, 0xa2, 0x41, 0x45, 0x86, 0x47, 0x6a, 0xea]),
);

final FOLDERID_PublicLibraries = Guid.fromComponents(
  0x48daf80b,
  0xe6cf,
  0x4f4e,
  Uint8List.fromList(const [0xb8, 0x0, 0xe, 0x69, 0xd8, 0x4e, 0xe3, 0x84]),
);

final FOLDERID_PublicMusic = Guid.fromComponents(
  0x3214fab5,
  0x9757,
  0x4298,
  Uint8List.fromList(const [0xbb, 0x61, 0x92, 0xa9, 0xde, 0xaa, 0x44, 0xff]),
);

final FOLDERID_PublicPictures = Guid.fromComponents(
  0xb6ebfb86,
  0x6907,
  0x413c,
  Uint8List.fromList(const [0x9a, 0xf7, 0x4f, 0xc2, 0xab, 0xf0, 0x7c, 0xc5]),
);

final FOLDERID_PublicRingtones = Guid.fromComponents(
  0xe555ab60,
  0x153b,
  0x4d17,
  Uint8List.fromList(const [0x9f, 0x4, 0xa5, 0xfe, 0x99, 0xfc, 0x15, 0xec]),
);

final FOLDERID_PublicUserTiles = Guid.fromComponents(
  0x482af6c,
  0x8f1,
  0x4c34,
  Uint8List.fromList(const [0x8c, 0x90, 0xe1, 0x7e, 0xc9, 0x8b, 0x1e, 0x17]),
);

final FOLDERID_PublicVideos = Guid.fromComponents(
  0x2400183a,
  0x6185,
  0x49fb,
  Uint8List.fromList(const [0xa2, 0xd8, 0x4a, 0x39, 0x2a, 0x60, 0x2b, 0xa3]),
);

final FOLDERID_QuickLaunch = Guid.fromComponents(
  0x52a4f021,
  0x7b75,
  0x48a9,
  Uint8List.fromList(const [0x9f, 0x6b, 0x4b, 0x87, 0xa2, 0x10, 0xbc, 0x8f]),
);

final FOLDERID_Recent = Guid.fromComponents(
  0xae50c081,
  0xebd2,
  0x438a,
  Uint8List.fromList(const [0x86, 0x55, 0x8a, 0x9, 0x2e, 0x34, 0x98, 0x7a]),
);

final FOLDERID_RecordedCalls = Guid.fromComponents(
  0x2f8b40c2,
  0x83ed,
  0x48ee,
  Uint8List.fromList(const [0xb3, 0x83, 0xa1, 0xf1, 0x57, 0xec, 0x6f, 0x9a]),
);

final FOLDERID_RecordedTVLibrary = Guid.fromComponents(
  0x1a6fdba2,
  0xf42d,
  0x4358,
  Uint8List.fromList(const [0xa7, 0x98, 0xb7, 0x4d, 0x74, 0x59, 0x26, 0xc5]),
);

final FOLDERID_RecycleBinFolder = Guid.fromComponents(
  0xb7534046,
  0x3ecb,
  0x4c18,
  Uint8List.fromList(const [0xbe, 0x4e, 0x64, 0xcd, 0x4c, 0xb7, 0xd6, 0xac]),
);

final FOLDERID_ResourceDir = Guid.fromComponents(
  0x8ad10c31,
  0x2adb,
  0x4296,
  Uint8List.fromList(const [0xa8, 0xf7, 0xe4, 0x70, 0x12, 0x32, 0xc9, 0x72]),
);

final FOLDERID_RetailDemo = Guid.fromComponents(
  0x12d4c69e,
  0x24ad,
  0x4923,
  Uint8List.fromList(const [0xbe, 0x19, 0x31, 0x32, 0x1c, 0x43, 0xa7, 0x67]),
);

final FOLDERID_Ringtones = Guid.fromComponents(
  0xc870044b,
  0xf49e,
  0x4126,
  Uint8List.fromList(const [0xa9, 0xc3, 0xb5, 0x2a, 0x1f, 0xf4, 0x11, 0xe8]),
);

final FOLDERID_RoamedTileImages = Guid.fromComponents(
  0xaaa8d5a5,
  0xf1d6,
  0x4259,
  Uint8List.fromList(const [0xba, 0xa8, 0x78, 0xe7, 0xef, 0x60, 0x83, 0x5e]),
);

final FOLDERID_RoamingAppData = Guid.fromComponents(
  0x3eb685db,
  0x65f9,
  0x4cf6,
  Uint8List.fromList(const [0xa0, 0x3a, 0xe3, 0xef, 0x65, 0x72, 0x9f, 0x3d]),
);

final FOLDERID_RoamingTiles = Guid.fromComponents(
  0xbcfc5a,
  0xed94,
  0x4e48,
  Uint8List.fromList(const [0x96, 0xa1, 0x3f, 0x62, 0x17, 0xf2, 0x19, 0x90]),
);

final FOLDERID_SEARCH_CSC = Guid.fromComponents(
  0xee32e446,
  0x31ca,
  0x4aba,
  Uint8List.fromList(const [0x81, 0x4f, 0xa5, 0xeb, 0xd2, 0xfd, 0x6d, 0x5e]),
);

final FOLDERID_SEARCH_MAPI = Guid.fromComponents(
  0x98ec0e18,
  0x2098,
  0x4d44,
  Uint8List.fromList(const [0x86, 0x44, 0x66, 0x97, 0x93, 0x15, 0xa2, 0x81]),
);

final FOLDERID_SampleMusic = Guid.fromComponents(
  0xb250c668,
  0xf57d,
  0x4ee1,
  Uint8List.fromList(const [0xa6, 0x3c, 0x29, 0xe, 0xe7, 0xd1, 0xaa, 0x1f]),
);

final FOLDERID_SamplePictures = Guid.fromComponents(
  0xc4900540,
  0x2379,
  0x4c75,
  Uint8List.fromList(const [0x84, 0x4b, 0x64, 0xe6, 0xfa, 0xf8, 0x71, 0x6b]),
);

final FOLDERID_SamplePlaylists = Guid.fromComponents(
  0x15ca69b3,
  0x30ee,
  0x49c1,
  Uint8List.fromList(const [0xac, 0xe1, 0x6b, 0x5e, 0xc3, 0x72, 0xaf, 0xb5]),
);

final FOLDERID_SampleVideos = Guid.fromComponents(
  0x859ead94,
  0x2e85,
  0x48ad,
  Uint8List.fromList(const [0xa7, 0x1a, 0x9, 0x69, 0xcb, 0x56, 0xa6, 0xcd]),
);

final FOLDERID_SavedGames = Guid.fromComponents(
  0x4c5c32ff,
  0xbb9d,
  0x43b0,
  Uint8List.fromList(const [0xb5, 0xb4, 0x2d, 0x72, 0xe5, 0x4e, 0xaa, 0xa4]),
);

final FOLDERID_SavedPictures = Guid.fromComponents(
  0x3b193882,
  0xd3ad,
  0x4eab,
  Uint8List.fromList(const [0x96, 0x5a, 0x69, 0x82, 0x9d, 0x1f, 0xb5, 0x9f]),
);

final FOLDERID_SavedPicturesLibrary = Guid.fromComponents(
  0xe25b5812,
  0xbe88,
  0x4bd9,
  Uint8List.fromList(const [0x94, 0xb0, 0x29, 0x23, 0x34, 0x77, 0xb6, 0xc3]),
);

final FOLDERID_SavedSearches = Guid.fromComponents(
  0x7d1d3a04,
  0xdebb,
  0x4115,
  Uint8List.fromList(const [0x95, 0xcf, 0x2f, 0x29, 0xda, 0x29, 0x20, 0xda]),
);

final FOLDERID_Screenshots = Guid.fromComponents(
  0xb7bede81,
  0xdf94,
  0x4682,
  Uint8List.fromList(const [0xa7, 0xd8, 0x57, 0xa5, 0x26, 0x20, 0xb8, 0x6f]),
);

final FOLDERID_SearchHistory = Guid.fromComponents(
  0xd4c3db6,
  0x3a3,
  0x462f,
  Uint8List.fromList(const [0xa0, 0xe6, 0x8, 0x92, 0x4c, 0x41, 0xb5, 0xd4]),
);

final FOLDERID_SearchHome = Guid.fromComponents(
  0x190337d1,
  0xb8ca,
  0x4121,
  Uint8List.fromList(const [0xa6, 0x39, 0x6d, 0x47, 0x2d, 0x16, 0x97, 0x2a]),
);

final FOLDERID_SearchTemplates = Guid.fromComponents(
  0x7e636bfe,
  0xdfa9,
  0x4d5e,
  Uint8List.fromList(const [0xb4, 0x56, 0xd7, 0xb3, 0x98, 0x51, 0xd8, 0xa9]),
);

final FOLDERID_SendTo = Guid.fromComponents(
  0x8983036c,
  0x27c0,
  0x404b,
  Uint8List.fromList(const [0x8f, 0x8, 0x10, 0x2d, 0x10, 0xdc, 0xfd, 0x74]),
);

final FOLDERID_SidebarDefaultParts = Guid.fromComponents(
  0x7b396e54,
  0x9ec5,
  0x4300,
  Uint8List.fromList(const [0xbe, 0xa, 0x24, 0x82, 0xeb, 0xae, 0x1a, 0x26]),
);

final FOLDERID_SidebarParts = Guid.fromComponents(
  0xa75d362e,
  0x50fc,
  0x4fb7,
  Uint8List.fromList(const [0xac, 0x2c, 0xa8, 0xbe, 0xaa, 0x31, 0x44, 0x93]),
);

final FOLDERID_SkyDrive = Guid.fromComponents(
  0xa52bba46,
  0xe9e1,
  0x435f,
  Uint8List.fromList(const [0xb3, 0xd9, 0x28, 0xda, 0xa6, 0x48, 0xc0, 0xf6]),
);

final FOLDERID_SkyDriveCameraRoll = Guid.fromComponents(
  0x767e6811,
  0x49cb,
  0x4273,
  Uint8List.fromList(const [0x87, 0xc2, 0x20, 0xf3, 0x55, 0xe1, 0x8, 0x5b]),
);

final FOLDERID_SkyDriveDocuments = Guid.fromComponents(
  0x24d89e24,
  0x2f19,
  0x4534,
  Uint8List.fromList(const [0x9d, 0xde, 0x6a, 0x66, 0x71, 0xfb, 0xb8, 0xfe]),
);

final FOLDERID_SkyDriveMusic = Guid.fromComponents(
  0xc3f2459e,
  0x80d6,
  0x45dc,
  Uint8List.fromList(const [0xbf, 0xef, 0x1f, 0x76, 0x9f, 0x2b, 0xe7, 0x30]),
);

final FOLDERID_SkyDrivePictures = Guid.fromComponents(
  0x339719b5,
  0x8c47,
  0x4894,
  Uint8List.fromList(const [0x94, 0xc2, 0xd8, 0xf7, 0x7a, 0xdd, 0x44, 0xa6]),
);

final FOLDERID_StartMenu = Guid.fromComponents(
  0x625b53c3,
  0xab48,
  0x4ec1,
  Uint8List.fromList(const [0xba, 0x1f, 0xa1, 0xef, 0x41, 0x46, 0xfc, 0x19]),
);

final FOLDERID_StartMenuAllPrograms = Guid.fromComponents(
  0xf26305ef,
  0x6948,
  0x40b9,
  Uint8List.fromList(const [0xb2, 0x55, 0x81, 0x45, 0x3d, 0x9, 0xc7, 0x85]),
);

final FOLDERID_Startup = Guid.fromComponents(
  0xb97d20bb,
  0xf46a,
  0x4c97,
  Uint8List.fromList(const [0xba, 0x10, 0x5e, 0x36, 0x8, 0x43, 0x8, 0x54]),
);

final FOLDERID_SyncManagerFolder = Guid.fromComponents(
  0x43668bf8,
  0xc14e,
  0x49b2,
  Uint8List.fromList(const [0x97, 0xc9, 0x74, 0x77, 0x84, 0xd7, 0x84, 0xb7]),
);

final FOLDERID_SyncResultsFolder = Guid.fromComponents(
  0x289a9a43,
  0xbe44,
  0x4057,
  Uint8List.fromList(const [0xa4, 0x1b, 0x58, 0x7a, 0x76, 0xd7, 0xe7, 0xf9]),
);

final FOLDERID_SyncSetupFolder = Guid.fromComponents(
  0xf214138,
  0xb1d3,
  0x4a90,
  Uint8List.fromList(const [0xbb, 0xa9, 0x27, 0xcb, 0xc0, 0xc5, 0x38, 0x9a]),
);

final FOLDERID_System = Guid.fromComponents(
  0x1ac14e77,
  0x2e7,
  0x4e5d,
  Uint8List.fromList(const [0xb7, 0x44, 0x2e, 0xb1, 0xae, 0x51, 0x98, 0xb7]),
);

final FOLDERID_SystemX86 = Guid.fromComponents(
  0xd65231b0,
  0xb2f1,
  0x4857,
  Uint8List.fromList(const [0xa4, 0xce, 0xa8, 0xe7, 0xc6, 0xea, 0x7d, 0x27]),
);

final FOLDERID_Templates = Guid.fromComponents(
  0xa63293e8,
  0x664e,
  0x48db,
  Uint8List.fromList(const [0xa0, 0x79, 0xdf, 0x75, 0x9e, 0x5, 0x9, 0xf7]),
);

final FOLDERID_UserPinned = Guid.fromComponents(
  0x9e3995ab,
  0x1f9c,
  0x4f13,
  Uint8List.fromList(const [0xb8, 0x27, 0x48, 0xb2, 0x4b, 0x6c, 0x71, 0x74]),
);

final FOLDERID_UserProfiles = Guid.fromComponents(
  0x762d272,
  0xc50a,
  0x4bb0,
  Uint8List.fromList(const [0xa3, 0x82, 0x69, 0x7d, 0xcd, 0x72, 0x9b, 0x80]),
);

final FOLDERID_UserProgramFiles = Guid.fromComponents(
  0x5cd7aee2,
  0x2219,
  0x4a67,
  Uint8List.fromList(const [0xb8, 0x5d, 0x6c, 0x9c, 0xe1, 0x56, 0x60, 0xcb]),
);

final FOLDERID_UserProgramFilesCommon = Guid.fromComponents(
  0xbcbd3057,
  0xca5c,
  0x4622,
  Uint8List.fromList(const [0xb4, 0x2d, 0xbc, 0x56, 0xdb, 0xa, 0xe5, 0x16]),
);

final FOLDERID_UsersFiles = Guid.fromComponents(
  0xf3ce0f7c,
  0x4901,
  0x4acc,
  Uint8List.fromList(const [0x86, 0x48, 0xd5, 0xd4, 0x4b, 0x4, 0xef, 0x8f]),
);

final FOLDERID_UsersLibraries = Guid.fromComponents(
  0xa302545d,
  0xdeff,
  0x464b,
  Uint8List.fromList(const [0xab, 0xe8, 0x61, 0xc8, 0x64, 0x8d, 0x93, 0x9b]),
);

final FOLDERID_Videos = Guid.fromComponents(
  0x18989b1d,
  0x99b5,
  0x455b,
  Uint8List.fromList(const [0x84, 0x1c, 0xab, 0x7c, 0x74, 0xe4, 0xdd, 0xfc]),
);

final FOLDERID_VideosLibrary = Guid.fromComponents(
  0x491e922f,
  0x5643,
  0x4af4,
  Uint8List.fromList(const [0xa7, 0xeb, 0x4e, 0x7a, 0x13, 0x8d, 0x81, 0x74]),
);

final FOLDERID_Windows = Guid.fromComponents(
  0xf38bf404,
  0x1d43,
  0x42f2,
  Uint8List.fromList(const [0x93, 0x5, 0x67, 0xde, 0xb, 0x28, 0xfc, 0x23]),
);

const FORMAT_MESSAGE_MAX_WIDTH_MASK = 255;

const FO_COPY = 2;

const FO_DELETE = 3;

const FO_MOVE = 1;

const FO_RENAME = 4;

const FSCTL_ADD_OVERLAY = 623408;

const FSCTL_ADVANCE_FILE_ID = 590532;

/// Signals the file system driver not to perform any I/O boundary checks on
/// partition read or write calls.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_allow_extended_dasd_io>.
const FSCTL_ALLOW_EXTENDED_DASD_IO = 589955;

const FSCTL_CLEAN_VOLUME_METADATA = 590716;

const FSCTL_CORRUPTION_HANDLING = 590432;

/// Retrieves the object identifier for the specified file or directory.
///
/// If no object identifier exists, using FSCTL_CREATE_OR_GET_OBJECT_ID creates
/// one.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_create_or_get_object_id>.
const FSCTL_CREATE_OR_GET_OBJECT_ID = 590016;

/// Creates an update sequence number (USN) change journal stream on a target
/// volume, or modifies an existing change journal stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_create_usn_journal>.
const FSCTL_CREATE_USN_JOURNAL = 590055;

const FSCTL_CSC_INTERNAL = 590255;

/// Retrieves the results of a CSV control operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_csv_control>.
const FSCTL_CSV_CONTROL = 590548;

const FSCTL_CSV_GET_VOLUME_NAME_FOR_VOLUME_MOUNT_POINT = 590420;

const FSCTL_CSV_GET_VOLUME_PATH_NAME = 590416;

const FSCTL_CSV_GET_VOLUME_PATH_NAMES_FOR_VOLUME_NAME = 590424;

const FSCTL_CSV_H_BREAKING_SYNC_TUNNEL_REQUEST = 590564;

const FSCTL_CSV_INTERNAL = 590444;

const FSCTL_CSV_MGMT_LOCK = 590524;

/// Retrieves information about a file system for which CSVFS is a proxy.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_csv_query_down_level_file_system_characteristics>.
const FSCTL_CSV_QUERY_DOWN_LEVEL_FILE_SYSTEM_CHARACTERISTICS = 590528;

const FSCTL_CSV_QUERY_VETO_FILE_DIRECT_IO = 590540;

const FSCTL_CSV_SYNC_TUNNEL_REQUEST = 590536;

const FSCTL_CSV_TUNNEL_REQUEST = 590404;

const FSCTL_DELETE_CORRUPTED_REFS_CONTAINER = 590836;

const FSCTL_DELETE_EXTERNAL_BACKING = 590612;

/// Removes the object identifier from a specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_delete_object_id>.
const FSCTL_DELETE_OBJECT_ID = 589984;

/// Deletes a reparse point from the specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_delete_reparse_point>.
const FSCTL_DELETE_REPARSE_POINT = 589996;

/// Deletes the update sequence number (USN) change journal on a volume, or
/// waits for notification of change journal deletion.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_delete_usn_journal>.
const FSCTL_DELETE_USN_JOURNAL = 590072;

const FSCTL_DFSR_SET_GHOST_HANDLE_STATE = 590264;

const FSCTL_DISABLE_LOCAL_BUFFERING = 590520;

/// Dismounts a volume regardless of whether or not the volume is currently in
/// use.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_dismount_volume>.
const FSCTL_DISMOUNT_VOLUME = 589856;

/// Instructs the file system to copy a range of file bytes on behalf of an
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_duplicate_extents_to_file>.
const FSCTL_DUPLICATE_EXTENTS_TO_FILE = 623428;

const FSCTL_DUPLICATE_EXTENTS_TO_FILE_EX = 623592;

const FSCTL_ENABLE_PER_IO_FLAGS = 590892;

const FSCTL_ENABLE_UPGRADE = 622800;

const FSCTL_ENCRYPTION_FSCTL_IO = 590043;

const FSCTL_ENCRYPTION_KEY_CONTROL = 590852;

const FSCTL_ENUM_EXTERNAL_BACKING = 590616;

const FSCTL_ENUM_OVERLAY = 590623;

/// Enumerates the update sequence number (USN) data between two specified
/// boundaries to obtain master file table (MFT) records.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_enum_usn_data>.
const FSCTL_ENUM_USN_DATA = 590003;

/// Increases the size of a mounted volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_extend_volume>.
const FSCTL_EXTEND_VOLUME = 590064;

/// Retrieves the information from various file system performance counters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_filesystem_get_statistics>.
const FSCTL_FILESYSTEM_GET_STATISTICS = 589920;

/// Retrieves the information from various file system performance counters.
///
/// Support for this control code started with Windows 10.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_filesystem_get_statistics_ex>.
const FSCTL_FILESYSTEM_GET_STATISTICS_EX = 590732;

/// Indicates ranges within the specified file that do not need to be stored by
/// the storage system.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_file_level_trim>.
const FSCTL_FILE_LEVEL_TRIM = 623112;

const FSCTL_FILE_PREFETCH = 590112;

const FSCTL_FILE_TYPE_NOTIFICATION = 590340;

/// Searches a directory for a file whose creator owner matches the specified
/// SID.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_find_files_by_sid>.
const FSCTL_FIND_FILES_BY_SID = 589967;

/// Retrieves the locations of boot sectors for a volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_boot_area_info>.
const FSCTL_GET_BOOT_AREA_INFO = 590384;

/// Retrieves the current compression state of a file or directory on a volume
/// whose file system supports per-stream compression.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_compression>.
const FSCTL_GET_COMPRESSION = 589884;

const FSCTL_GET_EXTERNAL_BACKING = 590608;

/// Retrieves the integrity status of a file or directory on a ReFS volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_integrity_information>.
const FSCTL_GET_INTEGRITY_INFORMATION = 590460;

/// Retrieves the first file record that is in use and is of a lesser than or
/// equal ordinal value to the requested file reference number.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_ntfs_file_record>.
const FSCTL_GET_NTFS_FILE_RECORD = 589928;

/// Retrieves information about the specified NTFS file system volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_ntfs_volume_data>.
const FSCTL_GET_NTFS_VOLUME_DATA = 589924;

/// Retrieves the object identifier for the specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_object_id>.
const FSCTL_GET_OBJECT_ID = 589980;

const FSCTL_GET_REFS_VOLUME_DATA = 590552;

/// Retrieves information about the NTFS file system's self-healing mechanism.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_repair>.
const FSCTL_GET_REPAIR = 590236;

/// Retrieves the reparse point data associated with the file or directory
/// identified by the specified handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_reparse_point>.
const FSCTL_GET_REPARSE_POINT = 589992;

/// Given a file handle, retrieves a data structure that describes the
/// allocation and location on disk of a specific file, or, given a volume
/// handle, the locations of bad clusters on a volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_retrieval_pointers>.
const FSCTL_GET_RETRIEVAL_POINTERS = 589939;

const FSCTL_GET_RETRIEVAL_POINTERS_AND_REFCOUNT = 590803;

/// Returns the sector offset to the first logical cluster number (LCN) of the
/// file system relative to the start of the volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_retrieval_pointer_base>.
const FSCTL_GET_RETRIEVAL_POINTER_BASE = 590388;

const FSCTL_GET_RETRIEVAL_POINTER_COUNT = 590891;

/// Retrieves a bitmap of occupied and available clusters on a volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_get_volume_bitmap>.
const FSCTL_GET_VOLUME_BITMAP = 589935;

const FSCTL_GET_WOF_VERSION = 590696;

const FSCTL_GHOST_FILE_EXTENTS = 623532;

const FSCTL_HCS_ASYNC_TUNNEL_REQUEST = 590704;

const FSCTL_HCS_SYNC_NO_WRITE_TUNNEL_REQUEST = 590776;

const FSCTL_HCS_SYNC_TUNNEL_REQUEST = 590700;

const FSCTL_INITIATE_FILE_METADATA_OPTIMIZATION = 590684;

/// Triggers the NTFS file system to start a self-healing cycle on a single
/// file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_initiate_repair>.
const FSCTL_INITIATE_REPAIR = 590248;

const FSCTL_INVALIDATE_VOLUMES = 589908;

/// Determines whether a file is stored on a CSVFS volume, or retrieves
/// namespace information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_is_csv_file>.
const FSCTL_IS_CSV_FILE = 590408;

/// Determines whether a file is stored on a CSVFS volume, or retrieves
/// namespace information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_is_file_on_csv_volume>.
const FSCTL_IS_FILE_ON_CSV_VOLUME = 590428;

const FSCTL_IS_PATHNAME_VALID = 589868;

const FSCTL_IS_VOLUME_DIRTY = 589944;

/// Determines whether the specified volume is mounted, or if the specified file
/// or directory is on a mounted volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_is_volume_mounted>.
const FSCTL_IS_VOLUME_MOUNTED = 589864;

/// Determines whether a volume is locked by CSVFS.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_is_volume_owned_bycsvfs>.
const FSCTL_IS_VOLUME_OWNED_BYCSVFS = 590456;

/// Locks a volume if it is not in use.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_lock_volume>.
const FSCTL_LOCK_VOLUME = 589848;

/// Given a handle to a NTFS volume or a file on a NTFS volume, returns a chain
/// of data structures that describes streams that occupy the specified
/// clusters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_lookup_stream_from_cluster>.
const FSCTL_LOOKUP_STREAM_FROM_CLUSTER = 590332;

/// Closes an open UDF session on write-once media to make the media ROM
/// compatible.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_make_media_compatible>.
const FSCTL_MAKE_MEDIA_COMPATIBLE = 622896;

const FSCTL_MARK_AS_SYSTEM_HIVE = 589903;

/// Marks a specified file or directory and its change journal record with
/// information about changes to that file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_mark_handle>.
const FSCTL_MARK_HANDLE = 590076;

const FSCTL_MARK_VOLUME_DIRTY = 589872;

/// Relocates one or more virtual clusters of a file from one logical cluster to
/// another within the same volume.
///
/// This operation is used during defragmentation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_move_file>.
const FSCTL_MOVE_FILE = 589940;

const FSCTL_NOTIFY_DATA_CHANGE = 590844;

const FSCTL_NOTIFY_STORAGE_SPACE_ALLOCATION = 590748;

const FSCTL_OFFLOAD_READ = 606820;

const FSCTL_OFFLOAD_WRITE = 623208;

/// Notifies a server that a client application is ready to close a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_opbatch_ack_close_pending>.
const FSCTL_OPBATCH_ACK_CLOSE_PENDING = 589840;

/// Responds to notification that an exclusive opportunistic lock on a file is
/// about to be broken.
///
/// Use this operation to indicate that the file should receive a level 2
/// opportunistic lock.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_oplock_break_acknowledge>.
const FSCTL_OPLOCK_BREAK_ACKNOWLEDGE = 589836;

/// Responds to notification that an opportunistic lock on a file is about to be
/// broken.
///
/// Use this operation to unlock all opportunistic locks on the file but keep
/// the file open.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_oplock_break_ack_no_2>.
const FSCTL_OPLOCK_BREAK_ACK_NO_2 = 589904;

/// Enables the calling application to wait for completion of an opportunistic
/// lock break.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_oplock_break_notify>.
const FSCTL_OPLOCK_BREAK_NOTIFY = 589844;

/// Scans a file or alternate stream looking for ranges that may contain nonzero
/// data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_query_allocated_ranges>.
const FSCTL_QUERY_ALLOCATED_RANGES = 606415;

const FSCTL_QUERY_BAD_RANGES = 590828;

const FSCTL_QUERY_DEPENDENT_VOLUME = 590320;

const FSCTL_QUERY_DIRECT_ACCESS_EXTENTS = 590747;

const FSCTL_QUERY_DIRECT_IMAGE_ORIGINAL_BASE = 590756;

const FSCTL_QUERY_EXTENT_READ_CACHE_INFO = 590711;

const FSCTL_QUERY_FAT_BPB = 589912;

const FSCTL_QUERY_FILE_LAYOUT = 590455;

const FSCTL_QUERY_FILE_METADATA_OPTIMIZATION = 590688;

const FSCTL_QUERY_FILE_REGIONS = 590468;

/// Queries for file system recognition information on a volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_query_file_system_recognition>.
const FSCTL_QUERY_FILE_SYSTEM_RECOGNITION = 590412;

const FSCTL_QUERY_GHOSTED_FILE_EXTENTS = 590768;

/// Requests UDF-specific volume information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_query_on_disk_volume_info>.
const FSCTL_QUERY_ON_DISK_VOLUME_INFO = 590140;

const FSCTL_QUERY_PAGEFILE_ENCRYPTION = 590312;

const FSCTL_QUERY_PERSISTENT_VOLUME_STATE = 590396;

const FSCTL_QUERY_REFS_SMR_VOLUME_INFO = 590812;

const FSCTL_QUERY_REFS_VOLUME_COUNTER_INFO = 590715;

/// Retrieves the storage tier regions defined for a volume that supports data
/// tiering.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_query_region_info>.
const FSCTL_QUERY_REGION_INFO = 590576;

const FSCTL_QUERY_RETRIEVAL_POINTERS = 589883;

const FSCTL_QUERY_SHARED_VIRTUAL_DISK_SUPPORT = 590592;

/// Retrieves the defect management properties of the volume.
///
/// Used for UDF file systems.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_query_sparing_info>.
const FSCTL_QUERY_SPARING_INFO = 590136;

/// Retrieves the storage tiers defined for a volume that supports data tiering.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_query_storage_classes>.
const FSCTL_QUERY_STORAGE_CLASSES = 590572;

/// Queries for information on the current update sequence number (USN) change
/// journal, its records, and its capacity.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_query_usn_journal>.
const FSCTL_QUERY_USN_JOURNAL = 590068;

const FSCTL_QUERY_VOLUME_CONTAINER_STATE = 590736;

const FSCTL_QUERY_VOLUME_NUMA_INFO = 590804;

/// Retrieves the update sequence number (USN) change-journal information for
/// the specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_read_file_usn_data>.
const FSCTL_READ_FILE_USN_DATA = 590059;

/// Reads from the specified plex.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_read_from_plex>.
const FSCTL_READ_FROM_PLEX = 606494;

const FSCTL_READ_RAW_ENCRYPTED = 590051;

const FSCTL_READ_UNPRIVILEGED_USN_JOURNAL = 590763;

/// Retrieves the set of update sequence number (USN) change journal records
/// between two specified USN values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_read_usn_journal>.
const FSCTL_READ_USN_JOURNAL = 590011;

const FSCTL_REARRANGE_FILE = 640032;

/// Recalls a file from storage media that Remote Storage manages, which is the
/// hierarchical storage management software.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_recall_file>.
const FSCTL_RECALL_FILE = 590103;

const FSCTL_REFS_DEALLOCATE_RANGES = 590808;

const FSCTL_REMOVE_OVERLAY = 623412;

/// Repair data corruption by selecting the proper copy to use.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_repair_copies>.
const FSCTL_REPAIR_COPIES = 639668;

/// Requests a batch opportunistic lock on a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_request_batch_oplock>.
const FSCTL_REQUEST_BATCH_OPLOCK = 589832;

/// Requests a filter opportunistic lock on a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_request_filter_oplock>.
const FSCTL_REQUEST_FILTER_OPLOCK = 589916;

/// Requests an opportunistic lock (oplock) on a file and acknowledges that an
/// oplock break has occurred.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_request_oplock>.
const FSCTL_REQUEST_OPLOCK = 590400;

/// Requests a level 1 opportunistic lock on a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_request_oplock_level_1>.
const FSCTL_REQUEST_OPLOCK_LEVEL_1 = 589824;

/// Requests a level 2 opportunistic lock on a file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_request_oplock_level_2>.
const FSCTL_REQUEST_OPLOCK_LEVEL_2 = 589828;

const FSCTL_RESET_VOLUME_ALLOCATION_HINTS = 590316;

const FSCTL_RKF_INTERNAL = 590511;

const FSCTL_SCRUB_DATA = 590512;

const FSCTL_SCRUB_UNDISCOVERABLE_ID = 590840;

const FSCTL_SD_GLOBAL_CHANGE = 590324;

const FSCTL_SECURITY_ID_CHECK = 606391;

const FSCTL_SET_BOOTLOADER_ACCESSED = 589903;

/// Sets the compression state of a file or directory on a volume whose file
/// system supports per-file and per-directory compression.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_compression>.
const FSCTL_SET_COMPRESSION = 639040;

const FSCTL_SET_DAX_ALLOC_ALIGNMENT_HINT = 590832;

/// Sets the software defect management state for the specified file.
///
/// Used for UDF file systems.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_defect_management>.
const FSCTL_SET_DEFECT_MANAGEMENT = 622900;

const FSCTL_SET_ENCRYPTION = 590039;

const FSCTL_SET_EXTERNAL_BACKING = 590604;

/// Retrieves the integrity status of a file or directory on a ReFS volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_integrity_information>.
const FSCTL_SET_INTEGRITY_INFORMATION = 639616;

const FSCTL_SET_INTEGRITY_INFORMATION_EX = 590720;

const FSCTL_SET_LAYER_ROOT = 590740;

/// Sets the object identifier for the specified file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_object_id>.
const FSCTL_SET_OBJECT_ID = 589976;

/// Modifies user data associated with the object identifier for the specified
/// file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_object_id_extended>.
const FSCTL_SET_OBJECT_ID_EXTENDED = 590012;

const FSCTL_SET_PERSISTENT_VOLUME_STATE = 590392;

const FSCTL_SET_PURGE_FAILURE_MODE = 590448;

const FSCTL_SET_REFS_FILE_STRICTLY_SEQUENTIAL = 590820;

const FSCTL_SET_REFS_SMR_VOLUME_GC_PARAMETERS = 590816;

/// Sets the mode of an NTFS file system's self-healing capability.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_repair>.
const FSCTL_SET_REPAIR = 590232;

/// Sets a reparse point on a file or directory.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_reparse_point>.
const FSCTL_SET_REPARSE_POINT = 589988;

const FSCTL_SET_REPARSE_POINT_EX = 590860;

const FSCTL_SET_SHORT_NAME_BEHAVIOR = 590260;

/// Marks the indicated file as sparse or not sparse.
///
/// In a sparse file, large ranges of zeros may not require disk allocation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_sparse>.
const FSCTL_SET_SPARSE = 590020;

const FSCTL_SET_VOLUME_COMPRESSION_STATE = 590144;

/// Fills a specified range of a file with zeros (0).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_zero_data>.
const FSCTL_SET_ZERO_DATA = 622792;

/// Indicates an NTFS file system file handle should have its clusters filled
/// with zeros when it is deallocated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_set_zero_on_deallocation>.
const FSCTL_SET_ZERO_ON_DEALLOCATION = 590228;

/// Signals that the volume is to be prepared to perform the shrink operation,
/// the shrink operation is to be committed, or the shrink operation is to be
/// terminated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_shrink_volume>.
const FSCTL_SHRINK_VOLUME = 590256;

const FSCTL_SHUFFLE_FILE = 639808;

const FSCTL_SIS_COPYFILE = 590080;

const FSCTL_SIS_LINK_FILES = 639236;

const FSCTL_SPARSE_OVERALLOCATE = 590668;

const FSCTL_SSDI_STORAGE_REQUEST = 590752;

const FSCTL_START_VIRTUALIZATION_INSTANCE_EX = 590848;

const FSCTL_STORAGE_QOS_CONTROL = 590672;

const FSCTL_STREAMS_ASSOCIATE_ID = 590792;

const FSCTL_STREAMS_QUERY_ID = 590796;

const FSCTL_STREAMS_QUERY_PARAMETERS = 590788;

const FSCTL_SUSPEND_OVERLAY = 590724;

const FSCTL_SVHDX_ASYNC_TUNNEL_REQUEST = 590692;

const FSCTL_SVHDX_SET_INITIATOR_INFORMATION = 590600;

const FSCTL_SVHDX_SYNC_TUNNEL_REQUEST = 590596;

/// Creates a new miniversion for the specified file.
///
/// Miniversions allow you to refer to a snapshot of the file during a
/// transaction. Miniversions are discarded when a transaction is committed or
/// rolled back.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_create_miniversion>.
const FSCTL_TXFS_CREATE_MINIVERSION = 622972;

const FSCTL_TXFS_CREATE_SECONDARY_RM = 622952;

/// Retrieves Transacted NTFS (TxF) metadata for a file and the GUID of the
/// transaction that has locked the specified file (if the file is locked).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_get_metadata_info>.
const FSCTL_TXFS_GET_METADATA_INFO = 606572;

/// Returns a TXFS_GET_TRANSACTED_VERSION structure.
///
/// The structure identifies the most recently committed version of the
/// specified file, the version number of the handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_get_transacted_version>.
const FSCTL_TXFS_GET_TRANSACTED_VERSION = 606576;

/// Returns a list of all the transactions currently involved in the specified
/// resource manager.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_list_transactions>.
const FSCTL_TXFS_LIST_TRANSACTIONS = 606692;

/// Returns a list of all files currently locked by the specified transaction.
///
/// If the return value is ERROR_MORE_DATA, it returns the length of the buffer
/// required to hold the complete list of files at the time of this call.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_list_transaction_locked_files>.
const FSCTL_TXFS_LIST_TRANSACTION_LOCKED_FILES = 606688;

/// Sets the log mode and log parameter information for a secondary resource
/// manager (RM).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_modify_rm>.
const FSCTL_TXFS_MODIFY_RM = 622916;

/// Retrieves information for a resource manager (RM).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_query_rm_information>.
const FSCTL_TXFS_QUERY_RM_INFORMATION = 606536;

/// Returns Transactional NTFS (TxF) specific information for the specified
/// file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_read_backup_information>.
const FSCTL_TXFS_READ_BACKUP_INFORMATION = 606560;

const FSCTL_TXFS_READ_BACKUP_INFORMATION2 = 590328;

const FSCTL_TXFS_ROLLFORWARD_REDO = 622928;

const FSCTL_TXFS_ROLLFORWARD_UNDO = 622932;

/// The FSCTL_TXFS_SAVEPOINT_INFORMATION control code controls setting,
/// clearing, and rolling back to the specified savepoint.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_savepoint_information>.
const FSCTL_TXFS_SAVEPOINT_INFORMATION = 622968;

const FSCTL_TXFS_SHUTDOWN_RM = 622940;

const FSCTL_TXFS_START_RM = 622936;

/// Returns a Boolean value that indicates if there were any transactions active
/// on the associated volume when the snapshot was taken.
///
/// This call is only valid for read-only snapshot volumes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_transaction_active>.
const FSCTL_TXFS_TRANSACTION_ACTIVE = 606604;

/// Writes Transactional NTFS (TxF) specific information to a specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_txfs_write_backup_information>.
const FSCTL_TXFS_WRITE_BACKUP_INFORMATION = 622948;

const FSCTL_TXFS_WRITE_BACKUP_INFORMATION2 = 590336;

/// Unlocks a volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_unlock_volume>.
const FSCTL_UNLOCK_VOLUME = 589852;

const FSCTL_UNMAP_SPACE = 590772;

const FSCTL_UPDATE_OVERLAY = 623416;

/// Enables range tracking feature for update sequence number (USN) change
/// journal stream on a target volume, or modifies already enabled range
/// tracking parameters.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_usn_track_modified_ranges>.
const FSCTL_USN_TRACK_MODIFIED_RANGES = 590580;

const FSCTL_VIRTUAL_STORAGE_PASSTHROUGH = 590884;

const FSCTL_VIRTUAL_STORAGE_QUERY_PROPERTY = 590728;

const FSCTL_VIRTUAL_STORAGE_SET_BEHAVIOR = 590856;

/// Returns when the specified repairs are completed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_wait_for_repair>.
const FSCTL_WAIT_FOR_REPAIR = 590240;

const FSCTL_WRITE_RAW_ENCRYPTED = 590047;

/// Generates a record in the update sequence number (USN) change journal stream
/// for the input file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-fsctl_write_usn_close_record>.
const FSCTL_WRITE_USN_CLOSE_RECORD = 590063;

const FSCTL_WRITE_USN_REASON = 590544;

final GUID_BLUETOOTHLE_DEVICE_INTERFACE = Guid.fromComponents(
  0x781aee18,
  0x7733,
  0x4ce4,
  Uint8List.fromList(const [0xad, 0xd0, 0x91, 0xf4, 0x1c, 0x67, 0xb5, 0x92]),
);

final GUID_BLUETOOTH_GATT_SERVICE_DEVICE_INTERFACE = Guid.fromComponents(
  0x6e3bb679,
  0x4372,
  0x40c8,
  Uint8List.fromList(const [0x9e, 0xaa, 0x45, 0x9, 0xdf, 0x26, 0xc, 0xd8]),
);

final GUID_CONSOLE_DISPLAY_STATE = Guid.fromComponents(
  0x6fe69556,
  0x704a,
  0x47a0,
  Uint8List.fromList(const [0x8f, 0x24, 0xc2, 0x8d, 0x93, 0x6f, 0xda, 0x47]),
);

final GUID_DEVCLASS_1394 = Guid.fromComponents(
  0x6bdd1fc1,
  0x810f,
  0x11d0,
  Uint8List.fromList(const [0xbe, 0xc7, 0x8, 0x0, 0x2b, 0xe2, 0x9, 0x2f]),
);

final GUID_DEVCLASS_1394DEBUG = Guid.fromComponents(
  0x66f250d6,
  0x7801,
  0x4a64,
  Uint8List.fromList(const [0xb1, 0x39, 0xee, 0xa8, 0xa, 0x45, 0xb, 0x24]),
);

final GUID_DEVCLASS_61883 = Guid.fromComponents(
  0x7ebefbc0,
  0x3200,
  0x11d2,
  Uint8List.fromList(const [0xb4, 0xc2, 0x0, 0xa0, 0xc9, 0x69, 0x7d, 0x7]),
);

final GUID_DEVCLASS_ADAPTER = Guid.fromComponents(
  0x4d36e964,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_APMSUPPORT = Guid.fromComponents(
  0xd45b1c18,
  0xc8fa,
  0x11d1,
  Uint8List.fromList(const [0x9f, 0x77, 0x0, 0x0, 0xf8, 0x5, 0xf5, 0x30]),
);

final GUID_DEVCLASS_AVC = Guid.fromComponents(
  0xc06ff265,
  0xae09,
  0x48f0,
  Uint8List.fromList(const [0x81, 0x2c, 0x16, 0x75, 0x3d, 0x7c, 0xba, 0x83]),
);

final GUID_DEVCLASS_BATTERY = Guid.fromComponents(
  0x72631e54,
  0x78a4,
  0x11d0,
  Uint8List.fromList(const [0xbc, 0xf7, 0x0, 0xaa, 0x0, 0xb7, 0xb3, 0x2a]),
);

final GUID_DEVCLASS_BIOMETRIC = Guid.fromComponents(
  0x53d29ef7,
  0x377c,
  0x4d14,
  Uint8List.fromList(const [0x86, 0x4b, 0xeb, 0x3a, 0x85, 0x76, 0x93, 0x59]),
);

final GUID_DEVCLASS_BLUETOOTH = Guid.fromComponents(
  0xe0cbf06c,
  0xcd8b,
  0x4647,
  Uint8List.fromList(const [0xbb, 0x8a, 0x26, 0x3b, 0x43, 0xf0, 0xf9, 0x74]),
);

final GUID_DEVCLASS_CAMERA = Guid.fromComponents(
  0xca3e7ab9,
  0xb4c3,
  0x4ae6,
  Uint8List.fromList(const [0x82, 0x51, 0x57, 0x9e, 0xf9, 0x33, 0x89, 0xf]),
);

final GUID_DEVCLASS_CDROM = Guid.fromComponents(
  0x4d36e965,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_COMPUTEACCELERATOR = Guid.fromComponents(
  0xf01a9d53,
  0x3ff6,
  0x48d2,
  Uint8List.fromList(const [0x9f, 0x97, 0xc8, 0xa7, 0x0, 0x4b, 0xe1, 0xc]),
);

final GUID_DEVCLASS_COMPUTER = Guid.fromComponents(
  0x4d36e966,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_DECODER = Guid.fromComponents(
  0x6bdd1fc2,
  0x810f,
  0x11d0,
  Uint8List.fromList(const [0xbe, 0xc7, 0x8, 0x0, 0x2b, 0xe2, 0x9, 0x2f]),
);

final GUID_DEVCLASS_DISKDRIVE = Guid.fromComponents(
  0x4d36e967,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_DISPLAY = Guid.fromComponents(
  0x4d36e968,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_DOT4 = Guid.fromComponents(
  0x48721b56,
  0x6795,
  0x11d2,
  Uint8List.fromList(const [0xb1, 0xa8, 0x0, 0x80, 0xc7, 0x2e, 0x74, 0xa2]),
);

final GUID_DEVCLASS_DOT4PRINT = Guid.fromComponents(
  0x49ce6ac8,
  0x6f86,
  0x11d2,
  Uint8List.fromList(const [0xb1, 0xe5, 0x0, 0x80, 0xc7, 0x2e, 0x74, 0xa2]),
);

final GUID_DEVCLASS_EHSTORAGESILO = Guid.fromComponents(
  0x9da2b80f,
  0xf89f,
  0x4a49,
  Uint8List.fromList(const [0xa5, 0xc2, 0x51, 0x1b, 0x8, 0x5b, 0x9e, 0x8a]),
);

final GUID_DEVCLASS_ENUM1394 = Guid.fromComponents(
  0xc459df55,
  0xdb08,
  0x11d1,
  Uint8List.fromList(const [0xb0, 0x9, 0x0, 0xa0, 0xc9, 0x8, 0x1f, 0xf6]),
);

final GUID_DEVCLASS_EXTENSION = Guid.fromComponents(
  0xe2f84ce7,
  0x8efa,
  0x411c,
  Uint8List.fromList(const [0xaa, 0x69, 0x97, 0x45, 0x4c, 0xa4, 0xcb, 0x57]),
);

final GUID_DEVCLASS_FDC = Guid.fromComponents(
  0x4d36e969,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_FIRMWARE = Guid.fromComponents(
  0xf2e7dd72,
  0x6468,
  0x4e36,
  Uint8List.fromList(const [0xb6, 0xf1, 0x64, 0x88, 0xf4, 0x2c, 0x1b, 0x52]),
);

final GUID_DEVCLASS_FLOPPYDISK = Guid.fromComponents(
  0x4d36e980,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_GPS = Guid.fromComponents(
  0x6bdd1fc3,
  0x810f,
  0x11d0,
  Uint8List.fromList(const [0xbe, 0xc7, 0x8, 0x0, 0x2b, 0xe2, 0x9, 0x2f]),
);

final GUID_DEVCLASS_HDC = Guid.fromComponents(
  0x4d36e96a,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_HIDCLASS = Guid.fromComponents(
  0x745a17a0,
  0x74d3,
  0x11d0,
  Uint8List.fromList(const [0xb6, 0xfe, 0x0, 0xa0, 0xc9, 0xf, 0x57, 0xda]),
);

final GUID_DEVCLASS_HOLOGRAPHIC = Guid.fromComponents(
  0xd612553d,
  0x6b1,
  0x49ca,
  Uint8List.fromList(const [0x89, 0x38, 0xe3, 0x9e, 0xf8, 0xe, 0xb1, 0x6f]),
);

final GUID_DEVCLASS_IMAGE = Guid.fromComponents(
  0x6bdd1fc6,
  0x810f,
  0x11d0,
  Uint8List.fromList(const [0xbe, 0xc7, 0x8, 0x0, 0x2b, 0xe2, 0x9, 0x2f]),
);

final GUID_DEVCLASS_INFINIBAND = Guid.fromComponents(
  0x30ef7132,
  0xd858,
  0x4a0c,
  Uint8List.fromList(const [0xac, 0x24, 0xb9, 0x2, 0x8a, 0x5c, 0xca, 0x3f]),
);

final GUID_DEVCLASS_INFRARED = Guid.fromComponents(
  0x6bdd1fc5,
  0x810f,
  0x11d0,
  Uint8List.fromList(const [0xbe, 0xc7, 0x8, 0x0, 0x2b, 0xe2, 0x9, 0x2f]),
);

final GUID_DEVCLASS_KEYBOARD = Guid.fromComponents(
  0x4d36e96b,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_LEGACYDRIVER = Guid.fromComponents(
  0x8ecc055d,
  0x47f,
  0x11d1,
  Uint8List.fromList(const [0xa5, 0x37, 0x0, 0x0, 0xf8, 0x75, 0x3e, 0xd1]),
);

final GUID_DEVCLASS_MEDIA = Guid.fromComponents(
  0x4d36e96c,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_MEDIUM_CHANGER = Guid.fromComponents(
  0xce5939ae,
  0xebde,
  0x11d0,
  Uint8List.fromList(const [0xb1, 0x81, 0x0, 0x0, 0xf8, 0x75, 0x3e, 0xc4]),
);

final GUID_DEVCLASS_MEMORY = Guid.fromComponents(
  0x5099944a,
  0xf6b9,
  0x4057,
  Uint8List.fromList(const [0xa0, 0x56, 0x8c, 0x55, 0x2, 0x28, 0x54, 0x4c]),
);

final GUID_DEVCLASS_MODEM = Guid.fromComponents(
  0x4d36e96d,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_MONITOR = Guid.fromComponents(
  0x4d36e96e,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_MOUSE = Guid.fromComponents(
  0x4d36e96f,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_MTD = Guid.fromComponents(
  0x4d36e970,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_MULTIFUNCTION = Guid.fromComponents(
  0x4d36e971,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_MULTIPORTSERIAL = Guid.fromComponents(
  0x50906cb8,
  0xba12,
  0x11d1,
  Uint8List.fromList(const [0xbf, 0x5d, 0x0, 0x0, 0xf8, 0x5, 0xf5, 0x30]),
);

final GUID_DEVCLASS_NET = Guid.fromComponents(
  0x4d36e972,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_NETCLIENT = Guid.fromComponents(
  0x4d36e973,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_NETDRIVER = Guid.fromComponents(
  0x87ef9ad1,
  0x8f70,
  0x49ee,
  Uint8List.fromList(const [0xb2, 0x15, 0xab, 0x1f, 0xca, 0xdc, 0xbe, 0x3c]),
);

final GUID_DEVCLASS_NETSERVICE = Guid.fromComponents(
  0x4d36e974,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_NETTRANS = Guid.fromComponents(
  0x4d36e975,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_NETUIO = Guid.fromComponents(
  0x78912bc1,
  0xcb8e,
  0x4b28,
  Uint8List.fromList(const [0xa3, 0x29, 0xf3, 0x22, 0xeb, 0xad, 0xbe, 0xf]),
);

final GUID_DEVCLASS_NODRIVER = Guid.fromComponents(
  0x4d36e976,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_PCMCIA = Guid.fromComponents(
  0x4d36e977,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_PNPPRINTERS = Guid.fromComponents(
  0x4658ee7e,
  0xf050,
  0x11d1,
  Uint8List.fromList(const [0xb6, 0xbd, 0x0, 0xc0, 0x4f, 0xa3, 0x72, 0xa7]),
);

final GUID_DEVCLASS_PORTS = Guid.fromComponents(
  0x4d36e978,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_PRINTER = Guid.fromComponents(
  0x4d36e979,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_PRINTERUPGRADE = Guid.fromComponents(
  0x4d36e97a,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_PRINTQUEUE = Guid.fromComponents(
  0x1ed2bbf9,
  0x11f0,
  0x4084,
  Uint8List.fromList(const [0xb2, 0x1f, 0xad, 0x83, 0xa8, 0xe6, 0xdc, 0xdc]),
);

final GUID_DEVCLASS_PROCESSOR = Guid.fromComponents(
  0x50127dc3,
  0xf36,
  0x415e,
  Uint8List.fromList(const [0xa6, 0xcc, 0x4c, 0xb3, 0xbe, 0x91, 0xb, 0x65]),
);

final GUID_DEVCLASS_SBP2 = Guid.fromComponents(
  0xd48179be,
  0xec20,
  0x11d1,
  Uint8List.fromList(const [0xb6, 0xb8, 0x0, 0xc0, 0x4f, 0xa3, 0x72, 0xa7]),
);

final GUID_DEVCLASS_SCMDISK = Guid.fromComponents(
  0x53966cb1,
  0x4d46,
  0x4166,
  Uint8List.fromList(const [0xbf, 0x23, 0xc5, 0x22, 0x40, 0x3c, 0xd4, 0x95]),
);

final GUID_DEVCLASS_SCMVOLUME = Guid.fromComponents(
  0x53ccb149,
  0xe543,
  0x4c84,
  Uint8List.fromList(const [0xb6, 0xe0, 0xbc, 0xe4, 0xf6, 0xb7, 0xe8, 0x6]),
);

final GUID_DEVCLASS_SCSIADAPTER = Guid.fromComponents(
  0x4d36e97b,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_SECURITYACCELERATOR = Guid.fromComponents(
  0x268c95a1,
  0xedfe,
  0x11d3,
  Uint8List.fromList(const [0x95, 0xc3, 0x0, 0x10, 0xdc, 0x40, 0x50, 0xa5]),
);

final GUID_DEVCLASS_SENSOR = Guid.fromComponents(
  0x5175d334,
  0xc371,
  0x4806,
  Uint8List.fromList(const [0xb3, 0xba, 0x71, 0xfd, 0x53, 0xc9, 0x25, 0x8d]),
);

final GUID_DEVCLASS_SIDESHOW = Guid.fromComponents(
  0x997b5d8d,
  0xc442,
  0x4f2e,
  Uint8List.fromList(const [0xba, 0xf3, 0x9c, 0x8e, 0x67, 0x1e, 0x9e, 0x21]),
);

final GUID_DEVCLASS_SMARTCARDREADER = Guid.fromComponents(
  0x50dd5230,
  0xba8a,
  0x11d1,
  Uint8List.fromList(const [0xbf, 0x5d, 0x0, 0x0, 0xf8, 0x5, 0xf5, 0x30]),
);

final GUID_DEVCLASS_SMRDISK = Guid.fromComponents(
  0x53487c23,
  0x680f,
  0x4585,
  Uint8List.fromList(const [0xac, 0xc3, 0x1f, 0x10, 0xd6, 0x77, 0x7e, 0x82]),
);

final GUID_DEVCLASS_SMRVOLUME = Guid.fromComponents(
  0x53b3cf03,
  0x8f5a,
  0x4788,
  Uint8List.fromList(const [0x91, 0xb6, 0xd1, 0x9e, 0xd9, 0xfc, 0xcc, 0xbf]),
);

final GUID_DEVCLASS_SOFTWARECOMPONENT = Guid.fromComponents(
  0x5c4c3332,
  0x344d,
  0x483c,
  Uint8List.fromList(const [0x87, 0x39, 0x25, 0x9e, 0x93, 0x4c, 0x9c, 0xc8]),
);

final GUID_DEVCLASS_SOUND = Guid.fromComponents(
  0x4d36e97c,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_SYSTEM = Guid.fromComponents(
  0x4d36e97d,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_TAPEDRIVE = Guid.fromComponents(
  0x6d807884,
  0x7d21,
  0x11cf,
  Uint8List.fromList(const [0x80, 0x1c, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_UCM = Guid.fromComponents(
  0xe6f1aa1c,
  0x7f3b,
  0x4473,
  Uint8List.fromList(const [0xb2, 0xe8, 0xc9, 0x7d, 0x8a, 0xc7, 0x1d, 0x53]),
);

final GUID_DEVCLASS_UNKNOWN = Guid.fromComponents(
  0x4d36e97e,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVCLASS_USB = Guid.fromComponents(
  0x36fc9e60,
  0xc465,
  0x11cf,
  Uint8List.fromList(const [0x80, 0x56, 0x44, 0x45, 0x53, 0x54, 0x0, 0x0]),
);

final GUID_DEVCLASS_VOLUME = Guid.fromComponents(
  0x71a27cdd,
  0x812a,
  0x11d0,
  Uint8List.fromList(const [0xbe, 0xc7, 0x8, 0x0, 0x2b, 0xe2, 0x9, 0x2f]),
);

final GUID_DEVCLASS_VOLUMESNAPSHOT = Guid.fromComponents(
  0x533c5b84,
  0xec70,
  0x11d2,
  Uint8List.fromList(const [0x95, 0x5, 0x0, 0xc0, 0x4f, 0x79, 0xde, 0xaf]),
);

final GUID_DEVCLASS_WCEUSBS = Guid.fromComponents(
  0x25dbce51,
  0x6c8f,
  0x4a72,
  Uint8List.fromList(const [0x8a, 0x6d, 0xb5, 0x4c, 0x2b, 0x4f, 0xc8, 0x35]),
);

final GUID_DEVCLASS_WPD = Guid.fromComponents(
  0xeec5ad98,
  0x8080,
  0x425f,
  Uint8List.fromList(const [0x92, 0x2a, 0xda, 0xbf, 0x3d, 0xe3, 0xf6, 0x9a]),
);

final GUID_DEVINTERFACE_CDCHANGER = Guid.fromComponents(
  0x53f56312,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_CDROM = Guid.fromComponents(
  0x53f56308,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_COMPORT = Guid.fromComponents(
  0x86e0d1e0,
  0x8089,
  0x11d0,
  Uint8List.fromList(const [0x9c, 0xe4, 0x8, 0x0, 0x3e, 0x30, 0x1f, 0x73]),
);

final GUID_DEVINTERFACE_DISK = Guid.fromComponents(
  0x53f56307,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_DISPLAY_ADAPTER = Guid.fromComponents(
  0x5b45201d,
  0xf2f2,
  0x4f3b,
  Uint8List.fromList(const [0x85, 0xbb, 0x30, 0xff, 0x1f, 0x95, 0x35, 0x99]),
);

final GUID_DEVINTERFACE_FLOPPY = Guid.fromComponents(
  0x53f56311,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_HID = Guid.fromComponents(
  0x4d1e55b2,
  0xf16f,
  0x11cf,
  Uint8List.fromList(const [0x88, 0xcb, 0x0, 0x11, 0x11, 0x0, 0x0, 0x30]),
);

final GUID_DEVINTERFACE_IMAGE = Guid.fromComponents(
  0x6bdd1fc6,
  0x810f,
  0x11d0,
  Uint8List.fromList(const [0xbe, 0xc7, 0x8, 0x0, 0x2b, 0xe2, 0x9, 0x2f]),
);

final GUID_DEVINTERFACE_KEYBOARD = Guid.fromComponents(
  0x884b96c3,
  0x56ef,
  0x11d1,
  Uint8List.fromList(const [0xbc, 0x8c, 0x0, 0xa0, 0xc9, 0x14, 0x5, 0xdd]),
);

final GUID_DEVINTERFACE_MEDIUMCHANGER = Guid.fromComponents(
  0x53f56310,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_MONITOR = Guid.fromComponents(
  0xe6f07b5f,
  0xee97,
  0x4a90,
  Uint8List.fromList(const [0xb0, 0x76, 0x33, 0xf5, 0x7b, 0xf4, 0xea, 0xa7]),
);

final GUID_DEVINTERFACE_MOUSE = Guid.fromComponents(
  0x378de44c,
  0x56ef,
  0x11d1,
  Uint8List.fromList(const [0xbc, 0x8c, 0x0, 0xa0, 0xc9, 0x14, 0x5, 0xdd]),
);

final GUID_DEVINTERFACE_NET = Guid.fromComponents(
  0xcac88484,
  0x7515,
  0x4c03,
  Uint8List.fromList(const [0x82, 0xe6, 0x71, 0xa8, 0x7a, 0xba, 0xc3, 0x61]),
);

final GUID_DEVINTERFACE_PARTITION = Guid.fromComponents(
  0x53f5630a,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR = Guid.fromComponents(
  0x4d36e978,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x8, 0x0, 0x2b, 0xe1, 0x3, 0x18]),
);

final GUID_DEVINTERFACE_STORAGEPORT = Guid.fromComponents(
  0x2accfe60,
  0xc130,
  0x11d2,
  Uint8List.fromList(const [0xb0, 0x82, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_TAPE = Guid.fromComponents(
  0x53f5630b,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_USB_DEVICE = Guid.fromComponents(
  0xa5dcbf10,
  0x6530,
  0x11d2,
  Uint8List.fromList(const [0x90, 0x1f, 0x0, 0xc0, 0x4f, 0xb9, 0x51, 0xed]),
);

final GUID_DEVINTERFACE_USB_HOST_CONTROLLER = Guid.fromComponents(
  0x3abf6f2d,
  0x71c4,
  0x462a,
  Uint8List.fromList(const [0x8a, 0x92, 0x1e, 0x68, 0x61, 0xe6, 0xaf, 0x27]),
);

final GUID_DEVINTERFACE_USB_HUB = Guid.fromComponents(
  0xf18a0e88,
  0xc30c,
  0x11d0,
  Uint8List.fromList(const [0x88, 0x15, 0x0, 0xa0, 0xc9, 0x6, 0xbe, 0xd8]),
);

final GUID_DEVINTERFACE_VIDEO_OUTPUT_ARRIVAL = Guid.fromComponents(
  0x1ad9e4f0,
  0xf88d,
  0x4360,
  Uint8List.fromList(const [0xba, 0xb9, 0x4c, 0x2d, 0x55, 0xe5, 0x64, 0xcd]),
);

final GUID_DEVINTERFACE_VOLUME = Guid.fromComponents(
  0x53f5630d,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

final GUID_DEVINTERFACE_WPD = Guid.fromComponents(
  0x6ac27878,
  0xa6fa,
  0x4155,
  Uint8List.fromList(const [0xba, 0x85, 0xf9, 0x8f, 0x49, 0x1d, 0x4f, 0x33]),
);

final GUID_DEVINTERFACE_WPD_PRIVATE = Guid.fromComponents(
  0xba0c718f,
  0x4ded,
  0x49b7,
  Uint8List.fromList(const [0xbd, 0xd3, 0xfa, 0xbe, 0x28, 0x66, 0x12, 0x11]),
);

final GUID_DEVINTERFACE_WRITEONCEDISK = Guid.fromComponents(
  0x53f5630c,
  0xb6bf,
  0x11d0,
  Uint8List.fromList(const [0x94, 0xf2, 0x0, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b]),
);

const HC_ACTION = 0;

/// A common dialog box sends the HELPMSGSTRING registered message to the window
/// procedure of its owner window when the user clicks the Help button.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/helpmsgstring>.
const HELPMSGSTRING = 'commdlg_help';

const HID_USAGE_GENERIC_BYTE_COUNT = 59;

const HID_USAGE_GENERIC_CONTROL_ENABLE = 203;

const HID_USAGE_GENERIC_COUNTED_BUFFER = 58;

const HID_USAGE_GENERIC_DIAL = 55;

const HID_USAGE_GENERIC_DPAD_DOWN = 145;

const HID_USAGE_GENERIC_DPAD_LEFT = 147;

const HID_USAGE_GENERIC_DPAD_RIGHT = 146;

const HID_USAGE_GENERIC_DPAD_UP = 144;

const HID_USAGE_GENERIC_FEATURE_NOTIFICATION = 71;

const HID_USAGE_GENERIC_GAMEPAD = 5;

const HID_USAGE_GENERIC_HATSWITCH = 57;

const HID_USAGE_GENERIC_INTERACTIVE_CONTROL = 14;

const HID_USAGE_GENERIC_JOYSTICK = 4;

const HID_USAGE_GENERIC_KEYBOARD = 6;

const HID_USAGE_GENERIC_KEYPAD = 7;

const HID_USAGE_GENERIC_MOTION_WAKEUP = 60;

const HID_USAGE_GENERIC_MOUSE = 2;

const HID_USAGE_GENERIC_MULTI_AXIS_CONTROLLER = 8;

const HID_USAGE_GENERIC_POINTER = 1;

const HID_USAGE_GENERIC_PORTABLE_DEVICE_CONTROL = 13;

const HID_USAGE_GENERIC_RESOLUTION_MULTIPLIER = 72;

const HID_USAGE_GENERIC_RX = 51;

const HID_USAGE_GENERIC_RY = 52;

const HID_USAGE_GENERIC_RZ = 53;

const HID_USAGE_GENERIC_SELECT = 62;

const HID_USAGE_GENERIC_SLIDER = 54;

const HID_USAGE_GENERIC_START = 61;

const HID_USAGE_GENERIC_SYSCTL_APP_BREAK = 165;

const HID_USAGE_GENERIC_SYSCTL_APP_DBG_BREAK = 166;

const HID_USAGE_GENERIC_SYSCTL_APP_MENU = 134;

const HID_USAGE_GENERIC_SYSCTL_COLD_RESTART = 142;

const HID_USAGE_GENERIC_SYSCTL_CONTEXT_MENU = 132;

const HID_USAGE_GENERIC_SYSCTL_DISMISS_NOTIFICATION = 154;

const HID_USAGE_GENERIC_SYSCTL_DISP_AUTOSCALE = 183;

const HID_USAGE_GENERIC_SYSCTL_DISP_BOTH = 179;

const HID_USAGE_GENERIC_SYSCTL_DISP_DUAL = 180;

const HID_USAGE_GENERIC_SYSCTL_DISP_EXTERNAL = 178;

const HID_USAGE_GENERIC_SYSCTL_DISP_INTERNAL = 177;

const HID_USAGE_GENERIC_SYSCTL_DISP_INVERT = 176;

const HID_USAGE_GENERIC_SYSCTL_DISP_SWAP = 182;

const HID_USAGE_GENERIC_SYSCTL_DISP_TOGGLE = 181;

const HID_USAGE_GENERIC_SYSCTL_DOCK = 160;

const HID_USAGE_GENERIC_SYSCTL_FN = 151;

const HID_USAGE_GENERIC_SYSCTL_FN_LOCK = 152;

const HID_USAGE_GENERIC_SYSCTL_FN_LOCK_INDICATOR = 153;

const HID_USAGE_GENERIC_SYSCTL_HELP_MENU = 135;

const HID_USAGE_GENERIC_SYSCTL_HIBERNATE = 168;

const HID_USAGE_GENERIC_SYSCTL_MAIN_MENU = 133;

const HID_USAGE_GENERIC_SYSCTL_MENU_DOWN = 141;

const HID_USAGE_GENERIC_SYSCTL_MENU_EXIT = 136;

const HID_USAGE_GENERIC_SYSCTL_MENU_LEFT = 139;

const HID_USAGE_GENERIC_SYSCTL_MENU_RIGHT = 138;

const HID_USAGE_GENERIC_SYSCTL_MENU_SELECT = 137;

const HID_USAGE_GENERIC_SYSCTL_MENU_UP = 140;

const HID_USAGE_GENERIC_SYSCTL_MUTE = 167;

const HID_USAGE_GENERIC_SYSCTL_POWER = 129;

const HID_USAGE_GENERIC_SYSCTL_SETUP = 162;

const HID_USAGE_GENERIC_SYSCTL_SLEEP = 130;

const HID_USAGE_GENERIC_SYSCTL_SYS_BREAK = 163;

const HID_USAGE_GENERIC_SYSCTL_SYS_DBG_BREAK = 164;

const HID_USAGE_GENERIC_SYSCTL_UNDOCK = 161;

const HID_USAGE_GENERIC_SYSCTL_WAKE = 131;

const HID_USAGE_GENERIC_SYSCTL_WARM_RESTART = 143;

const HID_USAGE_GENERIC_SYSTEM_CTL = 128;

const HID_USAGE_GENERIC_SYSTEM_DISPLAY_ROTATION_LOCK_BUTTON = 201;

const HID_USAGE_GENERIC_SYSTEM_DISPLAY_ROTATION_LOCK_SLIDER_SWITCH = 202;

const HID_USAGE_GENERIC_TABLET_PC_SYSTEM_CTL = 9;

const HID_USAGE_GENERIC_VBRX = 67;

const HID_USAGE_GENERIC_VBRY = 68;

const HID_USAGE_GENERIC_VBRZ = 69;

const HID_USAGE_GENERIC_VNO = 70;

const HID_USAGE_GENERIC_VX = 64;

const HID_USAGE_GENERIC_VY = 65;

const HID_USAGE_GENERIC_VZ = 66;

const HID_USAGE_GENERIC_WHEEL = 56;

const HID_USAGE_GENERIC_X = 48;

const HID_USAGE_GENERIC_Y = 49;

const HID_USAGE_GENERIC_Z = 50;

const HID_USAGE_KEYBOARD_CAPS_LOCK = 57;

const HID_USAGE_KEYBOARD_DELETE = 42;

const HID_USAGE_KEYBOARD_DELETE_FORWARD = 76;

const HID_USAGE_KEYBOARD_ESCAPE = 41;

const HID_USAGE_KEYBOARD_F1 = 58;

const HID_USAGE_KEYBOARD_F10 = 67;

const HID_USAGE_KEYBOARD_F11 = 68;

const HID_USAGE_KEYBOARD_F12 = 69;

const HID_USAGE_KEYBOARD_F13 = 104;

const HID_USAGE_KEYBOARD_F14 = 105;

const HID_USAGE_KEYBOARD_F15 = 106;

const HID_USAGE_KEYBOARD_F16 = 107;

const HID_USAGE_KEYBOARD_F17 = 108;

const HID_USAGE_KEYBOARD_F18 = 109;

const HID_USAGE_KEYBOARD_F19 = 110;

const HID_USAGE_KEYBOARD_F2 = 59;

const HID_USAGE_KEYBOARD_F20 = 111;

const HID_USAGE_KEYBOARD_F21 = 112;

const HID_USAGE_KEYBOARD_F22 = 113;

const HID_USAGE_KEYBOARD_F23 = 114;

const HID_USAGE_KEYBOARD_F24 = 115;

const HID_USAGE_KEYBOARD_F3 = 60;

const HID_USAGE_KEYBOARD_F4 = 61;

const HID_USAGE_KEYBOARD_F5 = 62;

const HID_USAGE_KEYBOARD_F6 = 63;

const HID_USAGE_KEYBOARD_F7 = 64;

const HID_USAGE_KEYBOARD_F8 = 65;

const HID_USAGE_KEYBOARD_F9 = 66;

const HID_USAGE_KEYBOARD_LALT = 226;

const HID_USAGE_KEYBOARD_LCTRL = 224;

const HID_USAGE_KEYBOARD_LGUI = 227;

const HID_USAGE_KEYBOARD_LSHFT = 225;

const HID_USAGE_KEYBOARD_NOEVENT = 0;

const HID_USAGE_KEYBOARD_NUM_LOCK = 83;

const HID_USAGE_KEYBOARD_ONE = 30;

const HID_USAGE_KEYBOARD_POSTFAIL = 2;

const HID_USAGE_KEYBOARD_PRINT_SCREEN = 70;

const HID_USAGE_KEYBOARD_RALT = 230;

const HID_USAGE_KEYBOARD_RCTRL = 228;

const HID_USAGE_KEYBOARD_RETURN = 40;

const HID_USAGE_KEYBOARD_RGUI = 231;

const HID_USAGE_KEYBOARD_ROLLOVER = 1;

const HID_USAGE_KEYBOARD_RSHFT = 229;

const HID_USAGE_KEYBOARD_SCROLL_LOCK = 71;

const HID_USAGE_KEYBOARD_UNDEFINED = 3;

const HID_USAGE_KEYBOARD_ZERO = 39;

const HID_USAGE_KEYBOARD_aA = 4;

const HID_USAGE_KEYBOARD_zZ = 29;

const HID_USAGE_PAGE_ALPHANUMERIC = 20;

const HID_USAGE_PAGE_ARCADE = 145;

const HID_USAGE_PAGE_BARCODE_SCANNER = 140;

const HID_USAGE_PAGE_BUTTON = 9;

const HID_USAGE_PAGE_CAMERA_CONTROL = 144;

const HID_USAGE_PAGE_CONSUMER = 12;

const HID_USAGE_PAGE_DIGITIZER = 13;

const HID_USAGE_PAGE_GAME = 5;

const HID_USAGE_PAGE_GENERIC = 1;

const HID_USAGE_PAGE_GENERIC_DEVICE = 6;

const HID_USAGE_PAGE_HAPTICS = 14;

const HID_USAGE_PAGE_KEYBOARD = 7;

const HID_USAGE_PAGE_LED = 8;

const HID_USAGE_PAGE_LIGHTING_ILLUMINATION = 89;

const HID_USAGE_PAGE_MAGNETIC_STRIPE_READER = 142;

const HID_USAGE_PAGE_ORDINAL = 10;

const HID_USAGE_PAGE_PID = 15;

const HID_USAGE_PAGE_SENSOR = 32;

const HID_USAGE_PAGE_SIMULATION = 2;

const HID_USAGE_PAGE_SPORT = 4;

const HID_USAGE_PAGE_TELEPHONY = 11;

const HID_USAGE_PAGE_UNDEFINED = 0;

const HID_USAGE_PAGE_UNICODE = 16;

const HID_USAGE_PAGE_VR = 3;

const HID_USAGE_PAGE_WEIGHING_DEVICE = 141;

const HKEY_CLASSES_ROOT = -2147483648;

const HKEY_CURRENT_CONFIG = -2147483643;

const HKEY_CURRENT_USER = -2147483647;

const HKEY_CURRENT_USER_LOCAL_SETTINGS = -2147483641;

const HKEY_DYN_DATA = -2147483642;

const HKEY_LOCAL_MACHINE = -2147483646;

const HKEY_PERFORMANCE_DATA = -2147483644;

const HKEY_PERFORMANCE_NLSTEXT = -2147483552;

const HKEY_PERFORMANCE_TEXT = -2147483568;

const HKEY_USERS = -2147483645;

const HTBORDER = 18;

const HTBOTTOM = 15;

const HTBOTTOMLEFT = 16;

const HTBOTTOMRIGHT = 17;

const HTCAPTION = 2;

const HTCLIENT = 1;

const HTCLOSE = 20;

const HTERROR = -2;

const HTGROWBOX = 4;

const HTHELP = 21;

const HTHSCROLL = 6;

const HTLEFT = 10;

const HTMAXBUTTON = 9;

const HTMENU = 5;

const HTMINBUTTON = 8;

const HTNOWHERE = 0;

const HTREDUCE = 8;

const HTRIGHT = 11;

const HTSIZE = 4;

const HTSYSMENU = 3;

const HTTOP = 12;

const HTTOPLEFT = 13;

const HTTOPRIGHT = 14;

const HTTPREQUEST_PROXYSETTING_DEFAULT = 0;

const HTTPREQUEST_PROXYSETTING_DIRECT = 1;

const HTTPREQUEST_PROXYSETTING_PRECONFIG = 0;

const HTTPREQUEST_PROXYSETTING_PROXY = 2;

const HTTPREQUEST_SETCREDENTIALS_FOR_PROXY = 1;

const HTTPREQUEST_SETCREDENTIALS_FOR_SERVER = 0;

const HTTRANSPARENT = -1;

const HTVSCROLL = 7;

const HTZOOM = 9;

/// Places the window at the bottom of the Z order.
///
/// If the <i>hWnd</i> parameter identifies a topmost window, the window loses
/// its topmost status and is placed at the bottom of all other windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deferwindowpos>.
const HWND_BOTTOM = 1;

const HWND_BROADCAST = 65535;

const HWND_DESKTOP = 0;

const HWND_MESSAGE = -3;

/// Places the window above all non-topmost windows (that is, behind all topmost
/// windows).
///
/// This flag has no effect if the window is already a non-topmost window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deferwindowpos>.
const HWND_NOTOPMOST = -2;

/// Places the window at the top of the Z order.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deferwindowpos>.
const HWND_TOP = 0;

/// Places the window above all non-topmost windows.
///
/// The window maintains its topmost position even when it is deactivated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-deferwindowpos>.
const HWND_TOPMOST = -1;

const ICON_BIG = 1;

const ICON_SMALL = 0;

const ICON_SMALL2 = 2;

/// Standard arrow and small hourglass cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_APPSTARTING = Pointer<Utf16>.fromAddress(32650);

/// Standard arrow cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_ARROW = Pointer<Utf16>.fromAddress(32512);

/// Crosshair cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_CROSS = Pointer<Utf16>.fromAddress(32515);

/// Hand cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_HAND = Pointer<Utf16>.fromAddress(32649);

/// Arrow and question mark cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_HELP = Pointer<Utf16>.fromAddress(32651);

/// I-beam cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_IBEAM = Pointer<Utf16>.fromAddress(32513);

/// Slashed circle cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_NO = Pointer<Utf16>.fromAddress(32648);

/// Four-pointed arrow cursor pointing north, south, east, and west.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_SIZEALL = Pointer<Utf16>.fromAddress(32646);

/// Double-pointed arrow cursor pointing northeast and southwest.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_SIZENESW = Pointer<Utf16>.fromAddress(32643);

/// Double-pointed arrow cursor pointing north and south.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_SIZENS = Pointer<Utf16>.fromAddress(32645);

/// Double-pointed arrow cursor pointing northwest and southeast.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_SIZENWSE = Pointer<Utf16>.fromAddress(32642);

/// Double-pointed arrow cursor pointing west and east.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_SIZEWE = Pointer<Utf16>.fromAddress(32644);

/// Vertical arrow cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_UPARROW = Pointer<Utf16>.fromAddress(32516);

/// Hourglass cursor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-geticoninfo>.
final IDC_WAIT = Pointer<Utf16>.fromAddress(32514);

final IDI_APPLICATION = Pointer<Utf16>.fromAddress(32512);

final IDI_ASTERISK = Pointer<Utf16>.fromAddress(32516);

/// Hand-shaped icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadicona>.
final IDI_ERROR = Pointer<Utf16>.fromAddress(32513);

final IDI_EXCLAMATION = Pointer<Utf16>.fromAddress(32515);

final IDI_HAND = Pointer<Utf16>.fromAddress(32513);

/// Asterisk icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadicona>.
final IDI_INFORMATION = Pointer<Utf16>.fromAddress(32516);

final IDI_QUESTION = Pointer<Utf16>.fromAddress(32514);

/// Security Shield icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadicona>.
final IDI_SHIELD = Pointer<Utf16>.fromAddress(32518);

/// Exclamation point icon.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winuser/nf-winuser-loadicona>.
final IDI_WARNING = Pointer<Utf16>.fromAddress(32515);

final IDI_WINLOGO = Pointer<Utf16>.fromAddress(32517);

const IMAGE_ENHMETAFILE = 3;

const INFINITE = 4294967295;

/// There is no interactive user.
///
/// The trust provider performs the verification action without the user's
/// assistance.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wintrust/nf-wintrust-winverifytrust>.
const INVALID_HANDLE_VALUE = -1;

const IOCTL_DISK_BASE = 7;

const IOCTL_DISK_CHECK_VERIFY = 477184;

const IOCTL_DISK_CONTROLLER_NUMBER = 458820;

/// Initializes the specified disk and disk partition table using the
/// information in the CREATE_DISK structure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_create_disk>.
const IOCTL_DISK_CREATE_DISK = 507992;

/// Removes the boot signature from the master boot record, so that the disk
/// will be formatted from sector zero to the end of the disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_delete_drive_layout>.
const IOCTL_DISK_DELETE_DRIVE_LAYOUT = 508160;

const IOCTL_DISK_EJECT_MEDIA = 477192;

const IOCTL_DISK_FIND_NEW_DEVICES = 477208;

const IOCTL_DISK_FORMAT_DRIVE = 508876;

/// Formats a specified, contiguous set of tracks on a floppy disk.
///
/// To provide additional parameters, use IOCTL_DISK_FORMAT_TRACKS_EXinstead.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_format_tracks>.
const IOCTL_DISK_FORMAT_TRACKS = 507928;

/// Formats a specified, contiguous set of tracks on a floppy disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_format_tracks_ex>.
const IOCTL_DISK_FORMAT_TRACKS_EX = 507948;

/// Retrieves the disk cache configuration data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_cache_information>.
const IOCTL_DISK_GET_CACHE_INFORMATION = 475348;

/// Retrieves information about the physical disk's geometry: type, number of
/// cylinders, tracks per cylinder, sectors per track, and bytes per sector.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_drive_geometry>.
const IOCTL_DISK_GET_DRIVE_GEOMETRY = 458752;

/// Retrieves extended information about the physical disk's geometry: type,
/// number of cylinders, tracks per cylinder, sectors per track, and bytes per
/// sector.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_drive_geometry_ex>.
const IOCTL_DISK_GET_DRIVE_GEOMETRY_EX = 458912;

/// Retrieves information for each entry in the partition tables for a disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_drive_layout>.
const IOCTL_DISK_GET_DRIVE_LAYOUT = 475148;

/// Retrieves extended information for each entry in the partition tables for a
/// disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_drive_layout_ex>.
const IOCTL_DISK_GET_DRIVE_LAYOUT_EX = 458832;

/// Retrieves the length of the specified disk, volume, or partition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_length_info>.
const IOCTL_DISK_GET_LENGTH_INFO = 475228;

const IOCTL_DISK_GET_MEDIA_TYPES = 461824;

/// Retrieves information about the type, size, and nature of a disk partition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_partition_info>.
const IOCTL_DISK_GET_PARTITION_INFO = 475140;

/// Retrieves extended information about the type, size, and nature of a disk
/// partition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_get_partition_info_ex>.
const IOCTL_DISK_GET_PARTITION_INFO_EX = 458824;

/// Enlarges the specified partition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_grow_partition>.
const IOCTL_DISK_GROW_PARTITION = 508112;

const IOCTL_DISK_HISTOGRAM_DATA = 458804;

const IOCTL_DISK_HISTOGRAM_RESET = 458808;

const IOCTL_DISK_HISTOGRAM_STRUCTURE = 458800;

/// Determines whether the specified disk is writable.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_is_writable>.
const IOCTL_DISK_IS_WRITABLE = 458788;

const IOCTL_DISK_LOAD_MEDIA = 477196;

const IOCTL_DISK_LOGGING = 458792;

const IOCTL_DISK_MEDIA_REMOVAL = 477188;

/// Enables performance counters that provide disk performance information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_performance>.
const IOCTL_DISK_PERFORMANCE = 458784;

/// Disables the performance counters that provide disk performance information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_performance_off>.
const IOCTL_DISK_PERFORMANCE_OFF = 458848;

/// Directs the disk device to map one or more blocks to its spare-block pool.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_reassign_blocks>.
const IOCTL_DISK_REASSIGN_BLOCKS = 507932;

/// Directs the disk device to map one or more blocks to its spare-block pool.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_reassign_blocks_ex>.
const IOCTL_DISK_REASSIGN_BLOCKS_EX = 508068;

const IOCTL_DISK_RELEASE = 477204;

const IOCTL_DISK_REQUEST_DATA = 458816;

const IOCTL_DISK_REQUEST_STRUCTURE = 458812;

const IOCTL_DISK_RESERVE = 477200;

const IOCTL_DISK_SENSE_DEVICE = 459744;

/// Sets the disk configuration data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_set_cache_information>.
const IOCTL_DISK_SET_CACHE_INFORMATION = 508120;

/// Partitions a disk as specified by drive layout and partition information
/// data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_set_drive_layout>.
const IOCTL_DISK_SET_DRIVE_LAYOUT = 507920;

/// Partitions a disk according to the specified drive layout and partition
/// information data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_set_drive_layout_ex>.
const IOCTL_DISK_SET_DRIVE_LAYOUT_EX = 507988;

/// Sets partition information for the specified disk partition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_set_partition_info>.
const IOCTL_DISK_SET_PARTITION_INFO = 507912;

/// Sets partition information for the specified disk partition, including
/// layout information for AT and EFI (Extensible Firmware Interface)
/// partitions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_set_partition_info_ex>.
const IOCTL_DISK_SET_PARTITION_INFO_EX = 507980;

const IOCTL_DISK_UPDATE_DRIVE_SIZE = 508104;

/// Invalidates the cached partition table and re-enumerates the device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_update_properties>.
const IOCTL_DISK_UPDATE_PROPERTIES = 459072;

/// Verifies the specified extent on a fixed disk.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_disk_verify>.
const IOCTL_DISK_VERIFY = 458772;

const IOCTL_STORAGE_ALLOCATE_BC_STREAM = 3004420;

const IOCTL_STORAGE_ATTRIBUTE_MANAGEMENT = 3005596;

const IOCTL_STORAGE_BASE = 45;

const IOCTL_STORAGE_BREAK_RESERVATION = 2969620;

const IOCTL_STORAGE_CHECK_PRIORITY_HINT_SUPPORT = 2955392;

/// Determines whether media are accessible for a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_check_verify>.
const IOCTL_STORAGE_CHECK_VERIFY = 2967552;

const IOCTL_STORAGE_CHECK_VERIFY2 = 2951168;

/// Windows applications can use this control code to specify a maximum
/// operational power consumption level for a storage device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_device_power_cap>.
const IOCTL_STORAGE_DEVICE_POWER_CAP = 2956436;

const IOCTL_STORAGE_DEVICE_TELEMETRY_NOTIFY = 3002820;

const IOCTL_STORAGE_DEVICE_TELEMETRY_QUERY_CAPS = 3002824;

const IOCTL_STORAGE_DIAGNOSTIC = 2956448;

/// Enables or disables the mechanism that ejects media.
///
/// Disabling the mechanism locks the drive.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_ejection_control>.
const IOCTL_STORAGE_EJECTION_CONTROL = 2951488;

/// Ejects media from a SCSI device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_eject_media>.
const IOCTL_STORAGE_EJECT_MEDIA = 2967560;

const IOCTL_STORAGE_ENABLE_IDLE_POWER = 2956416;

const IOCTL_STORAGE_EVENT_NOTIFICATION = 2956432;

const IOCTL_STORAGE_FAILURE_PREDICTION_CONFIG = 2953476;

const IOCTL_STORAGE_FIND_NEW_DEVICES = 2967576;

/// Windows applications can use this control code to activate a firmware image
/// on a specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_firmware_activate>.
const IOCTL_STORAGE_FIRMWARE_ACTIVATE = 3005448;

/// Windows applications can use this control code to download a firmware image
/// to the target device, but not activate it.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_firmware_download>.
const IOCTL_STORAGE_FIRMWARE_DOWNLOAD = 3005444;

/// Windows applications can use this control code to query the storage device
/// for detailed firmware information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_firmware_get_info>.
const IOCTL_STORAGE_FIRMWARE_GET_INFO = 2956288;

const IOCTL_STORAGE_FREE_BC_STREAM = 3004424;

const IOCTL_STORAGE_GET_BC_PROPERTIES = 2971648;

const IOCTL_STORAGE_GET_COUNTERS = 2953480;

const IOCTL_STORAGE_GET_DEVICE_INTERNAL_LOG = 2956484;

/// Retrieves the device type, device number, and, for a partitionable device,
/// the partition number of a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_get_device_number>.
const IOCTL_STORAGE_GET_DEVICE_NUMBER = 2953344;

const IOCTL_STORAGE_GET_DEVICE_NUMBER_EX = 2953348;

const IOCTL_STORAGE_GET_DEVICE_TELEMETRY = 3002816;

const IOCTL_STORAGE_GET_DEVICE_TELEMETRY_RAW = 3002828;

/// Retrieves the hotplug configuration of the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_get_hotplug_info>.
const IOCTL_STORAGE_GET_HOTPLUG_INFO = 2952212;

const IOCTL_STORAGE_GET_IDLE_POWERUP_REASON = 2956420;

const IOCTL_STORAGE_GET_LB_PROVISIONING_MAP_RESOURCES = 2970632;

/// Retrieves the serial number of a USB device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_get_media_serial_number>.
const IOCTL_STORAGE_GET_MEDIA_SERIAL_NUMBER = 2952208;

/// Retrieves the geometry information for the device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_get_media_types>.
const IOCTL_STORAGE_GET_MEDIA_TYPES = 2952192;

/// Retrieves information about the types of media supported by a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_get_media_types_ex>.
const IOCTL_STORAGE_GET_MEDIA_TYPES_EX = 2952196;

const IOCTL_STORAGE_GET_PHYSICAL_ELEMENT_STATUS = 2956452;

/// Loads media into a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_load_media>.
const IOCTL_STORAGE_LOAD_MEDIA = 2967564;

const IOCTL_STORAGE_LOAD_MEDIA2 = 2951180;

/// The IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES control code communicates
/// attribute information to the volume manager and storage system device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_manage_data_set_attributes>.
const IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES = 2987012;

/// Enables or disables media change notification.
///
/// Disabling media change notification prevents the GUID_IO_MEDIA_ARRIVAL and
/// GUID_IO_MEDIA_REMOVAL events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_mcn_control>.
const IOCTL_STORAGE_MCN_CONTROL = 2951492;

/// Enables or disables the mechanism that ejects media, for those devices
/// possessing that locking capability.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_media_removal>.
const IOCTL_STORAGE_MEDIA_REMOVAL = 2967556;

const IOCTL_STORAGE_PERSISTENT_RESERVE_IN = 2969624;

const IOCTL_STORAGE_PERSISTENT_RESERVE_OUT = 3002396;

const IOCTL_STORAGE_POWER_ACTIVE = 2956424;

const IOCTL_STORAGE_POWER_IDLE = 2956428;

const IOCTL_STORAGE_PREDICT_FAILURE = 2953472;

/// Windows applications can use this control code to return properties of a
/// storage device or adapter.
///
/// The request indicates the kind of information to retrieve, such as inquiry
/// data for a device or capabilities and limitations of an adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_protocol_command>.
const IOCTL_STORAGE_PROTOCOL_COMMAND = 3003328;

/// Windows applications can use this control code to return the properties of a
/// storage device or adapter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_query_property>.
const IOCTL_STORAGE_QUERY_PROPERTY = 2954240;

/// Retrieves the geometry information for the device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_read_capacity>.
const IOCTL_STORAGE_READ_CAPACITY = 2969920;

/// The IOCTL_STORAGE_REINITIALIZE_MEDIA ioctl (winioctl.h) offloads the erasure
/// process to the storage device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_reinitialize_media>.
const IOCTL_STORAGE_REINITIALIZE_MEDIA = 2987584;

const IOCTL_STORAGE_RELEASE = 2967572;

const IOCTL_STORAGE_REMOVE_ELEMENT_AND_TRUNCATE = 2956480;

const IOCTL_STORAGE_RESERVE = 2967568;

const IOCTL_STORAGE_RESET_BUS = 2969600;

const IOCTL_STORAGE_RESET_DEVICE = 2969604;

/// The IOCTL_STORAGE_RPMB_COMMAND ioctl (winioctl.h) sends an RPMB command to
/// the underlying storage device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_rpmb_command>.
const IOCTL_STORAGE_RPMB_COMMAND = 2956440;

/// Sets the hotplug configuration of the specified device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_set_hotplug_info>.
const IOCTL_STORAGE_SET_HOTPLUG_INFO = 3001368;

const IOCTL_STORAGE_SET_PROPERTY = 2987004;

/// Windows applications can use this control code to set the temperature
/// threshold of a device (when it's supported by the device).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_storage_set_temperature_threshold>.
const IOCTL_STORAGE_SET_TEMPERATURE_THRESHOLD = 3002880;

const IOCTL_STORAGE_START_DATA_INTEGRITY_CHECK = 3004548;

const IOCTL_STORAGE_STOP_DATA_INTEGRITY_CHECK = 3004552;

const IOCTL_VOLUME_BASE = 86;

/// Retrieves the physical location of a specified volume on one or more disks.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winioctl/ni-winioctl-ioctl_volume_get_volume_disk_extents>.
const IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS = 5636096;

const KF_ALTDOWN = 8192;

const KF_DLGMODE = 2048;

const KF_EXTENDED = 256;

const KF_MENUMODE = 4096;

const KF_REPEAT = 16384;

const KF_UP = 32768;

/// An Open or Save As dialog box sends the LBSELCHSTRING registered message to
/// your hook procedure when the selection changes in any of the list boxes or
/// combo boxes of the dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/lbselchstring>.
const LBSELCHSTRING = 'commdlg_LBSelChangedNotify';

const LC_INTERIORS = 128;

const LC_MARKER = 4;

const LC_NONE = 0;

const LC_POLYLINE = 2;

const LC_POLYMARKER = 8;

const LC_STYLED = 32;

const LC_WIDE = 16;

const LC_WIDESTYLED = 64;

const LF_FACESIZE = 32;

const LF_FULLFACESIZE = 64;

const LLMHF_INJECTED = 1;

const LLMHF_LOWER_IL_INJECTED = 2;

const LOCALE_SYSTEM_DEFAULT = 2048;

const LOCALE_USER_DEFAULT = 1024;

const MAILSLOT_NO_MESSAGE = 4294967295;

const MAILSLOT_WAIT_FOREVER = 4294967295;

const MAXIMUM_ALLOWED = 33554432;

const MAX_PATH = 260;

const MCIERR_BAD_CONSTANT = 290;

const MCIERR_BAD_INTEGER = 270;

const MCIERR_BAD_TIME_FORMAT = 293;

const MCIERR_BASE = 256;

const MCIERR_CANNOT_LOAD_DRIVER = 266;

const MCIERR_CANNOT_USE_ALL = 279;

const MCIERR_CREATEWINDOW = 347;

const MCIERR_CUSTOM_DRIVER_BASE = 512;

const MCIERR_DEVICE_LENGTH = 310;

const MCIERR_DEVICE_LOCKED = 288;

const MCIERR_DEVICE_NOT_INSTALLED = 306;

const MCIERR_DEVICE_NOT_READY = 276;

const MCIERR_DEVICE_OPEN = 265;

const MCIERR_DEVICE_ORD_LENGTH = 311;

const MCIERR_DEVICE_TYPE_REQUIRED = 287;

const MCIERR_DRIVER = 278;

const MCIERR_DRIVER_INTERNAL = 272;

const MCIERR_DUPLICATE_ALIAS = 289;

const MCIERR_DUPLICATE_FLAGS = 295;

const MCIERR_EXTENSION_NOT_FOUND = 281;

const MCIERR_EXTRA_CHARACTERS = 305;

const MCIERR_FILENAME_REQUIRED = 304;

const MCIERR_FILE_NOT_FOUND = 275;

const MCIERR_FILE_NOT_SAVED = 286;

const MCIERR_FILE_READ = 348;

const MCIERR_FILE_WRITE = 349;

const MCIERR_FLAGS_NOT_COMPATIBLE = 284;

const MCIERR_GET_CD = 307;

const MCIERR_HARDWARE = 262;

const MCIERR_ILLEGAL_FOR_AUTO_OPEN = 303;

const MCIERR_INTERNAL = 277;

const MCIERR_INVALID_DEVICE_ID = 257;

const MCIERR_INVALID_DEVICE_NAME = 263;

const MCIERR_INVALID_FILE = 296;

const MCIERR_MISSING_COMMAND_STRING = 267;

const MCIERR_MISSING_DEVICE_NAME = 292;

const MCIERR_MISSING_PARAMETER = 273;

const MCIERR_MISSING_STRING_ARGUMENT = 269;

const MCIERR_MULTIPLE = 280;

const MCIERR_MUST_USE_SHAREABLE = 291;

const MCIERR_NEW_REQUIRES_ALIAS = 299;

const MCIERR_NONAPPLICABLE_FUNCTION = 302;

const MCIERR_NOTIFY_ON_AUTO_OPEN = 300;

const MCIERR_NO_CLOSING_QUOTE = 294;

const MCIERR_NO_ELEMENT_ALLOWED = 301;

const MCIERR_NO_IDENTITY = 350;

const MCIERR_NO_INTEGER = 312;

const MCIERR_NO_WINDOW = 346;

const MCIERR_NULL_PARAMETER_BLOCK = 297;

const MCIERR_OUTOFRANGE = 282;

const MCIERR_OUT_OF_MEMORY = 264;

const MCIERR_PARAM_OVERFLOW = 268;

const MCIERR_PARSER_INTERNAL = 271;

const MCIERR_SEQ_DIV_INCOMPATIBLE = 336;

const MCIERR_SEQ_NOMIDIPRESENT = 343;

const MCIERR_SEQ_PORTUNSPECIFIED = 342;

const MCIERR_SEQ_PORT_INUSE = 337;

const MCIERR_SEQ_PORT_MAPNODEVICE = 339;

const MCIERR_SEQ_PORT_MISCERROR = 340;

const MCIERR_SEQ_PORT_NONEXISTENT = 338;

const MCIERR_SEQ_TIMER = 341;

const MCIERR_SET_CD = 308;

const MCIERR_SET_DRIVE = 309;

const MCIERR_UNNAMED_RESOURCE = 298;

const MCIERR_UNRECOGNIZED_COMMAND = 261;

const MCIERR_UNRECOGNIZED_KEYWORD = 259;

const MCIERR_UNSUPPORTED_FUNCTION = 274;

const MCIERR_WAVE_INPUTSINUSE = 322;

const MCIERR_WAVE_INPUTSUNSUITABLE = 328;

const MCIERR_WAVE_INPUTUNSPECIFIED = 325;

const MCIERR_WAVE_OUTPUTSINUSE = 320;

const MCIERR_WAVE_OUTPUTSUNSUITABLE = 326;

const MCIERR_WAVE_OUTPUTUNSPECIFIED = 324;

const MCIERR_WAVE_SETINPUTINUSE = 323;

const MCIERR_WAVE_SETINPUTUNSUITABLE = 329;

const MCIERR_WAVE_SETOUTPUTINUSE = 321;

const MCIERR_WAVE_SETOUTPUTUNSUITABLE = 327;

/// The MCI_BREAK command sets a break key for an MCI device.
///
/// MCI supports this command directly rather than passing it to the device. Any
/// MCI application can use this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-break>.
const MCI_BREAK = 2065;

/// The MCI_CLOSE command releases access to a device or file.
///
/// All devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-close>.
const MCI_CLOSE = 2052;

/// The MCI_COPY command copies data to the clipboard.
///
/// Digital-video devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-copy>.
const MCI_COPY = 2130;

/// The MCI_CUE command cues a device so that playback or recording begins with
/// minimum delay.
///
/// Digital-video, VCR, and waveform-audio devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-cue>.
const MCI_CUE = 2096;

/// The MCI_CUT command removes data from the file and copies it to the
/// clipboard.
///
/// Digital-video devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-cut>.
const MCI_CUT = 2129;

/// The MCI_DELETE command removes data from the file.
///
/// Digital-video and waveform-audio devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-delete>.
const MCI_DELETE = 2134;

/// The MCI_ESCAPE command sends a string directly to the device.
///
/// Videodisc devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-escape>.
const MCI_ESCAPE = 2053;

/// The MCI_FREEZE command freezes motion on the display.
///
/// Digital-video, video-overlay, and VCR devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-freeze>.
const MCI_FREEZE = 2116;

const MCI_FROM = 4;

/// The MCI_GETDEVCAPS command retrieves static information about a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-getdevcaps>.
const MCI_GETDEVCAPS = 2059;

/// The MCI_INFO command retrieves string information from a device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-info>.
const MCI_INFO = 2058;

const MCI_INFO_COPYRIGHT = 8192;

const MCI_INFO_FILE = 512;

const MCI_INFO_MEDIA_IDENTITY = 2048;

const MCI_INFO_MEDIA_UPC = 1024;

const MCI_INFO_NAME = 4096;

const MCI_INFO_PRODUCT = 256;

/// The MCI_LOAD command loads a file.
///
/// Digital-video and video-overlay devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-load>.
const MCI_LOAD = 2128;

const MCI_NOTIFY = 1;

/// The MCI_OPEN command initializes a device or file.
///
/// All devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-open>.
const MCI_OPEN = 2051;

const MCI_OPEN_ALIAS = 1024;

const MCI_OPEN_ELEMENT = 512;

const MCI_OPEN_ELEMENT_ID = 2048;

const MCI_OPEN_SHAREABLE = 256;

const MCI_OPEN_TYPE = 8192;

const MCI_OPEN_TYPE_ID = 4096;

/// The MCI_PASTE command pastes data from the clipboard into a file.
///
/// Digital-video devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-paste>.
const MCI_PASTE = 2131;

/// The MCI_PAUSE command pauses the current action.
///
/// CD audio, digital-video, MIDI sequencer, VCR, videodisc, and waveform-audio
/// devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-pause>.
const MCI_PAUSE = 2057;

/// The MCI_PLAY command signals the device to begin transmitting output data.
///
/// CD audio, digital-video, MIDI sequencer, videodisc, VCR, and waveform-audio
/// devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-play>.
const MCI_PLAY = 2054;

/// The MCI_PUT command sets the source, destination, and frame rectangles.
///
/// Digital-video and video-overlay devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-put>.
const MCI_PUT = 2114;

/// The MCI_REALIZE command causes a graphic device to realize its palette into
/// a device context (DC).
///
/// Digital-video devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-realize>.
const MCI_REALIZE = 2112;

/// The MCI_RECORD command starts recording from the current position or from
/// one specified location to another specified location.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-record>.
const MCI_RECORD = 2063;

/// The MCI_RESUME command causes a paused device to resume the paused
/// operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-resume>.
const MCI_RESUME = 2133;

/// The MCI_SAVE command saves the current file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-save>.
const MCI_SAVE = 2067;

/// The MCI_SEEK command changes the current position in the content as quickly
/// as possible.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-seek>.
const MCI_SEEK = 2055;

const MCI_SEEK_TO_END = 512;

const MCI_SEEK_TO_START = 256;

const MCI_SEQ_STATUS_COPYRIGHT = 16396;

const MCI_SEQ_STATUS_DIVTYPE = 16394;

const MCI_SEQ_STATUS_MASTER = 16392;

const MCI_SEQ_STATUS_NAME = 16395;

const MCI_SEQ_STATUS_OFFSET = 16393;

const MCI_SEQ_STATUS_PORT = 16387;

const MCI_SEQ_STATUS_SLAVE = 16391;

const MCI_SEQ_STATUS_TEMPO = 16386;

/// The MCI_SET command sets device information.
///
/// CD audio, digital-video, MIDI sequencer, VCR, videodisc, video-overlay, and
/// waveform-audio devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-set>.
const MCI_SET = 2061;

/// The MCI_SPIN command starts the device spinning up or down.
///
/// Videodisc devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-spin>.
const MCI_SPIN = 2060;

/// The MCI_STATUS command retrieves information about an MCI device.
///
/// All devices recognize this command. Information is returned in the dwReturn
/// member of the structure identified by the lpStatus parameter.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-status>.
const MCI_STATUS = 2068;

const MCI_STATUS_CURRENT_TRACK = 8;

const MCI_STATUS_ITEM = 256;

const MCI_STATUS_LENGTH = 1;

const MCI_STATUS_MEDIA_PRESENT = 5;

const MCI_STATUS_MODE = 4;

const MCI_STATUS_NUMBER_OF_TRACKS = 3;

const MCI_STATUS_POSITION = 2;

const MCI_STATUS_READY = 7;

const MCI_STATUS_START = 512;

const MCI_STATUS_TIME_FORMAT = 6;

/// The MCI_STEP command steps the player one or more frames.
///
/// Digital-video, VCR, and CAV-format videodisc devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-step>.
const MCI_STEP = 2062;

/// The MCI_STOP command stops all play and record sequences, unloads all play
/// buffers, and ceases display of video images.
///
/// CD audio, digital-video, MIDI sequencer, videodisc, VCR, and waveform-audio
/// devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-stop>.
const MCI_STOP = 2056;

/// The MCI_SYSINFO command retrieves information about MCI devices.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-sysinfo>.
const MCI_SYSINFO = 2064;

const MCI_TO = 8;

const MCI_TRACK = 16;

/// The MCI_UNFREEZE command restores motion to an area of the video buffer
/// frozen with the MCI_FREEZE command.
///
/// Digital-video, VCR, and video-overlay devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-unfreeze>.
const MCI_UNFREEZE = 2117;

/// The MCI_UPDATE command updates the display rectangle.
///
/// Digital-video devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-update>.
const MCI_UPDATE = 2132;

const MCI_WAIT = 2;

/// The MCI_WHERE command obtains the clipping rectangle for the video device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-where>.
const MCI_WHERE = 2115;

/// Specifies the window and the window characteristics for graphic devices.
///
/// Digital-video, and video-overlay devices recognize this command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mci-window>.
const MCI_WINDOW = 2113;

const MC_CAPS_BRIGHTNESS = 2;

const MC_CAPS_COLOR_TEMPERATURE = 8;

const MC_CAPS_CONTRAST = 4;

const MC_CAPS_DEGAUSS = 64;

const MC_CAPS_DISPLAY_AREA_POSITION = 128;

const MC_CAPS_DISPLAY_AREA_SIZE = 256;

const MC_CAPS_MONITOR_TECHNOLOGY_TYPE = 1;

const MC_CAPS_NONE = 0;

const MC_CAPS_RED_GREEN_BLUE_DRIVE = 32;

const MC_CAPS_RED_GREEN_BLUE_GAIN = 16;

const MC_CAPS_RESTORE_FACTORY_COLOR_DEFAULTS = 2048;

const MC_CAPS_RESTORE_FACTORY_DEFAULTS = 1024;

const MC_RESTORE_FACTORY_DEFAULTS_ENABLES_MONITOR_SETTINGS = 4096;

const MC_SUPPORTED_COLOR_TEMPERATURE_10000K = 64;

const MC_SUPPORTED_COLOR_TEMPERATURE_11500K = 128;

const MC_SUPPORTED_COLOR_TEMPERATURE_4000K = 1;

const MC_SUPPORTED_COLOR_TEMPERATURE_5000K = 2;

const MC_SUPPORTED_COLOR_TEMPERATURE_6500K = 4;

const MC_SUPPORTED_COLOR_TEMPERATURE_7500K = 8;

const MC_SUPPORTED_COLOR_TEMPERATURE_8200K = 16;

const MC_SUPPORTED_COLOR_TEMPERATURE_9300K = 32;

const MC_SUPPORTED_COLOR_TEMPERATURE_NONE = 0;

const MEM_4MB_PAGES = 2147483648;

const MEM_COALESCE_PLACEHOLDERS = 1;

const MEM_DIFFERENT_IMAGE_BASE_OK = 8388608;

const MEM_PHYSICAL = 4194304;

const MEM_ROTATE = 8388608;

const MEM_TOP_DOWN = 1048576;

const MEM_WRITE_WATCH = 2097152;

const METHOD_BUFFERED = 0;

const METHOD_IN_DIRECT = 1;

const METHOD_NEITHER = 3;

const METHOD_OUT_DIRECT = 2;

const MIDIERR_BADOPENMODE = 70;

const MIDIERR_DONT_CONTINUE = 71;

const MIDIERR_INVALIDSETUP = 69;

const MIDIERR_LASTERROR = 71;

const MIDIERR_NODEVICE = 68;

const MIDIERR_NOMAP = 66;

const MIDIERR_NOTREADY = 67;

const MIDIERR_STILLPLAYING = 65;

const MIDIERR_UNPREPARED = 64;

const MMSYSERR_ALLOCATED = 4;

const MMSYSERR_BADDB = 14;

const MMSYSERR_BADDEVICEID = 2;

const MMSYSERR_BADERRNUM = 9;

const MMSYSERR_DELETEERROR = 18;

const MMSYSERR_ERROR = 1;

const MMSYSERR_HANDLEBUSY = 12;

const MMSYSERR_INVALFLAG = 10;

const MMSYSERR_INVALHANDLE = 5;

const MMSYSERR_INVALIDALIAS = 13;

const MMSYSERR_INVALPARAM = 11;

const MMSYSERR_KEYNOTFOUND = 15;

const MMSYSERR_LASTERROR = 21;

const MMSYSERR_MOREDATA = 21;

const MMSYSERR_NODRIVER = 6;

const MMSYSERR_NODRIVERCB = 20;

const MMSYSERR_NOERROR = 0;

const MMSYSERR_NOMEM = 7;

const MMSYSERR_NOTENABLED = 3;

const MMSYSERR_NOTSUPPORTED = 8;

const MMSYSERR_READERROR = 16;

const MMSYSERR_VALNOTFOUND = 19;

const MMSYSERR_WRITEERROR = 17;

/// The MM_JOY1BUTTONDOWN message notifies the window that has captured joystick
/// JOYSTICKID1 that a button has been pressed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy1buttondown>.
const MM_JOY1BUTTONDOWN = 949;

/// The MM_JOY1BUTTONUP message notifies the window that has captured joystick
/// JOYSTICKID1 that a button has been released.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy1buttonup>.
const MM_JOY1BUTTONUP = 951;

/// The MM_JOY1MOVE message notifies the window that has captured joystick
/// JOYSTICKID1 that the joystick position has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy1move>.
const MM_JOY1MOVE = 928;

/// The MM_JOY1ZMOVE message notifies the window that has captured joystick
/// JOYSTICKID1 that the joystick position on the z-axis has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy1zmove>.
const MM_JOY1ZMOVE = 930;

/// The MM_JOY2BUTTONDOWN message notifies the window that has captured joystick
/// JOYSTICKID2 that a button has been pressed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy2buttondown>.
const MM_JOY2BUTTONDOWN = 950;

/// The MM_JOY2BUTTONUP message notifies the window that has captured joystick
/// JOYSTICKID2 that a button has been released.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy2buttonup>.
const MM_JOY2BUTTONUP = 952;

/// The MM_JOY2MOVE message notifies the window that has captured joystick
/// JOYSTICKID2 that the joystick position has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy2move>.
const MM_JOY2MOVE = 929;

/// The MM_JOY2ZMOVE message notifies the window that has captured joystick
/// JOYSTICKID2 that the joystick position on the z-axis has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-joy2zmove>.
const MM_JOY2ZMOVE = 931;

/// The MM_MCINOTIFY message notifies an application that an MCI device has
/// completed an operation.
///
/// MCI devices send this message only when the MCI_NOTIFY flag is used.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mcinotify>.
const MM_MCINOTIFY = 953;

/// The MM_MCISIGNAL message is sent to a window to notify an application that
/// an MCI device has reached a position defined in a previous signal (
/// MCI_SIGNAL) command.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mcisignal>.
const MM_MCISIGNAL = 971;

/// The MM_MIM_CLOSE message is sent to a window when a MIDI input device is
/// closed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mim-close>.
const MM_MIM_CLOSE = 962;

/// The MM_MIM_DATA message is sent to a window when a complete MIDI message is
/// received by a MIDI input device.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mim-data>.
const MM_MIM_DATA = 963;

/// The MM_MIM_ERROR message is sent to a window when an invalid MIDI message is
/// received.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mim-error>.
const MM_MIM_ERROR = 965;

/// The MM_MIM_LONGDATA message is sent to a window when either a complete MIDI
/// system-exclusive message is received or when a buffer has been filled with
/// system-exclusive data.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mim-longdata>.
const MM_MIM_LONGDATA = 964;

/// The MM_MIM_LONGERROR message is sent to a window when an invalid or
/// incomplete MIDI system-exclusive message is received.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mim-longerror>.
const MM_MIM_LONGERROR = 966;

/// The MM_MIM_MOREDATA message is sent to a callback window when a MIDI message
/// is received by a MIDI input device but the application is not processing
/// MIM_DATA messages fast enough to keep up with the input device driver.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mim-moredata>.
const MM_MIM_MOREDATA = 972;

/// The MM_MIM_OPEN message is sent to a window when a MIDI input device is
/// opened.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mim-open>.
const MM_MIM_OPEN = 961;

/// The MM_MIXM_CONTROL_CHANGE message is sent by a mixer device to notify an
/// application that the state of a control associated with an audio line has
/// changed.
///
/// The application should refresh its display and cached values for the
/// specified control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mixm-control-change>.
const MM_MIXM_CONTROL_CHANGE = 977;

/// The MM_MIXM_LINE_CHANGE message is sent by a mixer device to notify an
/// application that the state of an audio line on the specified device has
/// changed.
///
/// The application should refresh its display and cached values for the
/// specified audio line.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mixm-line-change>.
const MM_MIXM_LINE_CHANGE = 976;

/// The MM_MOM_CLOSE message is sent to a window when a MIDI output device is
/// closed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mom-close>.
const MM_MOM_CLOSE = 968;

/// The MM_MOM_DONE message is sent to a window when the specified MIDI
/// system-exclusive or stream buffer has been played and is being returned to
/// the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mom-done>.
const MM_MOM_DONE = 969;

/// The MM_MOM_OPEN message is sent to a window when a MIDI output device is
/// opened.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mom-open>.
const MM_MOM_OPEN = 967;

/// The MM_MOM_POSITIONCB message is sent to a window when an MEVT_F_CALLBACK
/// event is reached in the MIDI output stream.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-mom-positioncb>.
const MM_MOM_POSITIONCB = 970;

/// The MM_WIM_CLOSE message is sent to a window when a waveform-audio input
/// device is closed.
///
/// The device handle is no longer valid after this message has been sent.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-wim-close>.
const MM_WIM_CLOSE = 959;

/// The MM_WIM_DATA message is sent to a window when waveform-audio data is
/// present in the input buffer and the buffer is being returned to the
/// application.
///
/// The message can be sent either when the buffer is full or after the
/// waveInReset function is called.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-wim-data>.
const MM_WIM_DATA = 960;

/// The MM_WIM_OPEN message is sent to a window when a waveform-audio input
/// device is opened.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-wim-open>.
const MM_WIM_OPEN = 958;

/// The MM_WOM_CLOSE message is sent to a window when a waveform-audio output
/// device is closed.
///
/// The device handle is no longer valid after this message has been sent.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-wom-close>.
const MM_WOM_CLOSE = 956;

/// The MM_WOM_DONE message is sent to a window when the given output buffer is
/// being returned to the application.
///
/// Buffers are returned to the application when they have been played, or as
/// the result of a call to the waveOutReset function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-wom-done>.
const MM_WOM_DONE = 957;

/// The MM_WOM_OPEN message is sent to a window when the given waveform-audio
/// output device is opened.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Multimedia/mm-wom-open>.
const MM_WOM_OPEN = 955;

/// Retrieves the menu handle for the current window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/mn-gethmenu>.
const MN_GETHMENU = 481;

const MONITORINFOF_PRIMARY = 1;

const MS_CLIPAROUNDCURSOR = 2;

const MS_INVERTCOLORS = 4;

const MS_SHOWMAGNIFIEDCURSOR = 1;

const NINF_KEY = 1;

const NIN_BALLOONHIDE = 1027;

const NIN_BALLOONSHOW = 1026;

const NIN_BALLOONTIMEOUT = 1028;

const NIN_BALLOONUSERCLICK = 1029;

const NIN_POPUPCLOSE = 1031;

const NIN_POPUPOPEN = 1030;

const NIN_SELECT = 1024;

const NOTIFYICON_VERSION = 3;

const NOTIFYICON_VERSION_4 = 4;

const NOTIFY_FOR_ALL_SESSIONS = 1;

const NOTIFY_FOR_THIS_SESSION = 0;

const OBSOLETE_DISK_GET_WRITE_CACHE_STATE = 475356;

const OBSOLETE_IOCTL_STORAGE_RESET_BUS = 3002368;

const OBSOLETE_IOCTL_STORAGE_RESET_DEVICE = 3002372;

/// Advances the current position of a progress bar by a specified increment and
/// redraws the bar to reflect the new position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-deltapos>.
const PBM_DELTAPOS = 1027;

/// Gets the color of the progress bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-getbarcolor>.
const PBM_GETBARCOLOR = 1039;

/// Gets the background color of the progress bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-getbkcolor>.
const PBM_GETBKCOLOR = 1038;

/// Retrieves the current position of the progress bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-getpos>.
const PBM_GETPOS = 1032;

/// Retrieves information about the current high and low limits of a given
/// progress bar control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-getrange>.
const PBM_GETRANGE = 1031;

/// Gets the state of the progress bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-getstate>.
const PBM_GETSTATE = 1041;

/// Retrieves the step increment from a progress bar.
///
/// The step increment is the amount by which the progress bar increases its
/// current position whenever it receives a PBM_STEPIT message. By default, the
/// step increment is set to 10.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-getstep>.
const PBM_GETSTEP = 1037;

/// Sets the color of the progress indicator bar in the progress bar control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setbarcolor>.
const PBM_SETBARCOLOR = 1033;

/// Sets the background color in the progress bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setbkcolor>.
const PBM_SETBKCOLOR = 8193;

/// Sets the progress bar to marquee mode.
///
/// This causes the progress bar to move like a marquee.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setmarquee>.
const PBM_SETMARQUEE = 1034;

/// Sets the current position for a progress bar and redraws the bar to reflect
/// the new position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setpos>.
const PBM_SETPOS = 1026;

/// Sets the minimum and maximum values for a progress bar and redraws the bar
/// to reflect the new range.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setrange>.
const PBM_SETRANGE = 1025;

/// Sets the minimum and maximum values for a progress bar to 32-bit values, and
/// redraws the bar to reflect the new range.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setrange32>.
const PBM_SETRANGE32 = 1030;

/// Sets the state of the progress bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setstate>.
const PBM_SETSTATE = 1040;

/// Specifies the step increment for a progress bar.
///
/// The step increment is the amount by which the progress bar increases its
/// current position whenever it receives a PBM_STEPIT message. By default, the
/// step increment is set to 10.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-setstep>.
const PBM_SETSTEP = 1028;

/// Advances the current position for a progress bar by the step increment and
/// redraws the bar to reflect the new position.
///
/// An application sets the step increment by sending the PBM_SETSTEP message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/pbm-stepit>.
const PBM_STEPIT = 1029;

const PBST_ERROR = 2;

const PBST_NORMAL = 1;

const PBST_PAUSED = 3;

const PBS_MARQUEE = 8;

const PBS_SMOOTH = 1;

const PBS_SMOOTHREVERSE = 16;

const PBS_VERTICAL = 4;

/// Notifies applications that the battery power is low.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/pbt-apmbatterylow>.
const PBT_APMBATTERYLOW = 9;

/// Notifies applications of a change in the power status of the computer, such
/// as a switch from battery power to A/C.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/pbt-apmpowerstatuschange>.
const PBT_APMPOWERSTATUSCHANGE = 10;

/// Notifies applications that the system is resuming from sleep or hibernation.
///
/// This event is delivered every time the system resumes and does not indicate
/// whether a user is present.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/pbt-apmresumeautomatic>.
const PBT_APMRESUMEAUTOMATIC = 18;

/// Notifies applications that the system has resumed operation after being
/// suspended.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/pbt-apmresumesuspend>.
const PBT_APMRESUMESUSPEND = 7;

/// Notifies applications that the computer is about to enter a suspended state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/pbt-apmsuspend>.
const PBT_APMSUSPEND = 4;

/// Power setting change event sent with a WM_POWERBROADCAST window message or
/// in a HandlerEx notification callback for services.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/pbt-powersettingchange>.
const PBT_POWERSETTINGCHANGE = 32787;

const PC_INTERIORS = 128;

const PC_NONE = 0;

const PC_PATHS = 512;

const PC_POLYGON = 1;

const PC_POLYPOLYGON = 256;

const PC_RECTANGLE = 2;

const PC_SCANLINE = 8;

const PC_STYLED = 32;

const PC_TRAPEZOID = 4;

const PC_WIDE = 16;

const PC_WIDESTYLED = 64;

const PC_WINDPOLYGON = 4;

const PIPE_UNLIMITED_INSTANCES = 255;

final PKEY_DeviceClass_Characteristics = PropertyKey.fromComponents(
  0x4321918b,
  0xf69e,
  0x470d,
  Uint8List.fromList(const [0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b]),
  29,
);

final PKEY_DeviceClass_ClassCoInstallers = PropertyKey.fromComponents(
  0x713d1703,
  0xa2e2,
  0x49f5,
  Uint8List.fromList(const [0x92, 0x14, 0x56, 0x47, 0x2e, 0xf3, 0xda, 0x5c]),
  2,
);

final PKEY_DeviceClass_ClassInstaller = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  5,
);

final PKEY_DeviceClass_ClassName = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  3,
);

final PKEY_DeviceClass_DefaultService = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  11,
);

final PKEY_DeviceClass_DevType = PropertyKey.fromComponents(
  0x4321918b,
  0xf69e,
  0x470d,
  Uint8List.fromList(const [0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b]),
  27,
);

final PKEY_DeviceClass_Exclusive = PropertyKey.fromComponents(
  0x4321918b,
  0xf69e,
  0x470d,
  Uint8List.fromList(const [0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b]),
  28,
);

final PKEY_DeviceClass_Icon = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  4,
);

final PKEY_DeviceClass_IconPath = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  12,
);

final PKEY_DeviceClass_LowerFilters = PropertyKey.fromComponents(
  0x4321918b,
  0xf69e,
  0x470d,
  Uint8List.fromList(const [0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b]),
  20,
);

final PKEY_DeviceClass_Name = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  2,
);

final PKEY_DeviceClass_NoDisplayClass = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  8,
);

final PKEY_DeviceClass_NoInstallClass = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  7,
);

final PKEY_DeviceClass_NoUseClass = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  10,
);

final PKEY_DeviceClass_PropPageProvider = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  6,
);

final PKEY_DeviceClass_Security = PropertyKey.fromComponents(
  0x4321918b,
  0xf69e,
  0x470d,
  Uint8List.fromList(const [0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b]),
  25,
);

final PKEY_DeviceClass_SecuritySDS = PropertyKey.fromComponents(
  0x4321918b,
  0xf69e,
  0x470d,
  Uint8List.fromList(const [0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b]),
  26,
);

final PKEY_DeviceClass_SilentInstall = PropertyKey.fromComponents(
  0x259abffc,
  0x50a7,
  0x47ce,
  Uint8List.fromList(const [0xaf, 0x8, 0x68, 0xc9, 0xa7, 0xd7, 0x33, 0x66]),
  9,
);

final PKEY_DeviceClass_UpperFilters = PropertyKey.fromComponents(
  0x4321918b,
  0xf69e,
  0x470d,
  Uint8List.fromList(const [0xa5, 0xde, 0x4d, 0x88, 0xc7, 0x5a, 0xd2, 0x4b]),
  19,
);

final PKEY_DeviceDisplay_Address = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  51,
);

final PKEY_DeviceDisplay_AlwaysShowDeviceAsConnected =
    PropertyKey.fromComponents(
      0x78c34fc8,
      0x104a,
      0x4aca,
      Uint8List.fromList(const [
        0x9e,
        0xa4,
        0x52,
        0x4d,
        0x52,
        0x99,
        0x6e,
        0x57,
      ]),
      101,
    );

final PKEY_DeviceDisplay_AssociationArray = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  80,
);

final PKEY_DeviceDisplay_BaselineExperienceId = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  78,
);

final PKEY_DeviceDisplay_Category = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  90,
);

final PKEY_DeviceDisplay_CategoryGroup_Desc = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  94,
);

final PKEY_DeviceDisplay_CategoryGroup_Icon = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  95,
);

final PKEY_DeviceDisplay_Category_Desc_Plural = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  92,
);

final PKEY_DeviceDisplay_Category_Desc_Singular = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  91,
);

final PKEY_DeviceDisplay_Category_Icon = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  93,
);

final PKEY_DeviceDisplay_DeviceDescription1 = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  81,
);

final PKEY_DeviceDisplay_DeviceDescription2 = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  82,
);

final PKEY_DeviceDisplay_DeviceFunctionSubRank = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  100,
);

final PKEY_DeviceDisplay_DiscoveryMethod = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  52,
);

final PKEY_DeviceDisplay_ExperienceId = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  89,
);

final PKEY_DeviceDisplay_FriendlyName = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12288,
);

final PKEY_DeviceDisplay_Icon = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  57,
);

final PKEY_DeviceDisplay_InstallInProgress = PropertyKey.fromComponents(
  0x83da6326,
  0x97a6,
  0x4088,
  Uint8List.fromList(const [0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29]),
  9,
);

final PKEY_DeviceDisplay_IsAuthenticated = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  54,
);

final PKEY_DeviceDisplay_IsConnected = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  55,
);

final PKEY_DeviceDisplay_IsDefaultDevice = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  86,
);

final PKEY_DeviceDisplay_IsDeviceUniquelyIdentifiable =
    PropertyKey.fromComponents(
      0x78c34fc8,
      0x104a,
      0x4aca,
      Uint8List.fromList(const [
        0x9e,
        0xa4,
        0x52,
        0x4d,
        0x52,
        0x99,
        0x6e,
        0x57,
      ]),
      79,
    );

final PKEY_DeviceDisplay_IsEncrypted = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  53,
);

final PKEY_DeviceDisplay_IsLocalMachine = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  70,
);

final PKEY_DeviceDisplay_IsMetadataSearchInProgress =
    PropertyKey.fromComponents(
      0x78c34fc8,
      0x104a,
      0x4aca,
      Uint8List.fromList(const [
        0x9e,
        0xa4,
        0x52,
        0x4d,
        0x52,
        0x99,
        0x6e,
        0x57,
      ]),
      72,
    );

final PKEY_DeviceDisplay_IsNetworkDevice = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  85,
);

final PKEY_DeviceDisplay_IsNotInterestingForDisplay =
    PropertyKey.fromComponents(
      0x78c34fc8,
      0x104a,
      0x4aca,
      Uint8List.fromList(const [
        0x9e,
        0xa4,
        0x52,
        0x4d,
        0x52,
        0x99,
        0x6e,
        0x57,
      ]),
      74,
    );

final PKEY_DeviceDisplay_IsNotWorkingProperly = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  83,
);

final PKEY_DeviceDisplay_IsPaired = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  56,
);

final PKEY_DeviceDisplay_IsSharedDevice = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  84,
);

final PKEY_DeviceDisplay_IsShowInDisconnectedState = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  68,
);

final PKEY_DeviceDisplay_Last_Connected = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  67,
);

final PKEY_DeviceDisplay_Last_Seen = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  66,
);

final PKEY_DeviceDisplay_LaunchDeviceStageFromExplorer =
    PropertyKey.fromComponents(
      0x78c34fc8,
      0x104a,
      0x4aca,
      Uint8List.fromList(const [
        0x9e,
        0xa4,
        0x52,
        0x4d,
        0x52,
        0x99,
        0x6e,
        0x57,
      ]),
      77,
    );

final PKEY_DeviceDisplay_LaunchDeviceStageOnDeviceConnect =
    PropertyKey.fromComponents(
      0x78c34fc8,
      0x104a,
      0x4aca,
      Uint8List.fromList(const [
        0x9e,
        0xa4,
        0x52,
        0x4d,
        0x52,
        0x99,
        0x6e,
        0x57,
      ]),
      76,
    );

final PKEY_DeviceDisplay_Manufacturer = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  8192,
);

final PKEY_DeviceDisplay_MetadataCabinet = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  87,
);

final PKEY_DeviceDisplay_MetadataChecksum = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  73,
);

final PKEY_DeviceDisplay_MetadataPath = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  71,
);

final PKEY_DeviceDisplay_ModelName = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  8194,
);

final PKEY_DeviceDisplay_ModelNumber = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  8195,
);

final PKEY_DeviceDisplay_PrimaryCategory = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  97,
);

final PKEY_DeviceDisplay_RequiresPairingElevation = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  88,
);

final PKEY_DeviceDisplay_RequiresUninstallElevation =
    PropertyKey.fromComponents(
      0x78c34fc8,
      0x104a,
      0x4aca,
      Uint8List.fromList(const [
        0x9e,
        0xa4,
        0x52,
        0x4d,
        0x52,
        0x99,
        0x6e,
        0x57,
      ]),
      99,
    );

final PKEY_DeviceDisplay_UnpairUninstall = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  98,
);

final PKEY_DeviceDisplay_Version = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  65,
);

final PKEY_DeviceInterfaceClass_DefaultInterface = PropertyKey.fromComponents(
  0x14c83a99,
  0xb3f,
  0x44b7,
  Uint8List.fromList(const [0xbe, 0x4c, 0xa1, 0x78, 0xd3, 0x99, 0x5, 0x64]),
  2,
);

final PKEY_DeviceInterface_ClassGuid = PropertyKey.fromComponents(
  0x26e516e,
  0xb814,
  0x414b,
  Uint8List.fromList(const [0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22]),
  4,
);

final PKEY_DeviceInterface_Enabled = PropertyKey.fromComponents(
  0x26e516e,
  0xb814,
  0x414b,
  Uint8List.fromList(const [0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22]),
  3,
);

/// The PKEY_DeviceInterface_FriendlyName property.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/CoreAudio/pkey-deviceinterface-friendlyname>.
final PKEY_DeviceInterface_FriendlyName = PropertyKey.fromComponents(
  0x26e516e,
  0xb814,
  0x414b,
  Uint8List.fromList(const [0x83, 0xcd, 0x85, 0x6d, 0x6f, 0xef, 0x48, 0x22]),
  2,
);

final PKEY_Device_AdditionalSoftwareRequested = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  19,
);

final PKEY_Device_Address = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  30,
);

final PKEY_Device_BIOSVersion = PropertyKey.fromComponents(
  0xeaee7f1d,
  0x6a33,
  0x44d1,
  Uint8List.fromList(const [0x94, 0x41, 0x5f, 0x46, 0xde, 0xf2, 0x31, 0x98]),
  9,
);

final PKEY_Device_BaseContainerId = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  38,
);

final PKEY_Device_BusNumber = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  23,
);

final PKEY_Device_BusRelations = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  7,
);

final PKEY_Device_BusReportedDeviceDesc = PropertyKey.fromComponents(
  0x540b947e,
  0x8b40,
  0x45bc,
  Uint8List.fromList(const [0xa8, 0xa2, 0x6a, 0xb, 0x89, 0x4c, 0xbd, 0xa2]),
  4,
);

final PKEY_Device_BusTypeGuid = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  21,
);

final PKEY_Device_Capabilities = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  17,
);

final PKEY_Device_Characteristics = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  29,
);

final PKEY_Device_Children = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  9,
);

final PKEY_Device_Class = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  9,
);

final PKEY_Device_ClassGuid = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  10,
);

final PKEY_Device_CompatibleIds = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  4,
);

final PKEY_Device_ConfigFlags = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  12,
);

final PKEY_Device_ContainerId = PropertyKey.fromComponents(
  0x8c7ed206,
  0x3f8a,
  0x4827,
  Uint8List.fromList(const [0xb3, 0xab, 0xae, 0x9e, 0x1f, 0xae, 0xfc, 0x6c]),
  2,
);

final PKEY_Device_DHP_Rebalance_Policy = PropertyKey.fromComponents(
  0x540b947e,
  0x8b40,
  0x45bc,
  Uint8List.fromList(const [0xa8, 0xa2, 0x6a, 0xb, 0x89, 0x4c, 0xbd, 0xa2]),
  2,
);

final PKEY_Device_DevNodeStatus = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  2,
);

final PKEY_Device_DevType = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  27,
);

/// The PKEY_Device_DeviceDesc property contains the device description of the
/// endpoint device (for example, &\#0034;Speakers&\#0034;).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/CoreAudio/pkey-device-devicedesc>.
final PKEY_Device_DeviceDesc = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  2,
);

final PKEY_Device_Driver = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  11,
);

final PKEY_Device_DriverCoInstallers = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  11,
);

final PKEY_Device_DriverDate = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  2,
);

final PKEY_Device_DriverDesc = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  4,
);

final PKEY_Device_DriverInfPath = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  5,
);

final PKEY_Device_DriverInfSection = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  6,
);

final PKEY_Device_DriverInfSectionExt = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  7,
);

final PKEY_Device_DriverLogoLevel = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  15,
);

final PKEY_Device_DriverPropPageProvider = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  10,
);

final PKEY_Device_DriverProvider = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  9,
);

final PKEY_Device_DriverRank = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  14,
);

final PKEY_Device_DriverVersion = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  3,
);

final PKEY_Device_EjectionRelations = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  4,
);

final PKEY_Device_EnumeratorName = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  24,
);

final PKEY_Device_Exclusive = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  28,
);

/// The PKEY_Device_FriendlyName property contains the friendly name of the
/// endpoint device (for example, &\#0034;Speakers (XYZ Audio Adapter)&\#0034;).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/CoreAudio/pkey-device-friendlyname>.
final PKEY_Device_FriendlyName = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  14,
);

final PKEY_Device_FriendlyNameAttributes = PropertyKey.fromComponents(
  0x80d81ea6,
  0x7473,
  0x4b0c,
  Uint8List.fromList(const [0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b]),
  3,
);

final PKEY_Device_GenericDriverInstalled = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  18,
);

final PKEY_Device_HardwareIds = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  3,
);

final PKEY_Device_InstallInProgress = PropertyKey.fromComponents(
  0x83da6326,
  0x97a6,
  0x4088,
  Uint8List.fromList(const [0x94, 0x53, 0xa1, 0x92, 0x3f, 0x57, 0x3b, 0x29]),
  9,
);

final PKEY_Device_InstallState = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  36,
);

final PKEY_Device_InstanceId = PropertyKey.fromComponents(
  0x78c34fc8,
  0x104a,
  0x4aca,
  Uint8List.fromList(const [0x9e, 0xa4, 0x52, 0x4d, 0x52, 0x99, 0x6e, 0x57]),
  256,
);

final PKEY_Device_IsAssociateableByUserAction = PropertyKey.fromComponents(
  0x80d81ea6,
  0x7473,
  0x4b0c,
  Uint8List.fromList(const [0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b]),
  7,
);

final PKEY_Device_Legacy = PropertyKey.fromComponents(
  0x80497100,
  0x8c73,
  0x48b9,
  Uint8List.fromList(const [0xaa, 0xd9, 0xce, 0x38, 0x7e, 0x19, 0xc5, 0x6e]),
  3,
);

final PKEY_Device_LegacyBusType = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  22,
);

final PKEY_Device_LocationInfo = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  15,
);

final PKEY_Device_LocationPaths = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  37,
);

final PKEY_Device_LowerFilters = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  20,
);

final PKEY_Device_Manufacturer = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  13,
);

final PKEY_Device_ManufacturerAttributes = PropertyKey.fromComponents(
  0x80d81ea6,
  0x7473,
  0x4b0c,
  Uint8List.fromList(const [0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b]),
  4,
);

final PKEY_Device_MatchingDeviceId = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  8,
);

final PKEY_Device_ModelId = PropertyKey.fromComponents(
  0x80d81ea6,
  0x7473,
  0x4b0c,
  Uint8List.fromList(const [0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b]),
  2,
);

final PKEY_Device_NoConnectSound = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  17,
);

final PKEY_Device_Numa_Node = PropertyKey.fromComponents(
  0x540b947e,
  0x8b40,
  0x45bc,
  Uint8List.fromList(const [0xa8, 0xa2, 0x6a, 0xb, 0x89, 0x4c, 0xbd, 0xa2]),
  3,
);

final PKEY_Device_PDOName = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  16,
);

final PKEY_Device_Parent = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  8,
);

final PKEY_Device_PowerData = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  32,
);

final PKEY_Device_PowerRelations = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  6,
);

final PKEY_Device_PresenceNotForDevice = PropertyKey.fromComponents(
  0x80d81ea6,
  0x7473,
  0x4b0c,
  Uint8List.fromList(const [0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b]),
  5,
);

final PKEY_Device_ProblemCode = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  3,
);

final PKEY_Device_RemovalPolicy = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  33,
);

final PKEY_Device_RemovalPolicyDefault = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  34,
);

final PKEY_Device_RemovalPolicyOverride = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  35,
);

final PKEY_Device_RemovalRelations = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  5,
);

final PKEY_Device_Reported = PropertyKey.fromComponents(
  0x80497100,
  0x8c73,
  0x48b9,
  Uint8List.fromList(const [0xaa, 0xd9, 0xce, 0x38, 0x7e, 0x19, 0xc5, 0x6e]),
  2,
);

final PKEY_Device_ResourcePickerExceptions = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  13,
);

final PKEY_Device_ResourcePickerTags = PropertyKey.fromComponents(
  0xa8b865dd,
  0x2e3d,
  0x4094,
  Uint8List.fromList(const [0xad, 0x97, 0xe5, 0x93, 0xa7, 0xc, 0x75, 0xd6]),
  12,
);

final PKEY_Device_SafeRemovalRequired = PropertyKey.fromComponents(
  0xafd97640,
  0x86a3,
  0x4210,
  Uint8List.fromList(const [0xb6, 0x7c, 0x28, 0x9c, 0x41, 0xaa, 0xbe, 0x55]),
  2,
);

final PKEY_Device_SafeRemovalRequiredOverride = PropertyKey.fromComponents(
  0xafd97640,
  0x86a3,
  0x4210,
  Uint8List.fromList(const [0xb6, 0x7c, 0x28, 0x9c, 0x41, 0xaa, 0xbe, 0x55]),
  3,
);

final PKEY_Device_Security = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  25,
);

final PKEY_Device_SecuritySDS = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  26,
);

final PKEY_Device_Service = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  6,
);

final PKEY_Device_Siblings = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  10,
);

final PKEY_Device_SignalStrength = PropertyKey.fromComponents(
  0x80d81ea6,
  0x7473,
  0x4b0c,
  Uint8List.fromList(const [0x82, 0x16, 0xef, 0xc1, 0x1a, 0x2c, 0x4c, 0x8b]),
  6,
);

final PKEY_Device_TransportRelations = PropertyKey.fromComponents(
  0x4340a6c5,
  0x93fa,
  0x4706,
  Uint8List.fromList(const [0x97, 0x2c, 0x7b, 0x64, 0x80, 0x8, 0xa5, 0xa7]),
  11,
);

final PKEY_Device_UINumber = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  18,
);

final PKEY_Device_UINumberDescFormat = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  31,
);

final PKEY_Device_UpperFilters = PropertyKey.fromComponents(
  0xa45c254e,
  0xdf1c,
  0x4efd,
  Uint8List.fromList(const [0x80, 0x20, 0x67, 0xd1, 0x46, 0xa8, 0x50, 0xe0]),
  19,
);

final PKEY_DrvPkg_BrandingIcon = PropertyKey.fromComponents(
  0xcf73bb51,
  0x3abf,
  0x44a2,
  Uint8List.fromList(const [0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32]),
  7,
);

final PKEY_DrvPkg_DetailedDescription = PropertyKey.fromComponents(
  0xcf73bb51,
  0x3abf,
  0x44a2,
  Uint8List.fromList(const [0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32]),
  4,
);

final PKEY_DrvPkg_DocumentationLink = PropertyKey.fromComponents(
  0xcf73bb51,
  0x3abf,
  0x44a2,
  Uint8List.fromList(const [0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32]),
  5,
);

final PKEY_DrvPkg_Icon = PropertyKey.fromComponents(
  0xcf73bb51,
  0x3abf,
  0x44a2,
  Uint8List.fromList(const [0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32]),
  6,
);

final PKEY_DrvPkg_Model = PropertyKey.fromComponents(
  0xcf73bb51,
  0x3abf,
  0x44a2,
  Uint8List.fromList(const [0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32]),
  2,
);

final PKEY_DrvPkg_VendorWebSite = PropertyKey.fromComponents(
  0xcf73bb51,
  0x3abf,
  0x44a2,
  Uint8List.fromList(const [0x85, 0xe0, 0x9a, 0x3d, 0xc7, 0xa1, 0x21, 0x32]),
  3,
);

final PKEY_FunctionInstance = PropertyKey.fromComponents(
  0x8c0c253,
  0xa154,
  0x4746,
  Uint8List.fromList(const [0x90, 0x5, 0x82, 0xde, 0x53, 0x17, 0x14, 0x8b]),
  1,
);

final PKEY_Hardware_Devinst = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  4097,
);

final PKEY_Hardware_DisplayAttribute = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  5,
);

final PKEY_Hardware_DriverDate = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  11,
);

final PKEY_Hardware_DriverProvider = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  10,
);

final PKEY_Hardware_DriverVersion = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  9,
);

final PKEY_Hardware_Function = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  4099,
);

final PKEY_Hardware_Icon = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  3,
);

final PKEY_Hardware_Image = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  4098,
);

final PKEY_Hardware_Manufacturer = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  6,
);

final PKEY_Hardware_Model = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  7,
);

final PKEY_Hardware_Name = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  2,
);

final PKEY_Hardware_SerialNumber = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  8,
);

final PKEY_Hardware_ShellAttributes = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  4100,
);

final PKEY_Hardware_Status = PropertyKey.fromComponents(
  0x5eaf3ef2,
  0xe0ca,
  0x4598,
  Uint8List.fromList(const [0xbf, 0x6, 0x71, 0xed, 0x1d, 0x9d, 0xd9, 0x53]),
  4096,
);

final PKEY_NAME = PropertyKey.fromComponents(
  0xb725f130,
  0x47ef,
  0x101a,
  Uint8List.fromList(const [0xa5, 0xf1, 0x2, 0x60, 0x8c, 0x9e, 0xeb, 0xac]),
  10,
);

final PKEY_Numa_Proximity_Domain = PropertyKey.fromComponents(
  0x540b947e,
  0x8b40,
  0x45bc,
  Uint8List.fromList(const [0xa8, 0xa2, 0x6a, 0xb, 0x89, 0x4c, 0xbd, 0xa2]),
  1,
);

final PKEY_PNPX_Associated = PropertyKey.fromComponents(
  0x4fc5077e,
  0xb686,
  0x44be,
  Uint8List.fromList(const [0x93, 0xe3, 0x86, 0xca, 0xfe, 0x36, 0x8c, 0xcd]),
  2,
);

final PKEY_PNPX_Category_Desc_NonPlural = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12304,
);

final PKEY_PNPX_CompactSignature = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  28674,
);

final PKEY_PNPX_CompatibleTypes = PropertyKey.fromComponents(
  0x4fc5077e,
  0xb686,
  0x44be,
  Uint8List.fromList(const [0x93, 0xe3, 0x86, 0xca, 0xfe, 0x36, 0x8c, 0xcd]),
  3,
);

final PKEY_PNPX_DeviceCategory = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12292,
);

final PKEY_PNPX_DeviceCategory_Desc = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12293,
);

final PKEY_PNPX_DeviceCertHash = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  28675,
);

final PKEY_PNPX_DomainName = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  20480,
);

final PKEY_PNPX_FirmwareVersion = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12289,
);

final PKEY_PNPX_GlobalIdentity = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4096,
);

final PKEY_PNPX_ID = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4101,
);

final PKEY_PNPX_IPBusEnumerated = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  28688,
);

final PKEY_PNPX_InstallState = PropertyKey.fromComponents(
  0x4fc5077e,
  0xb686,
  0x44be,
  Uint8List.fromList(const [0x93, 0xe3, 0x86, 0xca, 0xfe, 0x36, 0x8c, 0xcd]),
  4,
);

final PKEY_PNPX_Installable = PropertyKey.fromComponents(
  0x4fc5077e,
  0xb686,
  0x44be,
  Uint8List.fromList(const [0x93, 0xe3, 0x86, 0xca, 0xfe, 0x36, 0x8c, 0xcd]),
  1,
);

final PKEY_PNPX_IpAddress = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12297,
);

final PKEY_PNPX_ManufacturerUrl = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  8193,
);

final PKEY_PNPX_MetadataVersion = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4100,
);

final PKEY_PNPX_ModelUrl = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  8196,
);

final PKEY_PNPX_NetworkInterfaceGuid = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12296,
);

final PKEY_PNPX_NetworkInterfaceLuid = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12295,
);

final PKEY_PNPX_PhysicalAddress = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12294,
);

final PKEY_PNPX_PresentationUrl = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  8198,
);

final PKEY_PNPX_RemoteAddress = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4102,
);

final PKEY_PNPX_Removable = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  28672,
);

final PKEY_PNPX_RootProxy = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4103,
);

final PKEY_PNPX_Scopes = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4098,
);

final PKEY_PNPX_SecureChannel = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  28673,
);

final PKEY_PNPX_SerialNumber = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  12290,
);

final PKEY_PNPX_ServiceAddress = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  16384,
);

final PKEY_PNPX_ServiceControlUrl = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  16388,
);

final PKEY_PNPX_ServiceDescUrl = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  16389,
);

final PKEY_PNPX_ServiceEventSubUrl = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  16390,
);

final PKEY_PNPX_ServiceId = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  16385,
);

final PKEY_PNPX_ServiceTypes = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  16386,
);

final PKEY_PNPX_ShareName = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  20482,
);

final PKEY_PNPX_Types = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4097,
);

final PKEY_PNPX_Upc = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  8197,
);

final PKEY_PNPX_XAddrs = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  4099,
);

final PKEY_Pairing_IsWifiOnlyDevice = PropertyKey.fromComponents(
  0x8807cae6,
  0x7db6,
  0x4f10,
  Uint8List.fromList(const [0x8e, 0xe4, 0x43, 0x5e, 0xaa, 0x13, 0x92, 0xbc]),
  16,
);

final PKEY_Pairing_ListItemDefault = PropertyKey.fromComponents(
  0x8807cae6,
  0x7db6,
  0x4f10,
  Uint8List.fromList(const [0x8e, 0xe4, 0x43, 0x5e, 0xaa, 0x13, 0x92, 0xbc]),
  4,
);

final PKEY_Pairing_ListItemDescription = PropertyKey.fromComponents(
  0x8807cae6,
  0x7db6,
  0x4f10,
  Uint8List.fromList(const [0x8e, 0xe4, 0x43, 0x5e, 0xaa, 0x13, 0x92, 0xbc]),
  2,
);

final PKEY_Pairing_ListItemIcon = PropertyKey.fromComponents(
  0x8807cae6,
  0x7db6,
  0x4f10,
  Uint8List.fromList(const [0x8e, 0xe4, 0x43, 0x5e, 0xaa, 0x13, 0x92, 0xbc]),
  3,
);

final PKEY_Pairing_ListItemText = PropertyKey.fromComponents(
  0x8807cae6,
  0x7db6,
  0x4f10,
  Uint8List.fromList(const [0x8e, 0xe4, 0x43, 0x5e, 0xaa, 0x13, 0x92, 0xbc]),
  1,
);

final PKEY_SSDP_AltLocationInfo = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  24576,
);

final PKEY_SSDP_DevLifeTime = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  24577,
);

final PKEY_SSDP_NetworkInterface = PropertyKey.fromComponents(
  0x656a3bb3,
  0xecc0,
  0x43fd,
  Uint8List.fromList(const [0x84, 0x77, 0x4a, 0xe0, 0x40, 0x4a, 0x96, 0xcd]),
  24578,
);

final PKEY_WCN_AssocState = PropertyKey.fromComponents(
  0x88190b88,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  9,
);

final PKEY_WCN_AuthType = PropertyKey.fromComponents(
  0x88190b82,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  3,
);

final PKEY_WCN_ConfigError = PropertyKey.fromComponents(
  0x88190b89,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  10,
);

final PKEY_WCN_ConfigMethods = PropertyKey.fromComponents(
  0x88190b85,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  6,
);

final PKEY_WCN_ConfigState = PropertyKey.fromComponents(
  0x88190b89,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  11,
);

final PKEY_WCN_ConnType = PropertyKey.fromComponents(
  0x88190b84,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  5,
);

final PKEY_WCN_DevicePasswordId = PropertyKey.fromComponents(
  0x88190b89,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  12,
);

final PKEY_WCN_EncryptType = PropertyKey.fromComponents(
  0x88190b83,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  4,
);

final PKEY_WCN_OSVersion = PropertyKey.fromComponents(
  0x88190b89,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  13,
);

final PKEY_WCN_RegistrarType = PropertyKey.fromComponents(
  0x88190b8b,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  15,
);

final PKEY_WCN_RequestType = PropertyKey.fromComponents(
  0x88190b81,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  2,
);

final PKEY_WCN_RfBand = PropertyKey.fromComponents(
  0x88190b87,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  8,
);

final PKEY_WCN_VendorExtension = PropertyKey.fromComponents(
  0x88190b8a,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  14,
);

final PKEY_WCN_Version = PropertyKey.fromComponents(
  0x88190b80,
  0x4684,
  0x11da,
  Uint8List.fromList(const [0xa2, 0x6a, 0x0, 0x2, 0xb3, 0x98, 0x8e, 0x81]),
  1,
);

final PKEY_WNET_Comment = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  7,
);

final PKEY_WNET_DisplayType = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  3,
);

final PKEY_WNET_LocalName = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  5,
);

final PKEY_WNET_Provider = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  8,
);

final PKEY_WNET_RemoteName = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  6,
);

final PKEY_WNET_Scope = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  1,
);

final PKEY_WNET_Type = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  2,
);

final PKEY_WNET_Usage = PropertyKey.fromComponents(
  0xdebda43a,
  0x37b3,
  0x4383,
  Uint8List.fromList(const [0x91, 0xe7, 0x44, 0x98, 0xda, 0x29, 0x95, 0xab]),
  4,
);

const PRINTER_ENUM_CATEGORY_3D = 67108864;

const PRINTER_ENUM_CATEGORY_ALL = 33554432;

const PRINTER_ENUM_CONNECTIONS = 4;

const PRINTER_ENUM_CONTAINER = 32768;

const PRINTER_ENUM_DEFAULT = 1;

const PRINTER_ENUM_EXPAND = 16384;

const PRINTER_ENUM_FAVORITE = 4;

const PRINTER_ENUM_HIDE = 16777216;

const PRINTER_ENUM_ICON1 = 65536;

const PRINTER_ENUM_ICON2 = 131072;

const PRINTER_ENUM_ICON3 = 262144;

const PRINTER_ENUM_ICON4 = 524288;

const PRINTER_ENUM_ICON5 = 1048576;

const PRINTER_ENUM_ICON6 = 2097152;

const PRINTER_ENUM_ICON7 = 4194304;

const PRINTER_ENUM_ICON8 = 8388608;

const PRINTER_ENUM_ICONMASK = 16711680;

const PRINTER_ENUM_LOCAL = 2;

const PRINTER_ENUM_NAME = 8;

const PRINTER_ENUM_NETWORK = 64;

const PRINTER_ENUM_REMOTE = 16;

const PRINTER_ENUM_SHARED = 32;

const PROC_THREAD_ATTRIBUTE_ADDITIVE = 262144;

const PROC_THREAD_ATTRIBUTE_INPUT = 131072;

const PROC_THREAD_ATTRIBUTE_NUMBER = 65535;

const PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE = 131094;

const PROC_THREAD_ATTRIBUTE_THREAD = 65536;

const PRODUCT_ARM64_SERVER = 120;

const PRODUCT_AZURE_NANO_SERVER = 169;

const PRODUCT_AZURE_SERVER_CORE = 168;

const PRODUCT_CLOUD = 178;

const PRODUCT_CLOUDE = 183;

const PRODUCT_CLOUDEN = 186;

const PRODUCT_CLOUDN = 179;

const PRODUCT_CLOUD_HOST_INFRASTRUCTURE_SERVER = 124;

const PRODUCT_CLOUD_STORAGE_SERVER = 110;

const PRODUCT_CONNECTED_CAR = 117;

const PRODUCT_CORE_ARM = 97;

const PRODUCT_CORE_CONNECTED = 111;

const PRODUCT_CORE_CONNECTED_COUNTRYSPECIFIC = 116;

const PRODUCT_CORE_CONNECTED_N = 113;

const PRODUCT_CORE_CONNECTED_SINGLELANGUAGE = 115;

const PRODUCT_DATACENTER_EVALUATION_SERVER_CORE = 159;

const PRODUCT_DATACENTER_NANO_SERVER = 143;

const PRODUCT_DATACENTER_WS_SERVER_CORE = 147;

const PRODUCT_EMBEDDED = 65;

const PRODUCT_EMBEDDED_A = 88;

const PRODUCT_EMBEDDED_AUTOMOTIVE = 85;

const PRODUCT_EMBEDDED_E = 90;

const PRODUCT_EMBEDDED_EVAL = 107;

const PRODUCT_EMBEDDED_E_EVAL = 108;

const PRODUCT_EMBEDDED_INDUSTRY = 89;

const PRODUCT_EMBEDDED_INDUSTRY_A = 86;

const PRODUCT_EMBEDDED_INDUSTRY_A_E = 92;

const PRODUCT_EMBEDDED_INDUSTRY_E = 91;

const PRODUCT_EMBEDDED_INDUSTRY_EVAL = 105;

const PRODUCT_EMBEDDED_INDUSTRY_E_EVAL = 106;

const PRODUCT_ENTERPRISEG = 171;

const PRODUCT_ENTERPRISEGN = 172;

const PRODUCT_ENTERPRISE_SUBSCRIPTION = 140;

const PRODUCT_ENTERPRISE_SUBSCRIPTION_N = 141;

const PRODUCT_HOLOGRAPHIC = 135;

const PRODUCT_HOLOGRAPHIC_BUSINESS = 136;

const PRODUCT_HUBOS = 180;

const PRODUCT_INDUSTRY_HANDHELD = 118;

const PRODUCT_IOTEDGEOS = 187;

/// Windows IoT Enterprise.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo>.
const PRODUCT_IOTENTERPRISE = 188;

const PRODUCT_IOTENTERPRISES = 191;

const PRODUCT_IOTOS = 185;

const PRODUCT_LITE = 189;

const PRODUCT_NANO_SERVER = 109;

const PRODUCT_ONECOREUPDATEOS = 182;

/// Windows 10 Team.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo>.
const PRODUCT_PPI_PRO = 119;

const PRODUCT_PROFESSIONAL_EMBEDDED = 58;

const PRODUCT_PROFESSIONAL_S = 127;

const PRODUCT_PROFESSIONAL_STUDENT = 112;

const PRODUCT_PROFESSIONAL_STUDENT_N = 114;

const PRODUCT_PROFESSIONAL_S_N = 128;

const PRODUCT_PRO_CHINA = 139;

/// Windows 10 Pro Education.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo>.
const PRODUCT_PRO_FOR_EDUCATION = 164;

const PRODUCT_PRO_FOR_EDUCATION_N = 165;

const PRODUCT_PRO_SINGLE_LANGUAGE = 138;

/// Windows 10 Enterprise for Virtual Desktops.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sysinfoapi/nf-sysinfoapi-getproductinfo>.
const PRODUCT_SERVERRDSH = 175;

const PRODUCT_SOLUTION_EMBEDDEDSERVER_CORE = 57;

const PRODUCT_STANDARD_EVALUATION_SERVER_CORE = 160;

const PRODUCT_STANDARD_NANO_SERVER = 144;

const PRODUCT_STANDARD_WS_SERVER_CORE = 148;

const PRODUCT_THINPC = 87;

const PRODUCT_UNLICENSED = 2882382797;

const PRODUCT_UTILITY_VM = 149;

const PRODUCT_XBOX_DURANGOHOSTOS = 196;

const PRODUCT_XBOX_ERAOS = 195;

const PRODUCT_XBOX_GAMEOS = 194;

const PRODUCT_XBOX_SCARLETTHOSTOS = 197;

const PRODUCT_XBOX_SYSTEMOS = 192;

const QS_POINTER = 4096;

const QS_TOUCH = 2048;

const RC_BANDING = 2;

const RC_BIGFONT = 1024;

const RC_BITBLT = 1;

const RC_BITMAP64 = 8;

const RC_DEVBITS = 32768;

const RC_DIBTODEV = 512;

const RC_DI_BITMAP = 128;

const RC_FLOODFILL = 4096;

const RC_GDI20_OUTPUT = 16;

const RC_GDI20_STATE = 32;

const RC_OP_DX_OUTPUT = 16384;

const RC_PALETTE = 256;

const RC_SAVEBITMAP = 64;

const RC_SCALING = 4;

const RC_STRETCHBLT = 2048;

const RC_STRETCHDIB = 8192;

/// Represents the HRESULT value `0x80040154` (`-2147221164`).
const REGDB_E_CLASSNOTREG = HRESULT(0x80040154 - 0x100000000);

/// Represents the HRESULT value `0x80040155` (`-2147221163`).
const REGDB_E_IIDNOTREG = HRESULT(0x80040155 - 0x100000000);

/// Represents the HRESULT value `0x80000015` (`-2147483627`).
const RO_E_CHANGE_NOTIFICATION_IN_PROGRESS = HRESULT(0x80000015 - 0x100000000);

/// Represents the HRESULT value `0x80000013` (`-2147483629`).
const RO_E_CLOSED = HRESULT(0x80000013 - 0x100000000);

/// Represents the HRESULT value `0x80000016` (`-2147483626`).
const RO_E_ERROR_STRING_NOT_FOUND = HRESULT(0x80000016 - 0x100000000);

/// Represents the HRESULT value `0x80000014` (`-2147483628`).
const RO_E_EXCLUSIVE_WRITE = HRESULT(0x80000014 - 0x100000000);

/// Represents the HRESULT value `0x80000012` (`-2147483630`).
const RO_E_INVALID_METADATA_FILE = HRESULT(0x80000012 - 0x100000000);

/// Represents the HRESULT value `0x80000011` (`-2147483631`).
const RO_E_METADATA_INVALID_TYPE_FORMAT = HRESULT(0x80000011 - 0x100000000);

/// Represents the HRESULT value `0x80000010` (`-2147483632`).
const RO_E_METADATA_NAME_IS_NAMESPACE = HRESULT(0x80000010 - 0x100000000);

/// Represents the HRESULT value `0x8000000F` (`-2147483633`).
const RO_E_METADATA_NAME_NOT_FOUND = HRESULT(0x8000000F - 0x100000000);

const RPC_C_AUTHN_DCE_PRIVATE = 1;

const RPC_C_AUTHN_DCE_PUBLIC = 2;

const RPC_C_AUTHN_DEC_PUBLIC = 4;

const RPC_C_AUTHN_DPA = 17;

const RPC_C_AUTHN_GSS_KERBEROS = 16;

const RPC_C_AUTHN_GSS_NEGOTIATE = 9;

const RPC_C_AUTHN_GSS_SCHANNEL = 14;

const RPC_C_AUTHN_MSN = 18;

const RPC_C_AUTHN_NONE = 0;

const RPC_C_AUTHN_WINNT = 10;

const RPC_C_AUTHZ_DCE = 2;

const RPC_C_AUTHZ_DEFAULT = 4294967295;

const RPC_C_AUTHZ_NAME = 1;

const RPC_C_AUTHZ_NONE = 0;

/// Represents the HRESULT value `0x80010106` (`-2147417850`).
const RPC_E_CHANGED_MODE = HRESULT(0x80010106 - 0x100000000);

/// Represents the HRESULT value `0x80010119` (`-2147417831`).
const RPC_E_TOO_LATE = HRESULT(0x80010119 - 0x100000000);

/// Disables the RTS line when the device is opened and leaves it disabled.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
const RTS_CONTROL_DISABLE = 0;

/// Enables the RTS line when the device is opened and leaves it on.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
const RTS_CONTROL_ENABLE = 1;

/// Enables RTS handshaking.
///
/// The driver raises the RTS line when the "type-ahead" (input) buffer is less
/// than one-half full and lowers the RTS line when the buffer is more than
/// three-quarters full. If handshaking is enabled, it is an error for the
/// application to adjust the line by using the <a
/// href="https://docs.microsoft.com/windows/desktop/api/winbase/nf-winbase-escapecommfunction">EscapeCommFunction</a>
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
const RTS_CONTROL_HANDSHAKE = 2;

/// Specifies that the RTS line will be high if bytes are available for
/// transmission.
///
/// After all buffered bytes have been sent, the RTS line will be low.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winbase/ns-winbase-dcb>.
const RTS_CONTROL_TOGGLE = 3;

final RT_ACCELERATOR = Pointer<Utf16>.fromAddress(9);

final RT_ANICURSOR = Pointer<Utf16>.fromAddress(21);

final RT_ANIICON = Pointer<Utf16>.fromAddress(22);

final RT_BITMAP = Pointer<Utf16>.fromAddress(2);

final RT_CURSOR = Pointer<Utf16>.fromAddress(1);

final RT_DIALOG = Pointer<Utf16>.fromAddress(5);

final RT_DLGINCLUDE = Pointer<Utf16>.fromAddress(17);

final RT_FONT = Pointer<Utf16>.fromAddress(8);

final RT_FONTDIR = Pointer<Utf16>.fromAddress(7);

final RT_GROUP_CURSOR = Pointer<Utf16>.fromAddress(12);

final RT_GROUP_ICON = Pointer<Utf16>.fromAddress(14);

final RT_HTML = Pointer<Utf16>.fromAddress(23);

final RT_ICON = Pointer<Utf16>.fromAddress(3);

final RT_MANIFEST = Pointer<Utf16>.fromAddress(24);

final RT_MENU = Pointer<Utf16>.fromAddress(4);

final RT_MESSAGETABLE = Pointer<Utf16>.fromAddress(11);

final RT_PLUGPLAY = Pointer<Utf16>.fromAddress(19);

final RT_RCDATA = Pointer<Utf16>.fromAddress(10);

final RT_STRING = Pointer<Utf16>.fromAddress(6);

final RT_VERSION = Pointer<Utf16>.fromAddress(16);

final RT_VXD = Pointer<Utf16>.fromAddress(20);

const SB_CONST_ALPHA = 1;

const SB_GRAD_RECT = 16;

const SB_GRAD_TRI = 32;

const SB_NONE = 0;

const SB_PIXEL_ALPHA = 2;

const SB_PREMULT_ALPHA = 4;

const SCARD_ABSENT = 1;

const SCARD_AUDIT_CHV_FAILURE = 0;

const SCARD_AUDIT_CHV_SUCCESS = 1;

const SCARD_COLD_RESET = 1;

const SCARD_EJECT_CARD = 3;

/// Represents the HRESULT value `0x80100029` (`-2146435031`).
const SCARD_E_BAD_SEEK = HRESULT(0x80100029 - 0x100000000);

/// Represents the HRESULT value `0x80100002` (`-2146435070`).
const SCARD_E_CANCELLED = HRESULT(0x80100002 - 0x100000000);

/// Represents the HRESULT value `0x8010000E` (`-2146435058`).
const SCARD_E_CANT_DISPOSE = HRESULT(0x8010000E - 0x100000000);

/// Represents the HRESULT value `0x8010001C` (`-2146435044`).
const SCARD_E_CARD_UNSUPPORTED = HRESULT(0x8010001C - 0x100000000);

/// Represents the HRESULT value `0x8010002D` (`-2146435027`).
const SCARD_E_CERTIFICATE_UNAVAILABLE = HRESULT(0x8010002D - 0x100000000);

/// Represents the HRESULT value `0x8010002F` (`-2146435025`).
const SCARD_E_COMM_DATA_LOST = HRESULT(0x8010002F - 0x100000000);

/// Represents the HRESULT value `0x80100023` (`-2146435037`).
const SCARD_E_DIR_NOT_FOUND = HRESULT(0x80100023 - 0x100000000);

/// Represents the HRESULT value `0x8010001B` (`-2146435045`).
const SCARD_E_DUPLICATE_READER = HRESULT(0x8010001B - 0x100000000);

/// Represents the HRESULT value `0x80100024` (`-2146435036`).
const SCARD_E_FILE_NOT_FOUND = HRESULT(0x80100024 - 0x100000000);

/// Represents the HRESULT value `0x80100021` (`-2146435039`).
const SCARD_E_ICC_CREATEORDER = HRESULT(0x80100021 - 0x100000000);

/// Represents the HRESULT value `0x80100020` (`-2146435040`).
const SCARD_E_ICC_INSTALLATION = HRESULT(0x80100020 - 0x100000000);

/// Represents the HRESULT value `0x80100008` (`-2146435064`).
const SCARD_E_INSUFFICIENT_BUFFER = HRESULT(0x80100008 - 0x100000000);

/// Represents the HRESULT value `0x80100015` (`-2146435051`).
const SCARD_E_INVALID_ATR = HRESULT(0x80100015 - 0x100000000);

/// Represents the HRESULT value `0x8010002A` (`-2146435030`).
const SCARD_E_INVALID_CHV = HRESULT(0x8010002A - 0x100000000);

/// Represents the HRESULT value `0x80100003` (`-2146435069`).
const SCARD_E_INVALID_HANDLE = HRESULT(0x80100003 - 0x100000000);

/// Represents the HRESULT value `0x80100004` (`-2146435068`).
const SCARD_E_INVALID_PARAMETER = HRESULT(0x80100004 - 0x100000000);

/// Represents the HRESULT value `0x80100005` (`-2146435067`).
const SCARD_E_INVALID_TARGET = HRESULT(0x80100005 - 0x100000000);

/// Represents the HRESULT value `0x80100011` (`-2146435055`).
const SCARD_E_INVALID_VALUE = HRESULT(0x80100011 - 0x100000000);

/// Represents the HRESULT value `0x80100010` (`-2146435056`).
const SCARD_E_NOT_READY = HRESULT(0x80100010 - 0x100000000);

/// Represents the HRESULT value `0x80100016` (`-2146435050`).
const SCARD_E_NOT_TRANSACTED = HRESULT(0x80100016 - 0x100000000);

/// Represents the HRESULT value `0x80100027` (`-2146435033`).
const SCARD_E_NO_ACCESS = HRESULT(0x80100027 - 0x100000000);

/// Represents the HRESULT value `0x80100025` (`-2146435035`).
const SCARD_E_NO_DIR = HRESULT(0x80100025 - 0x100000000);

/// Represents the HRESULT value `0x80100026` (`-2146435034`).
const SCARD_E_NO_FILE = HRESULT(0x80100026 - 0x100000000);

/// Represents the HRESULT value `0x80100030` (`-2146435024`).
const SCARD_E_NO_KEY_CONTAINER = HRESULT(0x80100030 - 0x100000000);

/// Represents the HRESULT value `0x80100006` (`-2146435066`).
const SCARD_E_NO_MEMORY = HRESULT(0x80100006 - 0x100000000);

/// Represents the HRESULT value `0x80100033` (`-2146435021`).
const SCARD_E_NO_PIN_CACHE = HRESULT(0x80100033 - 0x100000000);

/// Represents the HRESULT value `0x8010002E` (`-2146435026`).
const SCARD_E_NO_READERS_AVAILABLE = HRESULT(0x8010002E - 0x100000000);

/// Represents the HRESULT value `0x8010001D` (`-2146435043`).
const SCARD_E_NO_SERVICE = HRESULT(0x8010001D - 0x100000000);

/// Represents the HRESULT value `0x8010000C` (`-2146435060`).
const SCARD_E_NO_SMARTCARD = HRESULT(0x8010000C - 0x100000000);

/// Represents the HRESULT value `0x8010002C` (`-2146435028`).
const SCARD_E_NO_SUCH_CERTIFICATE = HRESULT(0x8010002C - 0x100000000);

/// Represents the HRESULT value `0x80100019` (`-2146435047`).
const SCARD_E_PCI_TOO_SMALL = HRESULT(0x80100019 - 0x100000000);

/// Represents the HRESULT value `0x80100032` (`-2146435022`).
const SCARD_E_PIN_CACHE_EXPIRED = HRESULT(0x80100032 - 0x100000000);

/// Represents the HRESULT value `0x8010000F` (`-2146435057`).
const SCARD_E_PROTO_MISMATCH = HRESULT(0x8010000F - 0x100000000);

/// Represents the HRESULT value `0x80100017` (`-2146435049`).
const SCARD_E_READER_UNAVAILABLE = HRESULT(0x80100017 - 0x100000000);

/// Represents the HRESULT value `0x8010001A` (`-2146435046`).
const SCARD_E_READER_UNSUPPORTED = HRESULT(0x8010001A - 0x100000000);

/// Represents the HRESULT value `0x80100034` (`-2146435020`).
const SCARD_E_READ_ONLY_CARD = HRESULT(0x80100034 - 0x100000000);

/// Represents the HRESULT value `0x80100031` (`-2146435023`).
const SCARD_E_SERVER_TOO_BUSY = HRESULT(0x80100031 - 0x100000000);

/// Represents the HRESULT value `0x8010001E` (`-2146435042`).
const SCARD_E_SERVICE_STOPPED = HRESULT(0x8010001E - 0x100000000);

/// Represents the HRESULT value `0x8010000B` (`-2146435061`).
const SCARD_E_SHARING_VIOLATION = HRESULT(0x8010000B - 0x100000000);

/// Represents the HRESULT value `0x80100012` (`-2146435054`).
const SCARD_E_SYSTEM_CANCELLED = HRESULT(0x80100012 - 0x100000000);

/// Represents the HRESULT value `0x8010000A` (`-2146435062`).
const SCARD_E_TIMEOUT = HRESULT(0x8010000A - 0x100000000);

/// Represents the HRESULT value `0x8010001F` (`-2146435041`).
const SCARD_E_UNEXPECTED = HRESULT(0x8010001F - 0x100000000);

/// Represents the HRESULT value `0x8010000D` (`-2146435059`).
const SCARD_E_UNKNOWN_CARD = HRESULT(0x8010000D - 0x100000000);

/// Represents the HRESULT value `0x80100009` (`-2146435063`).
const SCARD_E_UNKNOWN_READER = HRESULT(0x80100009 - 0x100000000);

/// Represents the HRESULT value `0x8010002B` (`-2146435029`).
const SCARD_E_UNKNOWN_RES_MNG = HRESULT(0x8010002B - 0x100000000);

/// Represents the HRESULT value `0x80100022` (`-2146435038`).
const SCARD_E_UNSUPPORTED_FEATURE = HRESULT(0x80100022 - 0x100000000);

/// Represents the HRESULT value `0x80100028` (`-2146435032`).
const SCARD_E_WRITE_TOO_MANY = HRESULT(0x80100028 - 0x100000000);

/// Represents the HRESULT value `0x80100013` (`-2146435053`).
const SCARD_F_COMM_ERROR = HRESULT(0x80100013 - 0x100000000);

/// Represents the HRESULT value `0x80100014` (`-2146435052`).
const SCARD_F_UNKNOWN_ERROR = HRESULT(0x80100014 - 0x100000000);

/// Represents the HRESULT value `0x80100007` (`-2146435065`).
const SCARD_F_WAITED_TOO_LONG = HRESULT(0x80100007 - 0x100000000);

const SCARD_LEAVE_CARD = 0;

const SCARD_NEGOTIABLE = 5;

const SCARD_POWERED = 4;

const SCARD_POWER_DOWN = 0;

const SCARD_PRESENT = 2;

const SCARD_PROTOCOL_DEFAULT = 2147483648;

const SCARD_PROTOCOL_OPTIMAL = 0;

const SCARD_PROTOCOL_RAW = 65536;

const SCARD_PROTOCOL_T0 = 1;

const SCARD_PROTOCOL_T1 = 2;

const SCARD_PROTOCOL_UNDEFINED = 0;

const SCARD_PROVIDER_CARD_MODULE = 2147483649;

const SCARD_PROVIDER_CSP = 2;

const SCARD_PROVIDER_KSP = 3;

const SCARD_PROVIDER_PRIMARY = 1;

/// Represents the HRESULT value `0x80100018` (`-2146435048`).
const SCARD_P_SHUTDOWN = HRESULT(0x80100018 - 0x100000000);

const SCARD_RESET_CARD = 1;

const SCARD_SCOPE_TERMINAL = 1;

const SCARD_SHARE_DIRECT = 3;

const SCARD_SHARE_EXCLUSIVE = 1;

const SCARD_SHARE_SHARED = 2;

const SCARD_SPECIFIC = 6;

const SCARD_SWALLOWED = 3;

const SCARD_UNKNOWN = 0;

const SCARD_UNPOWER_CARD = 2;

const SCARD_WARM_RESET = 2;

/// Represents the HRESULT value `0x80100070` (`-2146434960`).
const SCARD_W_CACHE_ITEM_NOT_FOUND = HRESULT(0x80100070 - 0x100000000);

/// Represents the HRESULT value `0x80100071` (`-2146434959`).
const SCARD_W_CACHE_ITEM_STALE = HRESULT(0x80100071 - 0x100000000);

/// Represents the HRESULT value `0x80100072` (`-2146434958`).
const SCARD_W_CACHE_ITEM_TOO_BIG = HRESULT(0x80100072 - 0x100000000);

/// Represents the HRESULT value `0x8010006E` (`-2146434962`).
const SCARD_W_CANCELLED_BY_USER = HRESULT(0x8010006E - 0x100000000);

/// Represents the HRESULT value `0x8010006F` (`-2146434961`).
const SCARD_W_CARD_NOT_AUTHENTICATED = HRESULT(0x8010006F - 0x100000000);

/// Represents the HRESULT value `0x8010006C` (`-2146434964`).
const SCARD_W_CHV_BLOCKED = HRESULT(0x8010006C - 0x100000000);

/// Represents the HRESULT value `0x8010006D` (`-2146434963`).
const SCARD_W_EOF = HRESULT(0x8010006D - 0x100000000);

/// Represents the HRESULT value `0x80100069` (`-2146434967`).
const SCARD_W_REMOVED_CARD = HRESULT(0x80100069 - 0x100000000);

/// Represents the HRESULT value `0x80100068` (`-2146434968`).
const SCARD_W_RESET_CARD = HRESULT(0x80100068 - 0x100000000);

/// Represents the HRESULT value `0x8010006A` (`-2146434966`).
const SCARD_W_SECURITY_VIOLATION = HRESULT(0x8010006A - 0x100000000);

/// Represents the HRESULT value `0x80100067` (`-2146434969`).
const SCARD_W_UNPOWERED_CARD = HRESULT(0x80100067 - 0x100000000);

/// Represents the HRESULT value `0x80100066` (`-2146434970`).
const SCARD_W_UNRESPONSIVE_CARD = HRESULT(0x80100066 - 0x100000000);

/// Represents the HRESULT value `0x80100065` (`-2146434971`).
const SCARD_W_UNSUPPORTED_CARD = HRESULT(0x80100065 - 0x100000000);

/// Represents the HRESULT value `0x8010006B` (`-2146434965`).
const SCARD_W_WRONG_CHV = HRESULT(0x8010006B - 0x100000000);

const SCF_ISSECURE = 1;

const SCS_32BIT_BINARY = 0;

const SCS_64BIT_BINARY = 6;

const SCS_DOS_BINARY = 1;

const SCS_OS216_BINARY = 5;

const SCS_PIF_BINARY = 3;

const SCS_POSIX_BINARY = 4;

const SCS_WOW_BINARY = 2;

const SC_CLOSE = 61536;

const SC_CONTEXTHELP = 61824;

const SC_DEFAULT = 61792;

const SC_DLG_FORCE_UI = 4;

const SC_DLG_MINIMAL_UI = 1;

const SC_DLG_NO_UI = 2;

const SC_HOTKEY = 61776;

const SC_HSCROLL = 61568;

const SC_KEYMENU = 61696;

const SC_MANAGER_ALL_ACCESS = 983103;

const SC_MANAGER_CONNECT = 1;

const SC_MANAGER_ENUMERATE_SERVICE = 4;

const SC_MAXIMIZE = 61488;

const SC_MINIMIZE = 61472;

const SC_MONITORPOWER = 61808;

const SC_MOUSEMENU = 61584;

const SC_MOVE = 61456;

const SC_NEXTWINDOW = 61504;

const SC_PREVWINDOW = 61520;

const SC_RESTORE = 61728;

const SC_SCREENSAVE = 61760;

const SC_SIZE = 61440;

const SC_TASKLIST = 61744;

const SC_VSCROLL = 61552;

/// Represents the HRESULT value `0x0` (`0`).
const SEC_E_OK = HRESULT(0x0);

const SERVICE_ALL_ACCESS = 983551;

/// Notifies a service that it should stop.
///
/// If a service accepts this control code, it must stop upon receipt and return
/// <b>NO_ERROR</b>. After the SCM sends this control code, it will not send
/// other control codes to the service. <b>Windows XP: </b>If the service
/// returns <b>NO_ERROR</b> and continues to run, it continues to receive
/// control codes. This behavior changed starting with Windows Server 2003 and
/// Windows XP with SP2.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winsvc/nc-winsvc-lphandler_function_ex>.
const SERVICE_CONTROL_STOP = 1;

const SERVICE_ENUMERATE_DEPENDENTS = 8;

const SERVICE_QUERY_STATUS = 4;

const SERVICE_START = 16;

const SERVICE_STOP = 32;

/// The hook procedure of a Color dialog box, CCHookProc, can send the
/// SETRGBSTRING registered message to the dialog box to set the current color
/// selection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/setrgbstring>.
const SETRGBSTRING = 'commdlg_SetRGBColor';

/// An Open or Save As dialog box sends the SHAREVISTRING registered message to
/// your hook procedure, OFNHookProc, if a sharing violation occurs for the
/// selected file when the user clicks the OK button.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/sharevistring>.
const SHAREVISTRING = 'commdlg_ShareViolation';

const SHERB_NOCONFIRMATION = 1;

const SHERB_NOPROGRESSUI = 2;

const SHERB_NOSOUND = 4;

const SIZE_MAXHIDE = 4;

const SIZE_MAXIMIZED = 2;

const SIZE_MAXSHOW = 3;

const SIZE_MINIMIZED = 1;

const SIZE_RESTORED = 0;

const SMART_GET_VERSION = 475264;

const SMART_RCV_DRIVE_DATA = 508040;

const SMART_SEND_DRIVE_COMMAND = 508036;

const SND_RING = 1048576;

final Pointer SRWLOCK_INIT = Pointer.fromAddress(0);

/// Represents the NTSTATUS value `0xC0000004` (`-1073741820`).
const STATUS_INFO_LENGTH_MISMATCH = NTSTATUS(0xC0000004 - 0x100000000);

/// Represents the NTSTATUS value `0xC0000008` (`-1073741816`).
const STATUS_INVALID_HANDLE = NTSTATUS(0xC0000008 - 0x100000000);

/// Represents the NTSTATUS value `0xC0000003` (`-1073741821`).
const STATUS_INVALID_INFO_CLASS = NTSTATUS(0xC0000003 - 0x100000000);

/// Represents the NTSTATUS value `0xC0000225` (`-1073741275`).
const STATUS_NOT_FOUND = NTSTATUS(0xC0000225 - 0x100000000);

/// Represents the NTSTATUS value `0xC0000002` (`-1073741822`).
const STATUS_NOT_IMPLEMENTED = NTSTATUS(0xC0000002 - 0x100000000);

/// Represents the NTSTATUS value `0x0` (`0`).
const STATUS_SUCCESS = NTSTATUS(0x0);

/// Represents the NTSTATUS value `0xC0000001` (`-1073741823`).
const STATUS_UNSUCCESSFUL = NTSTATUS(0xC0000001 - 0x100000000);

/// Represents the NTSTATUS value `0x103` (`259`).
const STILL_ACTIVE = NTSTATUS(0x103);

const SYMOPT_ALLOW_ABSOLUTE_SYMBOLS = 2048;

const SYMOPT_ALLOW_ZERO_ADDRESS = 16777216;

const SYMOPT_AUTO_PUBLICS = 65536;

const SYMOPT_CASE_INSENSITIVE = 1;

const SYMOPT_DEBUG = 2147483648;

const SYMOPT_DEFERRED_LOADS = 4;

const SYMOPT_DISABLE_SYMSRV_AUTODETECT = 33554432;

const SYMOPT_EXACT_SYMBOLS = 1024;

const SYMOPT_FAIL_CRITICAL_ERRORS = 512;

const SYMOPT_FAVOR_COMPRESSED = 8388608;

const SYMOPT_FLAT_DIRECTORY = 4194304;

const SYMOPT_IGNORE_CVREC = 128;

const SYMOPT_IGNORE_IMAGEDIR = 2097152;

const SYMOPT_IGNORE_NT_SYMPATH = 4096;

const SYMOPT_INCLUDE_32BIT_MODULES = 8192;

const SYMOPT_LOAD_ANYTHING = 64;

const SYMOPT_LOAD_LINES = 16;

const SYMOPT_NO_CPP = 8;

const SYMOPT_NO_IMAGE_SEARCH = 131072;

const SYMOPT_NO_PROMPTS = 524288;

const SYMOPT_NO_PUBLICS = 32768;

const SYMOPT_NO_UNQUALIFIED_LOADS = 256;

const SYMOPT_OMAP_FIND_NEAREST = 32;

const SYMOPT_OVERWRITE = 1048576;

const SYMOPT_PUBLICS_ONLY = 16384;

const SYMOPT_SECURE = 262144;

const SYMOPT_UNDNAME = 2;

/// Represents the HRESULT value `0x1` (`1`).
const S_FALSE = HRESULT(0x1);

/// Represents the HRESULT value `0x0` (`0`).
const S_OK = HRESULT(0x0);

const TC_CP_STROKE = 4;

const TC_CR_90 = 8;

const TC_CR_ANY = 16;

const TC_EA_DOUBLE = 512;

const TC_IA_ABLE = 1024;

const TC_OP_CHARACTER = 1;

const TC_OP_STROKE = 2;

const TC_RA_ABLE = 8192;

const TC_RESERVED = 32768;

const TC_SA_CONTIN = 256;

const TC_SA_DOUBLE = 64;

const TC_SA_INTEGER = 128;

const TC_SCROLLBLT = 65536;

const TC_SF_X_YINDEP = 32;

const TC_SO_ABLE = 4096;

const TC_UA_ABLE = 2048;

const TC_VA_ABLE = 16384;

final TD_ERROR_ICON = Pointer<Utf16>.fromAddress(65534);

final TD_INFORMATION_ICON = Pointer<Utf16>.fromAddress(65533);

final TD_SHIELD_ICON = Pointer<Utf16>.fromAddress(65532);

final TD_WARNING_ICON = Pointer<Utf16>.fromAddress(65535);

const TIME_BYTES = 4;

const TIME_MIDI = 16;

const TIME_MS = 1;

const TIME_SAMPLES = 2;

const TIME_SMPTE = 8;

const TIME_TICKS = 32;

const TREE_CONNECT_ATTRIBUTE_GLOBAL = 4;

const TREE_CONNECT_ATTRIBUTE_INTEGRITY = 32768;

const TREE_CONNECT_ATTRIBUTE_PINNED = 2;

const TREE_CONNECT_ATTRIBUTE_PRIVACY = 16384;

const TRUE = 1;

/// Retrieves acceleration information for an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getaccel>.
const UDM_GETACCEL = 1132;

/// Retrieves the current radix base (that is, either base 10 or 16) for an
/// up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getbase>.
const UDM_GETBASE = 1134;

/// Retrieves the handle to the current buddy window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getbuddy>.
const UDM_GETBUDDY = 1130;

/// Retrieves the current position of an up-down control with 16-bit precision.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getpos>.
const UDM_GETPOS = 1128;

/// Returns the 32-bit position of an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getpos32>.
const UDM_GETPOS32 = 1138;

/// Retrieves the minimum and maximum positions (range) for an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getrange>.
const UDM_GETRANGE = 1126;

/// Retrieves the 32-bit range of an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getrange32>.
const UDM_GETRANGE32 = 1136;

/// UDM_GETUNICODEFORMAT message - Retrieves the Unicode character format flag
/// for the control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-getunicodeformat>.
const UDM_GETUNICODEFORMAT = 8198;

/// Sets the acceleration for an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setaccel>.
const UDM_SETACCEL = 1131;

/// Sets the radix base for an up-down control.
///
/// The base value determines whether the buddy window displays numbers in
/// decimal or hexadecimal digits. Hexadecimal numbers are always unsigned, and
/// decimal numbers are signed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setbase>.
const UDM_SETBASE = 1133;

/// Sets the buddy window for an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setbuddy>.
const UDM_SETBUDDY = 1129;

/// Sets the current position for an up-down control with 16-bit precision.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setpos>.
const UDM_SETPOS = 1127;

/// Sets the position of an up-down control with 32-bit precision.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setpos32>.
const UDM_SETPOS32 = 1137;

/// Sets the minimum and maximum positions (range) for an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setrange>.
const UDM_SETRANGE = 1125;

/// Sets the 32-bit range of an up-down control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setrange32>.
const UDM_SETRANGE32 = 1135;

/// UDM_SETUNICODEFORMAT message - Sets the Unicode character format flag for
/// the control.
///
/// This message allows you to change the character set used by the control at
/// run time rather than having to re-create the control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/udm-setunicodeformat>.
const UDM_SETUNICODEFORMAT = 8197;

const UDS_ALIGNLEFT = 8;

const UDS_ALIGNRIGHT = 4;

const UDS_ARROWKEYS = 32;

const UDS_AUTOBUDDY = 16;

const UDS_HORZ = 64;

const UDS_HOTTRACK = 256;

const UDS_NOTHOUSANDS = 128;

const UDS_SETBUDDYINT = 2;

const UDS_WRAP = 1;

const UIA_E_ELEMENTNOTAVAILABLE = 2147746305;

const UIA_E_ELEMENTNOTENABLED = 2147746304;

const UIA_E_INVALIDOPERATION = 2148734217;

const UIA_E_NOCLICKABLEPOINT = 2147746306;

const UIA_E_NOTSUPPORTED = 2147746308;

const UIA_E_PROXYASSEMBLYNOTLOADED = 2147746307;

const UIA_E_TIMEOUT = 2148734213;

const VARIANT_FALSE = 0;

const VARIANT_TRUE = -1;

const VER_AND = 6;

/// The current value must be equal to the specified value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/nf-winnt-ver_set_condition>.
const VER_EQUAL = 1;

/// The current value must be greater than the specified value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/nf-winnt-ver_set_condition>.
const VER_GREATER = 2;

/// The current value must be greater than or equal to the specified value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/nf-winnt-ver_set_condition>.
const VER_GREATER_EQUAL = 3;

/// The current value must be less than the specified value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/nf-winnt-ver_set_condition>.
const VER_LESS = 4;

/// The current value must be less than or equal to the specified value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnt/nf-winnt-ver_set_condition>.
const VER_LESS_EQUAL = 5;

const VER_NT_DOMAIN_CONTROLLER = 2;

const VER_NT_SERVER = 3;

const VER_NT_WORKSTATION = 1;

const VER_OR = 7;

const WAVE_FORMAT_ADPCM = 2;

const WAVE_FORMAT_EXTENSIBLE = 65534;

const WAVE_FORMAT_IEEE_FLOAT = 3;

const WAVE_FORMAT_PCM = 1;

const WAVE_FORMAT_UNKNOWN = 0;

const WBEM_INFINITE = -1;

const WBEM_NO_WAIT = 0;

/// Sent to both the window being activated and the window being deactivated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-activate>.
const WM_ACTIVATE = 6;

/// Sent when a window belonging to a different application than the active
/// window is about to be activated.
///
/// The message is sent to the application whose window is being activated and
/// to the application whose window is being deactivated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-activateapp>.
const WM_ACTIVATEAPP = 28;

/// Used to define private messages, usually of the form WM_APP+x, where x is an
/// integer value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-app>.
const WM_APP = 32768;

/// Sent to the clipboard owner by a clipboard viewer window to request the name
/// of a CF_OWNERDISPLAY clipboard format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-askcbformatname>.
const WM_ASKCBFORMATNAME = 780;

/// Sent to cancel certain modes, such as mouse capture.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-cancelmode>.
const WM_CANCELMODE = 31;

/// Sent to the first window in the clipboard viewer chain when a window is
/// being removed from the chain.
///
/// A window receives this message through its WindowProc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-changecbchain>.
const WM_CHANGECBCHAIN = 781;

/// An application sends the WM_CHANGEUISTATE message to indicate that the UI
/// state should be changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-changeuistate>.
const WM_CHANGEUISTATE = 295;

/// Posted to the window with the keyboard focus when a WM_KEYDOWN message is
/// translated by the TranslateMessage function.
///
/// The WM_CHAR message contains the character code of the key that was pressed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-char>.
const WM_CHAR = 258;

/// Sent by a list box with the LBS_WANTKEYBOARDINPUT style to its owner in
/// response to a WM_CHAR message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-chartoitem>.
const WM_CHARTOITEM = 47;

/// Sent to a child window when the user clicks the window's title bar or when
/// the window is activated, moved, or sized.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-childactivate>.
const WM_CHILDACTIVATE = 34;

/// An application sends a WM_CLEAR message to an edit control or combo box to
/// delete (clear) the current selection, if any, from the edit control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-clear>.
const WM_CLEAR = 771;

/// Sent when the contents of the clipboard have changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-clipboardupdate>.
const WM_CLIPBOARDUPDATE = 797;

/// Sent as a signal that a window or an application should terminate.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-close>.
const WM_CLOSE = 16;

/// Sent when the user selects a command item from a menu, when a control sends
/// a notification message to its parent window, or when an accelerator
/// keystroke is translated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-command>.
const WM_COMMAND = 273;

const WM_COMMNOTIFY = 68;

/// Sent to all top-level windows when the system detects more than 12.5 percent
/// of system time over a 30- to 60-second interval is being spent compacting
/// memory.
///
/// This indicates that system memory is low.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-compacting>.
const WM_COMPACTING = 65;

/// Sent to determine the relative position of a new item in the sorted list of
/// an owner-drawn combo box or list box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-compareitem>.
const WM_COMPAREITEM = 57;

/// Notifies a window that the user clicked the right mouse button
/// (right-clicked) in the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-contextmenu>.
const WM_CONTEXTMENU = 123;

/// An application sends the WM_COPY message to an edit control or combo box to
/// copy the current selection to the clipboard in CF_TEXT format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-copy>.
const WM_COPY = 769;

/// Sent when an application requests that a window be created by calling the
/// CreateWindowEx or CreateWindow function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-create>.
const WM_CREATE = 1;

/// The WM_CTLCOLORBTN message is sent to the parent window of a button before
/// drawing the button.
///
/// The parent window can change the button's text and background colors.
/// However, only owner-drawn buttons respond to the parent window processing
/// this message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-ctlcolorbtn>.
const WM_CTLCOLORBTN = 309;

/// Sent to a dialog box before the system draws the dialog box.
///
/// By responding to this message, the dialog box can set its text and
/// background colors using the specified display device context handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/wm-ctlcolordlg>.
const WM_CTLCOLORDLG = 310;

/// An edit control that is not read-only or disabled sends the WM_CTLCOLOREDIT
/// message to its parent window when the control is about to be drawn.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-ctlcoloredit>.
const WM_CTLCOLOREDIT = 307;

/// Sent to the parent window of a list box before the system draws the list
/// box.
///
/// By responding to this message, the parent window can set the text and
/// background colors of the list box by using the specified display device
/// context handle.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-ctlcolorlistbox>.
const WM_CTLCOLORLISTBOX = 308;

const WM_CTLCOLORMSGBOX = 306;

/// The WM_CTLCOLORSCROLLBAR message is sent to the parent window of a scroll
/// bar control when the control is about to be drawn.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-ctlcolorscrollbar>.
const WM_CTLCOLORSCROLLBAR = 311;

/// A static control, or an edit control that is read-only or disabled, sends
/// the WM_CTLCOLORSTATIC message to its parent window when the control is about
/// to be drawn.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-ctlcolorstatic>.
const WM_CTLCOLORSTATIC = 312;

/// An application sends a WM_CUT message to an edit control or combo box to
/// delete (cut) the current selection, if any, in the edit control and copy the
/// deleted text to the clipboard in CF_TEXT format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-cut>.
const WM_CUT = 768;

/// Posted to the window with the keyboard focus when a WM_KEYUP message is
/// translated by the TranslateMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-deadchar>.
const WM_DEADCHAR = 259;

/// Sent to the owner of a list box or combo box when the list box or combo box
/// is destroyed or when items are removed by the LB_DELETESTRING,
/// LB_RESETCONTENT, CB_DELETESTRING, or CB_RESETCONTENT message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-deleteitem>.
const WM_DELETEITEM = 45;

/// Sent when a window is being destroyed.
///
/// It is sent to the window procedure of the window being destroyed after the
/// window is removed from the screen.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-destroy>.
const WM_DESTROY = 2;

/// Sent to the clipboard owner when a call to the EmptyClipboard function
/// empties the clipboard.
///
/// A window receives this message through its WindowProc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-destroyclipboard>.
const WM_DESTROYCLIPBOARD = 775;

/// Notifies an application of a change to the hardware configuration of a
/// device or the computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/DevIO/wm-devicechange>.
const WM_DEVICECHANGE = 537;

/// The WM_DEVMODECHANGE message is sent to all top-level windows whenever the
/// user changes device-mode settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-devmodechange>.
const WM_DEVMODECHANGE = 27;

/// The WM_DISPLAYCHANGE message is sent to all windows when the display
/// resolution has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-displaychange>.
const WM_DISPLAYCHANGE = 126;

/// Sent when the effective dots per inch (dpi) for a window has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/hidpi/wm-dpichanged>.
const WM_DPICHANGED = 736;

/// For Per Monitor v2 top-level windows, this message is sent to all HWNDs in
/// the child HWDN tree of the window that is undergoing a DPI change. |
/// WM_DPICHANGED_AFTERPARENT message (Winuser.h).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/hidpi/wm-dpichanged-afterparent>.
const WM_DPICHANGED_AFTERPARENT = 739;

/// For Per Monitor v2 top-level windows, this message is sent to all HWNDs in
/// the child HWDN tree of the window that is undergoing a DPI change. |
/// WM_DPICHANGED_BEFOREPARENT message (Winuser.h).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/hidpi/wm-dpichanged-beforeparent>.
const WM_DPICHANGED_BEFOREPARENT = 738;

/// Sent to the first window in the clipboard viewer chain when the content of
/// the clipboard changes.
///
/// This enables a clipboard viewer window to display the new content of the
/// clipboard. A window receives this message through its WindowProc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-drawclipboard>.
const WM_DRAWCLIPBOARD = 776;

/// Sent to the parent window of an owner-drawn button, combo box, list box, or
/// menu when a visual aspect of the button, combo box, list box, or menu has
/// changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-drawitem>.
const WM_DRAWITEM = 43;

/// Informs all top-level windows that the colorization color has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dwm/wm-dwmcolorizationcolorchanged>.
const WM_DWMCOLORIZATIONCOLORCHANGED = 800;

/// Sent when an application changes the enabled state of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-enable>.
const WM_ENABLE = 10;

/// The WM_ENDSESSION message is sent to an application after the system
/// processes the results of the WM_QUERYENDSESSION message.
///
/// The WM_ENDSESSION message informs the application whether the session is
/// ending.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Shutdown/wm-endsession>.
const WM_ENDSESSION = 22;

/// Sent to the owner window of a modal dialog box or menu that is entering an
/// idle state.
///
/// A modal dialog box or menu enters an idle state when no messages are waiting
/// in its queue after it has processed one or more previous messages.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/wm-enteridle>.
const WM_ENTERIDLE = 289;

/// Sent when the window background must be erased (for example, when a window
/// is resized).
///
/// The message is sent to prepare an invalidated portion of a window for
/// painting.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-erasebkgnd>.
const WM_ERASEBKGND = 20;

/// An application sends the WM_FONTCHANGE message to all top-level windows in
/// the system after changing the pool of font resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-fontchange>.
const WM_FONTCHANGE = 29;

/// Passes information about a gesture.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/wintouch/wm-gesture>.
const WM_GESTURE = 281;

/// Gives you a chance to set the gesture configuration.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/wintouch/wm-gesturenotify>.
const WM_GESTURENOTIFY = 282;

/// Sent to the window procedure associated with a control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/wm-getdlgcode>.
const WM_GETDLGCODE = 135;

/// This message tells the operating system that the window will be sized to
/// dimensions other than the default.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/hidpi/wm-getdpiscaledsize>.
const WM_GETDPISCALEDSIZE = 740;

/// Retrieves the font with which the control is currently drawing its text.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-getfont>.
const WM_GETFONT = 49;

/// Sent to determine the hot key associated with a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-gethotkey>.
const WM_GETHOTKEY = 51;

/// Sent to a window to retrieve a handle to the large or small icon associated
/// with a window.
///
/// The system displays the large icon in the ALT+TAB dialog, and the small icon
/// in the window caption.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-geticon>.
const WM_GETICON = 127;

/// Sent to a window when the size or position of the window is about to change.
///
/// An application can use this message to override the window's default
/// maximized size and position, or its default minimum or maximum tracking
/// size.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-getminmaxinfo>.
const WM_GETMINMAXINFO = 36;

/// Sent by both Microsoft Active Accessibility and Microsoft UI Automation to
/// obtain information about an accessible object contained in a server
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/WinAuto/wm-getobject>.
const WM_GETOBJECT = 61;

/// Copies the text that corresponds to a window into a buffer provided by the
/// caller.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-gettext>.
const WM_GETTEXT = 13;

/// Determines the length, in characters, of the text associated with a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-gettextlength>.
const WM_GETTEXTLENGTH = 14;

/// Indicates that the user pressed the F1 key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/shell/wm-help>.
const WM_HELP = 83;

/// Posted when the user presses a hot key registered by the RegisterHotKey
/// function.
///
/// The message is placed at the top of the message queue associated with the
/// thread that registered the hot key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-hotkey>.
const WM_HOTKEY = 786;

/// The WM_HSCROLL message is sent to a window when a scroll event occurs in the
/// window's standard horizontal scroll bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-hscroll>.
const WM_HSCROLL = 276;

/// Sent to the clipboard owner by a clipboard viewer window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-hscrollclipboard>.
const WM_HSCROLLCLIPBOARD = 782;

const WM_ICONERASEBKGND = 39;

/// Sent to the dialog box procedure immediately before a dialog box is
/// displayed.
///
/// Dialog box procedures typically use this message to initialize controls and
/// carry out any other initialization tasks that affect the appearance of the
/// dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/wm-initdialog>.
const WM_INITDIALOG = 272;

/// Sent when a menu is about to become active.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-initmenu>.
const WM_INITMENU = 278;

/// WM_INITMENUPOPUP message - Sent when a drop-down menu or submenu is about to
/// become active.
///
/// This allows an application to modify the menu before it is displayed,
/// without changing the entire menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-initmenupopup>.
const WM_INITMENUPOPUP = 279;

/// Sent to the window that is getting raw input.
///
/// A window receives this message through its WindowProc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-input>.
const WM_INPUT = 255;

/// Sent to the topmost affected window after an application's input language
/// has been changed.
///
/// You should make any application-specific settings and pass the message to
/// the DefWindowProc function, which passes the message to all first-level
/// child windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-inputlangchange>.
const WM_INPUTLANGCHANGE = 81;

/// Posted to the window with the focus when the user chooses a new input
/// language, either with the hotkey (specified in the Keyboard control panel
/// application) or from the indicator on the system taskbar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-inputlangchangerequest>.
const WM_INPUTLANGCHANGEREQUEST = 80;

/// Sent to the window that registered to receive raw input.
///
/// A window receives this message through its WindowProc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-input-device-change>.
const WM_INPUT_DEVICE_CHANGE = 254;

/// Posted to the window with the keyboard focus when a nonsystem key is
/// pressed.
///
/// A nonsystem key is a key that is pressed when the ALT key is not pressed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-keydown>.
const WM_KEYDOWN = 256;

/// Posted to the window with the keyboard focus when a nonsystem key is
/// released.
///
/// A nonsystem key is a key that is pressed when the ALT key is not pressed, or
/// a keyboard key that is pressed when a window has the keyboard focus.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-keyup>.
const WM_KEYUP = 257;

/// Sent to a window immediately before it loses the keyboard focus.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-killfocus>.
const WM_KILLFOCUS = 8;

/// Posted when the user double-clicks the left mouse button while the cursor is
/// in the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-lbuttondblclk>.
const WM_LBUTTONDBLCLK = 515;

/// Posted when the user presses the left mouse button while the cursor is in
/// the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-lbuttondown>.
const WM_LBUTTONDOWN = 513;

/// Posted when the user releases the left mouse button while the cursor is in
/// the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-lbuttonup>.
const WM_LBUTTONUP = 514;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is in the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-mbuttondblclk>.
const WM_MBUTTONDBLCLK = 521;

/// Posted when the user presses the middle mouse button while the cursor is in
/// the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-mbuttondown>.
const WM_MBUTTONDOWN = 519;

/// Posted when the user releases the middle mouse button while the cursor is in
/// the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-mbuttonup>.
const WM_MBUTTONUP = 520;

/// Sent to the owner window of a combo box, list box, list-view control, or
/// menu item when the control or menu is created.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-measureitem>.
const WM_MEASUREITEM = 44;

/// Sent when a menu is active and the user presses a key that does not
/// correspond to any mnemonic or accelerator key.
///
/// This message is sent to the window that owns the menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-menuchar>.
const WM_MENUCHAR = 288;

/// Sent when the user makes a selection from a menu.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-menucommand>.
const WM_MENUCOMMAND = 294;

/// Sent to the owner of a drag-and-drop menu when the user drags a menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-menudrag>.
const WM_MENUDRAG = 291;

/// Sent to the owner of a drag-and-drop menu when the mouse cursor enters a
/// menu item or moves from the center of the item to the top or bottom of the
/// item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-menugetobject>.
const WM_MENUGETOBJECT = 292;

/// Sent when the user releases the right mouse button while the cursor is on a
/// menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-menurbuttonup>.
const WM_MENURBUTTONUP = 290;

/// Sent to a menu's owner window when the user selects a menu item.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-menuselect>.
const WM_MENUSELECT = 287;

/// Sent when the cursor is in an inactive window and the user presses a mouse
/// button.
///
/// The parent window receives this message only if the child window passes it
/// to the DefWindowProc function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-mouseactivate>.
const WM_MOUSEACTIVATE = 33;

/// Sent to the active window when the mouse's horizontal scroll wheel is tilted
/// or rotated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-mousehwheel>.
const WM_MOUSEHWHEEL = 526;

/// Posted to a window when the cursor moves.
///
/// If the mouse is not captured, the message is posted to the window that
/// contains the cursor. Otherwise, the message is posted to the window that has
/// captured the mouse.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-mousemove>.
const WM_MOUSEMOVE = 512;

/// Sent to the focus window when the mouse wheel is rotated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-mousewheel>.
const WM_MOUSEWHEEL = 522;

/// Sent after a window has been moved.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-move>.
const WM_MOVE = 3;

/// Sent to a window when its nonclient area needs to be changed to indicate an
/// active or inactive state.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-ncactivate>.
const WM_NCACTIVATE = 134;

/// Sent when the size and position of a window's client area must be
/// calculated.
///
/// By processing this message, an application can control the content of the
/// window's client area when the size or position of the window changes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-nccalcsize>.
const WM_NCCALCSIZE = 131;

/// Sent prior to the WM_CREATE message when a window is first created.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-nccreate>.
const WM_NCCREATE = 129;

/// Notifies a window that its nonclient area is being destroyed.
///
/// The DestroyWindow function sends the WM_NCDESTROY message to the window
/// following the WM_DESTROY message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-ncdestroy>.
const WM_NCDESTROY = 130;

/// Sent to a window in order to determine what part of the window corresponds
/// to a particular screen coordinate.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-nchittest>.
const WM_NCHITTEST = 132;

/// Posted when the user double-clicks the left mouse button while the cursor is
/// within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-nclbuttondblclk>.
const WM_NCLBUTTONDBLCLK = 163;

/// Posted when the user presses the left mouse button while the cursor is
/// within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-nclbuttondown>.
const WM_NCLBUTTONDOWN = 161;

/// Posted when the user releases the left mouse button while the cursor is
/// within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-nclbuttonup>.
const WM_NCLBUTTONUP = 162;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncmbuttondblclk>.
const WM_NCMBUTTONDBLCLK = 169;

/// Posted when the user presses the middle mouse button while the cursor is
/// within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncmbuttondown>.
const WM_NCMBUTTONDOWN = 167;

/// Posted when the user releases the middle mouse button while the cursor is
/// within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncmbuttonup>.
const WM_NCMBUTTONUP = 168;

/// Posted to a window when the cursor is moved within the nonclient area of the
/// window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncmousemove>.
const WM_NCMOUSEMOVE = 160;

/// The WM_NCPAINT message is sent to a window when its frame must be painted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-ncpaint>.
const WM_NCPAINT = 133;

/// Posted when the user double-clicks the right mouse button while the cursor
/// is within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncrbuttondblclk>.
const WM_NCRBUTTONDBLCLK = 166;

/// Posted when the user presses the right mouse button while the cursor is
/// within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncrbuttondown>.
const WM_NCRBUTTONDOWN = 164;

/// Posted when the user releases the right mouse button while the cursor is
/// within the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncrbuttonup>.
const WM_NCRBUTTONUP = 165;

/// Posted when the user double-clicks the first or second X button while the
/// cursor is in the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncxbuttondblclk>.
const WM_NCXBUTTONDBLCLK = 173;

/// Posted when the user presses the first or second X button while the cursor
/// is in the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncxbuttondown>.
const WM_NCXBUTTONDOWN = 171;

/// Posted when the user releases the first or second X button while the cursor
/// is in the nonclient area of a window.
///
/// This message is posted to the window that contains the cursor. If a window
/// has captured the mouse, this message is not posted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-ncxbuttonup>.
const WM_NCXBUTTONUP = 172;

/// Sent to a dialog box procedure to set the keyboard focus to a different
/// control in the dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dlgbox/wm-nextdlgctl>.
const WM_NEXTDLGCTL = 40;

/// Sent by a common control to its parent window when an event has occurred or
/// the control requires some information.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-notify>.
const WM_NOTIFY = 78;

/// Determines if a window accepts ANSI or Unicode structures in the WM_NOTIFY
/// notification message.
///
/// WM_NOTIFYFORMAT messages are sent from a common control to its parent window
/// and from the parent window to the common control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-notifyformat>.
const WM_NOTIFYFORMAT = 85;

/// Performs no operation.
///
/// An application sends the WM_NULL message if it wants to post a message that
/// the recipient window will ignore.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-null>.
const WM_NULL = 0;

/// The WM_PAINT message is sent when the system or another application makes a
/// request to paint a portion of an application's window.
///
/// To learn more, see <https://learn.microsoft.com/windows/win32/gdi/wm-paint>.
const WM_PAINT = 15;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and the clipboard viewer's
/// client area needs repainting.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-paintclipboard>.
const WM_PAINTCLIPBOARD = 777;

const WM_PAINTICON = 38;

/// The WM_PALETTECHANGED message is sent to all top-level and overlapped
/// windows after the window with the keyboard focus has realized its logical
/// palette, thereby changing the system palette.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-palettechanged>.
const WM_PALETTECHANGED = 785;

/// The WM_PALETTEISCHANGING message informs applications that an application is
/// going to realize its logical palette.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-paletteischanging>.
const WM_PALETTEISCHANGING = 784;

/// An application sends a WM_PASTE message to an edit control or combo box to
/// copy the current content of the clipboard to the edit control at the current
/// caret position.
///
/// Data is inserted only if the clipboard contains data in CF_TEXT format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-paste>.
const WM_PASTE = 770;

/// Notifies applications that the system, typically a battery-powered personal
/// computer, is about to enter a suspended mode.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/wm-power>.
const WM_POWER = 72;

/// Notifies applications that a power-management event has occurred.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Power/wm-powerbroadcast>.
const WM_POWERBROADCAST = 536;

/// Sent to a minimized (iconic) window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-querydragicon>.
const WM_QUERYDRAGICON = 55;

/// The WM_QUERYENDSESSION message is sent when the user chooses to end the
/// session or when an application calls one of the system shutdown functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Shutdown/wm-queryendsession>.
const WM_QUERYENDSESSION = 17;

/// The WM_QUERYNEWPALETTE message informs a window that it is about to receive
/// the keyboard focus, giving the window the opportunity to realize its logical
/// palette when it receives the focus.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-querynewpalette>.
const WM_QUERYNEWPALETTE = 783;

/// Sent to an icon when the user requests that the window be restored to its
/// previous size and position.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-queryopen>.
const WM_QUERYOPEN = 19;

/// An application sends the WM_QUERYUISTATE message to retrieve the UI state
/// for a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-queryuistate>.
const WM_QUERYUISTATE = 297;

/// Sent by a computer-based training (CBT) application to separate user-input
/// messages from other messages sent through the WH_JOURNALPLAYBACK procedure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-queuesync>.
const WM_QUEUESYNC = 35;

/// Indicates a request to terminate an application, and is generated when the
/// application calls the PostQuitMessage function.
///
/// This message causes the GetMessage function to return zero.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-quit>.
const WM_QUIT = 18;

/// Posted when the user double-clicks the right mouse button while the cursor
/// is in the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-rbuttondblclk>.
const WM_RBUTTONDBLCLK = 518;

/// Posted when the user presses the right mouse button while the cursor is in
/// the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-rbuttondown>.
const WM_RBUTTONDOWN = 516;

/// Posted when the user releases the right mouse button while the cursor is in
/// the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-rbuttonup>.
const WM_RBUTTONUP = 517;

/// Sent to the clipboard owner before it is destroyed, if the clipboard owner
/// has delayed rendering one or more clipboard formats.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-renderallformats>.
const WM_RENDERALLFORMATS = 774;

/// Sent to the clipboard owner if it has delayed rendering a specific clipboard
/// format and if an application has requested data in that format.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-renderformat>.
const WM_RENDERFORMAT = 773;

/// Sent to a window if the mouse causes the cursor to move within a window and
/// mouse input is not captured.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-setcursor>.
const WM_SETCURSOR = 32;

/// Sent to a window after it has gained the keyboard focus.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-setfocus>.
const WM_SETFOCUS = 7;

/// Sets the font that a control is to use when drawing text.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-setfont>.
const WM_SETFONT = 48;

/// Sent to a window to associate a hot key with the window.
///
/// When the user presses the hot key, the system activates the window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-sethotkey>.
const WM_SETHOTKEY = 50;

/// Associates a new large or small icon with a window.
///
/// The system displays the large icon in the ALT+TAB dialog box, and the small
/// icon in the window caption.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-seticon>.
const WM_SETICON = 128;

/// You send the **WM_SETREDRAW** message to a window to allow changes in that
/// window to be redrawn, or to prevent changes in that window from being
/// redrawn.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-setredraw>.
const WM_SETREDRAW = 11;

/// Sets the text of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-settext>.
const WM_SETTEXT = 12;

/// A message that is sent to all top-level windows when the
/// SystemParametersInfo function changes a system-wide setting or when policy
/// settings have changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-settingchange>.
const WM_SETTINGCHANGE = 26;

/// Sent to a window when the window is about to be hidden or shown.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-showwindow>.
const WM_SHOWWINDOW = 24;

/// Sent to a window after its size has changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-size>.
const WM_SIZE = 5;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and the clipboard viewer's
/// client area has changed size.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-sizeclipboard>.
const WM_SIZECLIPBOARD = 779;

/// The WM_SPOOLERSTATUS message is sent from Print Manager whenever a job is
/// added to or removed from the Print Manager queue.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/printdocs/wm-spoolerstatus>.
const WM_SPOOLERSTATUS = 42;

/// Sent to a window after the SetWindowLong function has changed one or more of
/// the window's styles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-stylechanged>.
const WM_STYLECHANGED = 125;

/// Sent to a window when the SetWindowLong function is about to change one or
/// more of the window's styles.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-stylechanging>.
const WM_STYLECHANGING = 124;

/// The WM_SYNCPAINT message is used to synchronize painting while avoiding
/// linking independent GUI threads.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-syncpaint>.
const WM_SYNCPAINT = 136;

/// Posted to the window with the keyboard focus when a WM_SYSKEYDOWN message is
/// translated by the TranslateMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-syschar>.
const WM_SYSCHAR = 262;

/// The WM_SYSCOLORCHANGE message is sent to all top-level windows when a change
/// is made to a system color setting.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/gdi/wm-syscolorchange>.
const WM_SYSCOLORCHANGE = 21;

/// A window receives this message when the user chooses a command from the
/// Window menu (formerly known as the system or control menu) or when the user
/// chooses the maximize button, minimize button, restore button, or close
/// button.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-syscommand>.
const WM_SYSCOMMAND = 274;

/// Sent to the window with the keyboard focus when a WM_SYSKEYDOWN message is
/// translated by the TranslateMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-sysdeadchar>.
const WM_SYSDEADCHAR = 263;

/// Posted to the window with the keyboard focus when the user presses the F10
/// key (which activates the menu bar) or holds down the ALT key and then
/// presses another key.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-syskeydown>.
const WM_SYSKEYDOWN = 260;

/// Posted to the window with the keyboard focus when the user releases a key
/// that was pressed while the ALT key was held down.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-syskeyup>.
const WM_SYSKEYUP = 261;

/// Sent to an application that has initiated a training card with Windows Help.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/shell/wm-tcard>.
const WM_TCARD = 82;

/// A message that is sent whenever there is a change in the system time.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/SysInfo/wm-timechange>.
const WM_TIMECHANGE = 30;

/// Posted to the installing thread's message queue when a timer expires.
///
/// The message is posted by the GetMessage or PeekMessage function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-timer>.
const WM_TIMER = 275;

/// An application sends a WM_UNDO message to an edit control to undo the last
/// operation.
///
/// When this message is sent to an edit control, the previously deleted text is
/// restored or the previously added text is deleted.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-undo>.
const WM_UNDO = 772;

/// Sent when a drop-down menu or submenu has been destroyed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-uninitmenupopup>.
const WM_UNINITMENUPOPUP = 293;

/// An application sends the WM_UPDATEUISTATE message to change the UI state for
/// the specified window and all its child windows.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/menurc/wm-updateuistate>.
const WM_UPDATEUISTATE = 296;

/// Used to define private messages for use by private window classes, usually
/// of the form WM_USER+x, where x is an integer value.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-user>.
const WM_USER = 1024;

/// Sent to all windows after the user has logged on or off.
///
/// When the user logs on or off, the system updates the user-specific settings.
/// The system sends this message immediately after updating the settings.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-userchanged>.
const WM_USERCHANGED = 84;

/// Sent by a list box with the LBS_WANTKEYBOARDINPUT style to its owner in
/// response to a WM_KEYDOWN message.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-vkeytoitem>.
const WM_VKEYTOITEM = 46;

/// The WM_VSCROLL message is sent to a window when a scroll event occurs in the
/// window's standard vertical scroll bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/Controls/wm-vscroll>.
const WM_VSCROLL = 277;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and an event occurs in the
/// clipboard viewer's vertical scroll bar.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/wm-vscrollclipboard>.
const WM_VSCROLLCLIPBOARD = 778;

/// Sent to a window whose size, position, or place in the Z order has changed
/// as a result of a call to the SetWindowPos function or another
/// window-management function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-windowposchanged>.
const WM_WINDOWPOSCHANGED = 71;

/// Sent to a window whose size, position, or place in the Z order is about to
/// change as a result of a call to the SetWindowPos function or another
/// window-management function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-windowposchanging>.
const WM_WINDOWPOSCHANGING = 70;

/// An application sends the WM_WININICHANGE message to all top-level windows
/// after making a change to the WIN.INI file.
///
/// The SystemParametersInfo function sends this message after an application
/// uses the function to change a setting in WIN.INI.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/winmsg/wm-wininichange>.
const WM_WININICHANGE = 26;

/// Posted when the user double-clicks the first or second X button while the
/// cursor is in the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-xbuttondblclk>.
const WM_XBUTTONDBLCLK = 525;

/// Posted when the user presses the first or second X button while the cursor
/// is in the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-xbuttondown>.
const WM_XBUTTONDOWN = 523;

/// Posted when the user releases the first or second X button while the cursor
/// is in the client area of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/inputdev/wm-xbuttonup>.
const WM_XBUTTONUP = 524;

const WTS_CONSOLE_CONNECT = 1;

const WTS_CONSOLE_DISCONNECT = 2;

const WTS_REMOTE_CONNECT = 3;

const WTS_REMOTE_DISCONNECT = 4;

const WTS_SESSION_CREATE = 10;

const WTS_SESSION_LOCK = 7;

const WTS_SESSION_LOGOFF = 6;

const WTS_SESSION_LOGON = 5;

const WTS_SESSION_REMOTE_CONTROL = 9;

const WTS_SESSION_TERMINATE = 11;

const WTS_SESSION_UNLOCK = 8;

const XUSER_MAX_COUNT = 4;
