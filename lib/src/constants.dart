// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Standard constants exposed by the Win32 API

// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

// -----------------------------------------------------------------------------
// General constants
// -----------------------------------------------------------------------------

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

// -----------------------------------------------------------------------------
// COM Error Codes
// -----------------------------------------------------------------------------

/// For broadly applicable common status codes such as S_OK.
const FACILITY_NULL = 0;

/// For status codes returned from remote procedure calls.
const FACILITY_RPC = 1;

/// For late-binding IDispatch interface errors.
const FACILITY_DISPATCH = 2;

/// For status codes returned from IStorage or IStream method calls relating to
/// structured storage. Status codes whose code (lower 16 bits) value is in the
/// range of MS-DOS error codes (that is, less than 256) have the same meaning
/// as the corresponding MS-DOS error.
const FACILITY_STORAGE = 3;

/// For most status codes returned from interface methods. The actual meaning of
/// the error is defined by the interface. That is, two HRESULTs with exactly
/// the same 32-bit value returned from two different interfaces might have
/// different meanings.
const FACILITY_ITF = 4;

/// Used to provide a means of handling error codes from functions in the
/// Windows API as an HRESULT. Error codes in 16-bit OLE that duplicated system
/// error codes have also been changed to FACILITY_WIN32.
const FACILITY_WIN32 = 7;

/// Used for additional error codes from Microsoft-defined interfaces.
const FACILITY_WINDOWS = 8;

/// The source of the error code is the Security API layer.
const FACILITY_SSPI = 9;

/// The source of the error code is the Security API layer.
const FACILITY_SECURITY = 9;

/// The source of the error code is the control mechanism.
const FACILITY_CONTROL = 10;

/// The source of the error code is a certificate client or server
const FACILITY_CERT = 11;

/// The source of the error code is Wininet related.
const FACILITY_INTERNET = 12;

// -----------------------------------------------------------------------------
// Error constants
// -----------------------------------------------------------------------------

/// The operation completed successfully.
const ERROR_SUCCESS = 0;

/// The operation completed successfully.
const NO_ERROR = 0;

/// The operation completed successfully.
const SEC_E_OK = 0;

/// Incorrect function.
const ERROR_INVALID_FUNCTION = 1;

/// The system cannot find the file specified.
const ERROR_FILE_NOT_FOUND = 2;

/// The system cannot find the path specified.
const ERROR_PATH_NOT_FOUND = 3;

/// The system cannot open the file.
const ERROR_TOO_MANY_OPEN_FILES = 4;

/// Access is denied.
const ERROR_ACCESS_DENIED = 5;

/// The handle is invalid.
const ERROR_INVALID_HANDLE = 6;

/// The storage control blocks were destroyed.
const ERROR_ARENA_TRASHED = 7;

/// Not enough memory resources are available to process this command.
const ERROR_NOT_ENOUGH_MEMORY = 8;

/// The storage control block address is invalid.
const ERROR_INVALID_BLOCK = 9;

/// The environment is incorrect.
const ERROR_BAD_ENVIRONMENT = 10;

/// An attempt was made to load a program with an incorrect format.
const ERROR_BAD_FORMAT = 11;

/// The access code is invalid.
const ERROR_INVALID_ACCESS = 12;

/// The data is invalid.
const ERROR_INVALID_DATA = 13;

/// Not enough storage is available to complete this operation.
const ERROR_OUTOFMEMORY = 14;

/// The system cannot find the drive specified.
const ERROR_INVALID_DRIVE = 15;

/// The directory cannot be removed.
const ERROR_CURRENT_DIRECTORY = 16;

/// The system cannot move the file to a different disk drive.
const ERROR_NOT_SAME_DEVICE = 17;

/// There are no more files.
const ERROR_NO_MORE_FILES = 18;

/// The media is write protected.
const ERROR_WRITE_PROTECT = 19;

/// The system cannot find the device specified.
const ERROR_BAD_UNIT = 20;

/// The device is not ready.
const ERROR_NOT_READY = 21;

/// The device does not recognize the command.
const ERROR_BAD_COMMAND = 22;

/// Data error (cyclic redundancy check).
const ERROR_CRC = 23;

/// The program issued a command but the command length is incorrect.
const ERROR_BAD_LENGTH = 24;

/// The drive cannot locate a specific area or track on the disk.
const ERROR_SEEK = 25;

/// The specified disk or diskette cannot be accessed.
const ERROR_NOT_DOS_DISK = 26;

/// The drive cannot find the sector requested.
const ERROR_SECTOR_NOT_FOUND = 27;

/// The printer is out of paper.
const ERROR_OUT_OF_PAPER = 28;

/// The system cannot write to the specified device.
const ERROR_WRITE_FAULT = 29;

/// The system cannot read from the specified device.
const ERROR_READ_FAULT = 30;

/// A device attached to the system is not functioning.
const ERROR_GEN_FAILURE = 31;

/// The process cannot access the file because it is being used by another
/// process.
const ERROR_SHARING_VIOLATION = 32;

/// The process cannot access the file because another process has locked a
/// portion of the file.
const ERROR_LOCK_VIOLATION = 33;

/// The wrong diskette is in the drive.
const ERROR_WRONG_DISK = 34;

/// Too many files opened for sharing.
const ERROR_SHARING_BUFFER_EXCEEDED = 36;

/// Reached the end of the file.
const ERROR_HANDLE_EOF = 38;

/// The disk is full.
const ERROR_HANDLE_DISK_FULL = 39;

/// The request is not supported.
const ERROR_NOT_SUPPORTED = 50;

/// Windows cannot find the network path. Verify that the network path is
/// correct and the destination computer is not busy or turned off. If Windows
/// still cannot find the network path, contact your network administrator.
const ERROR_REM_NOT_LIST = 51;

/// You were not connected because a duplicate name exists on the network. If
/// joining a domain, go to System in Control Panel to change the computer name
/// and try again. If joining a workgroup, choose another workgroup name.
const ERROR_DUP_NAME = 52;

/// The network path was not found.
const ERROR_BAD_NETPATH = 53;

/// The network is busy.
const ERROR_NETWORK_BUSY = 54;

/// The specified network resource or device is no longer available.
const ERROR_DEV_NOT_EXIST = 55;

/// The network BIOS command limit has been reached.
const ERROR_TOO_MANY_CMDS = 56;

/// A network adapter hardware error occurred.
const ERROR_ADAP_HDW_ERR = 57;

/// The specified server cannot perform the requested operation.
const ERROR_BAD_NET_RESP = 58;

/// An unexpected network error occurred.
const ERROR_UNEXP_NET_ERR = 59;

/// The remote adapter is not compatible.
const ERROR_BAD_REM_ADAP = 60;

/// The printer queue is full.
const ERROR_PRINTQ_FULL = 61;

/// Space to store the file waiting to be printed is not available on the server.
const ERROR_NO_SPOOL_SPACE = 62;

/// Your file waiting to be printed was deleted.
const ERROR_PRINT_CANCELLED = 63;

/// The specified network name is no longer available.
const ERROR_NETNAME_DELETED = 64;

/// Network access is denied.
const ERROR_NETWORK_ACCESS_DENIED = 65;

/// The network resource type is not correct.
const ERROR_BAD_DEV_TYPE = 66;

/// The network name cannot be found.
const ERROR_BAD_NET_NAME = 67;

/// The name limit for the local computer network adapter card was exceeded.
const ERROR_TOO_MANY_NAMES = 68;

/// The network BIOS session limit was exceeded.
const ERROR_TOO_MANY_SESS = 69;

/// The remote server has been paused or is in the process of being started.
const ERROR_SHARING_PAUSED = 70;

/// No more connections can be made to this remote computer at this time because
/// there are already as many connections as the computer can accept.
const ERROR_REQ_NOT_ACCEP = 71;

/// The specified printer or disk device has been paused.
const ERROR_REDIR_PAUSED = 72;

/// The file exists.
const ERROR_FILE_EXISTS = 80;

/// The directory or file cannot be created.
const ERROR_CANNOT_MAKE = 82;

/// Fail on INT 24.
const ERROR_FAIL_I24 = 83;

/// Storage to process this request is not available.
const ERROR_OUT_OF_STRUCTURES = 84;

/// The local device name is already in use.
const ERROR_ALREADY_ASSIGNED = 85;

/// The specified network password is not correct.
const ERROR_INVALID_PASSWORD = 86;

/// The parameter is incorrect.
const ERROR_INVALID_PARAMETER = 87;

/// A write fault occurred on the network.
const ERROR_NET_WRITE_FAULT = 88;

/// The system cannot start another process at this time.
const ERROR_NO_PROC_SLOTS = 89;

/// Cannot create another system semaphore.
const ERROR_TOO_MANY_SEMAPHORES = 100;

/// The exclusive semaphore is owned by another process.
const ERROR_EXCL_SEM_ALREADY_OWNED = 101;

/// The semaphore is set and cannot be closed.
const ERROR_SEM_IS_SET = 102;

/// The semaphore cannot be set again.
const ERROR_TOO_MANY_SEM_REQUESTS = 103;

/// Cannot request exclusive semaphores at interrupt time.
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
const ERROR_NO_SUCH_LOGON_SESSION = 1312;

/// @nodoc
const ERROR_INVALID_FLAGS = 1004;

/// @nodoc
const ERROR_BAD_USERNAME = 2202;

/// @nodoc
const ERROR_NOT_FOUND = 1168;

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

// -----------------------------------------------------------------------------
// Format message flags
// -----------------------------------------------------------------------------

/// Insert sequences in the message definition are to be ignored and passed
/// through to the output buffer unchanged. This flag is useful for fetching a
/// message for later formatting. If this flag is set, the Arguments parameter
/// is ignored.
const FORMAT_MESSAGE_IGNORE_INSERTS = 0x00000200;

/// The lpSource parameter is a pointer to a null-terminated string that
/// contains a message definition. The message definition may contain insert
/// sequences, just as the message text in a message table resource may. This
/// flag cannot be used with FORMAT_MESSAGE_FROM_HMODULE or
/// FORMAT_MESSAGE_FROM_SYSTEM.
const FORMAT_MESSAGE_FROM_STRING = 0x00000400;

/// The lpSource parameter is a module handle containing the message-table
/// resource(s) to search. If this lpSource handle is NULL, the current
/// process's application image file will be searched. This flag cannot be used
/// with FORMAT_MESSAGE_FROM_STRING.
const FORMAT_MESSAGE_FROM_HMODULE = 0x00000800;

/// The function should search the system message-table resource(s) for the
/// requested message. If this flag is specified with
/// FORMAT_MESSAGE_FROM_HMODULE, the function searches the system message table
/// if the message is not found in the module specified by lpSource. This flag
/// cannot be used with FORMAT_MESSAGE_FROM_STRING.
const FORMAT_MESSAGE_FROM_SYSTEM = 0x00001000;

/// The Arguments parameter is not a va_list structure, but is a pointer to an
/// array of values that represent the arguments.
const FORMAT_MESSAGE_ARGUMENT_ARRAY = 0x00002000;

/// The function ignores regular line breaks in the message definition text. The
/// function stores hard-coded line breaks in the message definition text into
/// the output buffer. The function generates no new line breaks.
const FORMAT_MESSAGE_MAX_WIDTH_MASK = 0x000000FF;

// -----------------------------------------------------------------------------
// WindowStyle constants
// -----------------------------------------------------------------------------

/// The window has a thin-line border.
const WS_BORDER = 0x00800000;

/// The window has a title bar (includes the WS_BORDER style).
const WS_CAPTION = 0x00C00000;

/// The window is a child window. A window with this style cannot have a menu
/// bar. This style cannot be used with the WS_POPUP style.
const WS_CHILD = 0x40000000;

/// Same as the WS_CHILD style.
const WS_CHILDWINDOW = 0x40000000;

/// Excludes the area occupied by child windows when drawing occurs within the
/// parent window. This style is used when creating the parent window.
const WS_CLIPCHILDREN = 0x02000000;

/// Clips child windows relative to each other; that is, when a particular child
/// window receives a WM_PAINT message, the WS_CLIPSIBLINGS style clips all
/// other overlapping child windows out of the region of the child window to be
/// updated. If WS_CLIPSIBLINGS is not specified and child windows overlap, it
/// is possible, when drawing within the client area of a child window, to draw
/// within the client area of a neighboring child window.
const WS_CLIPSIBLINGS = 0x04000000;

/// The window is initially disabled. A disabled window cannot receive input
/// from the user. To change this after a window has been created, use the
/// EnableWindow function.
const WS_DISABLED = 0x08000000;

/// The window has a border of a style typically used with dialog boxes. A
/// window with this style cannot have a title bar.
const WS_DLGFRAME = 0x00400000;

/// The window is the first control of a group of controls.
///
/// The group consists of this first control and all controls defined after it,
/// up to the next control with the WS_GROUP style. The first control in each
/// group usually has the WS_TABSTOP style so that the user can move from group
/// to group. The user can subsequently change the keyboard focus from one
/// control in the group to the next control in the group by using the direction
/// keys.
///
/// You can turn this style on and off to change dialog box navigation. To
/// change this style after a window has been created, use the SetWindowLong
/// function.
const WS_GROUP = 0x00020000;

/// The window has a horizontal scroll bar.
const WS_HSCROLL = 0x00100000;

/// The window is initially minimized. Same as the WS_MINIMIZE style.
const WS_ICONIC = 0x20000000;

/// The window is initially maximized.
const WS_MAXIMIZE = 0x01000000;

/// The window has a maximize button. Cannot be combined with the
/// WS_EX_CONTEXTHELP style. The WS_SYSMENU style must also be specified.
const WS_MAXIMIZEBOX = 0x00010000;

/// The window is initially minimized. Same as the WS_ICONIC style.
const WS_MINIMIZE = 0x20000000;

/// The window has a minimize button. Cannot be combined with the
/// WS_EX_CONTEXTHELP style. The WS_SYSMENU style must also be specified.
const WS_MINIMIZEBOX = 0x00020000;

/// The window is an overlapped window. An overlapped window has a title bar and
/// a border. Same as the WS_TILED style.
const WS_OVERLAPPED = 0x00000000;

/// The window is an overlapped window. Same as the WS_TILEDWINDOW style.
const WS_OVERLAPPEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;

/// The window is a pop-up window. This style cannot be used with the WS_CHILD
/// style.
const WS_POPUP = 0x80000000;

/// The window is a pop-up window. The WS_CAPTION and WS_POPUPWINDOW styles must
/// be combined to make the window menu visible.
const WS_POPUPWINDOW = WS_POPUP | WS_BORDER | WS_SYSMENU;

/// The window has a sizing border. Same as the WS_THICKFRAME style.
const WS_SIZEBOX = 0x00040000;

/// The window has a window menu on its title bar. The WS_CAPTION style must
/// also be specified.
const WS_SYSMENU = 0x00080000;

/// The window is a control that can receive the keyboard focus when the user
/// presses the TAB key.
///
/// Pressing the TAB key changes the keyboard focus to the next control with the
/// WS_TABSTOP style.
///
/// You can turn this style on and off to change dialog box navigation. To
/// change this style after a window has been created, use the SetWindowLong
/// function. For user-created windows and modeless dialogs to work with tab
/// stops, alter the message loop to call the IsDialogMessage function.
const WS_TABSTOP = 0x00010000;

/// The window has a sizing border. Same as the WS_SIZEBOX style.
const WS_THICKFRAME = 0x00040000;

/// The window is an overlapped window. An overlapped window has a title bar and
/// a border. Same as the WS_OVERLAPPED style.
const WS_TILED = 0x00000000;

/// The window is an overlapped window. Same as the WS_OVERLAPPEDWINDOW style.
const WS_TILEDWINDOW = WS_OVERLAPPED |
    WS_CAPTION |
    WS_SYSMENU |
    WS_THICKFRAME |
    WS_MINIMIZEBOX |
    WS_MAXIMIZEBOX;

/// The window is initially visible.
///
/// This style can be turned on and off by using the ShowWindow or SetWindowPos
/// function.
const WS_VISIBLE = 0x10000000;

/// The window has a vertical scroll bar.
const WS_VSCROLL = 0x00200000;

// -----------------------------------------------------------------------------
// WindowMessage constants
// -----------------------------------------------------------------------------

