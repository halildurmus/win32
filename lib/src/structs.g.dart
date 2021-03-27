// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'com/IDispatch.dart';
import 'com/IUnknown.dart';
import 'combase.dart';
import 'oleaut32.dart';
import 'structs.dart';

/// The ACL structure is the header of an access control list (ACL). A
/// complete ACL consists of an ACL structure followed by an ordered list
/// of zero or more access control entries (ACEs).
///
/// {@category Struct}
class ACL extends Struct {
  @Uint8()
  external int AclRevision;
  @Uint8()
  external int Sbz1;
  @Uint16()
  external int AclSize;
  @Uint16()
  external int AceCount;
  @Uint16()
  external int Sbz2;
}

/// The ACTCTX structure is used by the CreateActCtx function to create the
/// activation context.
///
/// {@category Struct}
class ACTCTX extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  external Pointer<Utf16> lpSource;
  @Uint16()
  external int wProcessorArchitecture;
  @Uint16()
  external int wLangId;
  external Pointer<Utf16> lpAssemblyDirectory;
  external Pointer<Utf16> lpResourceName;
  external Pointer<Utf16> lpApplicationName;
  @IntPtr()
  external int hModule;
}

/// Contains parameters used during a moniker-binding operation.
///
/// {@category Struct}
class BIND_OPTS extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int grfFlags;
  @Uint32()
  external int grfMode;
  @Uint32()
  external int dwTickCountDeadline;
}

/// The BITMAP structure defines the type, width, height, color format, and
/// bit values of a bitmap.
///
/// {@category Struct}
class BITMAP extends Struct {
  @Int32()
  external int bmType;
  @Int32()
  external int bmWidth;
  @Int32()
  external int bmHeight;
  @Int32()
  external int bmWidthBytes;
  @Uint16()
  external int bmPlanes;
  @Uint16()
  external int bmBitsPixel;
  external Pointer bmBits;
}

/// The BITMAPINFO structure defines the dimensions and color information
/// for a device-independent bitmap (DIB).
///
/// {@category Struct}
class BITMAPINFO extends Struct {
  external BITMAPINFOHEADER bmiHeader;
  external RGBQUAD bmiColors;
}

/// The BITMAPINFOHEADER structure contains information about the
/// dimensions and color format of a device-independent bitmap (DIB).
///
/// {@category Struct}
class BITMAPINFOHEADER extends Struct {
  @Uint32()
  external int biSize;
  @Int32()
  external int biWidth;
  @Int32()
  external int biHeight;
  @Uint16()
  external int biPlanes;
  @Uint16()
  external int biBitCount;
  @Uint32()
  external int biCompression;
  @Uint32()
  external int biSizeImage;
  @Int32()
  external int biXPelsPerMeter;
  @Int32()
  external int biYPelsPerMeter;
  @Uint32()
  external int biClrUsed;
  @Uint32()
  external int biClrImportant;
}

/// The BLUETOOTH_FIND_RADIO_PARAMS structure facilitates enumerating
/// installed Bluetooth radios.
///
/// {@category Struct}
class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  @Uint32()
  external int dwSize;
}

/// Contains information about the console cursor.
///
/// {@category Struct}
class CONSOLE_CURSOR_INFO extends Struct {
  @Uint32()
  external int dwSize;
  @Int32()
  external int bVisible;
}

/// Contains information about a console screen buffer.
///
/// {@category Struct}
class CONSOLE_SCREEN_BUFFER_INFO extends Struct {
  external COORD dwSize;
  external COORD dwCursorPosition;
  @Uint16()
  external int wAttributes;
  external SMALL_RECT srWindow;
  external COORD dwMaximumWindowSize;
}

/// Contains information for a console selection.
///
/// {@category Struct}
class CONSOLE_SELECTION_INFO extends Struct {
  @Uint32()
  external int dwFlags;
  external COORD dwSelectionAnchor;
  external SMALL_RECT srSelection;
}

/// Defines the coordinates of a character cell in a console screen buffer.
/// The origin of the coordinate system (0,0) is at the top, left cell of
/// the buffer.
///
/// {@category Struct}
class COORD extends Struct {
  @Int16()
  external int X;
  @Int16()
  external int Y;
}

/// Defines the initialization parameters passed to the window procedure of
/// an application. These members are identical to the parameters of the
/// CreateWindowEx function.
///
/// {@category Struct}
class CREATESTRUCT extends Struct {
  external Pointer lpCreateParams;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int hMenu;
  @IntPtr()
  external int hwndParent;
  @Int32()
  external int cy;
  @Int32()
  external int cx;
  @Int32()
  external int y;
  @Int32()
  external int x;
  @Int32()
  external int style;
  external Pointer<Utf16> lpszName;
  external Pointer<Utf16> lpszClass;
  @Uint32()
  external int dwExStyle;
}

