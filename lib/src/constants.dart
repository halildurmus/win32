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

/// The code that creates and manages objects of this class is a DLL that runs
/// in the same process as the caller of the function specifying the class
/// context.
const CLSCTX_INPROC_SERVER = 0x1;

/// The code that manages objects of this class is an in-process handler. This
/// is a DLL that runs in the client process and implements client-side
/// structures of this class when instances of the class are accessed remotely.
const CLSCTX_INPROC_HANDLER = 0x2;

/// The EXE code that creates and manages objects of this class runs on same
/// machine but is loaded in a separate process space.
const CLSCTX_LOCAL_SERVER = 0x4;

/// A remote context. The LocalServer32 or LocalService code that creates and
/// manages objects of this class is run on a different computer.
const CLSCTX_REMOTE_SERVER = 0x10;

/// The combination of [CLSCTX_INPROC_SERVER], [CLSCTX_INPROC_HANDLER],
/// [CLSCTX_LOCAL_SERVER], and [CLSCTX_REMOTE_SERVER].
const CLSCTX_ALL = CLSCTX_INPROC_SERVER |
    CLSCTX_INPROC_HANDLER |
    CLSCTX_LOCAL_SERVER |
    CLSCTX_REMOTE_SERVER;

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

// -----------------------------------------------------------------------------
// Windows Runtime errors
// -----------------------------------------------------------------------------

/// Typename or Namespace was not found in metadata file.
const RO_E_METADATA_NAME_NOT_FOUND = 0x8000000F;

/// Name is an existing namespace rather than a typename.
const RO_E_METADATA_NAME_IS_NAMESPACE = 0x80000010;

/// Typename has an invalid format.
const RO_E_METADATA_INVALID_TYPE_FORMAT = 0x80000011;

/// Metadata file is invalid or corrupted.
const RO_E_INVALID_METADATA_FILE = 0x80000012;

/// The object has been closed.
const RO_E_CLOSED = 0x80000013;

/// Only one thread may access the object during a write operation.
const RO_E_EXCLUSIVE_WRITE = 0x80000014;

/// Operation is prohibited during change notification.
const RO_E_CHANGE_NOTIFICATION_IN_PROGRESS = 0x80000015;

/// The text associated with this error code could not be found.
const RO_E_ERROR_STRING_NOT_FOUND = 0x80000016;

// -----------------------------------------------------------------------------
// Process and file access types
// -----------------------------------------------------------------------------

/// The right to delete the object.
const DELETE = 0x00010000;

/// The right to read the information in the object's security descriptor, not
/// including the information in the system access control list (SACL).
const READ_CONTROL = 0x00020000;

/// The right to modify the discretionary access control list (DACL) in the
/// object's security descriptor.
const WRITE_DAC = 0x00040000;

/// The right to change the owner in the object's security descriptor.
const WRITE_OWNER = 0x00080000;

/// The right to use the object for synchronization. This enables a thread to
/// wait until the object is in the signaled state.
const SYNCHRONIZE = 0x00100000;

/// Combines DELETE, READ_CONTROL, WRITE_DAC, and WRITE_OWNER access.
const STANDARD_RIGHTS_REQUIRED = 0x000F0000;

/// Currently defined to equal READ_CONTROL.
const STANDARD_RIGHTS_READ = READ_CONTROL;

/// Currently defined to equal READ_CONTROL.
const STANDARD_RIGHTS_WRITE = READ_CONTROL;

/// Currently defined to equal READ_CONTROL.
const STANDARD_RIGHTS_EXECUTE = READ_CONTROL;

/// Combines DELETE, READ_CONTROL, WRITE_DAC, WRITE_OWNER, and SYNCHRONIZE
/// access.
const STANDARD_RIGHTS_ALL = 0x001F0000;

/// Specifies access to the system security portion of the security descriptor.
const ACCESS_SYSTEM_SECURITY = 0x01000000;

/// Indicates that the caller is requesting the most access possible to the
/// object.
const MAXIMUM_ALLOWED = 0x02000000;

/// Specifies access control suitable for reading the object.
const GENERIC_READ = 0x80000000;

/// Specifies access control suitable for updating attributes on the object.
const GENERIC_WRITE = 0x40000000;

/// Specifies access control suitable for executing an action on the object.
const GENERIC_EXECUTE = 0x20000000;

/// Specifies all defined access control on the object.
const GENERIC_ALL = 0x10000000;

/// Creates a new file, only if it does not already exist.
const CREATE_NEW = 1;

/// Creates a new file, always.
const CREATE_ALWAYS = 2;

/// Opens a file or device, only if it exists.
const OPEN_EXISTING = 3;

/// Opens a file, always.
const OPEN_ALWAYS = 4;

/// Opens a file and truncates it so that its size is zero bytes, only if it
/// exists.
const TRUNCATE_EXISTING = 5;

// -----------------------------------------------------------------------------
// Heap allocation flags
// -----------------------------------------------------------------------------

/// Serialized access will not be used for this allocation.
const HEAP_NO_SERIALIZE = 0x00000001;

/// The system will raise an exception to indicate a function failure, such as
/// an out-of-memory condition, instead of returning NULL.
const HEAP_GENERATE_EXCEPTIONS = 0x00000004;

/// The allocated memory will be initialized to zero. Otherwise, the memory is
/// not initialized to zero.
const HEAP_ZERO_MEMORY = 0x00000008;

/// There can be no movement when reallocating a memory block.
const HEAP_REALLOC_IN_PLACE_ONLY = 0x00000010;

/// All memory blocks that are allocated from this heap allow code execution, if
/// the hardware enforces data execution prevention.
const HEAP_CREATE_ENABLE_EXECUTE = 0x00040000;

// -----------------------------------------------------------------------------
// Thread execution states
// -----------------------------------------------------------------------------

/// Forces the system to be in the working state by resetting the system idle
/// timer.
const ES_SYSTEM_REQUIRED = 0x00000001;

/// Forces the display to be on by resetting the display idle timer.

const ES_DISPLAY_REQUIRED = 0x00000002;

/// This value is not supported. If ES_USER_PRESENT is combined with other
/// esFlags values, the call will fail and none of the specified states will be
/// set.
const ES_USER_PRESENT = 0x00000004;

/// Enables away mode. This value must be specified with ES_CONTINUOUS.
const ES_AWAYMODE_REQUIRED = 0x00000040;

/// Informs the system that the state being set should remain in effect until
/// the next call that uses ES_CONTINUOUS and one of the other state flags is
/// cleared.
const ES_CONTINUOUS = 0x80000000;

// -----------------------------------------------------------------------------
// Named pipe flags
// -----------------------------------------------------------------------------

/// The flow of data in the pipe goes from client to server only. This mode
/// gives the server the equivalent of GENERIC_READ access to the pipe. The
/// client must specify GENERIC_WRITE access when connecting to the pipe. If the
/// client must read pipe settings by calling the GetNamedPipeInfo or
/// GetNamedPipeHandleState functions, the client must specify GENERIC_WRITE and
/// FILE_READ_ATTRIBUTES access when connecting to the pipe.
const PIPE_ACCESS_INBOUND = 0x00000001;

/// The flow of data in the pipe goes from server to client only. This mode
/// gives the server the equivalent of GENERIC_WRITE access to the pipe. The
/// client must specify GENERIC_READ access when connecting to the pipe. If the
/// client must change pipe settings by calling the SetNamedPipeHandleState
/// function, the client must specify GENERIC_READ and FILE_WRITE_ATTRIBUTES
/// access when connecting to the pipe.
const PIPE_ACCESS_OUTBOUND = 0x00000002;

/// The pipe is bi-directional; both server and client processes can read from
/// and write to the pipe. This mode gives the server the equivalent of
/// GENERIC_READ and GENERIC_WRITE access to the pipe. The client can specify
/// GENERIC_READ or GENERIC_WRITE, or both, when it connects to the pipe using
/// the CreateFile function.
const PIPE_ACCESS_DUPLEX = 0x00000003;

/// The handle refers to the client end of a named pipe instance. This is the
/// default.
const PIPE_CLIENT_END = 0x00000000;

/// The handle refers to the server end of a named pipe instance. If this value
/// is not specified, the handle refers to the client end of a named pipe
/// instance.
const PIPE_SERVER_END = 0x00000001;

/// Blocking mode is enabled. When the pipe handle is specified in the ReadFile,
/// WriteFile, or ConnectNamedPipe function, the operations are not completed
/// until there is data to read, all data is written, or a client is connected.
/// Use of this mode can mean waiting indefinitely in some situations for a
/// client process to perform an action.
const PIPE_WAIT = 0x00000000;

/// Nonblocking mode is enabled. In this mode, ReadFile, WriteFile, and
/// ConnectNamedPipe always return immediately.
const PIPE_NOWAIT = 0x00000001;

/// Data is read from the pipe as a stream of bytes. This mode can be used with
/// either PIPE_TYPE_MESSAGE or PIPE_TYPE_BYTE.
const PIPE_READMODE_BYTE = 0x00000000;

/// Data is read from the pipe as a stream of messages. This mode can be only
/// used if PIPE_TYPE_MESSAGE is also specified.
const PIPE_READMODE_MESSAGE = 0x00000002;

/// The named pipe is a byte pipe. This is the default.
const PIPE_TYPE_BYTE = 0x00000000;

/// The named pipe is a message pipe. If this value is not specified, the pipe
/// is a byte pipe.
const PIPE_TYPE_MESSAGE = 0x00000004;

/// Connections from remote clients can be accepted and checked against the
/// security descriptor for the pipe.
const PIPE_ACCEPT_REMOTE_CLIENTS = 0x00000000;

/// Connections from remote clients are automatically rejected.
const PIPE_REJECT_REMOTE_CLIENTS = 0x00000008;

/// The number of pipe instances that can be created is limited only by the
/// availability of system resources.
const PIPE_UNLIMITED_INSTANCES = 255;

// -----------------------------------------------------------------------------
// File create flags
// -----------------------------------------------------------------------------

/// Write operations will not go through any intermediate cache, they will go
/// directly to disk.
const FILE_FLAG_WRITE_THROUGH = 0x80000000;

/// The file or device is being opened or created for asynchronous I/O. When
/// subsequent I/O operations are completed on this handle, the event specified
/// in the OVERLAPPED structure will be set to the signaled state. If this flag
/// is specified, the file can be used for simultaneous read and write
/// operations. If this flag is not specified, then I/O operations are
/// serialized, even if the calls to the read and write functions specify an
/// OVERLAPPED structure.
const FILE_FLAG_OVERLAPPED = 0x40000000;

/// The file or device is being opened with no system caching for data reads and
/// writes. This flag does not affect hard disk caching or memory mapped files
const FILE_FLAG_NO_BUFFERING = 0x20000000;

/// Access is intended to be random. The system can use this as a hint to
/// optimize file caching.
const FILE_FLAG_RANDOM_ACCESS = 0x10000000;

/// Access is intended to be sequential from beginning to end. The system can
/// use this as a hint to optimize file caching.
const FILE_FLAG_SEQUENTIAL_SCAN = 0x08000000;

/// The file is to be deleted immediately after all of its handles are closed,
/// which includes the specified handle and any other open or duplicated
/// handles.
const FILE_FLAG_DELETE_ON_CLOSE = 0x04000000;

/// The file is being opened or created for a backup or restore operation. The
/// system ensures that the calling process overrides file security checks when
/// the process has SE_BACKUP_NAME and SE_RESTORE_NAME privileges.
const FILE_FLAG_BACKUP_SEMANTICS = 0x02000000;

/// Access will occur according to POSIX rules. This includes allowing multiple
/// files with names, differing only in case, for file systems that support that
/// naming.
const FILE_FLAG_POSIX_SEMANTICS = 0x01000000;

/// The file or device is being opened with session awareness. If this flag is
/// not specified, then per-session devices (such as a device using RemoteFX USB
/// Redirection) cannot be opened by processes running in session 0. This flag
/// has no effect for callers not in session 0. This flag is supported only on
/// server editions of Windows.
const FILE_FLAG_SESSION_AWARE = 0x00800000;

/// Normal reparse point processing will not occur; CreateFile will attempt to
/// open the reparse point. When a file is opened, a file handle is returned,
/// whether or not the filter that controls the reparse point is operational.
const FILE_FLAG_OPEN_REPARSE_POINT = 0x00200000;

/// The file data is requested, but it should continue to be located in remote
/// storage. It should not be transported back to local storage. This flag is
/// for use by remote storage systems.
const FILE_FLAG_OPEN_NO_RECALL = 0x00100000;

/// If you attempt to create multiple instances of a pipe with this flag,
/// creation of the first instance succeeds, but creation of the next instance
/// fails with ERROR_ACCESS_DENIED.
const FILE_FLAG_FIRST_PIPE_INSTANCE = 0x00080000;

// -----------------------------------------------------------------------------
// Handle flags
// -----------------------------------------------------------------------------

/// If this flag is set, a child process created with the bInheritHandles
/// parameter of CreateProcess set to TRUE will inherit the object handle.
const HANDLE_FLAG_INHERIT = 0x00000001;