/// Performs no operation.
///
/// An application sends the WM_NULL message if it wants to post a message that
/// the recipient window will ignore.
const WM_NULL = 0x0000;

/// Sent when an application requests that a window be created by calling the
/// CreateWindowEx or CreateWindow function.
///
/// (The message is sent before the function returns.) The window procedure of
/// the new window receives this message after the window is created, but before
/// the window becomes visible.
const WM_CREATE = 0x0001;

/// Sent when a window is being destroyed.
///
/// It is sent to the window procedure of the window being destroyed after the
/// window is removed from the screen.
///
/// This message is sent first to the window being destroyed and then to the
/// child windows (if any) as they are destroyed. During the processing of the
/// message, it can be assumed that all child windows still exist.
const WM_DESTROY = 0x0002;

/// Sent after a window has been moved.
const WM_MOVE = 0x0003;

/// Sent to a window after its size has changed.
const WM_SIZE = 0x0005;

/// Sent to both the window being activated and the window being deactivated.
///
/// If the windows use the same input queue, the message is sent synchronously,
/// first to the window procedure of the top-level window being deactivated,
/// then to the window procedure of the top-level window being activated. If the
/// windows use different input queues, the message is sent asynchronously, so
/// the window is activated immediately.
const WM_ACTIVATE = 0x0006;

/// Sent to a window after it has gained the keyboard focus.
const WM_SETFOCUS = 0x0007;

/// Sent to a window immediately before it loses the keyboard focus.
const WM_KILLFOCUS = 0x0008;

/// Sent when an application changes the enabled state of a window.
///
/// It is sent to the window whose enabled state is changing. This message is
/// sent before the EnableWindow function returns, but after the enabled state
/// (WS_DISABLED style bit) of the window has changed.
const WM_ENABLE = 0x000A;

/// An application sends the WM_SETREDRAW message to a window to allow changes
/// in that window to be redrawn or to prevent changes in that window from being
/// redrawn.
const WM_SETREDRAW = 0x000B;

/// Sets the text of a window.
const WM_SETTEXT = 0x000C;

/// Copies the text that corresponds to a window into a buffer provided by the
/// caller.
const WM_GETTEXT = 0x000D;

/// Determines the length, in characters, of the text associated with a window.
const WM_GETTEXTLENGTH = 0x000E;

/// The WM_PAINT message is sent when the system or another application makes a
/// request to paint a portion of an application's window.
///
/// The message is sent when the UpdateWindow or RedrawWindow function is
/// called, or by the DispatchMessage function when the application obtains a
/// WM_PAINT message by using the GetMessage or PeekMessage function.
const WM_PAINT = 0x000F;

/// Sent as a signal that a window or an application should terminate.
const WM_CLOSE = 0x0010;

/// The WM_QUERYENDSESSION message is sent when the user chooses to end the
/// session or when an application calls one of the system shutdown functions.
///
/// If any application returns zero, the session is not ended. The system stops
/// sending WM_QUERYENDSESSION messages as soon as one application returns zero.
///
/// After processing this message, the system sends the WM_ENDSESSION message
/// with the wParam parameter set to the results of the WM_QUERYENDSESSION
/// message.
const WM_QUERYENDSESSION = 0x0011;

/// Sent to an icon when the user requests that the window be restored to its
/// previous size and position.
const WM_QUERYOPEN = 0x0013;

/// The WM_ENDSESSION message is sent to an application after the system
/// processes the results of the WM_QUERYENDSESSION message. The WM_ENDSESSION
/// message informs the application whether the session is ending.
const WM_ENDSESSION = 0x0016;

/// Indicates a request to terminate an application, and is generated when the
/// application calls the PostQuitMessage function. This message causes the
/// GetMessage function to return zero.
const WM_QUIT = 0x0012;

/// Sent when the window background must be erased (for example, when a window
/// is resized). The message is sent to prepare an invalidated portion of a
/// window for painting.
const WM_ERASEBKGND = 0x0014;

/// The WM_SYSCOLORCHANGE message is sent to all top-level windows when a change
/// is made to a system color setting.
const WM_SYSCOLORCHANGE = 0x0015;

/// Sent to a window when the window is about to be hidden or shown.
const WM_SHOWWINDOW = 0x0018;

/// An application sends the WM_WININICHANGE message to all top-level windows
/// after making a change to the WIN.INI file. The SystemParametersInfo function
/// sends this message after an application uses the function to change a
/// setting in WIN.INI.
const WM_WININICHANGE = 0x001A;

/// A message that is sent to all top-level windows when the
/// SystemParametersInfo function changes a system-wide setting or when policy
/// settings have changed.
///
/// Applications should send WM_SETTINGCHANGE to all top-level windows when they
/// make changes to system parameters. (This message cannot be sent directly to
/// a window.) To send the WM_SETTINGCHANGE message to all top-level windows,
/// use the SendMessageTimeout function with the hwnd parameter set to
/// HWND_BROADCAST.
const WM_SETTINGCHANGE = WM_WININICHANGE;

/// The WM_DEVMODECHANGE message is sent to all top-level windows whenever the
/// user changes device-mode settings.
const WM_DEVMODECHANGE = 0x001B;

/// Sent when a window belonging to a different application than the active
/// window is about to be activated. The message is sent to the application
/// whose window is being activated and to the application whose window is being
/// deactivated.
const WM_ACTIVATEAPP = 0x001C;

/// An application sends the WM_FONTCHANGE message to all top-level windows in
/// the system after changing the pool of font resources.
const WM_FONTCHANGE = 0x001D;

/// A message that is sent whenever there is a change in the system time.
const WM_TIMECHANGE = 0x001E;

/// Sent to cancel certain modes, such as mouse capture. For example, the system
/// sends this message to the active window when a dialog box or message box is
/// displayed. Certain functions also send this message explicitly to the
/// specified window regardless of whether it is the active window. For example,
/// the EnableWindow function sends this message when disabling the specified
/// window.
const WM_CANCELMODE = 0x001F;

/// Sent to a window if the mouse causes the cursor to move within a window and
/// mouse input is not captured.
const WM_SETCURSOR = 0x0020;

/// Sent when the cursor is in an inactive window and the user presses a mouse
/// button. The parent window receives this message only if the child window
/// passes it to the DefWindowProc function.
const WM_MOUSEACTIVATE = 0x0021;

/// Sent to a child window when the user clicks the window's title bar or when
/// the window is activated, moved, or sized.
const WM_CHILDACTIVATE = 0x0022;

/// Sent by a computer-based training (CBT) application to separate user-input
/// messages from other messages sent through the WH_JOURNALPLAYBACK procedure.
const WM_QUEUESYNC = 0x0023;

/// Sent to a window when the size or position of the window is about to change.
/// An application can use this message to override the window's default
/// maximized size and position, or its default minimum or maximum tracking
/// size.
const WM_GETMINMAXINFO = 0x0024;

/// Deprecated. This message is not sent in modern versions of Windows.
const WM_PAINTICON = 0x0026;

/// Deprecated. This message is not sent in modern versions of Windows.
const WM_ICONERASEBKGND = 0x0027;

/// Sent to a dialog box procedure to set the keyboard focus to a different
/// control in the dialog box.
const WM_NEXTDLGCTL = 0x0028;

/// The WM_SPOOLERSTATUS message is sent from Print Manager whenever a job is
/// added to or removed from the Print Manager queue.
const WM_SPOOLERSTATUS = 0x002A;

/// Sent to the parent window of an owner-drawn button, combo box, list box, or
/// menu when a visual aspect of the button, combo box, list box, or menu has
/// changed.
const WM_DRAWITEM = 0x002B;

/// Sent to the owner window of a combo box, list box, list-view control, or
/// menu item when the control or menu is created.
const WM_MEASUREITEM = 0x002C;

/// Sent to the owner of a list box or combo box when the list box or combo box
/// is destroyed or when items are removed by the LB_DELETESTRING,
/// LB_RESETCONTENT, CB_DELETESTRING, or CB_RESETCONTENT message. The system
/// sends a WM_DELETEITEM message for each deleted item. The system sends the
/// WM_DELETEITEM message for any deleted list box or combo box item with
/// nonzero item data.
const WM_DELETEITEM = 0x002D;

/// Sent by a list box with the LBS_WANTKEYBOARDINPUT style to its owner in
/// response to a WM_KEYDOWN message.
const WM_VKEYTOITEM = 0x002E;

/// Sent by a list box with the LBS_WANTKEYBOARDINPUT style to its owner in
/// response to a WM_CHAR message.
const WM_CHARTOITEM = 0x002F;

/// Sets the font that a control is to use when drawing text.
const WM_SETFONT = 0x0030;

/// Retrieves the font with which the control is currently drawing its text.
const WM_GETFONT = 0x0031;

/// Sent to a window to associate a hot key with the window. When the user
/// presses the hot key, the system activates the window.
const WM_SETHOTKEY = 0x0032;

/// Sent to determine the hot key associated with a window.
const WM_GETHOTKEY = 0x0033;

/// Sent to a minimized (iconic) window. The window is about to be dragged by
/// the user but does not have an icon defined for its class. An application can
/// return a handle to an icon or cursor. The system displays this cursor or
/// icon while the user drags the icon.
const WM_QUERYDRAGICON = 0x0037;

/// Sent to determine the relative position of a new item in the sorted list of
/// an owner-drawn combo box or list box. Whenever the application adds a new
/// item, the system sends this message to the owner of a combo box or list box
/// created with the CBS_SORT or LBS_SORT style.
const WM_COMPAREITEM = 0x0039;

/// Sent by both Microsoft Active Accessibility and Microsoft UI Automation to
/// obtain information about an accessible object contained in a server
/// application.
///
/// Applications never send this message directly. Microsoft Active
/// Accessibility sends this message in response to calls to
/// AccessibleObjectFromPoint, AccessibleObjectFromEvent, or
/// AccessibleObjectFromWindow. However, server applications handle this
/// message. UI Automation sends this message in response to calls to
/// IUIAutomation::ElementFromHandle, ElementFromPoint, and GetFocusedElement,
/// and when handling events for which a client has registered.
const WM_GETOBJECT = 0x003D;

/// Sent to all top-level windows when the system detects more than 12.5 percent
/// of system time over a 30- to 60-second interval is being spent compacting
/// memory. This indicates that system memory is low.
const WM_COMPACTING = 0x0041;

/// Deprecated. This message is not sent in modern versions of Windows.
const WM_COMMNOTIFY = 0x0044;

/// Sent to a window whose size, position, or place in the Z order is about to
/// change as a result of a call to the SetWindowPos function or another
/// window-management function.
const WM_WINDOWPOSCHANGING = 0x0046;

/// Sent to a window whose size, position, or place in the Z order has changed
/// as a result of a call to the SetWindowPos function or another
/// window-management function.
const WM_WINDOWPOSCHANGED = 0x0047;

/// Notifies applications that the system, typically a battery-powered personal
/// computer, is about to enter a suspended mode.
const WM_POWER = 0x0048;

/// Sent by a common control to its parent window when an event has occurred or
/// the control requires some information.
const WM_NOTIFY = 0x004E;

/// Posted to the window with the focus when the user chooses a new input
/// language, either with the hotkey (specified in the Keyboard control panel
/// application) or from the indicator on the system taskbar. An application can
/// accept the change by passing the message to the DefWindowProc function or
/// reject the change (and prevent it from taking place) by returning
/// immediately.
const WM_INPUTLANGCHANGEREQUEST = 0x0050;

/// Sent to the topmost affected window after an application's input language
/// has been changed. You should make any application-specific settings and pass
/// the message to the DefWindowProc function, which passes the message to all
/// first-level child windows. These child windows can pass the message to
/// DefWindowProc to have it pass the message to their child windows, and so on.
const WM_INPUTLANGCHANGE = 0x0051;

/// Sent to an application that has initiated a training card with Windows Help.
/// The message informs the application when the user clicks an authorable
/// button. An application initiates a training card by specifying the
/// HELP_TCARD command in a call to the WinHelp function.
const WM_TCARD = 0x0052;

/// Indicates that the user pressed the F1 key. If a menu is active when F1 is
/// pressed, WM_HELP is sent to the window associated with the menu; otherwise,
/// WM_HELP is sent to the window that has the keyboard focus. If no window has
/// the keyboard focus, WM_HELP is sent to the currently active window.
const WM_HELP = 0x0053;

/// Sent to all windows after the user has logged on or off. When the user logs
/// on or off, the system updates the user-specific settings. The system sends
/// this message immediately after updating the settings.
const WM_USERCHANGED = 0x0054;

/// Determines if a window accepts ANSI or Unicode structures in the WM_NOTIFY
/// notification message. WM_NOTIFYFORMAT messages are sent from a common
/// control to its parent window and from the parent window to the common
/// control.
const WM_NOTIFYFORMAT = 0x0055;

/// Notifies a window that the user clicked the right mouse button
/// (right-clicked) in the window.
const WM_CONTEXTMENU = 0x007B;

/// Sent to a window when the SetWindowLong function is about to change one or
/// more of the window's styles.
const WM_STYLECHANGING = 0x007C;

/// Sent to a window after the SetWindowLong function has changed one or more of
/// the window's styles.
const WM_STYLECHANGED = 0x007D;

/// The WM_DISPLAYCHANGE message is sent to all windows when the display
/// resolution has changed.
const WM_DISPLAYCHANGE = 0x007E;

/// Sent to a window to retrieve a handle to the large or small icon associated
/// with a window. The system displays the large icon in the ALT+TAB dialog, and
/// the small icon in the window caption.
const WM_GETICON = 0x007F;

/// Associates a new large or small icon with a window. The system displays the
/// large icon in the ALT+TAB dialog box, and the small icon in the window
/// caption.
const WM_SETICON = 0x0080;

/// Sent prior to the WM_CREATE message when a window is first created.
const WM_NCCREATE = 0x0081;

/// Notifies a window that its nonclient area is being destroyed. The
/// DestroyWindow function sends the WM_NCDESTROY message to the window
/// following the WM_DESTROY message.WM_DESTROY is used to free the allocated
/// memory object associated with the window.
///
/// The WM_NCDESTROY message is sent after the child windows have been
/// destroyed. In contrast, WM_DESTROY is sent before the child windows are
/// destroyed.
const WM_NCDESTROY = 0x0082;

/// Sent when the size and position of a window's client area must be
/// calculated. By processing this message, an application can control the
/// content of the window's client area when the size or position of the window
/// changes.
const WM_NCCALCSIZE = 0x0083;

/// Sent to a window in order to determine what part of the window corresponds
/// to a particular screen coordinate. This can happen, for example, when the
/// cursor moves, when a mouse button is pressed or released, or in response to
/// a call to a function such as WindowFromPoint. If the mouse is not captured,
/// the message is sent to the window beneath the cursor. Otherwise, the message
/// is sent to the window that has captured the mouse.
const WM_NCHITTEST = 0x0084;

/// The WM_NCPAINT message is sent to a window when its frame must be painted.
const WM_NCPAINT = 0x0085;

/// Sent to a window when its nonclient area needs to be changed to indicate an
/// active or inactive state.
const WM_NCACTIVATE = 0x0086;

/// Sent to the window procedure associated with a control. By default, the
/// system handles all keyboard input to the control; the system interprets
/// certain types of keyboard input as dialog box navigation keys. To override
/// this default behavior, the control can respond to the WM_GETDLGCODE message
/// to indicate the types of input it wants to process itself.
const WM_GETDLGCODE = 0x0087;

/// The WM_SYNCPAINT message is used to synchronize painting while avoiding
/// linking independent GUI threads.
const WM_SYNCPAINT = 0x0088;

/// Posted to a window when the cursor is moved within the nonclient area of the
/// window. This message is posted to the window that contains the cursor. If a
/// window has captured the mouse, this message is not posted.
const WM_NCMOUSEMOVE = 0x00A0;

/// Posted when the user presses the left mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCLBUTTONDOWN = 0x00A1;

/// Posted when the user releases the left mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCLBUTTONUP = 0x00A2;

/// Posted when the user double-clicks the left mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCLBUTTONDBLCLK = 0x00A3;

/// Posted when the user presses the right mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCRBUTTONDOWN = 0x00A4;

/// Posted when the user releases the right mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCRBUTTONUP = 0x00A5;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is within the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_NCRBUTTONDBLCLK = 0x00A6;