/// The CREDENTIAL structure contains an individual credential.
///
/// {@category Struct}
class CREDENTIAL extends Struct {
  @Uint32()
  external int Flags;
  @Uint32()
  external int Type;
  external Pointer<Utf16> TargetName;
  external Pointer<Utf16> Comment;
  external FILETIME LastWritten;
  @Uint32()
  external int CredentialBlobSize;
  external Pointer<Uint8> CredentialBlob;
  @Uint32()
  external int Persist;
  @Uint32()
  external int AttributeCount;
  external Pointer<CREDENTIAL_ATTRIBUTE> Attributes;
  external Pointer<Utf16> TargetAlias;
  external Pointer<Utf16> UserName;
}

/// The CREDENTIAL_ATTRIBUTE structure contains an application-defined
/// attribute of the credential. An attribute is a keyword-value pair. It
/// is up to the application to define the meaning of the attribute.
///
/// {@category Struct}
class CREDENTIAL_ATTRIBUTE extends Struct {
  external Pointer<Utf16> Keyword;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ValueSize;
  external Pointer<Uint8> Value;
}

/// Contains the arguments passed to a method or property.
///
/// {@category Struct}
class DISPPARAMS extends Struct {
  external Pointer<VARIANT> rgvarg;
  external Pointer<Int32> rgdispidNamedArgs;
  @Uint32()
  external int cArgs;
  @Uint32()
  external int cNamedArgs;
}

/// Receives DLL-specific version information. It is used with the
/// DllGetVersion function.
///
/// {@category Struct}
class DLLVERSIONINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformID;
}

/// The DRAWTEXTPARAMS structure contains extended formatting options for
/// the DrawTextEx function.
///
/// {@category Struct}
class DRAWTEXTPARAMS extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iTabLength;
  @Int32()
  external int iLeftMargin;
  @Int32()
  external int iRightMargin;
  @Uint32()
  external int uiLengthDrawn;
}

/// Contains a 64-bit value representing the number of 100-nanosecond
/// intervals since January 1, 1601 (UTC).
///
/// {@category Struct}
class FILETIME extends Struct {
  @Uint32()
  external int dwLowDateTime;
  @Uint32()
  external int dwHighDateTime;
}

/// Carries information used to load common control classes from the
/// dynamic-link library (DLL). This structure is used with the
/// InitCommonControlsEx function.
///
/// {@category Struct}
class INITCOMMONCONTROLSEX extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwICC;
}

/// Contains a list of item identifiers.
///
/// {@category Struct}
class ITEMIDLIST extends Struct {
  external SHITEMID mkid;
}

/// Defines the specifics of a known folder.
///
/// {@category Struct}
class KNOWNFOLDER_DEFINITION extends Struct {
  @Uint32()
  external int category;
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszDescription;
  external GUID fidParent;
  external Pointer<Utf16> pszRelativePath;
  external Pointer<Utf16> pszParsingName;
  external Pointer<Utf16> pszTooltip;
  external Pointer<Utf16> pszLocalizedName;
  external Pointer<Utf16> pszIcon;
  external Pointer<Utf16> pszSecurity;
  @Uint32()
  external int dwAttributes;
  @Uint32()
  external int kfdFlags;
  external GUID ftidType;
}

/// The LOGBRUSH structure defines the style, color, and pattern of a
/// physical brush. It is used by the CreateBrushIndirect and ExtCreatePen
/// functions.
///
/// {@category Struct}
class LOGBRUSH extends Struct {
  @Uint32()
  external int lbStyle;
  @Uint32()
  external int lbColor;
  @IntPtr()
  external int lbHatch;
}

/// The MCI_PLAY_PARMS structure contains positioning information for the
/// MCI_PLAY command.
///
/// {@category Struct}
class MCI_PLAY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
}

/// The MCI_STATUS_PARMS structure contains information for the MCI_STATUS
/// command.
///
/// {@category Struct}
class MCI_STATUS_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @IntPtr()
  external int dwReturn;
  @Uint32()
  external int dwItem;
  @Uint32()
  external int dwTrack;
}

/// Contains information about a menu.
///
/// {@category Struct}
class MENUINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @Uint32()
  external int dwStyle;
  @Uint32()
  external int cyMax;
  @IntPtr()
  external int hbrBack;
  @Uint32()
  external int dwContextHelpID;
  @IntPtr()
  external int dwMenuData;
}

