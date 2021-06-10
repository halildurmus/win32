// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

/// Defines an accelerator key used in an accelerator table.
///
/// {@category Struct}
class ACCEL extends Struct {
  @Uint8()
  external int fVirt;
  @Uint16()
  external int key;
  @Uint16()
  external int cmd;
}

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

/// The BITMAPFILEHEADER structure contains information about the type,
/// size, and layout of a file that contains a DIB.
///
/// {@category Struct}
@Packed(2)
class BITMAPFILEHEADER extends Struct {
  @Uint16()
  external int bfType;
  @Uint32()
  external int bfSize;
  @Uint16()
  external int bfReserved1;
  @Uint16()
  external int bfReserved2;
  @Uint32()
  external int bfOffBits;
}

/// The BITMAPINFO structure defines the dimensions and color information
/// for a device-independent bitmap (DIB).
///
/// {@category Struct}
class BITMAPINFO extends Struct {
  external BITMAPINFOHEADER bmiHeader;
  @Array(1)
  external Array<RGBQUAD> bmiColors;
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

/// The BLENDFUNCTION structure controls blending by specifying the
/// blending functions for source and destination bitmaps.
///
/// {@category Struct}
class BLENDFUNCTION extends Struct {
  @Uint8()
  external int BlendOp;
  @Uint8()
  external int BlendFlags;
  @Uint8()
  external int SourceConstantAlpha;
  @Uint8()
  external int AlphaFormat;
}

/// The BLUETOOTH_DEVICE_INFO structure provides information about a
/// Bluetooth device.
///
/// {@category Struct}
class BLUETOOTH_DEVICE_INFO extends Struct {
  @Uint32()
  external int dwSize;
  external BLUETOOTH_ADDRESS Address;
  @Uint32()
  external int ulClassofDevice;
  @Int32()
  external int fConnected;
  @Int32()
  external int fRemembered;
  @Int32()
  external int fAuthenticated;
  external SYSTEMTIME stLastSeen;
  external SYSTEMTIME stLastUsed;
  @Array(248)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(248, '\x00');
    for (var i = 0; i < 248; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// The BLUETOOTH_DEVICE_SEARCH_PARAMS structure specifies search criteria
/// for Bluetooth device searches.
///
/// {@category Struct}
class BLUETOOTH_DEVICE_SEARCH_PARAMS extends Struct {
  @Uint32()
  external int dwSize;
  @Int32()
  external int fReturnAuthenticated;
  @Int32()
  external int fReturnRemembered;
  @Int32()
  external int fReturnUnknown;
  @Int32()
  external int fReturnConnected;
  @Int32()
  external int fIssueInquiry;
  @Uint8()
  external int cTimeoutMultiplier;
  @IntPtr()
  external int hRadio;
}

/// The BLUETOOTH_FIND_RADIO_PARAMS structure facilitates enumerating
/// installed Bluetooth radios.
///
/// {@category Struct}
class BLUETOOTH_FIND_RADIO_PARAMS extends Struct {
  @Uint32()
  external int dwSize;
}

/// The BLUETOOTH_OOB_DATA_INFO structure contains data used to
/// authenticate prior to establishing an Out-of-Band device pairing.
///
/// {@category Struct}
class BLUETOOTH_OOB_DATA_INFO extends Struct {
  @Array(16)
  external Array<Uint8> C;
  @Array(16)
  external Array<Uint8> R;
}

/// The BLUETOOTH_RADIO_INFO structure provides information about a
/// Bluetooth radio.
///
/// {@category Struct}
class BLUETOOTH_RADIO_INFO extends Struct {
  @Uint32()
  external int dwSize;
  external BLUETOOTH_ADDRESS address;
  @Array(248)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 248; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(248, '\x00');
    for (var i = 0; i < 248; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ulClassofDevice;
  @Uint16()
  external int lmpSubversion;
  @Uint16()
  external int manufacturer;
}

/// Contains information about a window that denied a request from
/// BroadcastSystemMessageEx.
///
/// {@category Struct}
class BSMINFO extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hdesk;
  @IntPtr()
  external int hwnd;
  external LUID luid;
}

/// Contains information that the GetFileInformationByHandle function
/// retrieves.
///
/// {@category Struct}
class BY_HANDLE_FILE_INFORMATION extends Struct {
  @Uint32()
  external int dwFileAttributes;
  external FILETIME ftCreationTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastWriteTime;
  @Uint32()
  external int dwVolumeSerialNumber;
  @Uint32()
  external int nFileSizeHigh;
  @Uint32()
  external int nFileSizeLow;
  @Uint32()
  external int nNumberOfLinks;
  @Uint32()
  external int nFileIndexHigh;
  @Uint32()
  external int nFileIndexLow;
}

/// Contains extended result information obtained by calling the
/// ChangeWindowMessageFilterEx function.
///
/// {@category Struct}
class CHANGEFILTERSTRUCT extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int ExtStatus;
}

/// Contains information the ChooseColor function uses to initialize the
/// Color dialog box. After the user closes the dialog box, the system
/// returns information about the user's selection in this structure.
///
/// {@category Struct}
class CHOOSECOLOR extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int rgbResult;
  external Pointer<Uint32> lpCustColors;
  @Uint32()
  external int Flags;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<CCHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

/// Contains information that the ChooseFont function uses to initialize
/// the Font dialog box. After the user closes the dialog box, the system
/// returns information about the user's selection in this structure.
///
/// {@category Struct}
class CHOOSEFONT extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hDC;
  external Pointer<LOGFONT> lpLogFont;
  @Int32()
  external int iPointSize;
  @Uint32()
  external int Flags;
  @Uint32()
  external int rgbColors;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<CFHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpszStyle;
  @Uint32()
  external int nFontType;
  @Uint16()
  external int ___MISSING_ALIGNMENT__;
  @Int32()
  external int nSizeMin;
  @Int32()
  external int nSizeMax;
}

/// The COLORADJUSTMENT structure defines the color adjustment values used
/// by the StretchBlt and StretchDIBits functions when the stretch mode is
/// HALFTONE. You can set the color adjustment values by calling the
/// SetColorAdjustment function.
///
/// {@category Struct}
class COLORADJUSTMENT extends Struct {
  @Uint16()
  external int caSize;
  @Uint16()
  external int caFlags;
  @Uint16()
  external int caIlluminantIndex;
  @Uint16()
  external int caRedGamma;
  @Uint16()
  external int caGreenGamma;
  @Uint16()
  external int caBlueGamma;
  @Uint16()
  external int caReferenceBlack;
  @Uint16()
  external int caReferenceWhite;
  @Int16()
  external int caContrast;
  @Int16()
  external int caBrightness;
  @Int16()
  external int caColorfulness;
  @Int16()
  external int caRedGreenTint;
}

/// Used generically to filter elements.
///
/// {@category Struct}
class COMDLG_FILTERSPEC extends Struct {
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszSpec;
}

/// Contains information about the configuration state of a communications
/// device.
///
/// {@category Struct}
class COMMCONFIG extends Struct {
  @Uint32()
  external int dwSize;
  @Uint16()
  external int wVersion;
  @Uint16()
  external int wReserved;
  external DCB dcb;
  @Uint32()
  external int dwProviderSubType;
  @Uint32()
  external int dwProviderOffset;
  @Uint32()
  external int dwProviderSize;
  @Array(1)
  external Array<Uint16> _wcProviderData;