/// Posted when the user presses the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCMBUTTONDOWN = 0x00A7;

/// Posted when the user releases the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCMBUTTONUP = 0x00A8;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is within the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_NCMBUTTONDBLCLK = 0x00A9;

/// Posted when the user presses the first or second X button while the cursor
/// is in the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCXBUTTONDOWN = 0x00AB;

/// Posted when the user releases the first or second X button while the cursor
/// is in the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_NCXBUTTONUP = 0x00AC;

/// Posted when the user double-clicks the first or second X button while the
/// cursor is in the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_NCXBUTTONDBLCLK = 0x00AD;

/// Sent to the window that registered to receive raw input.
///
/// Raw input notifications are available only after the application calls
/// RegisterRawInputDevices with RIDEV_DEVNOTIFY flag.
const WM_INPUT_DEVICE_CHANGE = 0x00FE;

/// Sent to the window that is getting raw input.
const WM_INPUT = 0x00FF;

/// Posted to the window with the keyboard focus when a nonsystem key is
/// pressed. A nonsystem key is a key that is pressed when the ALT key is not
/// pressed.
const WM_KEYDOWN = 0x0100;

/// Posted to the window with the keyboard focus when a nonsystem key is
/// released. A nonsystem key is a key that is pressed when the ALT key is not
/// pressed, or a keyboard key that is pressed when a window has the keyboard
/// focus.
const WM_KEYUP = 0x0101;

/// Posted to the window with the keyboard focus when a WM_KEYDOWN message is
/// translated by the TranslateMessage function. The WM_CHAR message contains
/// the character code of the key that was pressed.
const WM_CHAR = 0x0102;

/// Posted to the window with the keyboard focus when a WM_KEYUP message is
/// translated by the TranslateMessage function. WM_DEADCHAR specifies a
/// character code generated by a dead key. A dead key is a key that generates a
/// character, such as the umlaut (double-dot), that is combined with another
/// character to form a composite character. For example, the umlaut-O character
/// (Ö) is generated by typing the dead key for the umlaut character, and then
/// typing the O key.
const WM_DEADCHAR = 0x0103;

/// Posted to the window with the keyboard focus when the user presses the F10
/// key (which activates the menu bar) or holds down the ALT key and then
/// presses another key. It also occurs when no window currently has the
/// keyboard focus; in this case, the WM_SYSKEYDOWN message is sent to the
/// active window. The window that receives the message can distinguish between
/// these two contexts by checking the context code in the lParam parameter.
const WM_SYSKEYDOWN = 0x0104;

/// Posted to the window with the keyboard focus when the user releases a key
/// that was pressed while the ALT key was held down. It also occurs when no
/// window currently has the keyboard focus; in this case, the WM_SYSKEYUP
/// message is sent to the active window. The window that receives the message
/// can distinguish between these two contexts by checking the context code in
/// the lParam parameter.
const WM_SYSKEYUP = 0x0105;

/// Posted to the window with the keyboard focus when a WM_SYSKEYDOWN message is
/// translated by the TranslateMessage function. It specifies the character code
/// of a system character key that is, a character key that is pressed while the
/// ALT key is down.
const WM_SYSCHAR = 0x0106;

/// Sent to the window with the keyboard focus when a WM_SYSKEYDOWN message is
/// translated by the TranslateMessage function. WM_SYSDEADCHAR specifies the
/// character code of a system dead key that is, a dead key that is pressed
/// while holding down the ALT key.
const WM_SYSDEADCHAR = 0x0107;

/// Sent to the dialog box procedure immediately before a dialog box is
/// displayed. Dialog box procedures typically use this message to initialize
/// controls and carry out any other initialization tasks that affect the
/// appearance of the dialog box.
const WM_INITDIALOG = 0x0110;

/// Sent when the user selects a command item from a menu, when a control sends
/// a notification message to its parent window, or when an accelerator
/// keystroke is translated.
const WM_COMMAND = 0x0111;

/// A window receives this message when the user chooses a command from the
/// Window menu (formerly known as the system or control menu) or when the user
/// chooses the maximize button, minimize button, restore button, or close
/// button.
const WM_SYSCOMMAND = 0x0112;

/// Posted to the installing thread's message queue when a timer expires. The
/// message is posted by the GetMessage or PeekMessage function.
const WM_TIMER = 0x0113;

/// The WM_HSCROLL message is sent to a window when a scroll event occurs in the
/// window's standard horizontal scroll bar. This message is also sent to the
/// owner of a horizontal scroll bar control when a scroll event occurs in the
/// control.
const WM_HSCROLL = 0x0114;

/// The WM_VSCROLL message is sent to a window when a scroll event occurs in the
/// window's standard vertical scroll bar. This message is also sent to the
/// owner of a vertical scroll bar control when a scroll event occurs in the
/// control.
const WM_VSCROLL = 0x0115;

/// Sent when a menu is about to become active. It occurs when the user clicks
/// an item on the menu bar or presses a menu key. This allows the application
/// to modify the menu before it is displayed.
const WM_INITMENU = 0x0116;

/// Sent when a drop-down menu or submenu is about to become active. This allows
/// an application to modify the menu before it is displayed, without changing
/// the entire menu.
const WM_INITMENUPOPUP = 0x0117;

/// Passes information about a gesture.
const WM_GESTURE = 0x0119;

/// Gives you a chance to set the gesture configuration.
const WM_GESTURENOTIFY = 0x011A;

/// Sent to a menu's owner window when the user selects a menu item.
const WM_MENUSELECT = 0x011F;

/// Sent when a menu is active and the user presses a key that does not
/// correspond to any mnemonic or accelerator key. This message is sent to the
/// window that owns the menu.
const WM_MENUCHAR = 0x0120;

/// Sent to the owner window of a modal dialog box or menu that is entering an
/// idle state. A modal dialog box or menu enters an idle state when no messages
/// are waiting in its queue after it has processed one or more previous
/// messages.
const WM_ENTERIDLE = 0x0121;

/// Sent when the user releases the right mouse button while the cursor is on a
/// menu item.
const WM_MENURBUTTONUP = 0x0122;

/// Sent to the owner of a drag-and-drop menu when the user drags a menu item.
const WM_MENUDRAG = 0x0123;

/// Sent to the owner of a drag-and-drop menu when the mouse cursor enters a
/// menu item or moves from the center of the item to the top or bottom of the
/// item.
const WM_MENUGETOBJECT = 0x0124;

/// Sent when a drop-down menu or submenu has been destroyed.
const WM_UNINITMENUPOPUP = 0x0125;

/// Sent when the user makes a selection from a menu.c
const WM_MENUCOMMAND = 0x0126;

/// An application sends the WM_CHANGEUISTATE message to indicate that the UI
/// state should be changed.
const WM_CHANGEUISTATE = 0x0127;

/// An application sends the WM_UPDATEUISTATE message to change the UI state for
/// the specified window and all its child windows.
const WM_UPDATEUISTATE = 0x0128;

/// An application sends the WM_QUERYUISTATE message to retrieve the UI state
/// for a window.
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

/// Posted to a window when the cursor moves. If the mouse is not captured, the
/// message is posted to the window that contains the cursor. Otherwise, the
/// message is posted to the window that has captured the mouse.
const WM_MOUSEMOVE = 0x0200;

/// Posted when the user presses the left mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_LBUTTONDOWN = 0x0201;

/// Posted when the user releases the left mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_LBUTTONUP = 0x0202;

/// Posted when the user double-clicks the left mouse button while the cursor is
/// in the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_LBUTTONDBLCLK = 0x0203;

/// Posted when the user presses the right mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_RBUTTONDOWN = 0x0204;

/// Posted when the user releases the right mouse button while the cursor is in
/// the client area of a window. If the mouse is not captured, the message is
/// posted to the window beneath the cursor. Otherwise, the message is posted to
/// the window that has captured the mouse.
const WM_RBUTTONUP = 0x0205;

/// Posted when the user double-clicks the right mouse button while the cursor
/// is in the client area of a window. If the mouse is not captured, the message
/// is posted to the window beneath the cursor. Otherwise, the message is posted
/// to the window that has captured the mouse.
const WM_RBUTTONDBLCLK = 0x0206;

/// Posted when the user presses the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_MBUTTONDOWN = 0x0207;

/// Posted when the user releases the middle mouse button while the cursor is
/// within the nonclient area of a window. This message is posted to the window
/// that contains the cursor. If a window has captured the mouse, this message
/// is not posted.
const WM_MBUTTONUP = 0x0208;

/// Posted when the user double-clicks the middle mouse button while the cursor
/// is within the nonclient area of a window. This message is posted to the
/// window that contains the cursor. If a window has captured the mouse, this
/// message is not posted.
const WM_MBUTTONDBLCLK = 0x0209;

/// Sent to the focus window when the mouse wheel is rotated. The DefWindowProc
/// function propagates the message to the window's parent. There should be no
/// internal forwarding of the message, since DefWindowProc propagates it up the
/// parent chain until it finds a window that processes it.
const WM_MOUSEWHEEL = 0x020A;

/// Posted when the user presses the first or second X button while the cursor
/// is in the client area of a window. If the mouse is not captured, the message
/// is posted to the window beneath the cursor. Otherwise, the message is posted
/// to the window that has captured the mouse.
const WM_XBUTTONDOWN = 0x020B;

/// Posted when the user releases the first or second X button while the cursor
/// is in the client area of a window. If the mouse is not captured, the message
/// is posted to the window beneath the cursor. Otherwise, the message is posted
/// to the window that has captured the mouse.
const WM_XBUTTONUP = 0x020C;

/// Posted when the user double-clicks the first or second X button while the
/// cursor is in the client area of a window. If the mouse is not captured, the
/// message is posted to the window beneath the cursor. Otherwise, the message
/// is posted to the window that has captured the mouse.
const WM_XBUTTONDBLCLK = 0x020D;

/// Sent to the active window when the mouse's horizontal scroll wheel is tilted
/// or rotated. The DefWindowProc function propagates the message to the
/// window's parent. There should be no internal forwarding of the message,
/// since DefWindowProc propagates it up the parent chain until it finds a
/// window that processes it.
const WM_MOUSEHWHEEL = 0x020E;

/// An application sends a WM_CUT message to an edit control or combo box to
/// delete (cut) the current selection, if any, in the edit control and copy the
/// deleted text to the clipboard in CF_TEXT format.
const WM_CUT = 0x0300;

/// An application sends the WM_COPY message to an edit control or combo box to
/// copy the current selection to the clipboard in CF_TEXT format.
const WM_COPY = 0x0301;

/// An application sends a WM_PASTE message to an edit control or combo box to
/// copy the current content of the clipboard to the edit control at the current
/// caret position. Data is inserted only if the clipboard contains data in
/// CF_TEXT format.
const WM_PASTE = 0x0302;

/// An application sends a WM_CLEAR message to an edit control or combo box to
/// delete (clear) the current selection, if any, from the edit control.
const WM_CLEAR = 0x0303;

/// An application sends a WM_UNDO message to an edit control to undo the last
/// operation. When this message is sent to an edit control, the previously
/// deleted text is restored or the previously added text is deleted.
const WM_UNDO = 0x0304;

/// Sent to the clipboard owner if it has delayed rendering a specific clipboard
/// format and if an application has requested data in that format. The
/// clipboard owner must render data in the specified format and place it on the
/// clipboard by calling the SetClipboardData function.
const WM_RENDERFORMAT = 0x0305;

/// Sent to the clipboard owner before it is destroyed, if the clipboard owner
/// has delayed rendering one or more clipboard formats. For the content of the
/// clipboard to remain available to other applications, the clipboard owner
/// must render data in all the formats it is capable of generating, and place
/// the data on the clipboard by calling the SetClipboardData function.
const WM_RENDERALLFORMATS = 0x0306;

/// Sent to the clipboard owner when a call to the EmptyClipboard function
/// empties the clipboard.
const WM_DESTROYCLIPBOARD = 0x0307;

/// Sent to the first window in the clipboard viewer chain when the content of
/// the clipboard changes. This enables a clipboard viewer window to display the
/// new content of the clipboard.
const WM_DRAWCLIPBOARD = 0x0308;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and the clipboard viewer's
/// client area needs repainting.
const WM_PAINTCLIPBOARD = 0x0309;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and an event occurs in the
/// clipboard viewer's vertical scroll bar. The owner should scroll the
/// clipboard image and update the scroll bar values.
const WM_VSCROLLCLIPBOARD = 0x030A;

/// Sent to the clipboard owner by a clipboard viewer window when the clipboard
/// contains data in the CF_OWNERDISPLAY format and the clipboard viewer's
/// client area has changed size.
const WM_SIZECLIPBOARD = 0x030B;

/// Sent to the clipboard owner by a clipboard viewer window to request the name
/// of a CF_OWNERDISPLAY clipboard format.
const WM_ASKCBFORMATNAME = 0x030C;

/// Sent to the first window in the clipboard viewer chain when a window is
/// being removed from the chain.
const WM_CHANGECBCHAIN = 0x030D;

/// Sent to the clipboard owner by a clipboard viewer window. This occurs when
/// the clipboard contains data in the CF_OWNERDISPLAY format and an event
/// occurs in the clipboard viewer's horizontal scroll bar. The owner should
/// scroll the clipboard image and update the scroll bar values.
const WM_HSCROLLCLIPBOARD = 0x030E;

/// The WM_QUERYNEWPALETTE message informs a window that it is about to receive
/// the keyboard focus, giving the window the opportunity to realize its logical
/// palette when it receives the focus.
const WM_QUERYNEWPALETTE = 0x030F;

/// The WM_PALETTEISCHANGING message informs applications that an application is
/// going to realize its logical palette.
const WM_PALETTEISCHANGING = 0x0310;

/// The WM_PALETTECHANGED message is sent to all top-level and overlapped
/// windows after the window with the keyboard focus has realized its logical
/// palette, thereby changing the system palette. This message enables a window
/// that uses a color palette but does not have the keyboard focus to realize
/// its logical palette and update its client area.
const WM_PALETTECHANGED = 0x0311;

/// Posted when the user presses a hot key registered by the RegisterHotKey
/// function. The message is placed at the top of the message queue associated
/// with the thread that registered the hot key.
const WM_HOTKEY = 0x0312;

// -----------------------------------------------------------------------------
// Queue status flags
// -----------------------------------------------------------------------------

/// A WM_KEYUP, WM_KEYDOWN, WM_SYSKEYUP, or WM_SYSKEYDOWN message is in the
/// queue.
const QS_KEY = 0x0001;

/// A WM_MOUSEMOVE message is in the queue.
const QS_MOUSEMOVE = 0x0002;

/// A mouse-button message (WM_LBUTTONUP, WM_RBUTTONDOWN, and so on).
const QS_MOUSEBUTTON = 0x0004;

/// A posted message (other than those listed here) is in the queue.
const QS_POSTMESSAGE = 0x0008;

/// A WM_TIMER message is in the queue.
const QS_TIMER = 0x0010;

/// A WM_PAINT message is in the queue.
const QS_PAINT = 0x0020;

/// A message sent by another thread or application is in the queue.
const QS_SENDMESSAGE = 0x0040;

/// A WM_HOTKEY message is in the queue.
const QS_HOTKEY = 0x0080;

/// A posted message (other than those listed here) is in the queue.
const QS_ALLPOSTMESSAGE = 0x0100;

/// A raw input message is in the queue.
const QS_RAWINPUT = 0x0400;

/// A touch message is in the queue.
const QS_TOUCH = 0x0800;

/// A pointer message is in the queue.
const QS_POINTER = 0x1000;

/// A WM_MOUSEMOVE message or mouse-button message (WM_LBUTTONUP,
/// WM_RBUTTONDOWN, and so on).
const QS_MOUSE = QS_MOUSEMOVE | QS_MOUSEBUTTON;

/// An input message is in the queue.
const QS_INPUT = QS_MOUSE | QS_KEY | QS_RAWINPUT | QS_TOUCH | QS_POINTER;

/// An input, WM_TIMER, WM_PAINT, WM_HOTKEY, or posted message is in the queue.
const QS_ALLEVENTS =
    QS_INPUT | QS_POSTMESSAGE | QS_TIMER | QS_PAINT | QS_HOTKEY;