/// Contains information about a menu item.
///
/// {@category Struct}
class MENUITEMINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @Uint32()
  external int fType;
  @Uint32()
  external int fState;
  @Uint32()
  external int wID;
  @IntPtr()
  external int hSubMenu;
  @IntPtr()
  external int hbmpChecked;
  @IntPtr()
  external int hbmpUnchecked;
  @IntPtr()
  external int dwItemData;
  external Pointer<Utf16> dwTypeData;
  @Uint32()
  external int cch;
  @IntPtr()
  external int hbmpItem;
}

/// Contains information about a window's maximized size and position and
/// its minimum and maximum tracking size.
///
/// {@category Struct}
class MINMAXINFO extends Struct {
  external POINT ptReserved;
  external POINT ptMaxSize;
  external POINT ptMaxPosition;
  external POINT ptMinTrackSize;
  external POINT ptMaxTrackSize;
}

/// Contains module data.
///
/// {@category Struct}
class MODLOAD_DATA extends Struct {
  @Uint32()
  external int ssize;
  @Uint32()
  external int ssig;
  external Pointer data;
  @Uint32()
  external int size;
  @Uint32()
  external int flags;
}

/// The MONITORINFO structure contains information about a display monitor.
///
/// {@category Struct}
class MONITORINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcMonitor;
  external RECT rcWork;
  @Uint32()
  external int dwFlags;
}

/// Contains information about the mouse's location in screen coordinates.
///
/// {@category Struct}
class MOUSEMOVEPOINT extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Uint32()
  external int time;
  @IntPtr()
  external int dwExtraInfo;
}

/// Contains message information from a thread's message queue.
///
/// {@category Struct}
class MSG extends Struct {
  @IntPtr()
  external int hwnd;
  @Uint32()
  external int message;
  @IntPtr()
  external int wParam;
  @IntPtr()
  external int lParam;
  @Uint32()
  external int time;
  external POINT pt;
}

/// The PALETTEENTRY structure specifies the color and usage of an entry in
/// a logical palette. A logical palette is defined by a LOGPALETTE
/// structure.
///
/// {@category Struct}
class PALETTEENTRY extends Struct {
  @Uint8()
  external int peRed;
  @Uint8()
  external int peGreen;
  @Uint8()
  external int peBlue;
  @Uint8()
  external int peFlags;
}

/// The POINT structure defines the x- and y-coordinates of a point.
///
/// {@category Struct}
class POINT extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
}

/// Contains information about a newly created process and its primary
/// thread. It is used with the CreateProcess, CreateProcessAsUser,
/// CreateProcessWithLogonW, or CreateProcessWithTokenW function.
///
/// {@category Struct}
class PROCESS_INFORMATION extends Struct {
  @IntPtr()
  external int hProcess;
  @IntPtr()
  external int hThread;
  @Uint32()
  external int dwProcessId;
  @Uint32()
  external int dwThreadId;
}

/// Specifies the FMTID/PID identifier that programmatically identifies a
/// property.
///
/// {@category Struct}
class PROPERTYKEY extends Struct {
  external GUID fmtid;
  @Uint32()
  external int pid;
}

/// The RECT structure defines a rectangle by the coordinates of its
/// upper-left and lower-right corners.
///
/// {@category Struct}
class RECT extends Struct {
  @Int32()
  external int left;
  @Int32()
  external int top;
  @Int32()
  external int right;
  @Int32()
  external int bottom;
}

/// The RGBQUAD structure describes a color consisting of relative
/// intensities of red, green, and blue.
///
/// {@category Struct}
class RGBQUAD extends Struct {
  @Uint8()
  external int rgbBlue;
  @Uint8()
  external int rgbGreen;
  @Uint8()
  external int rgbRed;
  @Uint8()
  external int rgbReserved;
}

/// Represents a safe array.
///
/// {@category Struct}
class SAFEARRAY extends Struct {
  @Uint16()
  external int cDims;
  @Uint16()
  external int fFeatures;
  @Uint32()
  external int cbElements;
  @Uint32()
  external int cLocks;
  external Pointer pvData;
  external SAFEARRAYBOUND rgsabound;
}

/// Represents the bounds of one dimension of the array.
///
/// {@category Struct}
class SAFEARRAYBOUND extends Struct {
  @Uint32()
  external int cElements;
  @Int32()
  external int lLbound;
}