/// If this flag is set, calling the CloseHandle function will not close the
/// object handle.
const HANDLE_FLAG_PROTECT_FROM_CLOSE = 0x00000002;

// -----------------------------------------------------------------------------
// Get Binary Type flags
// -----------------------------------------------------------------------------

/// A 32-bit Windows-based application
const SCS_32BIT_BINARY = 0;

/// An MS-DOS – based application
const SCS_DOS_BINARY = 1;

/// A 16-bit Windows-based application
const SCS_WOW_BINARY = 2;

/// A PIF file that executes an MS-DOS–based application
const SCS_PIF_BINARY = 3;

/// A POSIX–based application
const SCS_POSIX_BINARY = 4;

/// A 16-bit OS/2-based application
const SCS_OS216_BINARY = 5;

/// A 64-bit Windows-based application.
const SCS_64BIT_BINARY = 6;

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

/// The window is active.
const WS_ACTIVECAPTION = 0x0001;

/// The window has a thin-line border.
const WS_BORDER = 0x00800000;

/// The window has a title bar (includes the WS_BORDER style).
const WS_CAPTION = 0x00C00000;

/// The window is a child window. A window with this style cannot have a menu
/// bar. This style cannot be used with the WS_POPUP style.
const WS_CHILD = 0x40000000;

/// Same as the WS_CHILD style.
const WS_CHILDWINDOW = WS_CHILD;

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
const WS_ICONIC = WS_MINIMIZE;

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
const WS_SIZEBOX = WS_THICKFRAME;

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
const WS_TILED = WS_OVERLAPPED;

/// The window is an overlapped window. Same as the WS_OVERLAPPEDWINDOW style.
const WS_TILEDWINDOW = WS_OVERLAPPEDWINDOW;

/// The window is initially visible.
///
/// This style can be turned on and off by using the ShowWindow or SetWindowPos
/// function.
const WS_VISIBLE = 0x10000000;

/// The window has a vertical scroll bar.
const WS_VSCROLL = 0x00200000;

/// The window has a double border; the window can, optionally, be created with
/// a title bar by specifying the WS_CAPTION style in the dwStyle parameter.
const WS_EX_DLGMODALFRAME = 0x00000001;

/// The child window created with this style does not send the WM_PARENTNOTIFY
/// message to its parent window when it is created or destroyed.
const WS_EX_NOPARENTNOTIFY = 0x00000004;

/// The window should be placed above all non-topmost windows and should stay
/// above them, even when the window is deactivated. To add or remove this
/// style, use the SetWindowPos function.
const WS_EX_TOPMOST = 0x00000008;

/// The window accepts drag-drop files.
const WS_EX_ACCEPTFILES = 0x00000010;

/// The window should not be painted until siblings beneath the window (that
/// were created by the same thread) have been painted. The window appears
/// transparent because the bits of underlying sibling windows have already been
/// painted.
const WS_EX_TRANSPARENT = 0x00000020;

/// The window is a MDI child window.
const WS_EX_MDICHILD = 0x00000040;

/// The window is intended to be used as a floating toolbar. A tool window has a
/// title bar that is shorter than a normal title bar, and the window title is
/// drawn using a smaller font. A tool window does not appear in the taskbar or
/// in the dialog that appears when the user presses ALT+TAB. If a tool window
/// has a system menu, its icon is not displayed on the title bar. However, you
/// can display the system menu by right-clicking or by typing ALT+SPACE.
const WS_EX_TOOLWINDOW = 0x00000080;

/// The window has a border with a raised edge.
const WS_EX_WINDOWEDGE = 0x00000100;

/// The window has a border with a sunken edge.
const WS_EX_CLIENTEDGE = 0x00000200;

/// The title bar of the window includes a question mark.
///
/// When the user clicks the question mark, the cursor changes to a question
/// mark with a pointer. If the user then clicks a child window, the child
/// receives a WM_HELP message. The child window should pass the message to the
/// parent window procedure, which should call the WinHelp function using the
/// HELP_WM_HELP command. The Help application displays a pop-up window that
/// typically contains help for the child window. WS_EX_CONTEXTHELP cannot be
/// used with the WS_MAXIMIZEBOX or WS_MINIMIZEBOX styles.
const WS_EX_CONTEXTHELP = 0x00000400;

/// The window has generic "right-aligned" properties. This depends on the
/// window class. This style has an effect only if the shell language is Hebrew,
/// Arabic, or another language that supports reading-order alignment;
/// otherwise, the style is ignored.
const WS_EX_RIGHT = 0x00001000;

/// The window has generic left-aligned properties. This is the default.
const WS_EX_LEFT = 0x00000000;

/// If the shell language is Hebrew, Arabic, or another language that supports
/// reading-order alignment, the window text is displayed using right-to-left
/// reading-order properties. For other languages, the style is ignored.
const WS_EX_RTLREADING = 0x00002000;

/// The window text is displayed using left-to-right reading-order properties.
/// This is the default.
const WS_EX_LTRREADING = 0x00000000;

/// If the shell language is Hebrew, Arabic, or another language that supports
/// reading order alignment, the vertical scroll bar (if present) is to the left
/// of the client area. For other languages, the style is ignored.
const WS_EX_LEFTSCROLLBAR = 0x00004000;

/// The vertical scroll bar (if present) is to the right of the client area.
/// This is the default.
const WS_EX_RIGHTSCROLLBAR = 0x00000000;

/// The window itself contains child windows that should take part in dialog box
/// navigation.
///
/// If this style is specified, the dialog manager recurses into children of
/// this window when performing navigation operations such as handling the TAB
/// key, an arrow key, or a keyboard mnemonic.
const WS_EX_CONTROLPARENT = 0x00010000;

/// The window has a three-dimensional border style intended to be used for
/// items that do not accept user input.
const WS_EX_STATICEDGE = 0x00020000;

/// Forces a top-level window onto the taskbar when the window is visible.
const WS_EX_APPWINDOW = 0x00040000;

/// The window is an overlapped window.
const WS_EX_OVERLAPPEDWINDOW = WS_EX_WINDOWEDGE | WS_EX_CLIENTEDGE;

/// The window is palette window, which is a modeless dialog box that presents
/// an array of commands.
const WS_EX_PALETTEWINDOW = WS_EX_WINDOWEDGE | WS_EX_TOOLWINDOW | WS_EX_TOPMOST;

/// The window is a layered window. This style cannot be used if the window has
/// a class style of either CS_OWNDC or CS_CLASSDC.
const WS_EX_LAYERED = 0x00080000;

/// The window does not pass its window layout to its child windows.
const WS_EX_NOINHERITLAYOUT = 0x00100000;

/// The window does not render to a redirection surface. This is for windows
/// that do not have visible content or that use mechanisms other than surfaces
/// to provide their visual.
const WS_EX_NOREDIRECTIONBITMAP = 0x00200000;

/// If the shell language is Hebrew, Arabic, or another language that supports
/// reading order alignment, the horizontal origin of the window is on the right
/// edge. Increasing horizontal values advance to the left.
const WS_EX_LAYOUTRTL = 0x00400000;

/// Paints all descendants of a window in bottom-to-top painting order using
/// double-buffering.
///
/// Bottom-to-top painting order allows a descendent window to have translucency
/// (alpha) and transparency (color-key) effects, but only if the descendent
/// window also has the WS_EX_TRANSPARENT bit set. Double-buffering allows the
/// window and its descendents to be painted without flicker. This cannot be
/// used if the window has a class style of either CS_OWNDC or CS_CLASSDC.
const WS_EX_COMPOSITED = 0x02000000;

/// A top-level window created with this style does not become the foreground
/// window when the user clicks it. The system does not bring this window to the
/// foreground when the user minimizes or closes the foreground window.
const WS_EX_NOACTIVATE = 0x08000000;

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

/// Notifies applications that a power-management event has occurred.
const WM_POWERBROADCAST = 0x0218;

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

/// Used to define private messages for use by private window classes, usually
/// in the form WM_USER+x, where x is an integer value.
const WM_USER = 0x0400;

/// Notifies applications that the computer is about to enter a suspended state.
/// This event is typically broadcast when all applications and installable
/// drivers have returned TRUE to a previous PBT_APMQUERYSUSPEND event.
const PBT_APMSUSPEND = 0x0004;

/// Notifies applications that the system has resumed operation after being
/// suspended.
const PBT_APMRESUMESUSPEND = 0x0007;

/// Notifies applications that the battery power is low.
const PBT_APMBATTERYLOW = 0x0009;

/// Notifies applications of a change in the power status of the computer, such
/// as a switch from battery power to A/C. The system also broadcasts this event
/// when remaining battery power slips below the threshold specified by the user
/// or if the battery power changes by a specified percentage.
const PBT_APMPOWERSTATUSCHANGE = 0x000A;

/// Notifies applications that the system is resuming from sleep or hibernation.
/// This event is delivered every time the system resumes and does not indicate
/// whether a user is present.
const PBT_APMRESUMEAUTOMATIC = 0x0012;

/// Power setting change event sent with a WM_POWERBROADCAST window message or
/// in a HandlerEx notification callback for services.
const PBT_POWERSETTINGCHANGE = 0x8013;

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

// -----------------------------------------------------------------------------
// System colors
// -----------------------------------------------------------------------------

/// Scroll bar gray area.
const COLOR_SCROLLBAR = 0;

/// Desktop.
const COLOR_BACKGROUND = 1;

/// Active window title bar.
const COLOR_ACTIVECAPTION = 2;

/// Inactive window caption.
const COLOR_INACTIVECAPTION = 3;

/// Menu background.
const COLOR_MENU = 4;

/// Window background.
const COLOR_WINDOW = 5;

/// Window frame.
const COLOR_WINDOWFRAME = 6;

/// Text in menus.
const COLOR_MENUTEXT = 7;

/// Text in windows.
const COLOR_WINDOWTEXT = 8;

/// Text in caption, size box, and scroll bar arrow box.
const COLOR_CAPTIONTEXT = 9;

/// Active window border.
const COLOR_ACTIVEBORDER = 10;

/// Inactive window border.
const COLOR_INACTIVEBORDER = 11;

/// Background color of multiple document interface (MDI) applications.
const COLOR_APPWORKSPACE = 12;

/// Item(s) selected in a control.
const COLOR_HIGHLIGHT = 13;

/// Text of item(s) selected in a control.
const COLOR_HIGHLIGHTTEXT = 14;

/// Face color for three-dimensional display elements and for dialog box
/// backgrounds.
const COLOR_BTNFACE = 15;

/// Shadow color for three-dimensional display elements (for edges facing away
/// from the light source).
const COLOR_BTNSHADOW = 16;

/// Grayed (disabled) text.
const COLOR_GRAYTEXT = 17;

/// Text on push buttons.
const COLOR_BTNTEXT = 18;

/// Color of text in an inactive caption.
const COLOR_INACTIVECAPTIONTEXT = 19;

/// Highlight color for three-dimensional display elements (for edges facing the
/// light source.)
const COLOR_BTNHIGHLIGHT = 20;

// -----------------------------------------------------------------------------
// GetWindowLong styles
// -----------------------------------------------------------------------------

/// Gets/sets the extended window styles.
const GWL_EXSTYLE = -20;

/// Gets/sets a new application instance handle.
const GWL_HINSTANCE = -6;

/// Gets/sets a new identifier of the child window. The window cannot be a
/// top-level window.
const GWL_ID = -12;

/// Gets/sets a new window style.
const GWL_STYLE = -16;

/// Gets/sets the user data associated with the window. This data is intended
/// for use by the application that created the window. Its value is initially
/// zero.
const GWL_USERDATA = -21;

/// Sets a new address for the window procedure. You cannot change this
/// attribute if the window does not belong to the same process as the calling
/// thread.
const GWL_WNDPROC = -4;

// -----------------------------------------------------------------------------
// Hit testing constants
// -----------------------------------------------------------------------------

/// On the screen background or on a dividing line between windows (same as
/// HTNOWHERE, except that the DefWindowProc function produces a system beep to
/// indicate an error).
const HTERROR = -2;

/// In a window currently covered by another window in the same thread (the
/// message will be sent to underlying windows in the same thread until one of
/// them returns a code that is not HTTRANSPARENT).
const HTTRANSPARENT = -1;

/// On the screen background or on a dividing line between windows.
const HTNOWHERE = 0;

/// In a client area.
const HTCLIENT = 1;

/// In a title bar.
const HTCAPTION = 2;

/// In a window menu or in a Close button in a child window.
const HTSYSMENU = 3;

/// In a size box (same as HTSIZE).
const HTGROWBOX = 4;

/// In a size box (same as HTGROWBOX).
const HTSIZE = HTGROWBOX;

/// In a menu.
const HTMENU = 5;

/// In a horizontal scroll bar.
const HTHSCROLL = 6;

/// In the vertical scroll bar.
const HTVSCROLL = 7;

/// In a Minimize button.
const HTMINBUTTON = 8;

/// In a Maximize button.
const HTMAXBUTTON = 9;

/// In the left border of a resizable window (the user can click the mouse to
/// resize the window horizontally).
const HTLEFT = 10;