/// Any message is in the queue.
const QS_ALLINPUT = QS_INPUT |
    QS_POSTMESSAGE |
    QS_TIMER |
    QS_PAINT |
    QS_HOTKEY |
    QS_SENDMESSAGE;

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

// -----------------------------------------------------------------------------
// System-wide parameters
// -----------------------------------------------------------------------------

/// Determines whether the warning beeper is on.
const SPI_GETBEEP = 0x0001;

/// Turns the warning beeper on or off. The uiParam parameter specifies TRUE for
/// on, or FALSE for off.
const SPI_SETBEEP = 0x0002;

/// Retrieves the two mouse threshold values and the mouse acceleration. The
/// pvParam parameter must point to an array of three integers that receives
/// these values. See mouse_event for further information.
const SPI_GETMOUSE = 0x0003;

/// Sets the two mouse threshold values and the mouse acceleration. The pvParam
/// parameter must point to an array of three integers that specifies these
/// values. See mouse_event for further information.
const SPI_SETMOUSE = 0x0004;

/// Retrieves the border multiplier factor that determines the width of a
/// window's sizing border. The pvParamparameter must point to an integer
/// variable that receives this value.
const SPI_GETBORDER = 0x0005;

/// Sets the border multiplier factor that determines the width of a window's
/// sizing border. The uiParam parameter specifies the new value.
const SPI_SETBORDER = 0x0006;

/// Retrieves the keyboard repeat-speed setting, which is a value in the range
/// from 0 (approximately 2.5 repetitions per second) through 31 (approximately
/// 30 repetitions per second). The actual repeat rates are hardware-dependent
/// and may vary from a linear scale by as much as 20%. The pvParam parameter
/// must point to a DWORD variable that receives the setting.
const SPI_GETKEYBOARDSPEED = 0x000A;

/// Sets the keyboard repeat-speed setting. The uiParam parameter must specify a
/// value in the range from 0 (approximately 2.5 repetitions per second) through
/// 31 (approximately 30 repetitions per second). The actual repeat rates are
/// hardware-dependent and may vary from a linear scale by as much as 20%. If
/// uiParam is greater than 31, the parameter is set to 31.
const SPI_SETKEYBOARDSPEED = 0x000B;

/// Sets or retrieves the width, in pixels, of an icon cell.
///
/// The system uses this rectangle to arrange icons in large icon view.
///
/// To set this value, set uiParam to the new value and set pvParam to NULL. You
/// cannot set this value to less than SM_CXICON.
///
/// To retrieve this value, pvParam must point to an integer that receives the
/// current value.
const SPI_ICONHORIZONTALSPACING = 0x000D;

/// Retrieves the screen saver time-out value, in seconds. The pvParam parameter
/// must point to an integer variable that receives the value.
const SPI_GETSCREENSAVETIMEOUT = 0x000E;

/// Sets the screen saver time-out value to the value of the uiParam parameter.
/// This value is the amount of time, in seconds, that the system must be idle
/// before the screen saver activates.
///
/// If the machine has entered power saving mode or system lock state, an
/// ERROR_OPERATION_IN_PROGRESS exception occurs.
const SPI_SETSCREENSAVETIMEOUT = 0x000F;

/// Determines whether screen saving is enabled. The pvParam parameter must
/// point to a BOOL variable that receives TRUE if screen saving is enabled, or
/// FALSE otherwise.
const SPI_GETSCREENSAVEACTIVE = 0x0010;

/// Sets the state of the screen saver. The uiParam parameter specifies TRUE to
/// activate screen saving, or FALSE to deactivate it.
const SPI_SETSCREENSAVEACTIVE = 0x0011;

/// @nodoc
const SPI_GETGRIDGRANULARITY = 0x0012;

/// @nodoc
const SPI_SETGRIDGRANULARITY = 0x0013;

/// Sets the desktop wallpaper.
const SPI_SETDESKWALLPAPER = 0x0014;

/// Sets the current desktop pattern.
const SPI_SETDESKPATTERN = 0x0015;

/// Retrieves the keyboard repeat-delay setting, which is a value in the range
/// from 0 (approximately 250 ms delay) through 3 (approximately 1 second
/// delay).
///
/// The actual delay associated with each value may vary depending on the
/// hardware. The pvParam parameter must point to an integer variable that
/// receives the setting.
const SPI_GETKEYBOARDDELAY = 0x0016;

/// Sets the keyboard repeat-delay setting.
///
/// The uiParam parameter must specify 0, 1, 2, or 3, where zero sets the
/// shortest delay approximately 250 ms) and 3 sets the longest delay
/// (approximately 1 second). The actual delay associated with each value may
/// vary depending on the hardware.
const SPI_SETKEYBOARDDELAY = 0x0017;

/// Sets or retrieves the height, in pixels, of an icon cell.
///
/// To set this value, set uiParam to the new value and set pvParam to NULL. You
/// cannot set this value to less than SM_CYICON.
///
/// To retrieve this value, pvParam must point to an integer that receives the
/// current value.
const SPI_ICONVERTICALSPACING = 0x0018;

/// Determines whether icon-title wrapping is enabled. The pvParam parameter
/// must point to a BOOL variable that receives TRUE if enabled, or FALSE
/// otherwise.
const SPI_GETICONTITLEWRAP = 0x0019;

/// Turns icon-title wrapping on or off. The uiParam parameter specifies TRUE
/// for on, or FALSE for off.
const SPI_SETICONTITLEWRAP = 0x001A;

/// Determines whether pop-up menus are left-aligned or right-aligned, relative
/// to the corresponding menu-bar item. The pvParam parameter must point to a
/// BOOL variable that receives TRUE if right-aligned, or FALSE otherwise.
const SPI_GETMENUDROPALIGNMENT = 0x001B;

/// Sets the alignment value of pop-up menus. The uiParam parameter specifies
/// TRUE for right alignment, or FALSE for left alignment.
const SPI_SETMENUDROPALIGNMENT = 0x001C;

/// Sets the width of the double-click rectangle to the value of the uiParam
/// parameter.
///
/// The double-click rectangle is the rectangle within which the second click of
/// a double-click must fall for it to be registered as a double-click.
///
/// To retrieve the width of the double-click rectangle, call GetSystemMetrics
/// with the SM_CXDOUBLECLK flag.
const SPI_SETDOUBLECLKWIDTH = 0x001D;

/// Sets the height of the double-click rectangle to the value of the uiParam
/// parameter.
///
/// The double-click rectangle is the rectangle within which the second click of
/// a double-click must fall for it to be registered as a double-click.
///
/// To retrieve the height of the double-click rectangle, call GetSystemMetrics
/// with the SM_CYDOUBLECLK flag.
const SPI_SETDOUBLECLKHEIGHT = 0x001E;

/// Retrieves the logical font information for the current icon-title font. The
/// uiParam parameter specifies the size of a LOGFONT structure, and the pvParam
/// parameter must point to the LOGFONT structure to fill in.
const SPI_GETICONTITLELOGFONT = 0x001F;

/// Sets the double-click time for the mouse to the value of the uiParam
/// parameter. If the uiParam value is greater than 5000 milliseconds, the
/// system sets the double-click time to 5000 milliseconds.
///
/// The double-click time is the maximum number of milliseconds that can occur
/// between the first and second clicks of a double-click. You can also call the
/// SetDoubleClickTime function to set the double-click time. To get the current
/// double-click time, call the GetDoubleClickTime function.
const SPI_SETDOUBLECLICKTIME = 0x0020;

/// Swaps or restores the meaning of the left and right mouse buttons. The
/// uiParam parameter specifies TRUE to swap the meanings of the buttons, or
/// FALSE to restore their original meanings.
///
/// To retrieve the current setting, call GetSystemMetrics with the
/// SM_SWAPBUTTON flag.
const SPI_SETMOUSEBUTTONSWAP = 0x0021;

/// Sets the font that is used for icon titles. The uiParam parameter specifies
/// the size of a LOGFONT structure, and the pvParam parameter must point to a
/// LOGFONT structure.
const SPI_SETICONTITLELOGFONT = 0x0022;

/// @nodoc
const SPI_GETFASTTASKSWITCH = 0x0023;

/// @nodoc
const SPI_SETFASTTASKSWITCH = 0x0024;

/// Sets dragging of full windows either on or off. The uiParam parameter
/// specifies TRUE for on, or FALSE for off.
const SPI_SETDRAGFULLWINDOWS = 0x0025;

/// Determines whether dragging of full windows is enabled. The pvParam
/// parameter must point to a BOOL variable that receives TRUE if enabled, or
/// FALSE otherwise.
const SPI_GETDRAGFULLWINDOWS = 0x0026;

/// Retrieves the metrics associated with the nonclient area of nonminimized
/// windows. The pvParam parameter must point to a NONCLIENTMETRICS structure
/// that receives the information. Set the cbSize member of this structure and
/// the uiParam parameter to sizeof(NONCLIENTMETRICS).
const SPI_GETNONCLIENTMETRICS = 0x0029;

/// Sets the metrics associated with the nonclient area of nonminimized windows.
/// The pvParam parameter must point to a NONCLIENTMETRICS structure that
/// contains the new parameters. Set the cbSize member of this structure and the
/// uiParam parameter to sizeof(NONCLIENTMETRICS). Also, the lfHeight member of
/// the LOGFONT structure must be a negative value.
const SPI_SETNONCLIENTMETRICS = 0x002A;

/// Retrieves the metrics associated with minimized windows. The pvParam
/// parameter must point to a MINIMIZEDMETRICS structure that receives the
/// information. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(MINIMIZEDMETRICS).
const SPI_GETMINIMIZEDMETRICS = 0x002B;

/// Sets the metrics associated with minimized windows. The pvParam parameter
/// must point to a MINIMIZEDMETRICS structure that contains the new parameters.
/// Set the cbSize member of this structure and the uiParam parameter to
/// sizeof(MINIMIZEDMETRICS).
const SPI_SETMINIMIZEDMETRICS = 0x002C;

/// Retrieves the metrics associated with icons. The pvParam parameter must
/// point to an ICONMETRICS structure that receives the information. Set the
/// cbSize member of this structure and the uiParam parameter to
/// sizeof(ICONMETRICS).
const SPI_GETICONMETRICS = 0x002D;

/// Sets the metrics associated with icons. The pvParam parameter must point to
/// an ICONMETRICS structure that contains the new parameters. Set the cbSize
/// member of this structure and the uiParam parameter to sizeof(ICONMETRICS).
const SPI_SETICONMETRICS = 0x002E;

/// Sets the size of the work area. The work area is the portion of the screen
/// not obscured by the system taskbar or by application desktop toolbars. The
/// pvParam parameter is a pointer to a RECT structure that specifies the new
/// work area rectangle, expressed in virtual screen coordinates. In a system
/// with multiple display monitors, the function sets the work area of the
/// monitor that contains the specified rectangle.
const SPI_SETWORKAREA = 0x002F;

/// Retrieves the size of the work area on the primary display monitor. The work
/// area is the portion of the screen not obscured by the system taskbar or by
/// application desktop toolbars. The pvParam parameter must point to a RECT
/// structure that receives the coordinates of the work area, expressed in
/// physical pixel size. Any DPI virtualization mode of the caller has no effect
/// on this output.
///
/// To get the work area of a monitor other than the primary display monitor,
/// call the GetMonitorInfo function.
const SPI_GETWORKAREA = 0x0030;

/// @nodoc
const SPI_SETPENWINDOWS = 0x0031;

/// Retrieves information about the HighContrast accessibility feature. The
/// pvParam parameter must point to a HIGHCONTRAST structure that receives the
/// information. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(HIGHCONTRAST).
const SPI_GETHIGHCONTRAST = 0x0042;

/// Sets the parameters of the HighContrast accessibility feature. The pvParam
/// parameter must point to a HIGHCONTRAST structure that contains the new
/// parameters. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(HIGHCONTRAST).
const SPI_SETHIGHCONTRAST = 0x0043;

/// Determines whether the user relies on the keyboard instead of the mouse, and
/// wants applications to display keyboard interfaces that would otherwise be
/// hidden. The pvParam parameter must point to a BOOL variable that receives
/// TRUE if the user relies on the keyboard; or FALSE otherwise.
const SPI_GETKEYBOARDPREF = 0x0044;

/// Sets the keyboard preference. The uiParam parameter specifies TRUE if the
/// user relies on the keyboard instead of the mouse, and wants applications to
/// display keyboard interfaces that would otherwise be hidden; uiParam is FALSE
/// otherwise.
const SPI_SETKEYBOARDPREF = 0x0045;

/// Determines whether a screen reviewer utility is running. A screen reviewer
/// utility directs textual information to an output device, such as a speech
/// synthesizer or Braille display. When this flag is set, an application should
/// provide textual information in situations where it would otherwise present
/// the information graphically.
///
/// The pvParam parameter is a pointer to a BOOL variable that receives TRUE if
/// a screen reviewer utility is running, or FALSE otherwise.
///
/// Note: Narrator, the screen reader that is included with Windows, does not
/// set the SPI_SETSCREENREADER or SPI_GETSCREENREADER flags.
const SPI_GETSCREENREADER = 0x0046;

/// Determines whether a screen review utility is running. The uiParam parameter
/// specifies TRUE for on, or FALSE for off.
///
/// Note: Narrator, the screen reader that is included with Windows, does not
/// set the SPI_SETSCREENREADER or SPI_GETSCREENREADER flags.
const SPI_SETSCREENREADER = 0x0047;

/// Retrieves the animation effects associated with user actions. The pvParam
/// parameter must point to an ANIMATIONINFO structure that receives the
/// information. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(ANIMATIONINFO).
const SPI_GETANIMATION = 0x0048;

/// Sets the animation effects associated with user actions. The pvParam
/// parameter must point to an ANIMATIONINFO structure that contains the new
/// parameters. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(ANIMATIONINFO).
const SPI_SETANIMATION = 0x0049;

/// Determines whether the font smoothing feature is enabled. This feature uses
/// font antialiasing to make font curves appear smoother by painting pixels at
/// different gray levels.
///
/// The pvParam parameter must point to a BOOL variable that receives TRUE if
/// the feature is enabled, or FALSE if it is not.
const SPI_GETFONTSMOOTHING = 0x004A;

/// Enables or disables the font smoothing feature, which uses font antialiasing
/// to make font curves appear smoother by painting pixels at different gray
/// levels.
///
/// To enable the feature, set the uiParam parameter to TRUE. To disable the
/// feature, set uiParam to FALSE.
const SPI_SETFONTSMOOTHING = 0x004B;

/// Sets the width, in pixels, of the rectangle used to detect the start of a
/// drag operation. Set uiParam to the new value. To retrieve the drag width,
/// call GetSystemMetrics with the SM_CXDRAG flag.
const SPI_SETDRAGWIDTH = 0x004C;

/// Sets the height, in pixels, of the rectangle used to detect the start of a
/// drag operation. Set uiParam to the new value. To retrieve the drag height,
/// call GetSystemMetrics with the SM_CYDRAG flag.
const SPI_SETDRAGHEIGHT = 0x004D;

/// @nodoc
const SPI_SETHANDHELD = 0x004E;

/// This parameter is not supported.
const SPI_GETLOWPOWERTIMEOUT = 0x004F;

/// This parameter is not supported.
const SPI_GETPOWEROFFTIMEOUT = 0x0050;

/// This parameter is not supported.
const SPI_SETLOWPOWERTIMEOUT = 0x0051;

/// This parameter is not supported.
const SPI_SETPOWEROFFTIMEOUT = 0x0052;

/// @nodoc
const SPI_GETLOWPOWERACTIVE = 0x0053;

/// This parameter is not supported.
const SPI_GETPOWEROFFACTIVE = 0x0054;

/// This parameter is not supported.
const SPI_SETLOWPOWERACTIVE = 0x0055;

/// This parameter is not supported.
const SPI_SETPOWEROFFACTIVE = 0x0056;

/// Reloads the system cursors. Set the uiParam parameter to zero and the
/// pvParam parameter to NULL.
const SPI_SETCURSORS = 0x0057;

/// Reloads the system icons. Set the uiParam parameter to zero and the pvParam
/// parameter to NULL.
const SPI_SETICONS = 0x0058;