/// The SCROLLINFO structure contains scroll bar parameters to be set by
/// the SetScrollInfo function (or SBM_SETSCROLLINFO message), or retrieved
/// by the GetScrollInfo function (or SBM_GETSCROLLINFO message)
///
/// {@category Struct}
class SCROLLINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @Int32()
  external int nMin;
  @Int32()
  external int nMax;
  @Uint32()
  external int nPage;
  @Int32()
  external int nPos;
  @Int32()
  external int nTrackPos;
}

/// The SECURITY_ATTRIBUTES structure contains the security descriptor for
/// an object and specifies whether the handle retrieved by specifying this
/// structure is inheritable.\n\nThis structure provides security settings
/// for objects created by various functions, such as CreateFile,
/// CreatePipe, CreateProcess, RegCreateKeyEx, or RegSaveKeyEx.
///
/// {@category Struct}
class SECURITY_ATTRIBUTES extends Struct {
  @Uint32()
  external int nLength;
  external Pointer lpSecurityDescriptor;
  @Int32()
  external int bInheritHandle;
}

/// The SECURITY_DESCRIPTOR structure contains the security information
/// associated with an object. Applications use this structure to set and
/// query an object's security status.
///
/// {@category Struct}
class SECURITY_DESCRIPTOR extends Struct {
  @Uint8()
  external int Revision;
  @Uint8()
  external int Sbz1;
  @Uint16()
  external int Control;
  external Pointer Owner;
  external Pointer Group;
  external Pointer<ACL> Sacl;
  external Pointer<ACL> Dacl;
}

/// Contains the size and item count information retrieved by the
/// SHQueryRecycleBin function.
///
/// {@category Struct}
class SHQUERYRBINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Int64()
  external int i64Size;
  @Int64()
  external int i64NumItems;
}

/// The SIZE structure defines the width and height of a rectangle.
///
/// {@category Struct}
class SIZE extends Struct {
  @Int32()
  external int cx;
  @Int32()
  external int cy;
}

/// Defines the coordinates of the upper left and lower right corners of a
/// rectangle.
///
/// {@category Struct}
class SMALL_RECT extends Struct {
  @Int16()
  external int Left;
  @Int16()
  external int Top;
  @Int16()
  external int Right;
  @Int16()
  external int Bottom;
}

/// Identifies an authentication service that a server is willing to use to
/// communicate to a client.
///
/// {@category Struct}
class SOLE_AUTHENTICATION_SERVICE extends Struct {
  @Uint32()
  external int dwAuthnSvc;
  @Uint32()
  external int dwAuthzSvc;
  external Pointer<Utf16> pPrincipalName;
  @Int32()
  external int hr;
}

/// Specifies the window station, desktop, standard handles, and appearance
/// of the main window for a process at creation time.
///
/// {@category Struct}
class STARTUPINFO extends Struct {
  @Uint32()
  external int cb;
  external Pointer<Utf16> lpReserved;
  external Pointer<Utf16> lpDesktop;
  external Pointer<Utf16> lpTitle;
  @Uint32()
  external int dwX;
  @Uint32()
  external int dwY;
  @Uint32()
  external int dwXSize;
  @Uint32()
  external int dwYSize;
  @Uint32()
  external int dwXCountChars;
  @Uint32()
  external int dwYCountChars;
  @Uint32()
  external int dwFillAttribute;
  @Uint32()
  external int dwFlags;
  @Uint16()
  external int wShowWindow;
  @Uint16()
  external int cbReserved2;
  external Pointer<Uint8> lpReserved2;
  @IntPtr()
  external int hStdInput;
  @IntPtr()
  external int hStdOutput;
  @IntPtr()
  external int hStdError;
}

/// The STATSTG structure contains statistical data about an open storage,
/// stream, or byte-array object. This structure is used in the
/// IEnumSTATSTG, ILockBytes, IStorage, and IStream interfaces.
///
/// {@category Struct}
class STATSTG extends Struct {
  external Pointer<Utf16> pwcsName;
  @Uint32()
  external int type;
  @Uint64()
  external int cbSize;
  external FILETIME mtime;
  external FILETIME ctime;
  external FILETIME atime;
  @Uint32()
  external int grfMode;
  @Uint32()
  external int grfLocksSupported;
  external GUID clsid;
  @Uint32()
  external int grfStateBits;
  @Uint32()
  external int reserved;
}

/// Contains information about the power status of the system.
///
/// {@category Struct}
class SYSTEM_POWER_STATUS extends Struct {
  @Uint8()
  external int ACLineStatus;
  @Uint8()
  external int BatteryFlag;
  @Uint8()
  external int BatteryLifePercent;
  @Uint8()
  external int SystemStatusFlag;
  @Uint32()
  external int BatteryLifeTime;
  @Uint32()
  external int BatteryFullLifeTime;
}