/// In the right border of a resizable window (the user can click the mouse to
/// resize the window horizontally).
const HTRIGHT = 11;

/// In the upper-horizontal border of a window.
const HTTOP = 12;

/// In the upper-left corner of a window border.
const HTTOPLEFT = 13;

/// In the upper-right corner of a window border.
const HTTOPRIGHT = 14;

/// In the lower-horizontal border of a resizable window (the user can click the
/// mouse to resize the window vertically).
const HTBOTTOM = 15;

/// In the lower-left corner of a border of a resizable window (the user can
/// click the mouse to resize the window diagonally).
const HTBOTTOMLEFT = 16;

/// In the lower-right corner of a border of a resizable window (the user can
/// click the mouse to resize the window diagonally).
const HTBOTTOMRIGHT = 17;

/// In the border of a window that does not have a sizing border.
const HTBORDER = 18;

/// In a Minimize button.
const HTREDUCE = HTMINBUTTON;

/// In a Maximize button.
const HTZOOM = HTMAXBUTTON;

/// In a Close button.
const HTCLOSE = 20;

/// In a Help button.
const HTHELP = 21;

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
// Mapping mode constants
// -----------------------------------------------------------------------------

/// Each logical unit is mapped to one device pixel. Positive x is to the right;
/// positive y is down.
const MM_TEXT = 1;

/// Each logical unit is mapped to 0.1 millimeter. Positive x is to the right;
/// positive y is up.
const MM_LOMETRIC = 2;

/// Each logical unit is mapped to 0.01 millimeter. Positive x is to the right;
/// positive y is up.
const MM_HIMETRIC = 3;

/// Each logical unit is mapped to 0.01 inch. Positive x is to the right;
/// positive y is up.
const MM_LOENGLISH = 4;

/// Each logical unit is mapped to 0.001 inch. Positive x is to the right;
/// positive y is up.
const MM_HIENGLISH = 5;

/// Each logical unit is mapped to one twentieth of a printer's point (1/1440
/// inch, also called a twip). Positive x is to the right; positive y is up.
const MM_TWIPS = 6;

/// Logical units are mapped to arbitrary units with equally scaled axes; that
/// is, one unit along the x-axis is equal to one unit along the y-axis. Use the
/// SetWindowExtEx and SetViewportExtEx functions to specify the units and the
/// orientation of the axes. Graphics device interface (GDI) makes adjustments
/// as necessary to ensure the x and y units remain the same size (When the
/// window extent is set, the viewport will be adjusted to keep the units
/// isotropic).
const MM_ISOTROPIC = 7;

/// Logical units are mapped to arbitrary units with arbitrarily scaled axes.
/// Use the SetWindowExtEx and SetViewportExtEx functions to specify the units,
/// orientation, and scaling.
const MM_ANISOTROPIC = 8;

// -----------------------------------------------------------------------------
// SetWindowPos flags
// -----------------------------------------------------------------------------

/// Retains the current size (ignores the cx and cy parameters).
const SWP_NOSIZE = 0x0001;

/// Retains the current position (ignores X and Y parameters).
const SWP_NOMOVE = 0x0002;

/// Retains the current Z order (ignores the hWndInsertAfter parameter).
const SWP_NOZORDER = 0x0004;

/// Does not redraw changes. If this flag is set, no repainting of any kind
/// occurs. This applies to the client area, the nonclient area (including the
/// title bar and scroll bars), and any part of the parent window uncovered as a
/// result of the window being moved. When this flag is set, the application
/// must explicitly invalidate or redraw any parts of the window and parent
/// window that need redrawing.
const SWP_NOREDRAW = 0x0008;

/// Does not activate the window. If this flag is not set, the window is
/// activated and moved to the top of either the topmost or non-topmost group
/// (depending on the setting of the hWndInsertAfter parameter).
const SWP_NOACTIVATE = 0x0010;

/// Applies new frame styles set using the SetWindowLong function. Sends a
/// WM_NCCALCSIZE message to the window, even if the window's size is not being
/// changed. If this flag is not specified, WM_NCCALCSIZE is sent only when the
/// window's size is being changed.
const SWP_FRAMECHANGED = 0x0020;

/// Displays the window.
const SWP_SHOWWINDOW = 0x0040;

/// Hides the window.
const SWP_HIDEWINDOW = 0x0080;

/// Discards the entire contents of the client area. If this flag is not
/// specified, the valid contents of the client area are saved and copied back
/// into the client area after the window is sized or repositioned.
const SWP_NOCOPYBITS = 0x0100;

/// Does not change the owner window's position in the Z order.
const SWP_NOOWNERZORDER = 0x0200;

/// Prevents the window from receiving the WM_WINDOWPOSCHANGING message.
const SWP_NOSENDCHANGING = 0x0400;

/// Draws a frame (defined in the window's class description) around the window.
const SWP_DRAWFRAME = SWP_FRAMECHANGED;

/// Same as the SWP_NOOWNERZORDER flag.
const SWP_NOREPOSITION = SWP_NOOWNERZORDER;

/// Prevents generation of the WM_SYNCPAINT message.
const SWP_DEFERERASE = 0x2000;

/// If the calling thread and the thread that owns the window are attached to
/// different input queues, the system posts the request to the thread that owns
/// the window. This prevents the calling thread from blocking its execution
/// while other threads process the request.
const SWP_ASYNCWINDOWPOS = 0x4000;

// -----------------------------------------------------------------------------
// Animate Window constants
// -----------------------------------------------------------------------------

/// Animates the window from left to right. This flag can be used with roll or
/// slide animation.
const AW_HOR_POSITIVE = 0x00000001;

/// Animates the window from right to left. This flag can be used with roll or
/// slide animation
const AW_HOR_NEGATIVE = 0x00000002;

/// Animates the window from top to bottom. This flag can be used with roll or
/// slide animation.
const AW_VER_POSITIVE = 0x00000004;

/// Animates the window from bottom to top. This flag can be used with roll or
/// slide animation.
const AW_VER_NEGATIVE = 0x00000008;

/// Makes the window appear to collapse inward if AW_HIDE is used or expand
/// outward if the AW_HIDE is not used. The various direction flags have no
/// effect.
const AW_CENTER = 0x00000010;

/// Hides the window. By default, the window is shown.
const AW_HIDE = 0x00010000;

/// Activates the window.
const AW_ACTIVATE = 0x00020000;

/// Uses slide animation. By default, roll animation is used.
const AW_SLIDE = 0x00040000;

/// Uses a fade effect.
const AW_BLEND = 0x00080000;

// -----------------------------------------------------------------------------
// System Command messages
// -----------------------------------------------------------------------------

/// Sizes the window.
const SC_SIZE = 0xF000;

/// Moves the window.
const SC_MOVE = 0xF010;

/// Minimizes the window.
const SC_MINIMIZE = 0xF020;

/// Maximizes the window.
const SC_MAXIMIZE = 0xF030;

/// Moves to the next window.
const SC_NEXTWINDOW = 0xF040;

/// Moves to the previous window.
const SC_PREVWINDOW = 0xF050;

/// Closes the window.
const SC_CLOSE = 0xF060;

/// Scrolls vertically.
const SC_VSCROLL = 0xF070;

/// Scrolls horizontally.
const SC_HSCROLL = 0xF080;

/// Retrieves the window menu as a result of a mouse click.
const SC_MOUSEMENU = 0xF090;

/// Retrieves the window menu as a result of a keystroke.
const SC_KEYMENU = 0xF100;

/// Restores the window to its normal position and size.
const SC_RESTORE = 0xF120;

/// Activates the Start menu.
const SC_TASKLIST = 0xF130;

/// Executes the screen saver application.
const SC_SCREENSAVE = 0xF140;

/// Activates the window associated with the application-specified hot key. The
/// lParam parameter identifies the window to activate.
const SC_HOTKEY = 0xF150;

/// Selects the default item; the user double-clicked the window menu.
const SC_DEFAULT = 0xF160;

/// Sets the state of the display. This command supports devices that have
/// power-saving features, such as a battery-powered personal computer.
const SC_MONITORPOWER = 0xF170;

/// Changes the cursor to a question mark with a pointer. If the user then
/// clicks a control in the dialog box, the control receives a WM_HELP message.
const SC_CONTEXTHELP = 0xF180;

/// Indicates whether the screen saver is secure.
const SCF_ISSECURE = 0x00000001;

// -----------------------------------------------------------------------------
// System Metrics constants
// -----------------------------------------------------------------------------

/// The width of the screen of the primary display monitor, in pixels.
const SM_CXSCREEN = 0;

/// The height of the screen of the primary display monitor, in pixels.
const SM_CYSCREEN = 1;

/// The width of a vertical scroll bar, in pixels.
const SM_CXVSCROLL = 2;

/// The height of a horizontal scroll bar, in pixels.
const SM_CYHSCROLL = 3;

/// The height of a caption area, in pixels.
const SM_CYCAPTION = 4;

/// The width of a window border, in pixels.
const SM_CXBORDER = 5;

/// The height of a window border, in pixels.
const SM_CYBORDER = 6;

/// This value is the same as SM_CXFIXEDFRAME.
const SM_CXDLGFRAME = 7;

/// This value is the same as SM_CYFIXEDFRAME.
const SM_CYDLGFRAME = 8;

/// The height of the thumb box in a vertical scroll bar, in pixels.
const SM_CYVTHUMB = 9;

/// The width of the thumb box in a horizontal scroll bar, in pixels.
const SM_CXHTHUMB = 10;

/// The default width of an icon, in pixels.
const SM_CXICON = 11;

/// The default height of an icon, in pixels.
const SM_CYICON = 12;

/// The width of a cursor, in pixels.
const SM_CXCURSOR = 13;

/// The height of a cursor, in pixels.
const SM_CYCURSOR = 14;

/// The height of a single-line menu bar, in pixels.
const SM_CYMENU = 15;

/// The width of the client area for a full-screen window on the primary display
/// monitor, in pixels.
const SM_CXFULLSCREEN = 16;

/// The height of the client area for a full-screen window on the primary
/// display monitor, in pixels.
const SM_CYFULLSCREEN = 17;

/// For double byte character set versions of the system, this is the height of
/// the Kanji window at the bottom of the screen, in pixels.
const SM_CYKANJIWINDOW = 18;

/// Nonzero if a mouse is installed; otherwise, 0. This value is rarely zero,
/// because of support for virtual mice and because some systems detect the
/// presence of the port instead of the presence of a mouse.
const SM_MOUSEPRESENT = 19;

/// The height of the arrow bitmap on a vertical scroll bar, in pixels.
const SM_CYVSCROLL = 20;

/// The width of the arrow bitmap on a horizontal scroll bar, in pixels.
const SM_CXHSCROLL = 21;

/// Nonzero if the debug version of User.exe is installed; otherwise, 0.
const SM_DEBUG = 22;

/// Nonzero if the meanings of the left and right mouse buttons are swapped;
/// otherwise, 0.
const SM_SWAPBUTTON = 23;

/// The minimum width of a window, in pixels.
const SM_CXMIN = 28;

/// The minimum height of a window, in pixels.
const SM_CYMIN = 29;

/// The width of a button in a window caption or title bar, in pixels.
const SM_CXSIZE = 30;

/// The height of a button in a window caption or title bar, in pixels.
const SM_CYSIZE = 31;

/// This value is the same as SM_CXSIZEFRAME.
const SM_CXFRAME = 32;

/// This value is the same as SM_CYSIZEFRAME.
const SM_CYFRAME = 33;

/// The minimum tracking width of a window, in pixels. The user cannot drag the
/// window frame to a size smaller than these dimensions.
const SM_CXMINTRACK = 34;

/// The minimum tracking height of a window, in pixels. The user cannot drag the
/// window frame to a size smaller than these dimensions.
const SM_CYMINTRACK = 35;

/// The width of the rectangle around the location of a first click in a
/// double-click sequence, in pixels. The second click must occur within the
/// rectangle that is defined by SM_CXDOUBLECLK and SM_CYDOUBLECLK for the
/// system to consider the two clicks a double-click.
const SM_CXDOUBLECLK = 36;

/// The height of the rectangle around the location of a first click in a
/// double-click sequence, in pixels. The second click must occur within the
/// rectangle defined by SM_CXDOUBLECLK and SM_CYDOUBLECLK for the system to
/// consider the two clicks a double-click. The two clicks must also occur
/// within a specified time.
const SM_CYDOUBLECLK = 37;

/// The width of a grid cell for items in large icon view, in pixels. Each item
/// fits into a rectangle of size SM_CXICONSPACING by SM_CYICONSPACING when
/// arranged. This value is always greater than or equal to SM_CXICON.
const SM_CXICONSPACING = 38;

/// The height of a grid cell for items in large icon view, in pixels. Each item
/// fits into a rectangle of size SM_CXICONSPACING by SM_CYICONSPACING when
/// arranged. This value is always greater than or equal to SM_CYICON.
const SM_CYICONSPACING = 39;

/// Nonzero if drop-down menus are right-aligned with the corresponding menu-bar
/// item; 0 if the menus are left-aligned.
const SM_MENUDROPALIGNMENT = 40;