/// Retrieves the input locale identifier for the system default input language.
///
/// The pvParam parameter must point to an HKL variable that receives this
/// value.
const SPI_GETDEFAULTINPUTLANG = 0x0059;

/// Sets the default input language for the system shell and applications.
///
/// The specified language must be displayable using the current system
/// character set. The pvParam parameter must point to an HKL variable that
/// contains the input locale identifier for the default language.
const SPI_SETDEFAULTINPUTLANG = 0x005A;

/// Sets the hot key set for switching between input languages.
///
/// The uiParam and pvParam parameters are not used. The value sets the shortcut
/// keys in the keyboard property sheets by reading the registry again. The
/// registry must be set before this flag is used.
///
/// The path in the registry is HKEY_CURRENT_USER\Keyboard Layout\Toggle. Valid
/// values are "1" = ALT+SHIFT, "2" = CTRL+SHIFT, and "3" = none.
const SPI_SETLANGTOGGLE = 0x005B;

/// @nodoc
const SPI_GETWINDOWSEXTENSION = 0x005C;

/// Enables or disables the Mouse Trails feature, which improves the visibility
/// of mouse cursor movements by briefly showing a trail of cursors and quickly
/// erasing them.
///
/// To disable the feature, set the uiParam parameter to zero or 1. To enable
/// the feature, set uiParam to a value greater than 1 to indicate the number of
/// cursors drawn in the trail.
const SPI_SETMOUSETRAILS = 0x005D;

/// Determines whether the Mouse Trails feature is enabled. This feature
/// improves the visibility of mouse cursor movements by briefly showing a trail
/// of cursors and quickly erasing them.
///
/// The pvParam parameter must point to an integer variable that receives a
/// value. if the value is zero or 1, the feature is disabled. If the value is
/// greater than 1, the feature is enabled and the value indicates the number of
/// cursors drawn in the trail. The uiParam parameter is not used.
const SPI_GETMOUSETRAILS = 0x005E;

/// @nodoc
const SPI_SETSCREENSAVERRUNNING = 0x0061;

/// @nodoc
const SPI_SCREENSAVERRUNNING = SPI_SETSCREENSAVERRUNNING;

/// Retrieves information about the FilterKeys accessibility feature. The
/// pvParam parameter must point to a FILTERKEYS structure that receives the
/// information. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(FILTERKEYS).
const SPI_GETFILTERKEYS = 0x0032;

/// Sets the parameters of the FilterKeys accessibility feature. The pvParam
/// parameter must point to a FILTERKEYS structure that contains the new
/// parameters. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(FILTERKEYS).
const SPI_SETFILTERKEYS = 0x0033;

/// Retrieves information about the ToggleKeys accessibility feature. The
/// pvParam parameter must point to a TOGGLEKEYS structure that receives the
/// information. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(TOGGLEKEYS).
const SPI_GETTOGGLEKEYS = 0x0034;

/// Sets the parameters of the ToggleKeys accessibility feature. The pvParam
/// parameter must point to a TOGGLEKEYS structure that contains the new
/// parameters. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(TOGGLEKEYS).
const SPI_SETTOGGLEKEYS = 0x0035;

/// Retrieves information about the MouseKeys accessibility feature. The pvParam
/// parameter must point to a MOUSEKEYS structure that receives the information.
/// Set the cbSize member of this structure and the uiParam parameter to
/// sizeof(MOUSEKEYS).
const SPI_GETMOUSEKEYS = 0x0036;

/// Sets the parameters of the MouseKeys accessibility feature. The pvParam
/// parameter must point to a MOUSEKEYS structure that contains the new
/// parameters. Set the cbSize member of this structure and the uiParam
/// parameter to sizeof(MOUSEKEYS).
const SPI_SETMOUSEKEYS = 0x0037;

/// @nodoc
const SPI_GETSHOWSOUNDS = 0x0038;

/// @nodoc
const SPI_SETSHOWSOUNDS = 0x0039;

/// @nodoc
const SPI_GETSTICKYKEYS = 0x003A;

/// @nodoc
const SPI_SETSTICKYKEYS = 0x003B;

/// @nodoc
const SPI_GETACCESSTIMEOUT = 0x003C;

/// @nodoc
const SPI_SETACCESSTIMEOUT = 0x003D;

/// @nodoc
const SPI_GETSERIALKEYS = 0x003E;

/// @nodoc
const SPI_SETSERIALKEYS = 0x003F;

/// @nodoc
const SPI_GETSOUNDSENTRY = 0x0040;

/// @nodoc
const SPI_SETSOUNDSENTRY = 0x0041;

/// @nodoc
const SPI_GETSNAPTODEFBUTTON = 0x005F;

/// @nodoc
const SPI_SETSNAPTODEFBUTTON = 0x0060;

/// @nodoc
const SPI_GETMOUSEHOVERWIDTH = 0x0062;

/// @nodoc
const SPI_SETMOUSEHOVERWIDTH = 0x0063;

/// @nodoc
const SPI_GETMOUSEHOVERHEIGHT = 0x0064;

/// @nodoc
const SPI_SETMOUSEHOVERHEIGHT = 0x0065;

/// @nodoc
const SPI_GETMOUSEHOVERTIME = 0x0066;

/// @nodoc
const SPI_SETMOUSEHOVERTIME = 0x0067;

/// @nodoc
const SPI_GETWHEELSCROLLLINES = 0x0068;

/// @nodoc
const SPI_SETWHEELSCROLLLINES = 0x0069;

/// @nodoc
const SPI_GETMENUSHOWDELAY = 0x006A;

/// @nodoc
const SPI_SETMENUSHOWDELAY = 0x006B;

/// @nodoc
const SPI_GETWHEELSCROLLCHARS = 0x006C;

/// @nodoc
const SPI_SETWHEELSCROLLCHARS = 0x006D;

/// @nodoc
const SPI_GETSHOWIMEUI = 0x006E;

/// @nodoc
const SPI_SETSHOWIMEUI = 0x006F;

/// @nodoc
const SPI_GETMOUSESPEED = 0x0070;

/// @nodoc
const SPI_SETMOUSESPEED = 0x0071;

/// @nodoc
const SPI_GETSCREENSAVERRUNNING = 0x0072;

/// @nodoc
const SPI_GETDESKWALLPAPER = 0x0073;

/// @nodoc
const SPI_GETAUDIODESCRIPTION = 0x0074;

/// @nodoc
const SPI_SETAUDIODESCRIPTION = 0x0075;

/// @nodoc
const SPI_GETSCREENSAVESECURE = 0x0076;

/// @nodoc
const SPI_SETSCREENSAVESECURE = 0x0077;

/// @nodoc
const SPI_GETHUNGAPPTIMEOUT = 0x0078;

/// @nodoc
const SPI_SETHUNGAPPTIMEOUT = 0x0079;

/// @nodoc
const SPI_GETWAITTOKILLTIMEOUT = 0x007A;

/// @nodoc
const SPI_SETWAITTOKILLTIMEOUT = 0x007B;

/// @nodoc
const SPI_GETWAITTOKILLSERVICETIMEOUT = 0x007C;

/// @nodoc
const SPI_SETWAITTOKILLSERVICETIMEOUT = 0x007D;

/// @nodoc
const SPI_GETMOUSEDOCKTHRESHOLD = 0x007E;

/// @nodoc
const SPI_SETMOUSEDOCKTHRESHOLD = 0x007F;

/// @nodoc
const SPI_GETPENDOCKTHRESHOLD = 0x0080;

/// @nodoc
const SPI_SETPENDOCKTHRESHOLD = 0x0081;

/// @nodoc
const SPI_GETWINARRANGING = 0x0082;

/// @nodoc
const SPI_SETWINARRANGING = 0x0083;

/// @nodoc
const SPI_GETMOUSEDRAGOUTTHRESHOLD = 0x0084;

/// @nodoc
const SPI_SETMOUSEDRAGOUTTHRESHOLD = 0x0085;

/// @nodoc
const SPI_GETPENDRAGOUTTHRESHOLD = 0x0086;

/// @nodoc
const SPI_SETPENDRAGOUTTHRESHOLD = 0x0087;

/// @nodoc
const SPI_GETMOUSESIDEMOVETHRESHOLD = 0x0088;

/// @nodoc
const SPI_SETMOUSESIDEMOVETHRESHOLD = 0x0089;

/// @nodoc
const SPI_GETPENSIDEMOVETHRESHOLD = 0x008A;

/// @nodoc
const SPI_SETPENSIDEMOVETHRESHOLD = 0x008B;

/// @nodoc
const SPI_GETDRAGFROMMAXIMIZE = 0x008C;

/// @nodoc
const SPI_SETDRAGFROMMAXIMIZE = 0x008D;

/// @nodoc
const SPI_GETSNAPSIZING = 0x008E;

/// @nodoc
const SPI_SETSNAPSIZING = 0x008F;

/// @nodoc
const SPI_GETDOCKMOVING = 0x0090;

/// @nodoc
const SPI_SETDOCKMOVING = 0x0091;

// -----------------------------------------------------------------------------
// ShowWindow constants
// -----------------------------------------------------------------------------

/// Hides the window and activates another window.
const SW_HIDE = 0;

/// Activates and displays a window.
///
/// If the window is minimized or maximized, the system restores it to its
/// original size and position. An application should specify this flag when
/// displaying the window for the first time.
const SW_SHOWNORMAL = 1;

/// Activates the window and displays it as a minimized window.
const SW_SHOWMINIMIZED = 2;

/// Maximizes the specified window.
const SW_MAXIMIZE = 3;

/// Activates the window and displays it as a maximized window.
const SW_SHOWMAXIMIZED = 3;

/// Displays a window in its most recent size and position.
///
/// This value is similar to SW_SHOWNORMAL, except that the window is not
/// activated.
const SW_SHOWNOACTIVATE = 4;

/// Activates the window and displays it in its current size and position.
const SW_SHOW = 5;

/// Minimizes the specified window and activates the next top-level window in
/// the Z order.
const SW_MINIMIZE = 6;

/// Displays the window as a minimized window.
///
/// This value is similar to SW_SHOWMINIMIZED, except the window is not
/// activated.
const SW_SHOWMINNOACTIVE = 7;

/// Displays the window in its current size and position.
///
/// This value is similar to SW_SHOW, except that the window is not activated.
const SW_SHOWNA = 8;

/// Activates and displays the window.
///
/// If the window is minimized or maximized, the system restores it to its
/// original size and position. An application should specify this flag when
/// restoring a minimized window.
const SW_RESTORE = 9;

/// Sets the show state based on the SW_ value specified in the STARTUPINFO
/// structure passed to the CreateProcess function by the program that started
/// the application.
const SW_SHOWDEFAULT = 10;

/// Minimizes a window, even if the thread that owns the window is not
/// responding.
///
/// This flag should only be used when minimizing windows from a different
/// thread.
const SW_FORCEMINIMIZE = 11;

// -----------------------------------------------------------------------------
// Edit Control constants
// -----------------------------------------------------------------------------

/// Aligns text with the left margin.
const ES_LEFT = 0x0000;

/// Centers text in a single-line or multiline edit control.
const ES_CENTER = 0x0001;

/// Right-aligns text in a single-line or multiline edit control.
const ES_RIGHT = 0x0002;

/// Designates a multiline edit control. The default is single-line edit
/// control.
const ES_MULTILINE = 0x0004;

/// Converts all characters to uppercase as they are typed into the edit
/// control.
const ES_UPPERCASE = 0x0008;

/// Converts all characters to lowercase as they are typed into the edit
/// control.
const ES_LOWERCASE = 0x0010;

/// Displays an asterisk (*) for each character typed into the edit control.
/// This style is valid only for single-line edit controls.
const ES_PASSWORD = 0x0020;

/// Automatically scrolls text up one page when the user presses the ENTER key
/// on the last line.
const ES_AUTOVSCROLL = 0x0040;

/// Automatically scrolls text to the right by 10 characters when the user types
/// a character at the end of the line. When the user presses the ENTER key, the
/// control scrolls all text back to position zero.
const ES_AUTOHSCROLL = 0x0080;

/// Negates the default behavior for an edit control. The default behavior hides
/// the selection when the control loses the input focus and inverts the
/// selection when the control receives the input focus. If you specify
/// ES_NOHIDESEL, the selected text is inverted, even if the control does not
/// have the focus.
const ES_NOHIDESEL = 0x0100;

/// Converts text entered in the edit control. The text is converted from the
/// Windows character set to the OEM character set and then back to the Windows
/// character set. This ensures proper character conversion when the application
/// calls the CharToOem function to convert a Windows string in the edit control
/// to OEM characters. This style is most useful for edit controls that contain
/// file names that will be used on file systems that do not support Unicode.
const ES_OEMCONVERT = 0x0400;

/// Prevents the user from typing or editing text in the edit control.
const ES_READONLY = 0x0800;

/// Specifies that a carriage return be inserted when the user presses the ENTER
/// key while entering text into a multiline edit control in a dialog box. If
/// you do not specify this style, pressing the ENTER key has the same effect as
/// pressing the dialog box's default push button. This style has no effect on a
/// single-line edit control.
const ES_WANTRETURN = 0x1000;

/// Allows only digits to be entered into the edit control. Note that, even with
/// this set, it is still possible to paste non-digits into the edit control.
const ES_NUMBER = 0x2000;

// -----------------------------------------------------------------------------
// Edit control notifications
// -----------------------------------------------------------------------------

/// Sent when an edit control receives the keyboard focus.
const EN_SETFOCUS = 0x0100;

/// Sent when an edit control loses the keyboard focus.
const EN_KILLFOCUS = 0x0200;

/// Sent when the user has taken an action that may have altered text in an edit
/// control.
///
/// Unlike the EN_UPDATE notification code, this notification code is sent after
/// the system updates the screen.
const EN_CHANGE = 0x0300;

/// Sent when an edit control is about to redraw itself. This notification code
/// is sent after the control has formatted the text, but before it displays the
/// text. This makes it possible to resize the edit control window, if
/// necessary.
const EN_UPDATE = 0x0400;

/// Sent when an edit control cannot allocate enough memory to meet a specific
/// request.
const EN_ERRSPACE = 0x0500;

/// Sent when the current text insertion has exceeded the specified number of
/// characters for the edit control. The text insertion has been truncated.
const EN_MAXTEXT = 0x0501;

/// Sent when the user clicks an edit control's horizontal scroll bar.
const EN_HSCROLL = 0x0601;

/// Sent when the user clicks an edit control's vertical scroll bar or when the
/// user scrolls the mouse wheel over the edit control.
const EN_VSCROLL = 0x0602;

/// Sent when the user has changed the edit control direction to left-to-right.
const EN_ALIGN_LTR_EC = 0x0700;

/// Sent when the user has changed the edit control direction to right-to-left.
const EN_ALIGN_RTL_EC = 0x0701;

// -----------------------------------------------------------------------------
// Edit Control messages
// -----------------------------------------------------------------------------

/// Sets the left margin.
const EC_LEFTMARGIN = 0x0001;

/// Sets the right margin.
const EC_RIGHTMARGIN = 0x0002;

/// Rich edit controls: Sets the left and right margins to a narrow width
/// calculated using the text metrics of the control's current font.
///
/// If no font has been set for the control, the margins are set to zero. The
/// lParam parameter is ignored.
const EC_USEFONTINFO = 0xffff;

/// Gets the starting and ending character positions (in TCHARs) of the current
/// selection in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETSEL = 0x00B0;

/// Selects a range of characters in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SETSEL = 0x00B1;

/// Gets the formatting rectangle of an edit control.
///
/// The formatting rectangle is the limiting rectangle into which the control
/// draws the text. The limiting rectangle is independent of the size of the
/// edit-control window. You can send this message to either an edit control or
/// a rich edit control.
const EM_GETRECT = 0x00B2;

/// Sets the formatting rectangle of a multiline edit control.
///
/// The formatting rectangle is the limiting rectangle into which the control
/// draws the text. The limiting rectangle is independent of the size of the
/// edit control window.
///
/// This message is processed only by multiline edit controls. You can send this
/// message to either an edit control or a rich edit control.
const EM_SETRECT = 0x00B3;