/// Specifies a date and time, using individual members for the month, day,
/// year, weekday, hour, minute, second, and millisecond. The time is
/// either in coordinated universal time (UTC) or local time, depending on
/// the function that is being called.
///
/// {@category Struct}
class SYSTEMTIME extends Struct {
  @Uint16()
  external int wYear;
  @Uint16()
  external int wMonth;
  @Uint16()
  external int wDayOfWeek;
  @Uint16()
  external int wDay;
  @Uint16()
  external int wHour;
  @Uint16()
  external int wMinute;
  @Uint16()
  external int wSecond;
  @Uint16()
  external int wMilliseconds;
}

/// The TASKDIALOG_BUTTON structure contains information used to display a
/// button in a task dialog. The TASKDIALOGCONFIG structure uses this
/// structure.
///
/// {@category Struct}
class TASKDIALOG_BUTTON extends Struct {
  @Int32()
  external int nButtonID;
  external Pointer<Utf16> pszButtonText;
}

/// The TEXTMETRIC structure contains basic information about a physical
/// font. All sizes are specified in logical units; that is, they depend on
/// the current mapping mode of the display context.
///
/// {@category Struct}
class TEXTMETRIC extends Struct {
  @Int32()
  external int tmHeight;
  @Int32()
  external int tmAscent;
  @Int32()
  external int tmDescent;
  @Int32()
  external int tmInternalLeading;
  @Int32()
  external int tmExternalLeading;
  @Int32()
  external int tmAveCharWidth;
  @Int32()
  external int tmMaxCharWidth;
  @Int32()
  external int tmWeight;
  @Int32()
  external int tmOverhang;
  @Int32()
  external int tmDigitizedAspectX;
  @Int32()
  external int tmDigitizedAspectY;
  @Uint16()
  external int tmFirstChar;
  @Uint16()
  external int tmLastChar;
  @Uint16()
  external int tmDefaultChar;
  @Uint16()
  external int tmBreakChar;
  @Uint8()
  external int tmItalic;
  @Uint8()
  external int tmUnderlined;
  @Uint8()
  external int tmStruckOut;
  @Uint8()
  external int tmPitchAndFamily;
  @Uint8()
  external int tmCharSet;
}

/// Contains extended parameters for the TrackPopupMenuEx function.
///
/// {@category Struct}
class TPMPARAMS extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcExclude;
}

/// Contains information about a registry value. The RegQueryMultipleValues
/// function uses this structure.
///
/// {@category Struct}
class VALENT extends Struct {
  external Pointer<Utf16> ve_valuename;
  @Uint32()
  external int ve_valuelen;
  @IntPtr()
  external int ve_valueptr;
  @Uint32()
  external int ve_type;
}

/// Contains version information for a file. This information is language
/// and code page independent.
///
/// {@category Struct}
class VS_FIXEDFILEINFO extends Struct {
  @Uint32()
  external int dwSignature;
  @Uint32()
  external int dwStrucVersion;
  @Uint32()
  external int dwFileVersionMS;
  @Uint32()
  external int dwFileVersionLS;
  @Uint32()
  external int dwProductVersionMS;
  @Uint32()
  external int dwProductVersionLS;
  @Uint32()
  external int dwFileFlagsMask;
  @Uint32()
  external int dwFileFlags;
  @Uint32()
  external int dwFileOS;
  @Uint32()
  external int dwFileType;
  @Uint32()
  external int dwFileSubtype;
  @Uint32()
  external int dwFileDateMS;
  @Uint32()
  external int dwFileDateLS;
}

/// The WAVEHDR structure defines the header used to identify a
/// waveform-audio buffer.
///
/// {@category Struct}
class WAVEHDR extends Struct {
  external Pointer<Utf8> lpData;
  @Uint32()
  external int dwBufferLength;
  @Uint32()
  external int dwBytesRecorded;
  @IntPtr()
  external int dwUser;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwLoops;
  external Pointer<WAVEHDR> lpNext;
  @IntPtr()
  external int reserved;
}

/// Contains window information.
///
/// {@category Struct}
class WINDOWINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcWindow;
  external RECT rcClient;
  @Uint32()
  external int dwStyle;
  @Uint32()
  external int dwExStyle;
  @Uint32()
  external int dwWindowStatus;
  @Uint32()
  external int cxWindowBorders;
  @Uint32()
  external int cyWindowBorders;
  @Uint16()
  external int atomWindowType;
  @Uint16()
  external int wCreatorVersion;
}