/// Nonzero if the Microsoft Windows for Pen computing extensions are installed;
/// zero otherwise.
const SM_PENWINDOWS = 41;

/// Nonzero if User32.dll supports DBCS; otherwise, 0.
const SM_DBCSENABLED = 42;

/// The number of buttons on a mouse, or zero if no mouse is installed.
const SM_CMOUSEBUTTONS = 43;

/// The thickness of the frame around the perimeter of a window that has a
/// caption but is not sizable, in pixels. SM_CXFIXEDFRAME is the height of the
/// horizontal border, and SM_CYFIXEDFRAME is the width of the vertical border.
const SM_CXFIXEDFRAME = SM_CXDLGFRAME;

/// The thickness of the frame around the perimeter of a window that has a
/// caption but is not sizable, in pixels. SM_CXFIXEDFRAME is the height of the
/// horizontal border, and SM_CYFIXEDFRAME is the width of the vertical border.
const SM_CYFIXEDFRAME = SM_CYDLGFRAME;

/// The thickness of the sizing border around the perimeter of a window that can
/// be resized, in pixels. SM_CXSIZEFRAME is the width of the horizontal border,
/// and SM_CYSIZEFRAME is the height of the vertical border.
const SM_CXSIZEFRAME = SM_CXFRAME;

/// The thickness of the sizing border around the perimeter of a window that can
/// be resized, in pixels. SM_CXSIZEFRAME is the width of the horizontal border,
/// and SM_CYSIZEFRAME is the height of the vertical border.
const SM_CYSIZEFRAME = SM_CYFRAME;

/// This system metric should be ignored; it always returns 0.
const SM_SECURE = 44;

/// The width of a 3-D border, in pixels.
const SM_CXEDGE = 45;

/// The height of a 3-D border, in pixels.
const SM_CYEDGE = 46;

/// The width of a grid cell for a minimized window, in pixels. Each minimized
/// window fits into a rectangle this size when arranged. This value is always
/// greater than or equal to SM_CXMINIMIZED.
const SM_CXMINSPACING = 47;

/// The height of a grid cell for a minimized window, in pixels. Each minimized
/// window fits into a rectangle this size when arranged. This value is always
/// greater than or equal to SM_CYMINIMIZED.
const SM_CYMINSPACING = 48;

/// The recommended width of a small icon, in pixels. Small icons typically
/// appear in window captions and in small icon view.
const SM_CXSMICON = 49;

/// The recommended height of a small icon, in pixels. Small icons typically
/// appear in window captions and in small icon view.
const SM_CYSMICON = 50;

/// The height of a small caption, in pixels.
const SM_CYSMCAPTION = 51;

/// The width of small caption buttons, in pixels.
const SM_CXSMSIZE = 52;

/// The height of small caption buttons, in pixels.
const SM_CYSMSIZE = 53;

/// The width of menu bar buttons, such as the child window close button that is
/// used in the multiple document interface, in pixels.
const SM_CXMENUSIZE = 54;

/// The height of menu bar buttons, such as the child window close button that
/// is used in the multiple document interface, in pixels.
const SM_CYMENUSIZE = 55;

/// The flags that specify how the system arranged minimized windows.
const SM_ARRANGE = 56;

/// The width of a minimized window, in pixels.
const SM_CXMINIMIZED = 57;

/// The height of a minimized window, in pixels.
const SM_CYMINIMIZED = 58;

/// The default maximum width of a window that has a caption and sizing borders,
/// in pixels. This metric refers to the entire desktop. The user cannot drag
/// the window frame to a size larger than these dimensions.
const SM_CXMAXTRACK = 59;

/// The default maximum height of a window that has a caption and sizing
/// borders, in pixels. This metric refers to the entire desktop. The user
/// cannot drag the window frame to a size larger than these dimensions.
const SM_CYMAXTRACK = 60;

/// The default width, in pixels, of a maximized top-level window on the primary
/// display monitor.
const SM_CXMAXIMIZED = 61;

/// The default height, in pixels, of a maximized top-level window on the
/// primary display monitor.
const SM_CYMAXIMIZED = 62;

/// The least significant bit is set if a network is present; otherwise, it is
/// cleared.
const SM_NETWORK = 63;

/// The value that specifies how the system is started.
const SM_CLEANBOOT = 67;

/// The number of pixels on either side of a mouse-down point that the mouse
/// pointer can move before a drag operation begins. This allows the user to
/// click and release the mouse button easily without unintentionally starting a
/// drag operation. If this value is negative, it is subtracted from the left of
/// the mouse-down point and added to the right of it.
const SM_CXDRAG = 68;

/// The number of pixels above and below a mouse-down point that the mouse
/// pointer can move before a drag operation begins. This allows the user to
/// click and release the mouse button easily without unintentionally starting a
/// drag operation. If this value is negative, it is subtracted from above the
/// mouse-down point and added below it.
const SM_CYDRAG = 69;

/// Nonzero if the user requires an application to present information visually
/// in situations where it would otherwise present the information only in
/// audible form; otherwise, 0.
const SM_SHOWSOUNDS = 70;

/// The width of the default menu check-mark bitmap, in pixels.
const SM_CXMENUCHECK = 71;

/// The height of the default menu check-mark bitmap, in pixels.
const SM_CYMENUCHECK = 72;

/// Nonzero if the computer has a low-end (slow) processor; otherwise, 0.
const SM_SLOWMACHINE = 73;

/// Nonzero if the system is enabled for Hebrew and Arabic languages, 0 if not.
const SM_MIDEASTENABLED = 74;

/// Nonzero if a mouse with a vertical scroll wheel is installed; otherwise 0.
const SM_MOUSEWHEELPRESENT = 75;

/// The coordinates for the left side of the virtual screen. The virtual screen
/// is the bounding rectangle of all display monitors. The SM_CXVIRTUALSCREEN
/// metric is the width of the virtual screen.
const SM_XVIRTUALSCREEN = 76;

/// The coordinates for the top of the virtual screen. The virtual screen is the
/// bounding rectangle of all display monitors. The SM_CYVIRTUALSCREEN metric is
/// the height of the virtual screen.
const SM_YVIRTUALSCREEN = 77;

/// The width of the virtual screen, in pixels. The virtual screen is the
/// bounding rectangle of all display monitors. The SM_XVIRTUALSCREEN metric is
/// the coordinates for the left side of the virtual screen.
const SM_CXVIRTUALSCREEN = 78;

/// The height of the virtual screen, in pixels. The virtual screen is the
/// bounding rectangle of all display monitors. The SM_YVIRTUALSCREEN metric is
/// the coordinates for the top of the virtual screen.
const SM_CYVIRTUALSCREEN = 79;

/// The number of display monitors on a desktop.
const SM_CMONITORS = 80;

/// Nonzero if all the display monitors have the same color format, otherwise,
/// 0. Two displays can have the same bit depth, but different color formats.
/// For example, the red, green, and blue pixels can be encoded with different
/// numbers of bits, or those bits can be located in different places in a pixel
/// color value.
const SM_SAMEDISPLAYFORMAT = 81;

/// Nonzero if Input Method Manager/Input Method Editor features are enabled;
/// otherwise, 0.
const SM_IMMENABLED = 82;

/// The width of the left and right edges of the focus rectangle that the
/// DrawFocusRect draws. This value is in pixels.
const SM_CXFOCUSBORDER = 83;

/// The height of the top and bottom edges of the focus rectangle drawn by
/// DrawFocusRect. This value is in pixels.
const SM_CYFOCUSBORDER = 84;

/// Nonzero if the current operating system is the Windows XP Tablet PC edition
/// or if the current operating system is Windows Vista or Windows 7 and the
/// Tablet PC Input service is started; otherwise, 0.
const SM_TABLETPC = 86;

/// Nonzero if the current operating system is the Windows XP, Media Center
/// Edition, 0 if not.
const SM_MEDIACENTER = 87;

/// Nonzero if the current operating system is Windows 7 Starter Edition,
/// Windows Vista Starter, or Windows XP Starter Edition; otherwise, 0.
const SM_STARTER = 88;

/// The build number if the system is Windows Server 2003 R2; otherwise, 0.
const SM_SERVERR2 = 89;

/// Nonzero if a mouse with a horizontal scroll wheel is installed; otherwise 0.
const SM_MOUSEHORIZONTALWHEELPRESENT = 91;

/// The amount of border padding for captioned windows, in pixels.
const SM_CXPADDEDBORDER = 92;

/// Nonzero if the current operating system is Windows 7 or Windows Server 2008
/// R2 and the Tablet PC Input service is started; otherwise, 0. The return
/// value is a bitmask that specifies the type of digitizer input supported by
/// the device.
const SM_DIGITIZER = 94;

/// Nonzero if there are digitizers in the system; otherwise, 0.
/// SM_MAXIMUMTOUCHES returns the aggregate maximum of the maximum number of
/// contacts supported by every digitizer in the system. If the system has only
/// single-touch digitizers, the return value is 1. If the system has
/// multi-touch digitizers, the return value is the number of simultaneous
/// contacts the hardware can provide.
const SM_MAXIMUMTOUCHES = 95;

/// This system metric is used in a Terminal Services environment. If the
/// calling process is associated with a Terminal Services client session, the
/// return value is nonzero. If the calling process is associated with the
/// Terminal Services console session, the return value is 0
const SM_REMOTESESSION = 0x1000;

/// Nonzero if the current session is shutting down; otherwise, 0.
const SM_SHUTTINGDOWN = 0x2000;

/// This system metric is used in a Terminal Services environment to determine
/// if the current Terminal Server session is being remotely controlled. Its
/// value is nonzero if the current session is remotely controlled; otherwise,
/// 0.
const SM_REMOTECONTROL = 0x2001;

/// Reflects the state of the laptop or slate mode, 0 for Slate Mode and
/// non-zero otherwise.
const SM_CONVERTIBLESLATEMODE = 0x2003;

/// Reflects the state of the docking mode, 0 for Undocked Mode and non-zero
/// otherwise.
const SM_SYSTEMDOCKED = 0x2004;

// -----------------------------------------------------------------------------
// Clipboard Format constants
// -----------------------------------------------------------------------------

/// Text format. Each line ends with a carriage return/linefeed (CR-LF)
/// combination. A null character signals the end of the data. Use this format
/// for ANSI text.
const CF_TEXT = 1;

/// A handle to a bitmap (HBITMAP).
const CF_BITMAP = 2;

/// Handle to a metafile picture format as defined by the METAFILEPICT
/// structure. When passing a CF_METAFILEPICT handle by means of DDE, the
/// application responsible for deleting hMem should also free the metafile
/// referred to by the CF_METAFILEPICT handle.
const CF_METAFILEPICT = 3;

/// Microsoft Symbolic Link (SYLK) format.
const CF_SYLK = 4;

/// Software Arts' Data Interchange Format.
const CF_DIF = 5;

// Tagged-image file format.
const CF_TIFF = 6;

/// Text format containing characters in the OEM character set. Each line ends
/// with a carriage return/linefeed (CR-LF) combination. A null character
/// signals the end of the data.
const CF_OEMTEXT = 7;

/// A memory object containing a BITMAPINFO structure followed by the bitmap
/// bits.
const CF_DIB = 8;

/// Handle to a color palette. Whenever an application places data in the
/// clipboard that depends on or assumes a color palette, it should place the
/// palette on the clipboard as well.
const CF_PALETTE = 9;

/// Data for the pen extensions to the Microsoft Windows for Pen Computing.
const CF_PENDATA = 10;

/// Represents audio data more complex than can be represented in a CF_WAVE
/// standard wave format.
const CF_RIFF = 11;

/// Represents audio data in one of the standard wave formats, such as 11 kHz or
/// 22 kHz PCM.
const CF_WAVE = 12;

/// Unicode text format. Each line ends with a carriage return/linefeed (CR-LF)
/// combination. A null character signals the end of the data.
const CF_UNICODETEXT = 13;

/// A handle to an enhanced metafile (HENHMETAFILE).
const CF_ENHMETAFILE = 14;

/// A handle to type HDROP that identifies a list of files. An application can
/// retrieve information about the files by passing the handle to the
/// DragQueryFile function.
const CF_HDROP = 15;

/// The data is a handle (HGLOBAL) to the locale identifier (LCID) associated
/// with text in the clipboard. When you close the clipboard, if it contains
/// CF_TEXT data but no CF_LOCALE data, the system automatically sets the
/// CF_LOCALE format to the current input language. You can use the CF_LOCALE
/// format to associate a different locale with the clipboard text.
const CF_LOCALE = 16;

/// A memory object containing a BITMAPV5HEADER structure followed by the bitmap
/// color space information and the bitmap bits.
const CF_DIBV5 = 17;

/// Owner-display format. The clipboard owner must display and update the
/// clipboard viewer window, and receive the WM_ASKCBFORMATNAME,
/// WM_HSCROLLCLIPBOARD, WM_PAINTCLIPBOARD, WM_SIZECLIPBOARD, and
/// WM_VSCROLLCLIPBOARD messages.
const CF_OWNERDISPLAY = 0x0080;