/// Sets the formatting rectangle of a multiline edit control.
///
/// The EM_SETRECTNP message is identical to the EM_SETRECT message, except that
/// EM_SETRECTNP does not redraw the edit control window.
///
/// The formatting rectangle is the limiting rectangle into which the control
/// draws the text. The limiting rectangle is independent of the size of the
/// edit control window.
///
/// This message is processed only by multiline edit controls. You can send this
/// message to either an edit control or a rich edit control.
const EM_SETRECTNP = 0x00B4;

/// Scrolls the text vertically in a multiline edit control.
///
/// This message is equivalent to sending a WM_VSCROLL message to the edit
/// control. You can send this message to either an edit control or a rich edit
/// control.
const EM_SCROLL = 0x00B5;

/// Scrolls the text in a multiline edit control.
const EM_LINESCROLL = 0x00B6;

/// Scrolls the caret into view in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SCROLLCARET = 0x00B7;

/// Gets the state of an edit control's modification flag.
///
/// The flag indicates whether the contents of the edit control have been
/// modified. You can send this message to either an edit control or a rich edit
/// control.
const EM_GETMODIFY = 0x00B8;

/// Sets or clears the modification flag for an edit control.
///
/// The modification flag indicates whether the text within the edit control has
/// been modified. You can send this message to either an edit control or a rich
/// edit control.
const EM_SETMODIFY = 0x00B9;

/// Gets the number of lines in a multiline edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETLINECOUNT = 0x00BA;

/// Gets the character index of the first character of a specified line in a
/// multiline edit control.
///
/// A character index is the zero-based index of the character from the
/// beginning of the edit control. You can send this message to either an edit
/// control or a rich edit control.
const EM_LINEINDEX = 0x00BB;

/// Sets the handle of the memory that will be used by a multiline edit control.
const EM_SETHANDLE = 0x00BC;

/// Gets a handle of the memory currently allocated for a multiline edit
/// control's text.
const EM_GETHANDLE = 0x00BD;

/// Gets the position of the scroll box (thumb) in the vertical scroll bar of a
/// multiline edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETTHUMB = 0x00BE;

/// Retrieves the length, in characters, of a line in an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_LINELENGTH = 0x00C1;

/// Replaces the selected text in an edit control or a rich edit control with
/// the specified text.
const EM_REPLACESEL = 0x00C2;

/// Copies a line of text from an edit control and places it in a specified
/// buffer.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETLINE = 0x00C4;

/// Sets the text limit of an edit control.
///
/// The text limit is the maximum amount
/// of text, in TCHARs, that the user can type into the edit control. You can
/// send this message to either an edit control or a rich edit control.
const EM_LIMITTEXT = 0x00C5;

/// Determines whether there are any actions in an edit control's undo queue.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_CANUNDO = 0x00C6;

/// This message undoes the last edit control operation in the control's undo
/// queue.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_UNDO = 0x00C7;

/// Sets a flag that determines whether a multiline edit control includes soft
/// line-break characters.
///
/// A soft line break consists of two carriage returns and a line feed and is
/// inserted at the end of a line that is broken because of wordwrapping.
const EM_FMTLINES = 0x00C8;

/// Gets the index of the line that contains the specified character index in a
/// multiline edit control.
///
/// A character index is the zero-based index of the character from the
/// beginning of the edit control. You can send this message to either an edit
/// control or a rich edit control.
const EM_LINEFROMCHAR = 0x00C9;

/// The EM_SETTABSTOPS message sets the tab stops in a multiline edit control.
/// When text is copied to the control, any tab character in the text causes
/// space to be generated up to the next tab stop.
///
/// This message is processed only by multiline edit controls. You can send this
/// message to either an edit control or a rich edit control.
const EM_SETTABSTOPS = 0x00CB;

/// Sets or removes the password character for an edit control.
///
/// When a password character is set, that character is displayed in place of
/// the characters typed by the user. You can send this message to either an
/// edit control or a rich edit control.
const EM_SETPASSWORDCHAR = 0x00CC;

/// Resets the undo flag of an edit control.
///
/// The undo flag is set whenever an
/// operation within the edit control can be undone. You can send this message
/// to either an edit control or a rich edit control.
const EM_EMPTYUNDOBUFFER = 0x00CD;

/// Gets the zero-based index of the uppermost visible line in a multiline edit
/// control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETFIRSTVISIBLELINE = 0x00CE;

/// Sets or removes the read-only style (ES_READONLY) of an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SETREADONLY = 0x00CF;

/// Replaces an edit control's default Wordwrap function with an
/// application-defined Wordwrap function.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_SETWORDBREAKPROC = 0x00D0;

/// Gets the address of the current Wordwrap function.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETWORDBREAKPROC = 0x00D1;

/// Gets the password character that an edit control displays when the user
/// enters text.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETPASSWORDCHAR = 0x00D2;

/// Sets the widths of the left and right margins for an edit control.
///
/// The message redraws the control to reflect the new margins. You can send
/// this message to either an edit control or a rich edit control.
const EM_SETMARGINS = 0x00D3;

/// Gets the widths of the left and right margins for an edit control.
const EM_GETMARGINS = 0x00D4;

/// Sets the text limit of an edit control.
///
/// The text limit is the maximum amount of text, in TCHARs, that the user can
/// type into the edit control. You can send this message to either an edit
/// control or a rich edit control.
const EM_SETLIMITTEXT = EM_LIMITTEXT;

/// Gets the current text limit for an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_GETLIMITTEXT = 0x00D5;

/// Retrieves the client area coordinates of a specified character in an edit
/// control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_POSFROMCHAR = 0x00D6;

/// Gets information about the character closest to a specified point in the
/// client area of an edit control.
///
/// You can send this message to either an edit control or a rich edit control.
const EM_CHARFROMPOS = 0x00D7;

/// Sets the status flags that determine how an edit control interacts with the
/// Input Method Editor (IME).
const EM_SETIMESTATUS = 0x00D8;

/// Gets a set of status flags that indicate how the edit control interacts with
/// the Input Method Editor (IME).
const EM_GETIMESTATUS = 0x00D9;

/// Allows enterprise data protection support and paste notifications to be set.
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

// -----------------------------------------------------------------------------
// ScrollInfo constants
// -----------------------------------------------------------------------------

/// Copies the scroll range to the nMin and nMax members of the SCROLLINFO
/// structure pointed to by lpsi.
const SIF_RANGE = 0x0001;

/// Copies the scroll page to the nPage member of the SCROLLINFO structure
/// pointed to by lpsi.
const SIF_PAGE = 0x0002;

/// Copies the scroll position to the nPos member of the SCROLLINFO structure
/// pointed to by lpsi.
const SIF_POS = 0x0004;

/// Disables the scroll bar instead of removing it, if the scroll bar's new
/// parameters make the scroll bar unnecessary.
const SIF_DISABLENOSCROLL = 0x0008;

/// Copies the current scroll box tracking position to the nTrackPos member of
/// the SCROLLINFO structure pointed to by lpsi.
const SIF_TRACKPOS = 0x0010;

/// Combines SIF_RANGE,  SIF_PAGE, SIF_POS and SIF_TRACKPOS.
const SIF_ALL = SIF_RANGE | SIF_PAGE | SIF_POS | SIF_TRACKPOS;

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

// -----------------------------------------------------------------------------
// DrawText constants
// -----------------------------------------------------------------------------

/// Justifies the text to the top of the rectangle.
const DT_TOP = 0x000;

/// Aligns text to the left.
const DT_LEFT = 0x000;

/// Centers text horizontally in the rectangle.
const DT_CENTER = 0x001;

/// Aligns text to the right.
const DT_RIGHT = 0x002;

/// Centers text vertically. This value is used only with the DT_SINGLELINE value.
const DT_VCENTER = 0x004;

/// Justifies the text to the bottom of the rectangle. This value is used only
/// with the DT_SINGLELINE value.
const DT_BOTTOM = 0x008;

/// Breaks words. Lines are automatically broken between words if a word would
/// extend past the edge of the rectangle specified by the lpRect parameter. A
/// carriage return-line feed sequence also breaks the line.
const DT_WORDBREAK = 0x0010;

/// Displays text on a single line only. Carriage returns and line feeds do not
/// break the line.
const DT_SINGLELINE = 0x0020;

// -----------------------------------------------------------------------------
// Class styles
// -----------------------------------------------------------------------------

/// Redraws the entire window if a movement or size adjustment changes the
/// height of the client area.
const CS_VREDRAW = 0x0001;

/// Redraws the entire window if a movement or size adjustment changes the width
/// of the client area.
const CS_HREDRAW = 0x0002;

/// Sends a double-click message to the window procedure when the user
/// double-clicks the mouse while the cursor is within a window belonging to the
/// class.
const CS_DBLCLKS = 0x0008;

/// Allocates a unique device context for each window in the class.
const CS_OWNDC = 0x0020;

/// Allocates one device context to be shared by all windows in the class.
/// Because window classes are process specific, it is possible for multiple
/// threads of an application to create a window of the same class. It is also
/// possible for the threads to attempt to use the device context
/// simultaneously. When this happens, the system allows only one thread to
/// successfully finish its drawing operation.
const CS_CLASSDC = 0x0040;

/// Sets the clipping rectangle of the child window to that of the parent window
/// so that the child can draw on the parent. A window with the CS_PARENTDC
/// style bit receives a regular device context from the system's cache of
/// device contexts. It does not give the child the parent's device context or
/// device context settings. Specifying CS_PARENTDC enhances an application's
/// performance.
const CS_PARENTDC = 0x0080;

/// Disables Close on the window menu.
const CS_NOCLOSE = 0x0200;

/// Saves, as a bitmap, the portion of the screen image obscured by a window of
/// this class. When the window is removed, the system uses the saved bitmap to
/// restore the screen image, including other windows that were obscured.
/// Therefore, the system does not send WM_PAINT messages to windows that were
/// obscured if the memory used by the bitmap has not been discarded and if
/// other screen actions have not invalidated the stored image.
const CS_SAVEBITS = 0x0800;

/// Aligns the window's client area on a byte boundary (in the x direction).
/// This style affects the width of the window and its horizontal placement on
/// the display.
const CS_BYTEALIGNCLIENT = 0x1000;

/// Aligns the window on a byte boundary (in the x direction). This style
/// affects the width of the window and its horizontal placement on the display.
const CS_BYTEALIGNWINDOW = 0x2000;

/// Indicates that the window class is an application global class.
const CS_GLOBALCLASS = 0x4000;

/// @nodoc
const CS_IME = 0x00010000;

/// Enables the drop shadow effect on a window. The effect is turned on and off
/// through SPI_SETDROPSHADOW. Typically, this is enabled for small, short-lived
/// windows such as menus to emphasize their Z-order relationship to other
/// windows. Windows created from a class with this style must be top-level
/// windows; they may not be child windows.
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
const CF_BOTH = CF_SCREENFONTS | CF_PRINTERFONTS;

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

// -----------------------------------------------------------------------------
// MessageBox flags
// -----------------------------------------------------------------------------

/// The message box contains one push button: OK. This is the default.
const MB_OK = 0x00000000;

/// The message box contains two push buttons: OK and Cancel.
const MB_OKCANCEL = 0x00000001;

/// The message box contains three push buttons: Abort, Retry, and Ignore.
const MB_ABORTRETRYIGNORE = 0x00000002;

/// The message box contains three push buttons: Yes, No, and Cancel.
const MB_YESNOCANCEL = 0x00000003;

/// The message box contains two push buttons: Yes and No.
const MB_YESNO = 0x00000004;

/// The message box contains two push buttons: Retry and Cancel.
const MB_RETRYCANCEL = 0x00000005;

/// The message box contains three push buttons: Cancel, Try Again, Continue.
/// Use this message box type instead of MB_ABORTRETRYIGNORE.
const MB_CANCELTRYCONTINUE = 0x00000006;

/// A stop-sign icon appears in the message box.
const MB_ICONHAND = 0x00000010;

/// A question-mark icon appears in the message box.
///
/// The question-mark message icon is no longer recommended because it does not
/// clearly represent a specific type of message and because the phrasing of a
/// message as a question could apply to any message type. In addition, users
/// can confuse the message symbol question mark with Help information.
/// Therefore, do not use this question mark message symbol in your message
/// boxes. The system continues to support its inclusion only for backward
/// compatibility.
const MB_ICONQUESTION = 0x00000020;

/// An exclamation-point icon appears in the message box.
const MB_ICONEXCLAMATION = 0x00000030;

/// An icon consisting of a lowercase letter i in a circle appears in the
/// message box.
const MB_ICONASTERISK = 0x00000040;

/// An exclamation-point icon appears in the message box.
const MB_ICONWARNING = MB_ICONEXCLAMATION;

/// A stop-sign icon appears in the message box.
const MB_ICONERROR = MB_ICONHAND;

/// An icon consisting of a lowercase letter i in a circle appears in the
/// message box.
const MB_ICONINFORMATION = MB_ICONASTERISK;

/// A stop-sign icon appears in the message box.
const MB_ICONSTOP = MB_ICONHAND;

/// The first button is the default button.
///
/// MB_DEFBUTTON1 is the default unless MB_DEFBUTTON2, MB_DEFBUTTON3, or
/// MB_DEFBUTTON4 is specified.
const MB_DEFBUTTON1 = 0x00000000;

/// The second button is the default button.
const MB_DEFBUTTON2 = 0x00000100;

/// The third button is the default button.
const MB_DEFBUTTON3 = 0x00000200;

/// The fourth button is the default button.
const MB_DEFBUTTON4 = 0x00000300;

/// The user must respond to the message box before continuing work in the
/// window identified by the hWnd parameter. However, the user can move to the
/// windows of other threads and work in those windows.
const MB_APPLMODAL = 0x00000000;

/// Same as MB_APPLMODAL except that the message box has the WS_EX_TOPMOST
/// style.
///
/// Use system-modal message boxes to notify the user of serious, potentially
/// damaging errors that require immediate attention (for example, running out
/// of memory). This flag has no effect on the user's ability to interact with
/// windows other than those associated with hWnd.
const MB_SYSTEMMODAL = 0x00001000;

/// Same as MB_APPLMODAL except that all the top-level windows belonging to the
/// current thread are disabled if the hWnd parameter is NULL.
///
/// Use this flag when the calling application or library does not have a window
/// handle available but still needs to prevent input to other windows in the
/// calling thread without suspending other threads.
const MB_TASKMODAL = 0x00002000;

/// Adds a Help button to the message box. When the user clicks the Help button
/// or presses F1, the system sends a WM_HELP message to the owner.
const MB_HELP = 0x00004000;

/// The message box becomes the foreground window. Internally, the system calls
/// the SetForegroundWindow function for the message box.
const MB_SETFOREGROUND = 0x00010000;

/// Same as desktop of the interactive window station.
///
/// If the current input desktop is not the default desktop, MessageBox does not
/// return until the user switches to the default desktop.
const MB_DEFAULT_DESKTOP_ONLY = 0x00020000;

/// The message box is created with the WS_EX_TOPMOST window style.
const MB_TOPMOST = 0x00040000;

/// The text is right-justified.
const MB_RIGHT = 0x00080000;

/// Displays message and caption text using right-to-left reading order on
/// Hebrew and Arabic systems.
const MB_RTLREADING = 0x00100000;

/// The caller is a service notifying the user of an event. The function
/// displays a message box on the current active desktop, even if there is no
/// user logged on to the computer.
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

// Version info constants

/// @nodoc
const FILE_VER_GET_LOCALISED = 0x01;

/// @nodoc
const FILE_VER_GET_NEUTRAL = 0x02;

/// @nodoc
const FILE_VER_GET_PREFETCHED = 0x04;

/// @nodoc
const VFFF_ISSHAREDFILE = 0x0001;

/// @nodoc
const VIFF_FORCEINSTALL = 0x0001;

/// @nodoc
const VIFF_DONTDELETEOLD = 0x0002;

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
const RRF_RT_DWORD = RRF_RT_REG_BINARY | RRF_RT_REG_DWORD;

/// @nodoc
const RRF_RT_QWORD = RRF_RT_REG_BINARY | RRF_RT_REG_QWORD;

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
const REG_NONE = 0;

/// @nodoc
const REG_SZ = 1;

/// @nodoc
const REG_EXPAND_SZ = 2;

/// @nodoc
const REG_BINARY = 3;

/// @nodoc
const REG_DWORD = 4;