  String get wcProviderData {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_wcProviderData[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wcProviderData(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _wcProviderData[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains the time-out parameters for a communications device. The
/// parameters determine the behavior of ReadFile, WriteFile, ReadFileEx,
/// and WriteFileEx operations on the device.
///
/// {@category Struct}
class COMMTIMEOUTS extends Struct {
  @Uint32()
  external int ReadIntervalTimeout;
  @Uint32()
  external int ReadTotalTimeoutMultiplier;
  @Uint32()
  external int ReadTotalTimeoutConstant;
  @Uint32()
  external int WriteTotalTimeoutMultiplier;
  @Uint32()
  external int WriteTotalTimeoutConstant;
}

/// Contains information about a communications device. This structure is
/// filled by the ClearCommError function.
///
/// {@category Struct}
class COMSTAT extends Struct {
  @Uint32()
  external int _bitfield;
  @Uint32()
  external int cbInQue;
  @Uint32()
  external int cbOutQue;
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

/// Contains global cursor information.
///
/// {@category Struct}
class CURSORINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int flags;
  @IntPtr()
  external int hCursor;
  external POINT ptScreenPos;
}

/// Defines the control setting for a serial communications device.
///
/// {@category Struct}
class DCB extends Struct {
  @Uint32()
  external int DCBlength;
  @Uint32()
  external int BaudRate;
  @Uint32()
  external int _bitfield;
  @Uint16()
  external int wReserved;
  @Uint16()
  external int XonLim;
  @Uint16()
  external int XoffLim;
  @Uint8()
  external int ByteSize;
  @Uint8()
  external int Parity;
  @Uint8()
  external int StopBits;
  @Uint8()
  external int XonChar;
  @Uint8()
  external int XoffChar;
  @Uint8()
  external int ErrorChar;
  @Uint8()
  external int EofChar;
  @Uint8()
  external int EvtChar;
  @Uint16()
  external int wReserved1;
}

/// The DESIGNVECTOR structure is used by an application to specify values
/// for the axes of a multiple master font.
///
/// {@category Struct}
class DESIGNVECTOR extends Struct {
  @Uint32()
  external int dvReserved;
  @Uint32()
  external int dvNumAxes;
  @Array(16)
  external Array<Int32> dvValues;
}

/// The DIBSECTION structure contains information about a DIB created by
/// calling the CreateDIBSection function. A DIBSECTION structure includes
/// information about the bitmap's dimensions, color format, color masks,
/// optional file mapping object, and optional bit values storage offset.
/// An application can obtain a filled-in DIBSECTION structure for a given
/// DIB by calling the GetObject function.
///
/// {@category Struct}
class DIBSECTION extends Struct {
  external BITMAP dsBm;
  external BITMAPINFOHEADER dsBmih;
  @Array(3)
  external Array<Uint32> dsBitfields;
  @IntPtr()
  external int dshSection;
  @Uint32()
  external int dsOffset;
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

/// Defines the dimensions and style of a control in a dialog box. One or
/// more of these structures are combined with a DLGTEMPLATE structure to
/// form a standard template for a dialog box.
///
/// {@category Struct}
@Packed(2)
class DLGITEMTEMPLATE extends Struct {
  @Uint32()
  external int style;
  @Uint32()
  external int dwExtendedStyle;
  @Int16()
  external int x;
  @Int16()
  external int y;
  @Int16()
  external int cx;
  @Int16()
  external int cy;
  @Uint16()
  external int id;
}

/// Defines the dimensions and style of a dialog box. This structure,
/// always the first in a standard template for a dialog box, also
/// specifies the number of controls in the dialog box and therefore
/// specifies the number of subsequent DLGITEMTEMPLATE structures in the
/// template.
///
/// {@category Struct}
@Packed(2)
class DLGTEMPLATE extends Struct {
  @Uint32()
  external int style;
  @Uint32()
  external int dwExtendedStyle;
  @Uint16()
  external int cdit;
  @Int16()
  external int x;
  @Int16()
  external int y;
  @Int16()
  external int cx;
  @Int16()
  external int cy;
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

/// The ENUMLOGFONTEX structure contains information about an enumerated
/// font.
///
/// {@category Struct}
class ENUMLOGFONTEX extends Struct {
  external LOGFONT elfLogFont;
  @Array(64)
  external Array<Uint16> _elfFullName;

  String get elfFullName {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_elfFullName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfFullName(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _elfFullName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfStyle;

  String get elfStyle {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfStyle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfStyle(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfStyle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(32)
  external Array<Uint16> _elfScript;

  String get elfScript {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_elfScript[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set elfScript(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _elfScript[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Describes an exception that occurred during IDispatch::Invoke.
///
/// {@category Struct}
class EXCEPINFO extends Struct {
  @Uint16()
  external int wCode;
  @Uint16()
  external int wReserved;
  external Pointer<Utf16> bstrSource;
  external Pointer<Utf16> bstrDescription;
  external Pointer<Utf16> bstrHelpFile;
  @Uint32()
  external int dwHelpContext;
  external Pointer pvReserved;
  external Pointer<NativeFunction<ExcepInfoProc>> pfnDeferredFillIn;
  @Int32()
  external int scode;
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

/// Contains information that the FindText and ReplaceText functions use to
/// initialize the Find and Replace dialog boxes. The FINDMSGSTRING
/// registered message uses this structure to pass the user's search or
/// replacement input to the owner window of a Find or Replace dialog box.
///
/// {@category Struct}
class FINDREPLACE extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  @Uint32()
  external int Flags;
  external Pointer<Utf16> lpstrFindWhat;
  external Pointer<Utf16> lpstrReplaceWith;
  @Uint16()
  external int wFindWhatLen;
  @Uint16()
  external int wReplaceWithLen;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<FRHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
}

/// Describes a function.
///
/// {@category Struct}
class FUNCDESC extends Struct {
  @Int32()
  external int memid;
  external Pointer<Int32> lprgscode;
  external Pointer<ELEMDESC> lprgelemdescParam;
  @Uint32()
  external int funckind;
  @Uint32()
  external int invkind;
  @Uint32()
  external int callconv;
  @Int16()
  external int cParams;
  @Int16()
  external int cParamsOpt;
  @Int16()
  external int oVft;
  @Int16()
  external int cScodes;
  external ELEMDESC elemdescFunc;
  @Uint16()
  external int wFuncFlags;
}

/// Gets and sets the configuration for enabling gesture messages and the
/// type of this configuration.
///
/// {@category Struct}
class GESTURECONFIG extends Struct {
  @Uint32()
  external int dwID;
  @Uint32()
  external int dwWant;
  @Uint32()
  external int dwBlock;
}

/// Stores information about a gesture.
///
/// {@category Struct}
class GESTUREINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwID;
  @IntPtr()
  external int hwndTarget;
  external POINTS ptsLocation;
  @Uint32()
  external int dwInstanceID;
  @Uint32()
  external int dwSequenceID;
  @Uint64()
  external int ullArguments;
  @Uint32()
  external int cbExtraArgs;
}

/// When transmitted with WM_GESTURENOTIFY messages, passes information
/// about a gesture.
///
/// {@category Struct}
class GESTURENOTIFYSTRUCT extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hwndTarget;
  external POINTS ptsLocation;
  @Uint32()
  external int dwInstanceID;
}

/// Contains information about a GUI thread.
///
/// {@category Struct}
class GUITHREADINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int flags;
  @IntPtr()
  external int hwndActive;
  @IntPtr()
  external int hwndFocus;
  @IntPtr()
  external int hwndCapture;
  @IntPtr()
  external int hwndMenuOwner;
  @IntPtr()
  external int hwndMoveSize;
  @IntPtr()
  external int hwndCaret;
  external RECT rcCaret;
}

/// Contains information about an icon or a cursor.
///
/// {@category Struct}
class ICONINFO extends Struct {
  @Int32()
  external int fIcon;
  @Uint32()
  external int xHotspot;
  @Uint32()
  external int yHotspot;
  @IntPtr()
  external int hbmMask;
  @IntPtr()
  external int hbmColor;
}

/// Contains information about an icon or a cursor. Extends ICONINFO. Used
/// by GetIconInfoEx.
///
/// {@category Struct}
class ICONINFOEX extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int fIcon;
  @Uint32()
  external int xHotspot;
  @Uint32()
  external int yHotspot;
  @IntPtr()
  external int hbmMask;
  @IntPtr()
  external int hbmColor;
  @Uint16()
  external int wResID;
  @Array(260)
  external Array<Uint16> _szModName;

  String get szModName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szModName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szModName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szModName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szResName;

  String get szResName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szResName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szResName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szResName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains the IDL attributes of a type.
///
/// {@category Struct}
class IDLDESC extends Struct {
  @IntPtr()
  external int dwReserved;
  @Uint16()
  external int wIDLFlags;
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

/// Contains the time of the last input.
///
/// {@category Struct}
class LASTINPUTINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwTime;
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

/// The LOGFONT structure defines the attributes of a font.
///
/// {@category Struct}
class LOGFONT extends Struct {
  @Int32()
  external int lfHeight;
  @Int32()
  external int lfWidth;
  @Int32()
  external int lfEscapement;
  @Int32()
  external int lfOrientation;
  @Int32()
  external int lfWeight;
  @Uint8()
  external int lfItalic;
  @Uint8()
  external int lfUnderline;
  @Uint8()
  external int lfStrikeOut;
  @Uint8()
  external int lfCharSet;
  @Uint8()
  external int lfOutPrecision;
  @Uint8()
  external int lfClipPrecision;
  @Uint8()
  external int lfQuality;
  @Uint8()
  external int lfPitchAndFamily;
  @Array(32)
  external Array<Uint16> _lfFaceName;

  String get lfFaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_lfFaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set lfFaceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _lfFaceName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// The LOGPALETTE structure defines a logical palette.
///
/// {@category Struct}
class LOGPALETTE extends Struct {
  @Uint16()
  external int palVersion;
  @Uint16()
  external int palNumEntries;
  @Array(1)
  external Array<PALETTEENTRY> palPalEntry;
}

/// A Locally Unique Identifier (LUID). This is a value guaranteed to be
/// unique only on the system on which it was generated. The uniqueness of
/// a locally unique identifier is guaranteed only until the system is
/// restarted.
///
/// {@category Struct}
class LUID extends Struct {
  @Uint32()
  external int LowPart;
  @Int32()
  external int HighPart;
}

/// The MCI_OPEN_PARMS structure contains information for the MCI_OPEN
/// command.
///
/// {@category Struct}
@Packed(1)
class MCI_OPEN_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int wDeviceID;
  external Pointer<Utf16> lpstrDeviceType;
  external Pointer<Utf16> lpstrElementName;
  external Pointer<Utf16> lpstrAlias;
}

/// The MCI_PLAY_PARMS structure contains positioning information for the
/// MCI_PLAY command.
///
/// {@category Struct}
@Packed(1)
class MCI_PLAY_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwFrom;
  @Uint32()
  external int dwTo;
}

/// The MCI_SEEK_PARMS structure contains positioning information for the
/// MCI_SEEK command.
///
/// {@category Struct}
@Packed(1)
class MCI_SEEK_PARMS extends Struct {
  @IntPtr()
  external int dwCallback;
  @Uint32()
  external int dwTo;
}

/// The MCI_STATUS_PARMS structure contains information for the MCI_STATUS
/// command.
///
/// {@category Struct}
@Packed(1)
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

/// Defines a menu item in a menu template.
///
/// {@category Struct}
class MENUITEMTEMPLATE extends Struct {
  @Uint16()
  external int mtOption;
  @Uint16()
  external int mtID;
  @Array(1)
  external Array<Uint16> _mtString;

  String get mtString {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_mtString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set mtString(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _mtString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Defines the header for a menu template. A complete menu template
/// consists of a header and one or more menu item lists.
///
/// {@category Struct}
class MENUITEMTEMPLATEHEADER extends Struct {
  @Uint16()
  external int versionNumber;
  @Uint16()
  external int offset;
}

/// Defines the metafile picture format used for exchanging metafile data
/// through the clipboard.
///
/// {@category Struct}
class METAFILEPICT extends Struct {
  @Int32()
  external int mm;
  @Int32()
  external int xExt;
  @Int32()
  external int yExt;
  @IntPtr()
  external int hMF;
}

/// The MIDIEVENT structure describes a MIDI event in a stream buffer.
///
/// {@category Struct}
@Packed(1)
class MIDIEVENT extends Struct {
  @Uint32()
  external int dwDeltaTime;
  @Uint32()
  external int dwStreamID;
  @Uint32()
  external int dwEvent;
  @Array(1)
  external Array<Uint32> dwParms;
}

/// The MIDIHDR structure defines the header used to identify a MIDI
/// system-exclusive or stream buffer.
///
/// {@category Struct}
@Packed(1)
class MIDIHDR extends Struct {
  external Pointer<Utf8> lpData;
  @Uint32()
  external int dwBufferLength;
  @Uint32()
  external int dwBytesRecorded;
  @IntPtr()
  external int dwUser;
  @Uint32()
  external int dwFlags;
  external Pointer<MIDIHDR> lpNext;
  @IntPtr()
  external int reserved;
  @Uint32()
  external int dwOffset;
  @Array(8)
  external Array<IntPtr> dwReserved;
}

/// The MIDIINCAPS structure describes the capabilities of a MIDI input
/// device.
///
/// {@category Struct}
@Packed(1)
class MIDIINCAPS extends Struct {
  @Uint16()
  external int wMid;
  @Uint16()
  external int wPid;
  @Uint32()
  external int vDriverVersion;
  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwSupport;
}

/// The MIDIOUTCAPS structure describes the capabilities of a MIDI output
/// device.
///
/// {@category Struct}
@Packed(1)
class MIDIOUTCAPS extends Struct {
  @Uint16()
  external int wMid;
  @Uint16()
  external int wPid;
  @Uint32()
  external int vDriverVersion;
  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wTechnology;
  @Uint16()
  external int wVoices;
  @Uint16()
  external int wNotes;
  @Uint16()
  external int wChannelMask;
  @Uint32()
  external int dwSupport;
}

/// The MIDIPROPTEMPO structure contains the tempo property for a stream.
///
/// {@category Struct}
@Packed(1)
class MIDIPROPTEMPO extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwTempo;
}

/// The MIDIPROPTIMEDIV structure contains the time division property for a
/// stream.
///
/// {@category Struct}
@Packed(1)
class MIDIPROPTIMEDIV extends Struct {
  @Uint32()
  external int cbStruct;
  @Uint32()
  external int dwTimeDiv;
}

/// The MIDISTRMBUFFVER structure contains version information for a long
/// MIDI event of the MEVT_VERSION type.
///
/// {@category Struct}
@Packed(1)
class MIDISTRMBUFFVER extends Struct {
  @Uint32()
  external int dwVersion;
  @Uint32()
  external int dwMid;
  @Uint32()
  external int dwOEMVersion;
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

/// Contains information about the capabilities of a modem.
///
/// {@category Struct}
class MODEMDEVCAPS extends Struct {
  @Uint32()
  external int dwActualSize;
  @Uint32()
  external int dwRequiredSize;
  @Uint32()
  external int dwDevSpecificOffset;
  @Uint32()
  external int dwDevSpecificSize;
  @Uint32()
  external int dwModemProviderVersion;
  @Uint32()
  external int dwModemManufacturerOffset;
  @Uint32()
  external int dwModemManufacturerSize;
  @Uint32()
  external int dwModemModelOffset;
  @Uint32()
  external int dwModemModelSize;
  @Uint32()
  external int dwModemVersionOffset;
  @Uint32()
  external int dwModemVersionSize;
  @Uint32()
  external int dwDialOptions;
  @Uint32()
  external int dwCallSetupFailTimer;
  @Uint32()
  external int dwInactivityTimeout;
  @Uint32()
  external int dwSpeakerVolume;
  @Uint32()
  external int dwSpeakerMode;
  @Uint32()
  external int dwModemOptions;
  @Uint32()
  external int dwMaxDTERate;
  @Uint32()
  external int dwMaxDCERate;
  @Array(1)
  external Array<Uint8> abVariablePortion;
}

/// Contains information about a modem's configuration.
///
/// {@category Struct}
class MODEMSETTINGS extends Struct {
  @Uint32()
  external int dwActualSize;
  @Uint32()
  external int dwRequiredSize;
  @Uint32()
  external int dwDevSpecificOffset;
  @Uint32()
  external int dwDevSpecificSize;
  @Uint32()
  external int dwCallSetupFailTimer;
  @Uint32()
  external int dwInactivityTimeout;
  @Uint32()
  external int dwSpeakerVolume;
  @Uint32()
  external int dwSpeakerMode;
  @Uint32()
  external int dwPreferredModemOptions;
  @Uint32()
  external int dwNegotiatedModemOptions;
  @Uint32()
  external int dwNegotiatedDCERate;
  @Array(1)
  external Array<Uint8> abVariablePortion;
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

/// The NEWTEXTMETRIC structure contains data that describes a physical
/// font.
///
/// {@category Struct}
class NEWTEXTMETRIC extends Struct {
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
  @Uint32()
  external int ntmFlags;
  @Uint32()
  external int ntmSizeEM;
  @Uint32()
  external int ntmCellHeight;
  @Uint32()
  external int ntmAvgWidth;
}

/// Used to specify values that are used by SetSimulatedProfileInfo to
/// override current internet connection profile values in an RDP Child
/// Session to support the simulation of specific metered internet
/// connection conditions.
///
/// {@category Struct}
class NLM_SIMULATED_PROFILE_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _ProfileName;

  String get ProfileName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_ProfileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProfileName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _ProfileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int cost;
  @Uint32()
  external int UsageInMegabytes;
  @Uint32()
  external int DataLimitInMegabytes;
}

/// Contains the scalable metrics associated with the nonclient area of a
/// nonminimized window. This structure is used by the
/// SPI_GETNONCLIENTMETRICS and SPI_SETNONCLIENTMETRICS actions of the
/// SystemParametersInfo function.
///
/// {@category Struct}
class NONCLIENTMETRICS extends Struct {
  @Uint32()
  external int cbSize;
  @Int32()
  external int iBorderWidth;
  @Int32()
  external int iScrollWidth;
  @Int32()
  external int iScrollHeight;
  @Int32()
  external int iCaptionWidth;
  @Int32()
  external int iCaptionHeight;
  external LOGFONT lfCaptionFont;
  @Int32()
  external int iSmCaptionWidth;
  @Int32()
  external int iSmCaptionHeight;
  external LOGFONT lfSmCaptionFont;
  @Int32()
  external int iMenuWidth;
  @Int32()
  external int iMenuHeight;
  external LOGFONT lfMenuFont;
  external LOGFONT lfStatusFont;
  external LOGFONT lfMessageFont;
  @Int32()
  external int iPaddedBorderWidth;
}

/// The OPENCARD_SEARCH_CRITERIA structure is used by the
/// SCardUIDlgSelectCard function in order to recognize cards that meet the
/// requirements set forth by the caller. You can, however, call
/// SCardUIDlgSelectCard without using this structure.
///
/// {@category Struct}
class OPENCARD_SEARCH_CRITERIA extends Struct {
  @Uint32()
  external int dwStructSize;
  external Pointer<Utf16> lpstrGroupNames;
  @Uint32()
  external int nMaxGroupNames;
  external Pointer<GUID> rgguidInterfaces;
  @Uint32()
  external int cguidInterfaces;
  external Pointer<Utf16> lpstrCardNames;
  @Uint32()
  external int nMaxCardNames;
  external Pointer<NativeFunction<OpenCardCheckProc>> lpfnCheck;
  external Pointer<NativeFunction<OpenCardConnProc>> lpfnConnect;
  external Pointer<NativeFunction<OpenCardDisconnProc>> lpfnDisconnect;
  external Pointer pvUserData;
  @Uint32()
  external int dwShareMode;
  @Uint32()
  external int dwPreferredProtocols;
}

/// The OPENCARDNAME structure contains the information that the
/// GetOpenCardName function uses to initialize a smart card Select Card
/// dialog box. Calling SCardUIDlgSelectCard with OPENCARDNAME_EX is
/// recommended over calling GetOpenCardName with OPENCARDNAME.
/// OPENCARDNAME is provided for backward compatibility.
///
/// {@category Struct}
class OPENCARDNAME extends Struct {
  @Uint32()
  external int dwStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hSCardContext;
  external Pointer<Utf16> lpstrGroupNames;
  @Uint32()
  external int nMaxGroupNames;
  external Pointer<Utf16> lpstrCardNames;
  @Uint32()
  external int nMaxCardNames;
  external Pointer<GUID> rgguidInterfaces;
  @Uint32()
  external int cguidInterfaces;
  external Pointer<Utf16> lpstrRdr;
  @Uint32()
  external int nMaxRdr;
  external Pointer<Utf16> lpstrCard;
  @Uint32()
  external int nMaxCard;
  external Pointer<Utf16> lpstrTitle;
  @Uint32()
  external int dwFlags;
  external Pointer pvUserData;
  @Uint32()
  external int dwShareMode;
  @Uint32()
  external int dwPreferredProtocols;
  @Uint32()
  external int dwActiveProtocol;
  external Pointer<NativeFunction<OpenCardConnProc>> lpfnConnect;
  external Pointer<NativeFunction<OpenCardCheckProc>> lpfnCheck;
  external Pointer<NativeFunction<OpenCardDisconnProc>> lpfnDisconnect;
  @IntPtr()
  external int hCardHandle;
}

/// The OPENCARDNAME_EX structure contains the information that the
/// SCardUIDlgSelectCard function uses to initialize a smart card Select
/// Card dialog box.
///
/// {@category Struct}
class OPENCARDNAME_EX extends Struct {
  @Uint32()
  external int dwStructSize;
  @IntPtr()
  external int hSCardContext;
  @IntPtr()
  external int hwndOwner;
  @Uint32()
  external int dwFlags;
  external Pointer<Utf16> lpstrTitle;
  external Pointer<Utf16> lpstrSearchDesc;
  @IntPtr()
  external int hIcon;
  external Pointer<OPENCARD_SEARCH_CRITERIA> pOpenCardSearchCriteria;
  external Pointer<NativeFunction<OpenCardConnProc>> lpfnConnect;
  external Pointer pvUserData;
  @Uint32()
  external int dwShareMode;
  @Uint32()
  external int dwPreferredProtocols;
  external Pointer<Utf16> lpstrRdr;
  @Uint32()
  external int nMaxRdr;
  external Pointer<Utf16> lpstrCard;
  @Uint32()
  external int nMaxCard;
  @Uint32()
  external int dwActiveProtocol;
  @IntPtr()
  external int hCardHandle;
}

/// Contains information that the GetOpenFileName and GetSaveFileName
/// functions use to initialize an Open or Save As dialog box. After the
/// user closes the dialog box, the system returns information about the
/// user's selection in this structure.
///
/// {@category Struct}
class OPENFILENAME extends Struct {
  @Uint32()
  external int lStructSize;
  @IntPtr()
  external int hwndOwner;
  @IntPtr()
  external int hInstance;
  external Pointer<Utf16> lpstrFilter;
  external Pointer<Utf16> lpstrCustomFilter;
  @Uint32()
  external int nMaxCustFilter;
  @Uint32()
  external int nFilterIndex;
  external Pointer<Utf16> lpstrFile;
  @Uint32()
  external int nMaxFile;
  external Pointer<Utf16> lpstrFileTitle;
  @Uint32()
  external int nMaxFileTitle;
  external Pointer<Utf16> lpstrInitialDir;
  external Pointer<Utf16> lpstrTitle;
  @Uint32()
  external int Flags;
  @Uint16()
  external int nFileOffset;
  @Uint16()
  external int nFileExtension;
  external Pointer<Utf16> lpstrDefExt;
  @IntPtr()
  external int lCustData;
  external Pointer<NativeFunction<OFNHookProc>> lpfnHook;
  external Pointer<Utf16> lpTemplateName;
  external Pointer pvReserved;
  @Uint32()
  external int dwReserved;
  @Uint32()
  external int FlagsEx;
}

/// Contains operating system version information. The information includes
/// major and minor version numbers, a build number, a platform identifier,
/// and descriptive text about the operating system. This structure is used
/// with the GetVersionEx function.
///
/// {@category Struct}
class OSVERSIONINFO extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains operating system version information. The information includes
/// major and minor version numbers, a build number, a platform identifier,
/// and information about product suites and the latest Service Pack
/// installed on the system. This structure is used with the GetVersionEx
/// and VerifyVersionInfo functions.
///
/// {@category Struct}
class OSVERSIONINFOEXW extends Struct {
  @Uint32()
  external int dwOSVersionInfoSize;
  @Uint32()
  external int dwMajorVersion;
  @Uint32()
  external int dwMinorVersion;
  @Uint32()
  external int dwBuildNumber;
  @Uint32()
  external int dwPlatformId;
  @Array(128)
  external Array<Uint16> _szCSDVersion;

  String get szCSDVersion {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szCSDVersion[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szCSDVersion(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szCSDVersion[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int wServicePackMajor;
  @Uint16()
  external int wServicePackMinor;
  @Uint16()
  external int wSuiteMask;
  @Uint8()
  external int wProductType;
  @Uint8()
  external int wReserved;
}

/// Contains the information returned by a call to the
/// GetQueuedCompletionStatusEx function.
///
/// {@category Struct}
class OVERLAPPED_ENTRY extends Struct {
  @IntPtr()
  external int lpCompletionKey;
  external Pointer<OVERLAPPED> lpOverlapped;
  @IntPtr()
  external int Internal;
  @Uint32()
  external int dwNumberOfBytesTransferred;
}

/// The PAINTSTRUCT structure contains information for an application. This
/// information can be used to paint the client area of a window owned by
/// that application.
///
/// {@category Struct}
class PAINTSTRUCT extends Struct {
  @IntPtr()
  external int hdc;
  @Int32()
  external int fErase;
  external RECT rcPaint;
  @Int32()
  external int fRestore;
  @Int32()
  external int fIncUpdate;
  @Array(32)
  external Array<Uint8> rgbReserved;
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

/// Contains information needed for transferring a structure element,
/// parameter, or function return value between processes.
///
/// {@category Struct}
class PARAMDESC extends Struct {
  external Pointer<PARAMDESCEX> pparamdescex;
  @Uint16()
  external int wParamFlags;
}

/// Contains information about the default value of a parameter.
///
/// {@category Struct}
class PARAMDESCEX extends Struct {
  @Uint32()
  external int cBytes;
  external VARIANT varDefaultValue;
}

/// Contains a handle and text description corresponding to a physical
/// monitor.
///
/// {@category Struct}
@Packed(1)
class PHYSICAL_MONITOR extends Struct {
  @IntPtr()
  external int hPhysicalMonitor;
  @Array(128)
  external Array<Uint16> _szPhysicalMonitorDescription;

  String get szPhysicalMonitorDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szPhysicalMonitorDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPhysicalMonitorDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szPhysicalMonitorDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
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

/// The POINTS structure defines the x- and y-coordinates of a point.
///
/// {@category Struct}
class POINTS extends Struct {
  @Int16()
  external int x;
  @Int16()
  external int y;
}

/// The POLYTEXT structure describes how the PolyTextOut function should
/// draw a string of text.
///
/// {@category Struct}
class POLYTEXT extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @Uint32()
  external int n;
  external Pointer<Utf16> lpstr;
  @Uint32()
  external int uiFlags;
  external RECT rcl;
  external Pointer<Int32> pdx;
}

/// Sent with a power setting event and contains data about the specific
/// change.
///
/// {@category Struct}
class POWERBROADCAST_SETTING extends Struct {
  external GUID PowerSetting;
  @Uint32()
  external int DataLength;
  @Array(1)
  external Array<Uint8> Data;
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
  @Array(1)
  external Array<SAFEARRAYBOUND> rgsabound;
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

/// The SCARD_ATRMASK structure is used by the SCardLocateCardsByATR
/// function to locate cards.
///
/// {@category Struct}
class SCARD_ATRMASK extends Struct {
  @Uint32()
  external int cbAtr;
  @Array(36)
  external Array<Uint8> rgbAtr;
  @Array(36)
  external Array<Uint8> rgbMask;
}

/// The SCARD_IO_REQUEST structure begins a protocol control information
/// structure. Any protocol-specific information then immediately follows
/// this structure. The entire length of the structure must be aligned with
/// the underlying hardware architecture word size. For example, in Win32
/// the length of any PCI information must be a multiple of four bytes so
/// that it aligns on a 32-bit boundary.
///
/// {@category Struct}
class SCARD_IO_REQUEST extends Struct {
  @Uint32()
  external int dwProtocol;
  @Uint32()
  external int cbPciLength;
}

/// The SCARD_READERSTATE structure is used by functions for tracking smart
/// cards within readers.
///
/// {@category Struct}
class SCARD_READERSTATE extends Struct {
  external Pointer<Utf16> szReader;
  external Pointer pvUserData;
  @Uint32()
  external int dwCurrentState;
  @Uint32()
  external int dwEventState;
  @Uint32()
  external int cbAtr;
  @Array(36)
  external Array<Uint8> rgbAtr;
}

/// The SCROLLBARINFO structure contains scroll bar information.
///
/// {@category Struct}
class SCROLLBARINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcScrollBar;
  @Int32()
  external int dxyLineButton;
  @Int32()
  external int xyThumbTop;
  @Int32()
  external int xyThumbBottom;
  @Int32()
  external int reserved;
  @Array(6)
  external Array<Uint32> rgstate;
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

/// Defines Shell item resource.
///
/// {@category Struct}
class SHELL_ITEM_RESOURCE extends Struct {
  external GUID guidType;
  @Array(260)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Defines an item identifier.
///
/// {@category Struct}
@Packed(1)
class SHITEMID extends Struct {
  @Uint16()
  external int cb;
  @Array(1)
  external Array<Uint8> abID;
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

/// Contains the styles for a window.
///
/// {@category Struct}
class STYLESTRUCT extends Struct {
  @Uint32()
  external int styleOld;
  @Uint32()
  external int styleNew;
}

/// Contains symbol information.
///
/// {@category Struct}
class SYMBOL_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;
  @Uint32()
  external int TypeIndex;
  @Array(2)
  external Array<Uint64> Reserved;
  @Uint32()
  external int Index;
  @Uint32()
  external int Size;
  @Uint64()
  external int ModBase;
  @Uint32()
  external int Flags;
  @Uint64()
  external int Value;
  @Uint64()
  external int Address;
  @Uint32()
  external int Register;
  @Uint32()
  external int Scope;
  @Uint32()
  external int Tag;
  @Uint32()
  external int NameLen;
  @Uint32()
  external int MaxNameLen;
  @Array(1)
  external Array<Uint16> _Name;

  String get Name {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_Name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Name(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _Name[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// Contains information about the current state of the system battery.
///
/// {@category Struct}
class SYSTEM_BATTERY_STATE extends Struct {
  @Uint8()
  external int AcOnLine;
  @Uint8()
  external int BatteryPresent;
  @Uint8()
  external int Charging;
  @Uint8()
  external int Discharging;
  @Array(3)
  external Array<Uint8> Spare1;
  @Uint8()
  external int Tag;
  @Uint32()
  external int MaxCapacity;
  @Uint32()
  external int RemainingCapacity;
  @Uint32()
  external int Rate;
  @Uint32()
  external int EstimatedTime;
  @Uint32()
  external int DefaultAlert1;
  @Uint32()
  external int DefaultAlert2;
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
@Packed(1)
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

/// Contains title bar information.
///
/// {@category Struct}
class TITLEBARINFO extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcTitleBar;
  @Array(6)
  external Array<Uint32> rgstate;
}

/// Expands on the information described in the TITLEBARINFO structure by
/// including the coordinates of each element of the title bar. This
/// structure is sent with the WM_GETTITLEBARINFOEX message.
///
/// {@category Struct}
class TITLEBARINFOEX extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcTitleBar;
  @Array(6)
  external Array<Uint32> rgstate;
  @Array(6)
  external Array<RECT> rgrect;
}

/// The TOKEN_APPCONTAINER_INFORMATION structure specifies all the
/// information in a token that is necessary for an app container.
///
/// {@category Struct}
class TOKEN_APPCONTAINER_INFORMATION extends Struct {
  external Pointer TokenAppContainer;
}

/// Encapsulates data for touch input.
///
/// {@category Struct}
class TOUCHINPUT extends Struct {
  @Int32()
  external int x;
  @Int32()
  external int y;
  @IntPtr()
  external int hSource;
  @Uint32()
  external int dwID;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwTime;
  @IntPtr()
  external int dwExtraInfo;
  @Uint32()
  external int cxContact;
  @Uint32()
  external int cyContact;
}

/// Contains extended parameters for the TrackPopupMenuEx function.
///
/// {@category Struct}
class TPMPARAMS extends Struct {
  @Uint32()
  external int cbSize;
  external RECT rcExclude;
}

/// Contains attributes of a type.
///
/// {@category Struct}
class TYPEATTR extends Struct {
  external GUID guid;
  @Uint32()
  external int lcid;
  @Uint32()
  external int dwReserved;
  @Int32()
  external int memidConstructor;
  @Int32()
  external int memidDestructor;
  external Pointer<Utf16> lpstrSchema;
  @Uint32()
  external int cbSizeInstance;
  @Uint32()
  external int typekind;
  @Uint16()
  external int cFuncs;
  @Uint16()
  external int cVars;
  @Uint16()
  external int cImplTypes;
  @Uint16()
  external int cbSizeVft;
  @Uint16()
  external int cbAlignment;
  @Uint16()
  external int wTypeFlags;
  @Uint16()
  external int wMajorVerNum;
  @Uint16()
  external int wMinorVerNum;
  external TYPEDESC tdescAlias;
  external IDLDESC idldescType;
}

/// Used by UpdateLayeredWindowIndirect to provide position, size, shape,
/// content, and translucency information for a layered window.
///
/// {@category Struct}
class UPDATELAYEREDWINDOWINFO extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hdcDst;
  external Pointer<POINT> pptDst;
  external Pointer<SIZE> psize;
  @IntPtr()
  external int hdcSrc;
  external Pointer<POINT> pptSrc;
  @Uint32()
  external int crKey;
  external Pointer<BLENDFUNCTION> pblend;
  @Uint32()
  external int dwFlags;
  external Pointer<RECT> prcDirty;
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

/// The WAVEFORMATEX structure defines the format of waveform-audio data.
/// Only format information common to all waveform-audio data formats is
/// included in this structure. For formats that require additional
/// information, this structure is included as the first member in another
/// structure, along with the additional information.
///
/// {@category Struct}
@Packed(1)
class WAVEFORMATEX extends Struct {
  @Uint16()
  external int wFormatTag;
  @Uint16()
  external int nChannels;
  @Uint32()
  external int nSamplesPerSec;
  @Uint32()
  external int nAvgBytesPerSec;
  @Uint16()
  external int nBlockAlign;
  @Uint16()
  external int wBitsPerSample;
  @Uint16()
  external int cbSize;
}

/// The WAVEHDR structure defines the header used to identify a
/// waveform-audio buffer.
///
/// {@category Struct}
@Packed(1)
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

/// The WAVEOUTCAPS structure describes the capabilities of a
/// waveform-audio output device.
///
/// {@category Struct}
@Packed(1)
class WAVEOUTCAPS extends Struct {
  @Uint16()
  external int wMid;
  @Uint16()
  external int wPid;
  @Uint32()
  external int vDriverVersion;
  @Array(32)
  external Array<Uint16> _szPname;

  String get szPname {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szPname[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPname(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szPname[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwFormats;
  @Uint16()
  external int wChannels;
  @Uint16()
  external int wReserved1;
  @Uint32()
  external int dwSupport;
}

/// Contains information about the file that is found by the FindFirstFile,
/// FindFirstFileEx, or FindNextFile function.
///
/// {@category Struct}
class WIN32_FIND_DATA extends Struct {
  @Uint32()
  external int dwFileAttributes;
  external FILETIME ftCreationTime;
  external FILETIME ftLastAccessTime;
  external FILETIME ftLastWriteTime;
  @Uint32()
  external int nFileSizeHigh;
  @Uint32()
  external int nFileSizeLow;
  @Uint32()
  external int dwReserved0;
  @Uint32()
  external int dwReserved1;
  @Array(260)
  external Array<Uint16> _cFileName;

  String get cFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_cFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cFileName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _cFileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(14)
  external Array<Uint16> _cAlternateFileName;

  String get cAlternateFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 14; i++) {
      charCodes.add(_cAlternateFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set cAlternateFileName(String value) {
    final stringToStore = value.padRight(14, '\x00');
    for (var i = 0; i < 14; i++) {
      _cAlternateFileName[i] = stringToStore.codeUnitAt(i);
    }
  }
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

/// Contains information about the placement of a window on the screen.
///
/// {@category Struct}
class WINDOWPLACEMENT extends Struct {
  @Uint32()
  external int length;
  @Uint32()
  external int flags;
  @Uint32()
  external int showCmd;
  external POINT ptMinPosition;
  external POINT ptMaxPosition;
  external RECT rcNormalPosition;
}

/// Contains the window class attributes that are registered by the
/// RegisterClass function.
///
/// {@category Struct}
class WNDCLASS extends Struct {
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WindowProc>> lpfnWndProc;
  @Int32()
  external int cbClsExtra;
  @Int32()
  external int cbWndExtra;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int hIcon;
  @IntPtr()
  external int hCursor;
  @IntPtr()
  external int hbrBackground;
  external Pointer<Utf16> lpszMenuName;
  external Pointer<Utf16> lpszClassName;
}

/// Contains window class information. It is used with the RegisterClassEx
/// and GetClassInfoEx functions. The WNDCLASSEX structure is similar to
/// the WNDCLASS structure. There are two differences. WNDCLASSEX includes
/// the cbSize member, which specifies the size of the structure, and the
/// hIconSm member, which contains a handle to a small icon associated with
/// the window class.
///
/// {@category Struct}
class WNDCLASSEX extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int style;
  external Pointer<NativeFunction<WindowProc>> lpfnWndProc;
  @Int32()
  external int cbClsExtra;
  @Int32()
  external int cbWndExtra;
  @IntPtr()
  external int hInstance;
  @IntPtr()
  external int hIcon;
  @IntPtr()
  external int hCursor;
  @IntPtr()
  external int hbrBackground;
  external Pointer<Utf16> lpszMenuName;
  external Pointer<Utf16> lpszClassName;
  @IntPtr()
  external int hIconSm;
}

/// The XFORM structure specifies a world-space to page-space
/// transformation.
///
/// {@category Struct}
class XFORM extends Struct {
  @Float()
  external double eM11;
  @Float()
  external double eM12;
  @Float()
  external double eM21;
  @Float()
  external double eM22;
  @Float()
  external double eDx;
  @Float()
  external double eDy;
}