/// Text display format associated with a private format.
const CF_DSPTEXT = 0x0081;

/// Bitmap display format associated with a private format.
const CF_DSPBITMAP = 0x0082;

/// Metafile-picture display format associated with a private format.
const CF_DSPMETAFILEPICT = 0x0083;

/// Enhanced metafile display format associated with a private format.
const CF_DSPENHMETAFILE = 0x008E;

/// Start of a range of integer values for private clipboard formats. The range
/// ends with CF_PRIVATELAST.
const CF_PRIVATEFIRST = 0x0200;

/// End of a range of integer values for private clipboard formats.
const CF_PRIVATELAST = 0x02FF;

/// Start of a range of integer values for application-defined GDI object
/// clipboard formats. The range ends with CF_GDIOBJLAST.
const CF_GDIOBJFIRST = 0x0300;

/// End of a range of integer values for application-defined GDI object
/// clipboard formats.
const CF_GDIOBJLAST = 0x03FF;

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

// -----------------------------------------------------------------------------
// Button Style constants
// -----------------------------------------------------------------------------

/// Creates a push button that posts a WM_COMMAND message to the owner window
/// when the user selects the button.
const BS_PUSHBUTTON = 0x00000000;

/// Creates a push button that behaves like a BS_PUSHBUTTON style button, but
/// has a distinct appearance. If the button is in a dialog box, the user can
/// select the button by pressing the ENTER key, even when the button does not
/// have the input focus. This style is useful for enabling the user to quickly
/// select the most likely (default) option.
const BS_DEFPUSHBUTTON = 0x00000001;

/// Creates a small, empty check box with text. By default, the text is
/// displayed to the right of the check box. To display the text to the left of
/// the check box, combine this flag with the BS_LEFTTEXT style (or with the
/// equivalent BS_RIGHTBUTTON style).
const BS_CHECKBOX = 0x00000002;

/// Creates a button that is the same as a check box, except that the check
/// state automatically toggles between checked and cleared each time the user
/// selects the check box.
const BS_AUTOCHECKBOX = 0x00000003;

/// Creates a small circle with text. By default, the text is displayed to the
/// right of the circle. To display the text to the left of the circle, combine
/// this flag with the BS_LEFTTEXT style (or with the equivalent BS_RIGHTBUTTON
/// style). Use radio buttons for groups of related, but mutually exclusive
/// choices.
const BS_RADIOBUTTON = 0x00000004;

/// Creates a button that is the same as a check box, except that the box can be
/// grayed as well as checked or cleared. Use the grayed state to show that the
/// state of the check box is not determined.
const BS_3STATE = 0x00000005;

/// Creates a button that is the same as a three-state check box, except that
/// the box changes its state when the user selects it. The state cycles through
/// checked, indeterminate, and cleared.
const BS_AUTO3STATE = 0x00000006;

/// Creates a rectangle in which other controls can be grouped. Any text
/// associated with this style is displayed in the rectangle's upper left
/// corner.
const BS_GROUPBOX = 0x00000007;

/// Obsolete, but provided for compatibility with 16-bit versions of Windows.
/// Applications should use BS_OWNERDRAW instead.
const BS_USERBUTTON = 0x00000008;

/// Creates a button that is the same as a radio button, except that when the
/// user selects it, the system automatically sets the button's check state to
/// checked and automatically sets the check state for all other buttons in the
/// same group to cleared.
const BS_AUTORADIOBUTTON = 0x00000009;

/// Defines a push-box control, which is identical to a PUSHBUTTON, except that
/// it does not display a button face or frame; only the text appears.
const BS_PUSHBOX = 0x0000000A;

/// Creates an owner-drawn button. The owner window receives a WM_DRAWITEM
/// message when a visual aspect of the button has changed. Do not combine the
/// BS_OWNERDRAW style with any other button styles.
const BS_OWNERDRAW = 0x0000000B;

/// Do not use this style. A composite style bit that results from using the OR
/// operator on BS_* style bits. It can be used to mask out valid BS_* bits from
/// a given bitmask. Note that this is out of date and does not correctly
/// include all valid styles. Thus, you should not use this style.
const BS_TYPEMASK = 0x0000000F;

/// Places text on the left side of the radio button or check box when combined
/// with a radio button or check box style. Same as the BS_RIGHTBUTTON style.
const BS_LEFTTEXT = 0x00000020;

/// Specifies that the button displays text.
const BS_TEXT = 0x00000000;

/// Specifies that the button displays an icon. See the Remarks section for its
/// interaction with BS_BITMAP.
const BS_ICON = 0x00000040;

/// Specifies that the button displays a bitmap. See the Remarks section for its
/// interaction with BS_ICON.
const BS_BITMAP = 0x00000080;

/// Left-justifies the text in the button rectangle. However, if the button is a
/// check box or radio button that does not have the BS_RIGHTBUTTON style, the
/// text is left justified on the right side of the check box or radio button.
const BS_LEFT = 0x00000100;

/// Right-justifies text in the button rectangle. However, if the button is a
/// check box or radio button that does not have the BS_RIGHTBUTTON style, the
/// text is right justified on the right side of the check box or radio button.
const BS_RIGHT = 0x00000200;

/// Centers text horizontally in the button rectangle.
const BS_CENTER = 0x00000300;

/// Places text at the top of the button rectangle.
const BS_TOP = 0x00000400;

/// Places text at the bottom of the button rectangle.
const BS_BOTTOM = 0x00000800;

/// Places text in the middle (vertically) of the button rectangle.
const BS_VCENTER = 0x00000C00;

/// Makes a button (such as a check box, three-state check box, or radio button)
/// look and act like a push button. The button looks raised when it isn't
/// pushed or checked, and sunken when it is pushed or checked.
const BS_PUSHLIKE = 0x00001000;

/// Wraps the button text to multiple lines if the text string is too long to
/// fit on a single line in the button rectangle.
const BS_MULTILINE = 0x00002000;

/// Enables a button to send BN_KILLFOCUS and BN_SETFOCUS notification codes to
/// its parent window. Note that buttons send the BN_CLICKED notification code
/// regardless of whether it has this style. To get BN_DBLCLK notification
/// codes, the button must have the BS_RADIOBUTTON or BS_OWNERDRAW style.
const BS_NOTIFY = 0x00004000;

/// Specifies that the button is two-dimensional; it does not use the default
/// shading to create a 3-D image.
const BS_FLAT = 0x00008000;

/// Positions a radio button's circle or a check box's square on the right side
/// of the button rectangle. Same as the BS_LEFTTEXT style.
const BS_RIGHTBUTTON = BS_LEFTTEXT;

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

// -----------------------------------------------------------------------------
// PeekMessage options
// -----------------------------------------------------------------------------

/// Messages are not removed from the queue after processing by PeekMessage.
const PM_NOREMOVE = 0x0000;

/// Messages are removed from the queue after processing by PeekMessage.
const PM_REMOVE = 0x0001;

/// Prevents the system from releasing any thread that is waiting for the caller
/// to go idle.
const PM_NOYIELD = 0x0002;

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

// -----------------------------------------------------------------------------
// Menu flags
// -----------------------------------------------------------------------------

/// Indicates that flag gives the identifier of the menu item.
const MF_BYCOMMAND = 0x00000000;

/// Indicates that flag gives the zero-based relative position of the menu item.
const MF_BYPOSITION = 0x00000400;

/// Draws a horizontal dividing line. This flag is used only in a drop-down
/// menu, submenu, or shortcut menu. The line cannot be grayed, disabled, or
/// highlighted. The lpNewItem and uIDNewItem parameters are ignored.
const MF_SEPARATOR = 0x00000800;

/// Enables the menu item so that it can be selected, and restores it from its
/// grayed state.
const MF_ENABLED = 0x00000000;

/// Disables the menu item and grays it so that it cannot be selected.
const MF_GRAYED = 0x00000001;

/// Disables the menu item so that it cannot be selected, but the flag does not
/// gray it.
const MF_DISABLED = 0x00000002;

/// Does not place a check mark next to the item (default). If the application
/// supplies check-mark bitmaps (see SetMenuItemBitmaps), this flag displays the
/// clear bitmap next to the menu item.
const MF_UNCHECKED = 0x00000000;

/// Places a check mark next to the menu item.
const MF_CHECKED = 0x00000008;

/// Specifies that the menu item is a text string; the lpNewItem parameter is a
/// pointer to the string.
const MF_STRING = 0x00000000;

/// Uses a bitmap as the menu item. The lpNewItem parameter contains a handle to
/// the bitmap.
const MF_BITMAP = 0x00000004;

/// Specifies that the item is an owner-drawn item. Before the menu is displayed
/// for the first time, the window that owns the menu receives a WM_MEASUREITEM
/// message to retrieve the width and height of the menu item. The WM_DRAWITEM
/// message is then sent to the window procedure of the owner window whenever
/// the appearance of the menu item must be updated.
const MF_OWNERDRAW = 0x00000100;

/// Specifies that the menu item opens a drop-down menu or submenu. The
/// uIDNewItem parameter specifies a handle to the drop-down menu or submenu.
/// This flag is used to add a menu name to a menu bar, or a menu item that
/// opens a submenu to a drop-down menu, submenu, or shortcut menu.
const MF_POPUP = 0x00000010;

/// Functions the same as the MF_MENUBREAK flag for a menu bar. For a drop-down
/// menu, submenu, or shortcut menu, the new column is separated from the old
/// column by a vertical line.
const MF_MENUBARBREAK = 0x00000020;

/// Places the item on a new line (for a menu bar) or in a new column (for a
/// drop-down menu, submenu, or shortcut menu) without separating columns.
const MF_MENUBREAK = 0x00000040;

/// Removes highlighting from the menu item.
const MF_UNHILITE = 0x00000000;

/// Highlights the menu item. If this flag is not specified, the highlighting is
/// removed from the item.
const MF_HILITE = 0x00000080;

// -----------------------------------------------------------------------------
// Dialog Box styles
// -----------------------------------------------------------------------------

/// Indicates that the coordinates of the dialog box are screen coordinates. If
/// this style is not specified, the coordinates are client coordinates.
const DS_ABSALIGN = 0x01;

/// Obsolete. Do not use.
const DS_SYSMODAL = 0x02;

/// Obsolete. Do not use.
const DS_LOCALEDIT = 0x20;

/// Indicates that the header of the dialog box template (either standard or
/// extended) contains additional data specifying the font to use for text in
/// the client area and controls of the dialog box.
const DS_SETFONT = 0x40;

/// Creates a dialog box with a modal dialog-box frame that can be combined with
/// a title bar and window menu by specifying the WS_CAPTION and WS_SYSMENU
/// styles.
const DS_MODALFRAME = 0x80;

/// Suppresses WM_ENTERIDLE messages that the system would otherwise send to the
/// owner of the dialog box while the dialog box is displayed.
const DS_NOIDLEMSG = 0x100;

/// Causes the system to use the SetForegroundWindow function to bring the
/// dialog box to the foreground. This style is useful for modal dialog boxes
/// that require immediate attention from the user regardless of whether the
/// owner window is the foreground window.
const DS_SETFOREGROUND = 0x200;

/// Obsolete. Do not use.
const DS_3DLOOK = 0x0004;

/// Causes the dialog box to use the monospace SYSTEM_FIXED_FONT instead of the
/// default SYSTEM_FONT.
const DS_FIXEDSYS = 0x0008;

/// Creates the dialog box even if errors occur for example, if a child window
/// cannot be created or if the system cannot create a special data segment for
/// an edit control.
const DS_NOFAILCREATE = 0x0010;

/// Creates a dialog box that works well as a child window of another dialog
/// box, much like a page in a property sheet. This style allows the user to tab
/// among the control windows of a child dialog box, use its accelerator keys,
/// and so on.
const DS_CONTROL = 0x0400;

/// Centers the dialog box in the working area of the monitor that contains the
/// owner window. If no owner window is specified, the dialog box is centered in
/// the working area of a monitor determined by the system. The working area is
/// the area not obscured by the taskbar or any appbars.
const DS_CENTER = 0x0800;

/// Centers the dialog box on the mouse cursor.
const DS_CENTERMOUSE = 0x1000;

/// Includes a question mark in the title bar of the dialog box. When the user
/// clicks the question mark, the cursor changes to a question mark with a
/// pointer.
const DS_CONTEXTHELP = 0x2000;

/// Indicates that the dialog box should use the system font. The typeface
/// member of the extended dialog box template must be set to MS Shell Dlg.
/// Otherwise, this style has no effect.
const DS_SHELLFONT = DS_SETFONT | DS_FIXEDSYS;

// -----------------------------------------------------------------------------
// Static control styles
// -----------------------------------------------------------------------------

/// A simple rectangle and left-aligns the text in the rectangle.
///
/// The text is formatted before it is displayed. Words that extend past the end
/// of a line are automatically wrapped to the beginning of the next
/// left-aligned line. Words that are longer than the width of the control are
/// truncated.
const SS_LEFT = 0x00000000;

/// A simple rectangle and centers the text in the rectangle.
///
/// The text is formatted before it is displayed. Words that extend past the end
/// of a line are automatically wrapped to the beginning of the next centered
/// line. Words that are longer than the width of the control are truncated.
const SS_CENTER = 0x00000001;