/// @nodoc
const REG_DWORD_LITTLE_ENDIAN = 4;

/// @nodoc
const REG_DWORD_BIG_ENDIAN = 5;

/// @nodoc
const REG_LINK = 6;

/// @nodoc
const REG_MULTI_SZ = 7;

/// @nodoc
const REG_RESOURCE_LIST = 8;

/// @nodoc
const REG_FULL_RESOURCE_DESCRIPTOR = 9;

/// @nodoc
const REG_RESOURCE_REQUIREMENTS_LIST = 10;

/// @nodoc
const REG_QWORD = 11;

/// @nodoc
const REG_QWORD_LITTLE_ENDIAN = 11;

/// @nodoc
const KEY_QUERY_VALUE = 0x0001;

/// @nodoc
const KEY_SET_VALUE = 0x0002;

/// @nodoc
const KEY_CREATE_SUB_KEY = 0x0004;

/// @nodoc
const KEY_ENUMERATE_SUB_KEYS = 0x0008;

/// @nodoc
const KEY_NOTIFY = 0x0010;

/// @nodoc
const KEY_CREATE_LINK = 0x0020;

/// @nodoc
const KEY_WOW64_32KEY = 0x0200;

/// @nodoc
const KEY_WOW64_64KEY = 0x0100;

/// @nodoc
const KEY_WOW64_RES = 0x0300;

/// @nodoc
const KEY_READ = (STANDARD_RIGHTS_READ |
        KEY_QUERY_VALUE |
        KEY_ENUMERATE_SUB_KEYS |
        KEY_NOTIFY) &
    (~SYNCHRONIZE);

/// @nodoc
const KEY_WRITE = (STANDARD_RIGHTS_WRITE | KEY_SET_VALUE | KEY_CREATE_SUB_KEY) &
    (~SYNCHRONIZE);

/// @nodoc
const KEY_EXECUTE = KEY_READ & (~SYNCHRONIZE);

/// @nodoc
const KEY_ALL_ACCESS = (STANDARD_RIGHTS_ALL |
        KEY_QUERY_VALUE |
        KEY_SET_VALUE |
        KEY_CREATE_SUB_KEY |
        KEY_ENUMERATE_SUB_KEYS |
        KEY_NOTIFY |
        KEY_CREATE_LINK) &
    (~SYNCHRONIZE);

// -----------------------------------------------------------------------------
// Console constants
// -----------------------------------------------------------------------------

// Handles

/// The standard input device. Initially, this is the console input buffer,
/// CONIN$.
const STD_INPUT_HANDLE = -10;

/// The standard output device. Initially, this is the active console screen
/// buffer, CONOUT$.
const STD_OUTPUT_HANDLE = -11;

/// The standard error device. Initially, this is the active console screen
/// buffer, CONOUT$.
const STD_ERROR_HANDLE = -12;

/// @nodoc
const INVALID_HANDLE_VALUE = -1;

/// @nodoc
const ATTACH_PARENT_PROCESS = -1;

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

// Input flags

/// Characters read by the ReadFile or ReadConsole function are written to the
/// active screen buffer as they are read. This mode can be used only if the
/// ENABLE_LINE_INPUT mode is also enabled.
const ENABLE_ECHO_INPUT = 0x0004;

/// Required to enable or disable extended flags. See ENABLE_INSERT_MODE and
/// ENABLE_QUICK_EDIT_MODE.
const ENABLE_EXTENDED_FLAGS = 0x0080;

/// When enabled, text entered in a console window will be inserted at the
/// current cursor location and all text following that location will not be
/// overwritten. When disabled, all following text will be overwritten.
///
/// To enable this mode, use ENABLE_INSERT_MODE | ENABLE_EXTENDED_FLAGS. To
/// disable this mode, use ENABLE_EXTENDED_FLAGS without this flag.
const ENABLE_INSERT_MODE = 0x0020;

/// The ReadFile or ReadConsole function returns only when a carriage return
/// character is read. If this mode is disabled, the functions return when one
/// or more characters are available.
const ENABLE_LINE_INPUT = 0x0002;

/// If the mouse pointer is within the borders of the console window and the
/// window has the keyboard focus, mouse events generated by mouse movement and
/// button presses are placed in the input buffer. These events are discarded by
/// ReadFile or ReadConsole, even when this mode is enabled.
const ENABLE_MOUSE_INPUT = 0x0010;

/// CTRL+C is processed by the system and is not placed in the input buffer. If
/// the input buffer is being read by ReadFile or ReadConsole, other control
/// keys are processed by the system and are not returned in the ReadFile or
/// ReadConsole buffer. If the ENABLE_LINE_INPUT mode is also enabled,
/// backspace, carriage return, and line feed characters are handled by the
/// system.
const ENABLE_PROCESSED_INPUT = 0x0001;

/// This flag enables the user to use the mouse to select and edit text.
///
/// To enable this mode, use ENABLE_QUICK_EDIT_MODE | ENABLE_EXTENDED_FLAGS. To
/// disable this mode, use ENABLE_EXTENDED_FLAGS without this flag.
const ENABLE_QUICK_EDIT_MODE = 0x0040;

/// User interactions that change the size of the console screen buffer are
/// reported in the console's input buffer. Information about these events can
/// be read from the input buffer by applications using the ReadConsoleInput
/// function, but not by those using ReadFile or ReadConsole.
const ENABLE_WINDOW_INPUT = 0x0008;

/// Setting this flag directs the Virtual Terminal processing engine to convert
/// user input received by the console window into Console Virtual Terminal
/// Sequences that can be retrieved by a supporting application through ReadFile
/// or ReadConsole functions.
///
/// The typical usage of this flag is intended in conjunction with
/// ENABLE_VIRTUAL_TERMINAL_PROCESSING on the output handle to connect to an
/// application that communicates exclusively via virtual terminal sequences.
const ENABLE_VIRTUAL_TERMINAL_INPUT = 0x0200;

// Output flags

/// Characters written by the WriteFile or WriteConsole function or echoed by
/// the ReadFile or ReadConsole function are examined for ASCII control
/// sequences and the correct action is performed. Backspace, tab, bell,
/// carriage return, and line feed characters are processed.
const ENABLE_PROCESSED_OUTPUT = 0x0001;

/// When writing with WriteFile or WriteConsole or echoing with ReadFile or
/// ReadConsole, the cursor moves to the beginning of the next row when it
/// reaches the end of the current row. This causes the rows displayed in the
/// console window to scroll up automatically when the cursor advances beyond
/// the last row in the window. It also causes the contents of the console
/// screen buffer to scroll up (discarding the top row of the console screen
/// buffer) when the cursor advances beyond the last row in the console screen
/// buffer. If this mode is disabled, the last character in the row is
/// overwritten with any subsequent characters.
const ENABLE_WRAP_AT_EOL_OUTPUT = 0x0002;

/// When writing with WriteFile or WriteConsole, characters are parsed for VT100
/// and similar control character sequences that control cursor movement,
/// color/font mode, and other operations that can also be performed via the
/// existing Console APIs. For more information, see Console Virtual Terminal
/// Sequences.
const ENABLE_VIRTUAL_TERMINAL_PROCESSING = 0x0004;

/// When writing with WriteFile or WriteConsole, this adds an additional state
/// to end-of-line wrapping that can delay the cursor move and buffer scroll
/// operations.
const DISABLE_NEWLINE_AUTO_RETURN = 0x0008;

/// The APIs for writing character attributes including WriteConsoleOutput and
/// WriteConsoleOutputAttribute allow the usage of flags from character
/// attributes to adjust the color of the foreground and background of text.
/// Additionally, a range of DBCS flags was specified with the COMMON_LVB
/// prefix. Historically, these flags only functioned in DBCS code pages for
/// Chinese, Japanese, and Korean languages.
const ENABLE_LVB_GRID_WORLDWIDE = 0x0010;

// -----------------------------------------------------------------------------
// Monitor APIs
// -----------------------------------------------------------------------------

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

/// Indicates how the activation context is to be deactivated.
///
/// If this value is set and the cookie specified in the ulCookie parameter is
/// in the top frame of the activation stack, the function returns an
/// ERROR_INVALID_PARAMETER error code. Call GetLastError to obtain this code.
///
/// If this value is set and the cookie is not on the activation stack, a
/// STATUS_SXS_INVALID_DEACTIVATION exception will be thrown.
///
/// If this value is set and the cookie is in a lower frame of the activation
/// stack, all of the frames down to and including the frame the cookie is in is
/// popped from the stack.
const DEACTIVATE_ACTCTX_FLAG_FORCE_EARLY_DEACTIVATION = 1;

// *** COM CONSTANTS ***

/// Operation successful
const S_OK = 0;

/// Operation successful
///
/// Some methods use S_FALSE to mean, roughly, a negative condition that is not
/// a failure. It can also indicate a "no-op"—the method succeeded, but had no
/// effect. For example, the CoInitializeEx function returns S_FALSE if you call
/// it a second time from the same thread. If you need to differentiate between
/// S_OK and S_FALSE in your code, you should test the value directly, but still
/// use FAILED or SUCCEEDED to handle the remaining cases.
const S_FALSE = 1;

/// @nodoc
final CO_E_NOTINITIALIZED = 0x800401F0.toSigned(32);

/// @nodoc
final CO_E_ALREADYINITIALIZED = 0x800401F1.toSigned(32);

/// @nodoc
final CO_E_CANTDETERMINECLASS = 0x800401F2.toSigned(32);

/// @nodoc
final CO_E_CLASSSTRING = 0x800401F3.toSigned(32);

/// @nodoc
final CO_E_IIDSTRING = 0x800401F4.toSigned(32);

/// @nodoc
final CO_E_APPNOTFOUND = 0x800401F5.toSigned(32);

/// @nodoc
final CO_E_APPSINGLEUSE = 0x800401F6.toSigned(32);

/// @nodoc
final CO_E_ERRORINAPP = 0x800401F7.toSigned(32);

/// @nodoc
final CO_E_DLLNOTFOUND = 0x800401F8.toSigned(32);

/// @nodoc
final CO_E_ERRORINDLL = 0x800401F9.toSigned(32);

/// @nodoc
final CO_E_WRONGOSFORAPP = 0x800401FA.toSigned(32);

/// @nodoc
final CO_E_OBJNOTREG = 0x800401FB.toSigned(32);

/// @nodoc
final CO_E_OBJISREG = 0x800401FC.toSigned(32);

/// @nodoc
final CO_E_OBJNOTCONNECTED = 0x800401FD.toSigned(32);

/// @nodoc
final CO_E_APPDIDNTREG = 0x800401FE.toSigned(32);

/// @nodoc
final CLASS_E_NOAGGREGATION = 0x80040110.toSigned(32);

/// @nodoc
final CLASS_E_CLASSNOTAVAILABLE = 0x80040111.toSigned(32);

/// @nodoc
final CLASS_E_NOTLICENSED = 0x80040112.toSigned(32);

/// Unexpected failure
final E_UNEXPECTED = 0x8000FFFF.toSigned(32);

/// Not implemented
final E_NOTIMPL = 0x80004001.toSigned(32);

/// Failed to allocate necessary memory
final E_OUTOFMEMORY = 0x8007000E.toSigned(32);

/// One or more arguments are not valid
final E_INVALIDARG = 0x80070057.toSigned(32);

/// No such interface supported
final E_NOINTERFACE = 0x80004002.toSigned(32);

/// Pointer that is not valid
final E_POINTER = 0x80004003.toSigned(32);

/// Handle that is not valid
final E_HANDLE = 0x80070006.toSigned(32);

/// Operation aborted
final E_ABORT = 0x80004004.toSigned(32);

/// Unspecified failure
final E_FAIL = 0x80004005.toSigned(32);

/// General access denied error
final E_ACCESSDENIED = 0x80070005.toSigned(32);

/// The data necessary to complete this operation is not yet available.
final E_PENDING = 0x8000000A.toSigned(32);

/// @nodoc
final RPC_E_CHANGED_MODE = 0x80010106.toSigned(32);

/// @nodoc
final RPC_E_TOO_LATE = 0x80010119.toSigned(32);

/// @nodoc
final REGDB_E_CLASSNOTREG = 0x80040154.toSigned(32);

/// @nodoc
final REGDB_E_IIDNOTREG = 0x80040155.toSigned(32);

/// @nodoc
// ignore: prefer_const_declarations
final SCARD_S_SUCCESS = 0;

/// @nodoc
final SCARD_E_NO_SMARTCARD = 0x8010000C.toSigned(32);

/// @nodoc
final SCARD_E_READER_UNAVAILABLE = 0x80100017.toSigned(32);

/// @nodoc
final SCARD_E_NO_READERS_AVAILABLE = 0x8010002E.toSigned(32);

/// @nodoc
final SCARD_W_REMOVED_CARD = 0x80100069.toSigned(32);

/// @nodoc
final SCARD_W_WRONG_CHV = 0x8010006B.toSigned(32);

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
const CLSCTX_ALL = CLSCTX_INPROC_SERVER |
    CLSCTX_INPROC_HANDLER |
    CLSCTX_LOCAL_SERVER |
    CLSCTX_REMOTE_SERVER;

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

// Init common controls bitflag
/// @nodoc
const ICC_LISTVIEW_CLASSES = 0x00000001;

/// @nodoc
const ICC_TREEVIEW_CLASSES = 0x00000002;

/// @nodoc
const ICC_BAR_CLASSES = 0x00000004;

/// @nodoc
const ICC_TAB_CLASSES = 0x00000008;

/// @nodoc
const ICC_UPDOWN_CLASS = 0x00000010;

/// @nodoc
const ICC_PROGRESS_CLASS = 0x00000020;

/// @nodoc
const ICC_HOTKEY_CLASS = 0x00000040;

/// @nodoc
const ICC_ANIMATE_CLASS = 0x00000080;

/// @nodoc
const ICC_WIN95_CLASSES = 0x000000FF;

/// @nodoc
const ICC_DATE_CLASSES = 0x00000100;

/// @nodoc
const ICC_USEREX_CLASSES = 0x00000200;

/// @nodoc
const ICC_COOL_CLASSES = 0x00000400;

/// @nodoc
const ICC_INTERNET_CLASSES = 0x00000800;

/// @nodoc
const ICC_PAGESCROLLER_CLASS = 0x00001000;

/// @nodoc
const ICC_NATIVEFNTCTL_CLASS = 0x00002000;

/// @nodoc
const ICC_STANDARD_CLASSES = 0x00004000;

/// @nodoc
const ICC_LINK_CLASS = 0x00008000;

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

/// @nodoc
const SHERB_NOCONFIRMATION = 0x00000001;

/// @nodoc
const SHERB_NOPROGRESSUI = 0x00000002;

/// @nodoc
const SHERB_NOSOUND = 0x00000004;

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
const MEM_64K_PAGES = MEM_LARGE_PAGES | MEM_PHYSICAL;

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
const BLUETOOTH_MAX_NAME_SIZE = 248;

/// @nodoc
const BLUETOOTH_MAX_PASSKEY_SIZE = 16;

/// @nodoc
const BLUETOOTH_MAX_PASSKEY_BUFFER_SIZE = BLUETOOTH_MAX_PASSKEY_SIZE + 1;

/// @nodoc
const BLUETOOTH_MAX_SERVICE_NAME_SIZE = 256;

/// @nodoc
const BLUETOOTH_DEVICE_NAME_SIZE = 256;

/// @nodoc
const BTH_MAX_PIN_SIZE = 16;

/// @nodoc
const BTH_LINK_KEY_LENGTH = 16;

/// The BLUETOOTH_AUTHENTICATION_METHOD enumeration defines the supported
/// authentication types during device pairing.
///
/// {@category Enum}
class BLUETOOTH_AUTHENTICATION_METHOD {
  static const BLUETOOTH_AUTHENTICATION_METHOD_LEGACY = 0;
  static const BLUETOOTH_AUTHENTICATION_METHOD_OOB = 1;
  static const BLUETOOTH_AUTHENTICATION_METHOD_NUMERIC_COMPARISON = 2;
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY_NOTIFICATION = 3;
  static const BLUETOOTH_AUTHENTICATION_METHOD_PASSKEY = 4;
}