/// A simple rectangle and right-aligns the text in the rectangle.
///
/// The text is formatted before it is displayed. Words that extend past the end
/// of a line are automatically wrapped to the beginning of the next
/// right-aligned line. Words that are longer than the width of the control are
/// truncated.
const SS_RIGHT = 0x00000002;

/// An icon to be displayed in the dialog box.
///
/// If the control is created as part of a dialog box, the text is the name of
/// an icon (not a filename) defined elsewhere in the resource file. If the
/// control is created via CreateWindow or a related function, the text is the
/// name of an icon (not a filename) defined in the resource file associated
/// with the module specified by the hInstance parameter to CreateWindow.
const SS_ICON = 0x00000003;

/// A rectangle filled with the current window frame color. This color is black
/// in the default color scheme.
const SS_BLACKRECT = 0x00000004;

/// A rectangle filled with the current screen background color. This color is
/// gray in the default color scheme.
const SS_GRAYRECT = 0x00000005;

/// A rectangle filled with the current window background color. This color is
/// white in the default color scheme.
const SS_WHITERECT = 0x00000006;

/// A box with a frame drawn in the same color as the window frames. This color
/// is black in the default color scheme.
const SS_BLACKFRAME = 0x00000007;

/// A box with a frame drawn with the same color as the screen background
/// (desktop). This color is gray in the default color scheme.
const SS_GRAYFRAME = 0x00000008;

/// A box with a frame drawn with the same color as the window background. This
/// color is white in the default color scheme.
const SS_WHITEFRAME = 0x00000009;

/// Specifies a user-defined item.
const SS_USERITEM = 0x0000000A;

/// A simple rectangle and displays a single line of left-aligned text in the
/// rectangle.
const SS_SIMPLE = 0x0000000B;

/// A simple rectangle and left-aligns the text in the rectangle.
///
/// Tabs are expanded, but words are not wrapped. Text that extends past the
/// end of a line is clipped.
const SS_LEFTNOWORDWRAP = 0x0000000C;

/// The owner of the static control is responsible for drawing the control. The
/// owner window receives a WM_DRAWITEM message whenever the control needs to be
/// drawn.
const SS_OWNERDRAW = 0x0000000D;

/// A bitmap is to be displayed in the static control.
///
/// The text is the name of a bitmap (not a filename) defined elsewhere in the
/// resource file. The style ignores the nWidth and nHeight parameters; the
/// control automatically sizes itself to accommodate the bitmap.
const SS_BITMAP = 0x0000000E;

/// An enhanced metafile is to be displayed in the static control.
///
/// The text is the name of a metafile. An enhanced metafile static control has
/// a fixed size; the metafile is scaled to fit the static control's client
/// area.
const SS_ENHMETAFILE = 0x0000000F;

/// Draws the top and bottom edges of the static control using the EDGE_ETCHED
/// edge style.
const SS_ETCHEDHORZ = 0x00000010;

/// Draws the left and right edges of the static control using the EDGE_ETCHED
/// edge style.
const SS_ETCHEDVERT = 0x00000011;

/// Draws the frame of the static control using the EDGE_ETCHED edge style.
const SS_ETCHEDFRAME = 0x00000012;

/// A composite style bit that results from using the OR operator on SS_* style
/// bits.
///
/// Can be used to mask out valid SS_* bits from a given bitmask. Note that this
/// is out of date and does not correctly include all valid styles. Thus, you
/// should not use this style.
const SS_TYPEMASK = 0x0000001F;

/// Adjusts the bitmap to fit the size of the static control.
///
/// For example, changing the locale can change the system font, and thus
/// controls might be resized. If a static control had a bitmap, the bitmap
/// would no longer fit the control. This style bit dictates automatic
/// redimensioning of bitmaps to fit their controls.
const SS_REALSIZECONTROL = 0x00000040;

/// Prevents interpretation of any ampersand (&) characters in the control's
/// text as accelerator prefix characters.
///
/// These are displayed with the ampersand removed and the next character in the
/// string underlined. This static control style may be included with any of the
/// defined static controls. You can combine SS_NOPREFIX with other styles. This
/// can be useful when filenames or other strings that may contain an ampersand
/// (&) must be displayed in a static control in a dialog box.
const SS_NOPREFIX = 0x00000080;

/// Sends the parent window STN_CLICKED, STN_DBLCLK, STN_DISABLE, and STN_ENABLE
/// notification codes when the user clicks or double-clicks the control.
const SS_NOTIFY = 0x00000100;

/// A bitmap is centered in the static control that contains it.
///
/// The control is not resized, so that a bitmap too large for the control will
/// be clipped. If the static control contains a single line of text, the text
/// is centered vertically in the client area of the control.
const SS_CENTERIMAGE = 0x00000200;

/// The lower right corner of a static control with the SS_BITMAP or SS_ICON
/// style is to remain fixed when the control is resized.
///
/// Only the top and left sides are adjusted to accommodate a new bitmap or
/// icon.
const SS_RIGHTJUST = 0x00000400;

/// Specifies that the actual resource width is used and the icon is loaded
/// using LoadImage. SS_REALSIZEIMAGE is always used in conjunction with
/// SS_ICON.
const SS_REALSIZEIMAGE = 0x00000800;

/// Draws a half-sunken border around a static control.
const SS_SUNKEN = 0x00001000;

/// The static control duplicates the text-displaying characteristics of a
/// multiline edit control.
///
/// Specifically, the average character width is calculated in the same manner
/// as with an edit control, and the function does not display a partially
/// visible last line.
const SS_EDITCONTROL = 0x00002000;

/// If the end of a string does not fit in the rectangle, it is truncated and
/// ellipses are added.
///
/// If a word that is not at the end of the string goes beyond the limits of the
/// rectangle, it is truncated without ellipses. Using this style will force the
/// control's text to be on one line with no word wrap. Compare with
/// SS_PATHELLIPSIS and SS_WORDELLIPSIS.
const SS_ENDELLIPSIS = 0x00004000;

/// Replaces characters in the middle of the string with ellipses so that the
/// result fits in the specified rectangle.
///
/// If the string contains backslash (\) characters, SS_PATHELLIPSIS preserves
/// as much as possible of the text after the last backslash. Using this style
/// will force the control's text to be on one line with no word wrap.
const SS_PATHELLIPSIS = 0x00008000;

/// Truncates any word that does not fit in the rectangle and adds ellipses.
/// Using this style will force the control s text to be on one line with no
/// word wrap.
const SS_WORDELLIPSIS = 0x0000C000;

/// Mask for text ellipsis styles.
const SS_ELLIPSISMASK = 0x0000C000;

// -----------------------------------------------------------------------------
// Pen Styles
// -----------------------------------------------------------------------------

/// The pen is solid.
const PS_SOLID = 0;

/// The pen is dashed.
const PS_DASH = 1;

/// The pen is dotted.
const PS_DOT = 2;

/// The pen has alternating dashes and dots.
const PS_DASHDOT = 3;

/// The pen has alternating dashes and double dots.
const PS_DASHDOTDOT = 4;

/// The pen is invisible.
const PS_NULL = 5;

/// The pen is solid. When this pen is used in any GDI drawing function that
/// takes a bounding rectangle, the dimensions of the figure are shrunk so that
/// it fits entirely in the bounding rectangle, taking into account the width of
/// the pen. This applies only to geometric pens.
const PS_INSIDEFRAME = 6;

/// The pen uses a styling array supplied by the user.
const PS_USERSTYLE = 7;

/// The pen sets every other pixel. (This style is applicable only for cosmetic
/// pens.)
const PS_ALTERNATE = 8;

// Mask for pen styles.
const PS_STYLE_MASK = 0x0000000F;

/// End caps are round.
const PS_ENDCAP_ROUND = 0x00000000;

/// End caps are square.
const PS_ENDCAP_SQUARE = 0x00000100;

/// End caps are flat.
const PS_ENDCAP_FLAT = 0x00000200;

/// Mask for pen endcap styles.
const PS_ENDCAP_MASK = 0x00000F00;

/// Line joins are round.
const PS_JOIN_ROUND = 0x00000000;

/// Line joins are beveled.
const PS_JOIN_BEVEL = 0x00001000;

/// Line joins are mitered when they are within the current limit set by the
/// SetMiterLimit function. A join is beveled when it would exceed the limit.
const PS_JOIN_MITER = 0x00002000;

/// Mask for pen join values.
const PS_JOIN_MASK = 0x0000F000;

/// The pen is cosmetic.
const PS_COSMETIC = 0x00000000;

/// The pen is geometric.
const PS_GEOMETRIC = 0x00010000;

/// Mask for pen types.
const PS_TYPE_MASK = 0x000F0000;

// -----------------------------------------------------------------------------
// Brush Styles
// -----------------------------------------------------------------------------

/// Solid brush.
const BS_SOLID = 0;

/// Hollow brush.
const BS_NULL = 1;

/// Hollow brush.
const BS_HOLLOW = BS_NULL;

/// Hatched brush.
const BS_HATCHED = 2;

/// Pattern brush defined by a memory bitmap.
const BS_PATTERN = 3;

/// A pattern brush defined by a device-independent bitmap (DIB) specification.
const BS_DIBPATTERN = 5;

/// A pattern brush defined by a device-independent bitmap (DIB) specification.
const BS_DIBPATTERNPT = 6;

/// Pattern brush defined by a memory bitmap.
const BS_PATTERN8X8 = 7;

/// A pattern brush defined by a device-independent bitmap (DIB) specification.
const BS_DIBPATTERN8X8 = 8;

// -----------------------------------------------------------------------------
// Hatch Styles
// -----------------------------------------------------------------------------

/// Horizontal hatch
const HS_HORIZONTAL = 0;

/// Vertical hatch
const HS_VERTICAL = 1;

/// 45-degree downward left-to-right hatch
const HS_FDIAGONAL = 2;

/// 45-degree upward left-to-right hatch
const HS_BDIAGONAL = 3;

/// Horizontal and vertical crosshatch
const HS_CROSS = 4;

/// 45-degree crosshatch
const HS_DIAGCROSS = 5;

// -----------------------------------------------------------------------------
// Stretching mode constants
// -----------------------------------------------------------------------------

/// Performs a Boolean AND operation using the color values for the eliminated
/// and existing pixels. If the bitmap is a monochrome bitmap, this mode
/// preserves black pixels at the expense of white pixels.
const BLACKONWHITE = 1;

/// Performs a Boolean OR operation using the color values for the eliminated
/// and existing pixels. If the bitmap is a monochrome bitmap, this mode
/// preserves white pixels at the expense of black pixels.
const WHITEONBLACK = 2;

/// Deletes the pixels. This mode deletes all eliminated lines of pixels without
/// trying to preserve their information.
const COLORONCOLOR = 3;

/// Maps pixels from the source rectangle into blocks of pixels in the
/// destination rectangle. The average color over the destination block of
/// pixels approximates the color of the source pixels.
const HALFTONE = 4;

/// Performs a Boolean AND operation using the color values for the eliminated
/// and existing pixels. If the bitmap is a monochrome bitmap, this mode
/// preserves black pixels at the expense of white pixels.
const STRETCH_ANDSCANS = BLACKONWHITE;

/// Performs a Boolean OR operation using the color values for the eliminated
/// and existing pixels. If the bitmap is a monochrome bitmap, this mode
/// preserves white pixels at the expense of black pixels.
const STRETCH_ORSCANS = WHITEONBLACK;

/// Deletes the pixels. This mode deletes all eliminated lines of pixels without
/// trying to preserve their information.
const STRETCH_DELETESCANS = COLORONCOLOR;

/// Maps pixels from the source rectangle into blocks of pixels in the
/// destination rectangle. The average color over the destination block of
/// pixels approximates the color of the source pixels.
const STRETCH_HALFTONE = HALFTONE;

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

// -----------------------------------------------------------------------------
// COM Constants
// -----------------------------------------------------------------------------

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

/// typedef short VARIANT_BOOL: -1 == TRUE
final VARIANT_TRUE = -1;

/// typedef short VARIANT_BOOL: 0 == FALSE
final VARIANT_FALSE = 0;

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

/// Prevents the function from attempting to coerce an object to a fundamental
/// type by getting the Value property. Applications should set this flag only
/// if necessary, because it makes their behavior inconsistent with other
/// applications.
const VARIANT_NOVALUEPROP = 0x01;

/// Converts a VT_BOOL value to a string containing either "True" or "False".
const VARIANT_ALPHABOOL = 0x02;

/// For conversions to or from VT_BSTR, passes LOCALE_NOUSEROVERRIDE to the core
/// coercion routines.
const VARIANT_NOUSEROVERRIDE = 0x04;

/// For conversions from VT_BOOL to VT_BSTR and back, uses the language
/// specified by the locale in use on the local computer.
const VARIANT_LOCALBOOL = 0x10;

// -----------------------------------------------------------------------------
// Multimedia constants
// -----------------------------------------------------------------------------
/// Time in milliseconds.
const TIME_MS = 0x0001;