/// Specifies the variant types.
///
/// {@category Enum}
class VARENUM {
  static const VT_EMPTY = 0;
  static const VT_NULL = 1;
  static const VT_I2 = 2;
  static const VT_I4 = 3;
  static const VT_R4 = 4;
  static const VT_R8 = 5;
  static const VT_CY = 6;
  static const VT_DATE = 7;
  static const VT_BSTR = 8;
  static const VT_DISPATCH = 9;
  static const VT_ERROR = 10;
  static const VT_BOOL = 11;
  static const VT_VARIANT = 12;
  static const VT_UNKNOWN = 13;
  static const VT_DECIMAL = 14;
  static const VT_I1 = 16;
  static const VT_UI1 = 17;
  static const VT_UI2 = 18;
  static const VT_UI4 = 19;
  static const VT_I8 = 20;
  static const VT_UI8 = 21;
  static const VT_INT = 22;
  static const VT_UINT = 23;
  static const VT_VOID = 24;
  static const VT_HRESULT = 25;
  static const VT_PTR = 26;
  static const VT_SAFEARRAY = 27;
  static const VT_CARRAY = 28;
  static const VT_USERDEFINED = 29;
  static const VT_LPSTR = 30;
  static const VT_LPWSTR = 31;
  static const VT_RECORD = 36;
  static const VT_INT_PTR = 37;
  static const VT_UINT_PTR = 38;
  static const VT_FILETIME = 64;
  static const VT_BLOB = 65;
  static const VT_STREAM = 66;
  static const VT_STORAGE = 67;
  static const VT_STREAMED_OBJECT = 68;
  static const VT_STORED_OBJECT = 69;
  static const VT_BLOB_OBJECT = 70;
  static const VT_CF = 71;
  static const VT_CLSID = 72;
  static const VT_VERSIONED_STREAM = 73;
  static const VT_BSTR_BLOB = 0xfff;
  static const VT_VECTOR = 0x1000;
  static const VT_ARRAY = 0x2000;
  static const VT_BYREF = 0x4000;
  static const VT_RESERVED = 0x8000;
  static const VT_ILLEGAL = 0xffff;
  static const VT_ILLEGALMASKED = 0xfff;
  static const VT_TYPEMASK = 0xff;
}

/// The BLUETOOTH_AUTHENTICATION_REQUIREMENTS enumeration specifies the 'Man in
/// the Middle' protection required for authentication.
///
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

/// The BLUETOOTH_IO_CAPABILITY enumeration defines the input/output
/// capabilities of a Bluetooth Device.
///
/// {@category Enum}
class BLUETOOTH_IO_CAPABILITY {
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYONLY = 0;
  static const BLUETOOTH_IO_CAPABILITY_DISPLAYYESNO = 1;
  static const BLUETOOTH_IO_CAPABILITY_KEYBOARDONLY = 2;
  static const BLUETOOTH_IO_CAPABILITY_NOINPUTNOOUTPUT = 3;
  static const BLUETOOTH_IO_CAPABILITY_UNDEFINED = 4;
}

/// Defines the set of options available to an Open or Save dialog.
///
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
  static const FFFP_NEARESTPARENTMATCH = FFFP_EXACTMATCH + 1;
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

/// @nodoc
const CRED_PRESERVE_CREDENTIAL_BLOB = 0x1;

/// @nodoc
const CRED_FLAGS_PROMPT_NOW = 0x2;

/// @nodoc
const CRED_FLAGS_USERNAME_TARGET = 0x4;

/// @nodoc
const CRED_TYPE_GENERIC = 0x1;

/// @nodoc
const CRED_TYPE_DOMAIN_PASSWORD = 0x2;

/// @nodoc
const CRED_TYPE_DOMAIN_CERTIFICATE = 0x3;

/// @nodoc
const CRED_TYPE_DOMAIN_VISIBLE_PASSWORD = 0x4;

/// @nodoc
const CRED_TYPE_GENERIC_CERTIFICATE = 0x5;

/// @nodoc
const CRED_TYPE_DOMAIN_EXTENDED = 0x6;

/// @nodoc
const CRED_TYPE_MAXIMUM = 0x7;

/// @nodoc
const CRED_TYPE_MAXIMUM_EX = CRED_TYPE_MAXIMUM + 1000;

/// @nodoc
const CRED_PERSIST_SESSION = 0x1;

/// @nodoc
const CRED_PERSIST_LOCAL_MACHINE = 0x2;

/// @nodoc
const CRED_PERSIST_ENTERPRISE = 0x3;

/// @nodoc
const LIST_MODULES_32BIT = 0x01;

/// @nodoc
const LIST_MODULES_64BIT = 0x02;

/// @nodoc
const LIST_MODULES_ALL = 0x03;

/// @nodoc
const LIST_MODULES_DEFAULT = 0x0;

// -----------------------------------------------------------------------------
// Multimedia constants
// -----------------------------------------------------------------------------
const MCI_OPEN = 0x0803;
const MCI_CLOSE = 0x0804;
const MCI_ESCAPE = 0x0805;
const MCI_PLAY = 0x0806;
const MCI_SEEK = 0x0807;
const MCI_STOP = 0x0808;
const MCI_PAUSE = 0x0809;
const MCI_INFO = 0x080A;
const MCI_GETDEVCAPS = 0x080B;
const MCI_SPIN = 0x080C;
const MCI_SET = 0x080D;
const MCI_STEP = 0x080E;
const MCI_RECORD = 0x080F;
const MCI_SYSINFO = 0x0810;
const MCI_BREAK = 0x0811;
const MCI_SAVE = 0x0813;
const MCI_STATUS = 0x0814;
const MCI_CUE = 0x0830;
const MCI_REALIZE = 0x0840;
const MCI_WINDOW = 0x0841;
const MCI_PUT = 0x0842;
const MCI_WHERE = 0x0843;
const MCI_FREEZE = 0x0844;
const MCI_UNFREEZE = 0x0845;
const MCI_LOAD = 0x0850;
const MCI_CUT = 0x0851;
const MCI_COPY = 0x0852;
const MCI_PASTE = 0x0853;
const MCI_UPDATE = 0x0854;
const MCI_RESUME = 0x0855;
const MCI_DELETE = 0x0856;

const MCI_NOTIFY = 0x00000001;
const MCI_WAIT = 0x00000002;
const MCI_FROM = 0x00000004;
const MCI_TO = 0x00000008;
const MCI_TRACK = 0x00000010;
const MCI_OPEN_SHAREABLE = 0x00000100;
const MCI_OPEN_ELEMENT = 0x00000200;
const MCI_OPEN_ALIAS = 0x00000400;
const MCI_OPEN_ELEMENT_ID = 0x00000800;
const MCI_OPEN_TYPE_ID = 0x00001000;
const MCI_OPEN_TYPE = 0x00002000;
const MCI_SEEK_TO_START = 0x00000100;
const MCI_SEEK_TO_END = 0x00000200;
const MCI_STATUS_ITEM = 0x00000100;
const MCI_STATUS_START = 0x00000200;
const MCI_STATUS_LENGTH = 0x00000001;
const MCI_STATUS_POSITION = 0x00000002;
const MCI_STATUS_NUMBER_OF_TRACKS = 0x00000003;
const MCI_STATUS_MODE = 0x00000004;
const MCI_STATUS_MEDIA_PRESENT = 0x00000005;
const MCI_STATUS_TIME_FORMAT = 0x00000006;
const MCI_STATUS_READY = 0x00000007;
const MCI_STATUS_CURRENT_TRACK = 0x00000008;
const MCI_INFO_PRODUCT = 0x00000100;
const MCI_INFO_FILE = 0x00000200;
const MCI_INFO_MEDIA_UPC = 0x00000400;
const MCI_INFO_MEDIA_IDENTITY = 0x00000800;
const MCI_INFO_NAME = 0x00001000;
const MCI_INFO_COPYRIGHT = 0x00002000;
const MCI_SEQ_STATUS_TEMPO = 0x00004002;
const MCI_SEQ_STATUS_PORT = 0x00004003;
const MCI_SEQ_STATUS_SLAVE = 0x00004007;
const MCI_SEQ_STATUS_MASTER = 0x00004008;
const MCI_SEQ_STATUS_OFFSET = 0x00004009;
const MCI_SEQ_STATUS_DIVTYPE = 0x0000400A;
const MCI_SEQ_STATUS_NAME = 0x0000400B;
const MCI_SEQ_STATUS_COPYRIGHT = 0x0000400C;

const MCIERR_BASE = 256;
const MCIERR_INVALID_DEVICE_ID = MCIERR_BASE + 1;
const MCIERR_UNRECOGNIZED_KEYWORD = MCIERR_BASE + 3;
const MCIERR_UNRECOGNIZED_COMMAND = MCIERR_BASE + 5;
const MCIERR_HARDWARE = MCIERR_BASE + 6;
const MCIERR_INVALID_DEVICE_NAME = MCIERR_BASE + 7;
const MCIERR_OUT_OF_MEMORY = MCIERR_BASE + 8;
const MCIERR_DEVICE_OPEN = MCIERR_BASE + 9;
const MCIERR_CANNOT_LOAD_DRIVER = MCIERR_BASE + 10;
const MCIERR_MISSING_COMMAND_STRING = MCIERR_BASE + 11;
const MCIERR_PARAM_OVERFLOW = MCIERR_BASE + 12;
const MCIERR_MISSING_STRING_ARGUMENT = MCIERR_BASE + 13;
const MCIERR_BAD_INTEGER = MCIERR_BASE + 14;
const MCIERR_PARSER_INTERNAL = MCIERR_BASE + 15;
const MCIERR_DRIVER_INTERNAL = MCIERR_BASE + 16;
const MCIERR_MISSING_PARAMETER = MCIERR_BASE + 17;
const MCIERR_UNSUPPORTED_FUNCTION = MCIERR_BASE + 18;
const MCIERR_FILE_NOT_FOUND = MCIERR_BASE + 19;
const MCIERR_DEVICE_NOT_READY = MCIERR_BASE + 20;
const MCIERR_INTERNAL = MCIERR_BASE + 21;
const MCIERR_DRIVER = MCIERR_BASE + 22;
const MCIERR_CANNOT_USE_ALL = MCIERR_BASE + 23;
const MCIERR_MULTIPLE = MCIERR_BASE + 24;
const MCIERR_EXTENSION_NOT_FOUND = MCIERR_BASE + 25;
const MCIERR_OUTOFRANGE = MCIERR_BASE + 26;
const MCIERR_FLAGS_NOT_COMPATIBLE = MCIERR_BASE + 28;
const MCIERR_FILE_NOT_SAVED = MCIERR_BASE + 30;
const MCIERR_DEVICE_TYPE_REQUIRED = MCIERR_BASE + 31;
const MCIERR_DEVICE_LOCKED = MCIERR_BASE + 32;
const MCIERR_DUPLICATE_ALIAS = MCIERR_BASE + 33;
const MCIERR_BAD_CONSTANT = MCIERR_BASE + 34;
const MCIERR_MUST_USE_SHAREABLE = MCIERR_BASE + 35;
const MCIERR_MISSING_DEVICE_NAME = MCIERR_BASE + 36;
const MCIERR_BAD_TIME_FORMAT = MCIERR_BASE + 37;
const MCIERR_NO_CLOSING_QUOTE = MCIERR_BASE + 38;
const MCIERR_DUPLICATE_FLAGS = MCIERR_BASE + 39;
const MCIERR_INVALID_FILE = MCIERR_BASE + 40;
const MCIERR_NULL_PARAMETER_BLOCK = MCIERR_BASE + 41;
const MCIERR_UNNAMED_RESOURCE = MCIERR_BASE + 42;
const MCIERR_NEW_REQUIRES_ALIAS = MCIERR_BASE + 43;
const MCIERR_NOTIFY_ON_AUTO_OPEN = MCIERR_BASE + 44;
const MCIERR_NO_ELEMENT_ALLOWED = MCIERR_BASE + 45;
const MCIERR_NONAPPLICABLE_FUNCTION = MCIERR_BASE + 46;
const MCIERR_ILLEGAL_FOR_AUTO_OPEN = MCIERR_BASE + 47;
const MCIERR_FILENAME_REQUIRED = MCIERR_BASE + 48;
const MCIERR_EXTRA_CHARACTERS = MCIERR_BASE + 49;
const MCIERR_DEVICE_NOT_INSTALLED = MCIERR_BASE + 50;
const MCIERR_GET_CD = MCIERR_BASE + 51;
const MCIERR_SET_CD = MCIERR_BASE + 52;
const MCIERR_SET_DRIVE = MCIERR_BASE + 53;
const MCIERR_DEVICE_LENGTH = MCIERR_BASE + 54;
const MCIERR_DEVICE_ORD_LENGTH = MCIERR_BASE + 55;
const MCIERR_NO_INTEGER = MCIERR_BASE + 56;
const MCIERR_WAVE_OUTPUTSINUSE = MCIERR_BASE + 64;
const MCIERR_WAVE_SETOUTPUTINUSE = MCIERR_BASE + 65;
const MCIERR_WAVE_INPUTSINUSE = MCIERR_BASE + 66;
const MCIERR_WAVE_SETINPUTINUSE = MCIERR_BASE + 67;
const MCIERR_WAVE_OUTPUTUNSPECIFIED = MCIERR_BASE + 68;
const MCIERR_WAVE_INPUTUNSPECIFIED = MCIERR_BASE + 69;
const MCIERR_WAVE_OUTPUTSUNSUITABLE = MCIERR_BASE + 70;
const MCIERR_WAVE_SETOUTPUTUNSUITABLE = MCIERR_BASE + 71;
const MCIERR_WAVE_INPUTSUNSUITABLE = MCIERR_BASE + 72;
const MCIERR_WAVE_SETINPUTUNSUITABLE = MCIERR_BASE + 73;
const MCIERR_SEQ_DIV_INCOMPATIBLE = MCIERR_BASE + 80;
const MCIERR_SEQ_PORT_INUSE = MCIERR_BASE + 81;
const MCIERR_SEQ_PORT_NONEXISTENT = MCIERR_BASE + 82;
const MCIERR_SEQ_PORT_MAPNODEVICE = MCIERR_BASE + 83;
const MCIERR_SEQ_PORT_MISCERROR = MCIERR_BASE + 84;
const MCIERR_SEQ_TIMER = MCIERR_BASE + 85;
const MCIERR_SEQ_PORTUNSPECIFIED = MCIERR_BASE + 86;
const MCIERR_SEQ_NOMIDIPRESENT = MCIERR_BASE + 87;
const MCIERR_NO_WINDOW = MCIERR_BASE + 90;
const MCIERR_CREATEWINDOW = MCIERR_BASE + 91;
const MCIERR_FILE_READ = MCIERR_BASE + 92;
const MCIERR_FILE_WRITE = MCIERR_BASE + 93;
const MCIERR_NO_IDENTITY = MCIERR_BASE + 94;
const MCIERR_CUSTOM_DRIVER_BASE = MCIERR_BASE + 256;

const MIDI_MAPPER = -1;

// -----------------------------------------------------------------------------
// PlaySound constants
// -----------------------------------------------------------------------------

/// play synchronously (default)
const int SND_SYNC = 0x0000;

/// play asynchronously
const int SND_ASYNC = 0x0001;

/// silence (!default) if sound not found
const int SND_NODEFAULT = 0x0002;

/// pszSound points to a memory file
const int SND_MEMORY = 0x0004;

/// loop the sound until next sndPlaySound
const int SND_LOOP = 0x0008;

/// don't stop any currently playing sound
const int SND_NOSTOP = 0x0010;

/// don't wait if the driver is busy
const int SND_NOWAIT = 0x00002000;

/// name is a registry alias
const int SND_ALIAS = 0x00010000;

/// alias is a predefined ID
const int SND_ALIAS_ID = 0x00110000;

/// name is file name
const int SND_FILENAME = 0x00020000;

/// name is resource name or atom
const int SND_RESOURCE = 0x00040004;

/// purge non-static events for task
const int SND_PURGE = 0x0040;

/// look for application specific association
const int SND_APPLICATION = 0x0080;

/// Generate a SoundSentry event with this sound
const int SND_SENTRY = 0x00080000;

/// Treat this as a "ring" from a communications app - don't duck me
const int SND_RING = 0x00100000;

/// Treat this as a system sound
const int SND_SYSTEM = 0x00200000;