/// Number of waveform-audio samples.
const TIME_SAMPLES = 0x0002;

/// Current byte offset from beginning of the file.
const TIME_BYTES = 0x0004;

/// SMPTE (Society of Motion Picture and Television Engineers) time.
const TIME_SMPTE = 0x0008;

/// MIDI time.
const TIME_MIDI = 0x0010;

/// Ticks within a MIDI stream.
const TIME_TICKS = 0x0020;

/// No callback mechanism. This is the default setting.
const CALLBACK_NULL = 0x00000000;

/// The dwCallback parameter is a window handle.
const CALLBACK_WINDOW = 0x00010000;

/// The dwCallback parameter is a thread identifier.
const CALLBACK_THREAD = 0x00020000;

/// The dwCallback parameter is a callback procedure address.
const CALLBACK_FUNCTION = 0x00030000;

/// The dwCallback parameter is an event handle.
const CALLBACK_EVENT = 0x00050000;

const WAVE_FORMAT_QUERY = 0x0001;

/// If this flag is specified, a synchronous waveform-audio device can be
/// opened. If this flag is not specified while opening a synchronous driver,
/// the device will fail to open.
const WAVE_ALLOWSYNC = 0x0002;

/// If this flag is specified, the uDeviceID parameter specifies a
/// waveform-audio device to be mapped to by the wave mapper.
const WAVE_MAPPED = 0x0004;

/// If this flag is specified, the ACM driver does not perform conversions on
/// the audio data.
const WAVE_FORMAT_DIRECT = 0x0008;

/// If this flag is specified and the uDeviceID parameter is WAVE_MAPPER, the
/// function opens the default communication device.
const WAVE_MAPPED_DEFAULT_COMMUNICATION_DEVICE = 0x0010;

// -----------------------------------------------------------------------------
// Monitor Configuration constants & enumerations
// -----------------------------------------------------------------------------

/// If the point is not contained within any display monitor, return NULL.
const MONITOR_DEFAULTTONULL = 0x00000000;

/// If the point is not contained within any display monitor, return a handle to
/// the primary display monitor.
const MONITOR_DEFAULTTOPRIMARY = 0x00000001;

/// If the point is not contained within any display monitor, return a handle to
/// the display monitor that is nearest to the point.
const MONITOR_DEFAULTTONEAREST = 0x00000002;

/// This is the primary display monitor.
const MONITORINFOF_PRIMARY = 0x00000001;

/// Describes a monitor's color temperature.
///
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

/// Identifies monitor display technologies.
///
////// {@category Enum}
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

/// Specifies whether to set or get a monitor's red, green, or blue drive.
///
////// {@category Enum}
class MC_DRIVE_TYPE {
  static const MC_RED_DRIVE = 0;
  static const MC_GREEN_DRIVE = 1;
  static const MC_BLUE_DRIVE = 2;
}

/// Specifies whether to get or set a monitor's red, green, or blue gain.
///
/// {@category Enum}
class MC_GAIN_TYPE {
  static const MC_RED_GAIN = 0;
  static const MC_GREEN_GAIN = 1;
  static const MC_BLUE_GAIN = 2;
}

/// Specifies whether to get or set the vertical or horizontal position of a
/// monitor's display area.
///
/// {@category Enum}
class MC_POSITION_TYPE {
  static const MC_HORIZONTAL_POSITION = 0;
  static const MC_VERTICAL_POSITION = 1;
}

/// Specifies whether to get or set the width or height of a monitor's display
/// area.
///
/// {@category Enum}
class MC_SIZE_TYPE {
  static const MC_WIDTH = 0;
  static const MC_HEIGHT = 1;
}

// -----------------------------------------------------------------------------
/// Bluetooth constants & enumerations
// -----------------------------------------------------------------------------

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

// -----------------------------------------------------------------------------
/// Common dialog constants & enumerations
// -----------------------------------------------------------------------------

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

// -----------------------------------------------------------------------------
// Desktop shell constants & enumerations
// -----------------------------------------------------------------------------

/// Desktop wallpaper slideshow settings for shuffling images.
///
/// {@category Enum}
class DESKTOP_SLIDESHOW_OPTIONS {
  /// Shuffle is enabled; the images are shown in a random order.
  static const DSO_SHUFFLEIMAGES = 0x1;
}

/// Gets the current status of the slideshow.
///
/// {@category Enum}
class DESKTOP_SLIDESHOW_STATE {
  /// Slideshows are enabled.
  static const DSS_ENABLED = 0x1;

  /// A slideshow is currently configured.
  static const DSS_SLIDESHOW = 0x2;

  /// A remote session has temporarily disabled the slideshow.
  static const DSS_DISABLED_BY_REMOTE_SESSION = 0x4;
}

/// The direction that the slideshow should advance.
///
/// {@category Enum}
class DESKTOP_SLIDESHOW_DIRECTION {
  /// Advance the slideshow forward.
  static const DSD_FORWARD = 0;

  /// Advance the slideshow backward.
  static const DSD_BACKWARD = 1;
}

/// Specifies how the desktop wallpaper should be displayed.
///
/// {@category Enum}
class DESKTOP_WALLPAPER_POSITION {
  /// Center the image; do not stretch.
  static const DWPOS_CENTER = 0;

  /// Tile the image across all monitors.
  static const DWPOS_TILE = 1;

  /// Stretch the image to exactly fit on the monitor.
  static const DWPOS_STRETCH = 2;

  /// Stretch the image to exactly the height or width of the monitor without
  /// changing its aspect ratio or cropping the image.
  static const DWPOS_FIT = 3;

  /// Stretch the image to fill the screen, cropping the image as necessary to
  /// avoid letterbox bars.
  static const DWPOS_FILL = 4;

  /// Spans a single image across all monitors attached to the system.
  static const DWPOS_SPAN = 5;
}

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

// -----------------------------------------------------------------------------
// Shutdown constants
// -----------------------------------------------------------------------------

/// All sessions are forcefully logged off. If this flag is not set and users
/// other than the current user are logged on to the computer specified by the
/// lpMachineName parameter, this function fails with a return value of
/// ERROR_SHUTDOWN_USERS_LOGGED_ON.
const SHUTDOWN_FORCE_OTHERS = 0x0000001;

/// Specifies that the originating session is logged off forcefully. If this
/// flag is not set, the originating session is shut down interactively, so a
/// shutdown is not guaranteed even if the function returns successfully.
const SHUTDOWN_FORCE_SELF = 0x0000002;

/// The computer is shut down and rebooted.
const SHUTDOWN_RESTART = 0x0000004;

/// The computer is shut down and powered down.
const SHUTDOWN_POWEROFF = 0x0000008;

/// The computer is shut down but is not powered down or rebooted.
const SHUTDOWN_NOREBOOT = 0x0000010;

/// Overrides the grace period so that the computer is shut down immediately.
const SHUTDOWN_GRACE_OVERRIDE = 0x0000020;

/// The computer installs any updates before starting the shutdown.
const SHUTDOWN_INSTALL_UPDATES = 0x0000040;

/// The system is rebooted using the ExitWindowsEx function with the
/// EWX_RESTARTAPPS flag. This restarts any applications that have been
/// registered for restart using the RegisterApplicationRestart function.
const SHUTDOWN_RESTARTAPPS = 0x0000080;

/// Beginning with InitiateShutdown running on Windows 8, you must include the
/// SHUTDOWN_HYBRID flag with one or more of the flags in this table to specify
/// options for the shutdown.
const SHUTDOWN_HYBRID = 0x0000200;

// -----------------------------------------------------------------------------
// Shell_NotifyIcon uFlags constants
// -----------------------------------------------------------------------------

/// Adds an icon to the status area. The icon is given an identifier in the
/// NOTIFYICONDATA structure pointed to by lpdata—either through its uID or
/// guidItem member. This identifier is used in subsequent calls to
/// Shell_NotifyIcon to perform later actions on the icon.
const NIM_ADD = 0x00000000;

/// Modifies an icon in the status area. NOTIFYICONDATA structure pointed to by
/// lpdata uses the ID originally assigned to the icon when it was added to the
/// notification area (NIM_ADD) to identify the icon to be modified.
const NIM_MODIFY = 0x00000001;

/// Deletes an icon from the status area. NOTIFYICONDATA structure
/// pointed to by lpdata uses the ID originally assigned to the icon when it was
/// added to the notification area (NIM_ADD) to identify the icon to be deleted.
const NIM_DELETE = 0x00000002;

/// Shell32.dll version 5.0 and later only. Returns focus to the
/// taskbar notification area. Notification area icons should use this message
/// when they have completed their UI operation. For example, if the icon
/// displays a shortcut menu, but the user presses ESC to cancel it, use
/// NIM_SETFOCUS to return focus to the notification area.
const NIM_SETFOCUS = 0x00000003;

/// Shell32.dll version 5.0 and later only. Instructs the notification area to
/// behave according to the version number specified in the uVersion member of
/// the structure pointed to by lpdata. The version number specifies which
/// members are recognized. NIM_SETVERSION must be called every time a
/// notification area icon is added (NIM_ADD)>. It does not need to be called
/// with NIM_MOFIDY. The version setting is not persisted once a user logs off.
const NIM_SETVERSION = 0x00000004;

// -----------------------------------------------------------------------------
// NOTIFYICONDATA::uVersion constants
// Flags that either indicate which of the other members of the structure
// contain valid data or provide additional information to the tooltip as to
// how it should display. This member can be a combination of the following
// values:
// -----------------------------------------------------------------------------
const NOTIFYICON_VERSION = 3;
const NOTIFYICON_VERSION_4 = 4;

// -----------------------------------------------------------------------------
// NOTIFYICONDATA::uFlags constants
// -----------------------------------------------------------------------------

/// The uCallbackMessage member is valid.
const NIF_MESSAGE = 0x00000001;

/// The hIcon member is valid.
const NIF_ICON = 0x00000002;

/// The szTip member is valid.
const NIF_TIP = 0x00000004;

/// The dwState and dwStateMask members are valid.
const NIF_STATE = 0x00000008;

/// To display the balloon notification, specify NIF_INFO and provide
/// text in szInfo.
/// To remove a balloon notification, specify NIF_INFO and provide an empty
/// string through szInfo.
/// To add a notification area icon without displaying a notification,
/// do not set the NIF_INFO flag.
const NIF_INFO = 0x00000010;

/// Windows 7 and later: The guidItem is valid.
/// Windows Vista and earlier: Reserved.
const NIF_GUID = 0x00000020;

/// Windows Vista and later. If the balloon notification cannot be displayed
/// immediately, discard it. Use this flag for notifications that represent
/// real-time information which would be meaningless or misleading if displayed
/// at a later time. For example, a message that states
/// "Your telephone is ringing." NIF_REALTIME is meaningful only when combined
/// with the NIF_INFO flag.
const NIF_REALTIME = 0x00000040;

/// Windows Vista and later. Use the standard tooltip. Normally, when uVersion
/// is set to NOTIFYICON_VERSION_4, the standard tooltip is suppressed and
/// can be replaced by the application-drawn, pop-up UI. If the application
/// wants to show the standard tooltip with NOTIFYICON_VERSION_4, it can
/// specify NIF_SHOWTIP to indicate the standard tooltip should still be shown.
const NIF_SHOWTIP = 0x00000080;

// -----------------------------------------------------------------------------
// NOTIFYICONDATA::dwState constants
// The state of the icon. One or both of the following values.
// -----------------------------------------------------------------------------

/// The icon is hidden.
const NIS_HIDDEN = 0x00000001;

/// The icon resource is shared between multiple icons.
const NIS_SHAREDICON = 0x00000002;

// -----------------------------------------------------------------------------
// NOTIFYICONDATA::dwInfoFlags constants
// Flags that can be set to modify the behavior and appearance of a balloon
// notification. The icon is placed to the left of the title. If the szInfoTitle
// member is zero-length, the icon is not shown.
// -----------------------------------------------------------------------------

/// No icon.
const NIIF_NONE = 0x00000000;

/// An information icon.
const NIIF_INFO = 0x00000001;

/// A warning icon.
const NIIF_WARNING = 0x00000002;

/// An error icon.
const NIIF_ERROR = 0x00000003;

/// Windows Vista and later: Use the icon identified in hBalloonIcon as the
/// notification balloon's title icon.
const NIIF_USER = 0x00000004;

/// Windows XP and later. Reserved.
const NIIF_ICON_MASK = 0x0000000F;

/// Do not play the associated sound. Applies only to notifications.
const NIIF_NOSOUND = 0x00000010;

/// The large version of the icon should be used as the notification icon
const NIIF_LARGE_ICON = 0x00000020;

/// Do not display the balloon notification if the curr user is in "quiet time"
const NIIF_RESPECT_QUIET_TIME = 0x00000080;

/// Used to define private messages, usually of the form WM_APP+x, where x
/// is an integer value.
const WM_APP = 0x8000;

// -----------------------------------------------------------------------------
// Shell_NotifyIcon WndProc callback message contants
// -----------------------------------------------------------------------------

/// If a user selects a notify icon with the mouse and activates it with the
/// ENTER key, the Shell now sends the associated application an NIN_SELECT
/// notification. Earlier versions send WM_RBUTTONDOWN and WM_RBUTTONUP
/// messages.
const NIN_SELECT = WM_USER + 0;

const NINF_KEY = 0x1;

/// If a user selects a notify icon with the keyboard and activates it with
/// the SPACEBAR or ENTER key, the version 5.0 Shell sends the associated
/// application an NIN_KEYSELECT notification. Earlier versions send
/// WM_RBUTTONDOWN and WM_RBUTTONUP messages.
const NIN_KEYSELECT = NIN_SELECT | NINF_KEY;

/// Sent when the balloon is shown (balloons are queued).
const NIN_BALLOONSHOW = WM_USER + 2;

/// Sent when the balloon disappears. For example, when the icon is deleted.
/// This message is not sent if the balloon is dismissed because of a timeout or
/// if the user clicks the mouse.
/// As of Windows 7, NIN_BALLOONHIDE is also sent when a notification with
/// the NIIF_RESPECT_QUIET_TIME flag set attempts to display during quiet time
/// (a user's first hour on a new computer). In that case, the balloon is never
/// displayed at all.
const NIN_BALLOONHIDE = WM_USER + 3;

/// Sent when the balloon is dismissed because of a timeout.
const NIN_BALLOONTIMEOUT = WM_USER + 4;

/// Sent when the balloon is dismissed because the user clicked the mouse.
const NIN_BALLOONUSERCLICK = WM_USER + 5;

/// Sent when the user hovers the cursor over an icon to indicate that the
/// richer pop-up UI should be used in place of a standard textual tooltip.
const NIN_POPUPOPEN = WM_USER + 6;

/// Sent when a cursor no longer hovers over an icon to indicate that the rich
/// pop-up UI should be closed.
const NIN_POPUPCLOSE = WM_USER + 7;

// -----------------------------------------------------------------------------
// Power setting constants
// -----------------------------------------------------------------------------

/// Notifications are sent using WM_POWERBROADCAST messages with a wParam
/// parameter of PBT_POWERSETTINGCHANGE.
const DEVICE_NOTIFY_WINDOW_HANDLE = 0;

/// Notifications are sent to the HandlerEx callback function with a dwControl
/// parameter of SERVICE_CONTROL_POWEREVENT and a dwEventType of
/// PBT_POWERSETTINGCHANGE.
const DEVICE_NOTIFY_SERVICE_HANDLE = 1;
// -----------------------------------------------------------------------------
// TrackPopupMenuEx constants
// -----------------------------------------------------------------------------

/// The user can select menu items with only the left mouse button.
const TPM_LEFTBUTTON = 0x0000;

/// The user can select menu items with both the left and right mouse buttons.
const TPM_RIGHTBUTTON = 0x0002;

/// Positions the shortcut menu so that its left side is aligned with the
/// coordinate specified by the x parameter.
const TPM_LEFTALIGN = 0x0000;

/// Centers the shortcut menu horizontally relative to the coordinate specified
/// by the x parameter.
const TPM_CENTERALIGN = 0x0004;

/// Positions the shortcut menu so that its right side is aligned with the
/// coordinate specified by the x parameter.
const TPM_RIGHTALIGN = 0x0008;

/// Positions the shortcut menu so that its top side is aligned with the
/// coordinate specified by the y parameter.
const TPM_TOPALIGN = 0x0000;

/// Centers the shortcut menu vertically relative to the coordinate specified by
/// the y parameter.
const TPM_VCENTERALIGN = 0x0010;

/// Positions the shortcut menu so that its bottom side is aligned with the
/// coordinate specified by the y parameter.
const TPM_BOTTOMALIGN = 0x0020;

/// If the menu cannot be shown at the specified location without overlapping
/// the excluded rectangle, the system tries to accommodate the requested
/// horizontal alignment before the requested vertical alignment.
const TPM_HORIZONTAL = 0x0000;

/// If the menu cannot be shown at the specified location without overlapping
/// the excluded rectangle, the system tries to accommodate the requested
/// vertical alignment before the requested horizontal alignment.
const TPM_VERTICAL = 0x0040;

/// The function does not send notification messages when the user clicks a menu
/// item.
const TPM_NONOTIFY = 0x0080;

/// The function returns the menu item identifier of the user's selection in the
/// return value.
const TPM_RETURNCMD = 0x0100;

/// Use the TPM_RECURSE flag to display a menu when another menu is already
/// displayed. This is intended to support context menus within a menu.
const TPM_RECURSE = 0x0001;

/// Animates the menu from left to right.
const TPM_HORPOSANIMATION = 0x0400;

/// Animates the menu from right to left.
const TPM_HORNEGANIMATION = 0x0800;

/// Animates the menu from top to bottom.
const TPM_VERPOSANIMATION = 0x1000;

/// Animates the menu from bottom to top.
const TPM_VERNEGANIMATION = 0x2000;

/// Displays menu without animation.
const TPM_NOANIMATION = 0x4000;

/// For right-to-left text layout, use TPM_LAYOUTRTL. By default, the text
/// layout is left-to-right.
const TPM_LAYOUTRTL = 0x8000;

/// Restricts the pop-up window to within the work area.
const TPM_WORKAREA = 0x10000;

// -----------------------------------------------------------------------------
// LoadImage constants
// -----------------------------------------------------------------------------

/// Loads a bitmap.
const IMAGE_BITMAP = 0;

/// Loads an icon.
const IMAGE_ICON = 1;

/// Loads a cursor.
const IMAGE_CURSOR = 2;

/// Loads an enhanced metafile.
const IMAGE_ENHMETAFILE = 3;

// -----------------------------------------------------------------------------
// Stock icons and cursors
// -----------------------------------------------------------------------------

// In the original header files, these take the form:
//   #define IDI_APPLICATION     MAKEINTRESOURCE(32512)
// The MAKEINTRESOURCE() macro creates a pointer to a known memory address. The
// address itself has no meaning other than as a marker.

/// Default application icon.
final IDI_APPLICATION = Pointer<Utf16>.fromAddress(32512);

/// Hand-shaped icon. Same as IDI_ERROR.
final IDI_HAND = Pointer<Utf16>.fromAddress(32513);

/// Question mark icon.
final IDI_QUESTION = Pointer<Utf16>.fromAddress(32514);

/// Exclamation point icon. Same as IDI_WARNING.
final IDI_EXCLAMATION = Pointer<Utf16>.fromAddress(32515);

/// Asterisk icon. Same as IDI_INFORMATION.
final IDI_ASTERISK = Pointer<Utf16>.fromAddress(32516);

/// Windows logo icon.
final IDI_WINLOGO = Pointer<Utf16>.fromAddress(32517);

/// Security Shield icon.
final IDI_SHIELD = Pointer<Utf16>.fromAddress(32518);

/// Exclamation point icon.
final IDI_WARNING = IDI_EXCLAMATION;

/// Hand-shaped icon.
final IDI_ERROR = IDI_HAND;

/// Asterisk icon.
final IDI_INFORMATION = IDI_ASTERISK;

/// Standard arrow
final IDC_ARROW = Pointer<Utf16>.fromAddress(32512);

/// I-beam
final IDC_IBEAM = Pointer<Utf16>.fromAddress(32513);

/// Hourglass
final IDC_WAIT = Pointer<Utf16>.fromAddress(32514);

/// Crosshair
final IDC_CROSS = Pointer<Utf16>.fromAddress(32515);

/// Vertical arrow
final IDC_UPARROW = Pointer<Utf16>.fromAddress(32516);

/// Double-pointed arrow pointing northwest and southeast
final IDC_SIZENWSE = Pointer<Utf16>.fromAddress(32642);

/// Double-pointed arrow pointing northeast and southwest
final IDC_SIZENESW = Pointer<Utf16>.fromAddress(32643);

/// Double-pointed arrow pointing west and east
final IDC_SIZEWE = Pointer<Utf16>.fromAddress(32644);

/// Double-pointed arrow pointing north and south
final IDC_SIZENS = Pointer<Utf16>.fromAddress(32645);

/// Four-pointed arrow pointing north, south, east, and west
final IDC_SIZEALL = Pointer<Utf16>.fromAddress(32646);

/// Slashed circle
final IDC_NO = Pointer<Utf16>.fromAddress(32648);

/// Hand
final IDC_HAND = Pointer<Utf16>.fromAddress(32649);

/// Standard arrow and small hourglass
final IDC_APPSTARTING = Pointer<Utf16>.fromAddress(32650);

/// Arrow and question mark
final IDC_HELP = Pointer<Utf16>.fromAddress(32651);

// -----------------------------------------------------------------------------
// LoadImage fuLoad constants
// -----------------------------------------------------------------------------

/// The default flag; it does nothing.
const LR_DEFAULTCOLOR = 0x00000000;

/// Loads the image in black and white.
const LR_MONOCHROME = 0x00000001;

/// Returns the original hImage if it satisfies the criteria for the copy—that
/// is, correct dimensions and color depth—in which case the LR_COPYDELETEORG
/// flag is ignored. If this flag is not specified, a new object is always
/// created.
const LR_COPYRETURNORG = 0x00000004;

/// Deletes the original image after creating the copy.
const LR_COPYDELETEORG = 0x00000008;

/// Loads the stand-alone image from the file specified by lpszName (icon,
/// cursor, or bitmap file).
const LR_LOADFROMFILE = 0x00000010;

/// Retrieves the color value of the first pixel in the image and replaces the
/// corresponding entry in the color table with the default window color
/// (COLOR_WINDOW). All pixels in the image that use that entry become the
/// default window color. This value applies only to images that have
/// corresponding color tables.
const LR_LOADTRANSPARENT = 0x00000020;

/// Uses the width or height specified by the system metric values for cursors
/// or icons, if the cxDesired or cyDesired values are set to zero.
const LR_DEFAULTSIZE = 0x00000040;

/// Uses true VGA colors.
const LR_VGACOLOR = 0x00000080;

/// Searches the color table for the image and replaces shades of gray with the
/// corresponding 3-D color.
const LR_LOADMAP3DCOLORS = 0x00001000;

/// Causes the function to return a DIB section bitmap rather than a compatible
/// bitmap. This flag is useful for loading a bitmap without mapping it to the
/// colors of the display device.
const LR_CREATEDIBSECTION = 0x00002000;

/// Tries to reload an icon or cursor resource from the original resource file
/// rather than simply copying the current image. This is useful for creating a
/// different-sized copy when the resource file contains multiple sizes of the
/// resource. Without this flag, CopyImage stretches the original image to the
/// new size. If this flag is set, CopyImage uses the size in the resource file
/// closest to the desired size.
const LR_COPYFROMRESOURCE = 0x00004000;

/// Shares the image handle if the image is loaded multiple times. If LR_SHARED
/// is not set, a second call to LoadImage for the same resource will load the
/// image again and return a different handle.
const LR_SHARED = 0x00008000;

// -----------------------------------------------------------------------------
// Windows Runtime constants
// -----------------------------------------------------------------------------

/// Determines the concurrency model used for incoming calls to the objects
/// created by this thread.
///
/// {@category Enum}
class RO_INIT_TYPE {
  static const RO_INIT_SINGLETHREADED = 0;

  /// Initializes the thread for multi-threaded concurrency. The current thread
  /// is initialized in the MTA.
  static const RO_INIT_MULTITHREADED = 1;
}

// -----------------------------------------------------------------------------
// Internationalization for Windows Applications constants
// -----------------------------------------------------------------------------

/// Identifies the type of corrective action to be taken for a spelling error.
///
/// {@category Enum}
class CORRECTIVE_ACTION {
  /// There are no errors.
  static const NONE = 0;

  /// The user should be prompted with a list of suggestions as returned by
  /// ISpellChecker::Suggest.
  static const GET_SUGGESTIONS = 1;

  /// Replace the indicated erroneous text with the text provided in the
  /// suggestion. The user does not need to be prompted.
  static const REPLACE = 2;

  /// The user should be prompted to delete the indicated erroneous text.
  static const DELETE = 3;
}

// -----------------------------------------------------------------------------
// IApplicationActivationManager constants
// -----------------------------------------------------------------------------

/// Flags used to support design mode, debugging, and testing scenarios.
class ACTIVATEOPTIONS {
  /// No flags are set.
  static const AO_NONE = 0;

  /// The app is being activated for design mode, so it can't create its normal
  /// window. The creation of the app's window must be done by design tools that
  /// load the necessary components by communicating with a designer-specified
  /// service on the site chain established through the activation manager. Note
  /// that this means that the splash screen seen during regular activations
  /// won't be seen.
  static const AO_DESIGNMODE = 0x1;

  /// Do not display an error dialog if the app fails to activate.
  static const AO_NOERRORUI = 0x2;

  /// Do not display the app's splash screen when the app is activated. You must
  /// enable debug mode on the app's package when you use this flag; otherwise,
  /// the PLM will terminate the app after a few seconds.
  static const AO_NOSPLASHSCREEN = 0x4;

  /// The application is being activated in prelaunch mode. This value is
  /// supported starting in Windows 10.
  static const AO_PRELAUNCH = 0x2000000;
}
