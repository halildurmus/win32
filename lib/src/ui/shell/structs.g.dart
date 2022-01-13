// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../ui/shell/IShellFolder.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/ITravelLog.dart';
import '../../ui/shell/IHlinkFrame.dart';
import '../../ui/shell/IWebBrowser2.dart';
import '../../ui/shell/IExpDispSupport.dart';
import '../../ui/shell/IShellService.dart';
import '../../system/ole/IOleCommandTarget.dart';
import '../../ui/shell/IShellView.dart';
import '../../ui/shell/IExpDispSupportXP.dart';
import '../../ui/shell/callbacks.g.dart';
import '../../ui/shell/IShellItem2.dart';
import '../../ui/shell/IContextMenuCB.dart';
import '../../specialTypes.dart';
import '../../system/com/IUnknown.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../networkmanagement/wnet/structs.g.dart';
import '../../ui/shell/IShellItem.dart';
import '../../ui/controls/structs.g.dart';
import '../../system/console/structs.g.dart';
import '../../ui/controls/callbacks.g.dart';
import '../../ui/shell/IShellFolderViewCB.dart';
import '../../ui/shell/IShellLink.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/threading/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../ui/shell/IShellBrowser.dart';
import '../../system/com/structs.g.dart';
import '../../ui/shell/IDockingWindow.dart';

/// {@category Struct}
class AASHELLMENUFILENAME extends Struct {
  @Int16()
  external int cbTotal;

  @Array(12)
  external Array<Uint8> rgbReserved;

  @Array(1)
  external Array<Uint16> _szFileName;

  String get szFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_szFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szFileName(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _szFileName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class AASHELLMENUITEM extends Struct {
  external Pointer lpReserved1;

  @Int32()
  external int iReserved;

  @Uint32()
  external int uiReserved;

  external Pointer<AASHELLMENUFILENAME> lpName;

  external Pointer<Utf16> psz;
}

/// {@category Struct}
class APPBARDATA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hWnd;

  @Uint32()
  external int uCallbackMessage;

  @Uint32()
  external int uEdge;

  external RECT rc;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class APPCATEGORYINFO extends Struct {
  @Uint32()
  external int Locale;

  external Pointer<Utf16> pszDescription;

  external GUID AppCategoryId;
}

/// {@category Struct}
class APPCATEGORYINFOLIST extends Struct {
  @Uint32()
  external int cCategory;

  external Pointer<APPCATEGORYINFO> pCategoryInfo;
}

/// {@category Struct}
class APPINFODATA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  external Pointer<Utf16> pszDisplayName;

  external Pointer<Utf16> pszVersion;

  external Pointer<Utf16> pszPublisher;

  external Pointer<Utf16> pszProductID;

  external Pointer<Utf16> pszRegisteredOwner;

  external Pointer<Utf16> pszRegisteredCompany;

  external Pointer<Utf16> pszLanguage;

  external Pointer<Utf16> pszSupportUrl;

  external Pointer<Utf16> pszSupportTelephone;

  external Pointer<Utf16> pszHelpLink;

  external Pointer<Utf16> pszInstallLocation;

  external Pointer<Utf16> pszInstallSource;

  external Pointer<Utf16> pszInstallDate;

  external Pointer<Utf16> pszContact;

  external Pointer<Utf16> pszComments;

  external Pointer<Utf16> pszImage;

  external Pointer<Utf16> pszReadmeUrl;

  external Pointer<Utf16> pszUpdateInfoUrl;
}

/// {@category Struct}
class ASSOCIATIONELEMENT extends Struct {
  @Int32()
  external int ac;

  @IntPtr()
  external int hkClass;

  external Pointer<Utf16> pszClass;
}

/// {@category Struct}
class AUTO_SCROLL_DATA extends Struct {
  @Int32()
  external int iNextSample;

  @Uint32()
  external int dwLastScroll;

  @Int32()
  external int bFull;

  @Array(3)
  external Array<POINT> pts;

  @Array(3)
  external Array<Uint32> dwTimes;
}

/// {@category Struct}
class BANDINFOSFB extends Struct {
  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwStateMask;

  @Uint32()
  external int dwState;

  @Uint32()
  external int crBkgnd;

  @Uint32()
  external int crBtnLt;

  @Uint32()
  external int crBtnDk;

  @Uint16()
  external int wViewMode;

  @Uint16()
  external int wAlign;

  external Pointer<COMObject> psf;

  external Pointer<ITEMIDLIST> pidl;
}

/// {@category Struct}
class BANDSITEINFO extends Struct {
  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwStyle;
}

/// {@category Struct}
class BANNER_NOTIFICATION extends Struct {
  @Int32()
  external int event;

  external Pointer<Utf16> providerIdentity;

  external Pointer<Utf16> contentId;
}

/// {@category Struct}
class BASEBROWSERDATALH extends Struct {
  @IntPtr()
  external int hwnd;

  external Pointer<COMObject> ptl;

  external Pointer<COMObject> phlf;

  external Pointer<COMObject> pautoWB2;

  external Pointer<COMObject> pautoEDS;

  external Pointer<COMObject> pautoSS;

  @Int32()
  external int eSecureLockIcon;

  @Uint32()
  external int bitfield;

  @Uint32()
  external int uActivateState;

  external Pointer<ITEMIDLIST> pidlViewState;

  external Pointer<COMObject> pctView;

  external Pointer<ITEMIDLIST> pidlCur;

  external Pointer<COMObject> psv;

  external Pointer<COMObject> psf;

  @IntPtr()
  external int hwndView;

  external Pointer<Utf16> pszTitleCur;

  external Pointer<ITEMIDLIST> pidlPending;

  external Pointer<COMObject> psvPending;

  external Pointer<COMObject> psfPending;

  @IntPtr()
  external int hwndViewPending;

  external Pointer<Utf16> pszTitlePending;

  @Int32()
  external int fIsViewMSHTML;

  @Int32()
  external int fPrivacyImpacted;

  external GUID clsidView;

  external GUID clsidViewPending;

  @IntPtr()
  external int hwndFrame;

  @Int32()
  external int lPhishingFilterStatus;
}

/// {@category Struct}
class BASEBROWSERDATAXP extends Struct {
  @IntPtr()
  external int hwnd;

  external Pointer<COMObject> ptl;

  external Pointer<COMObject> phlf;

  external Pointer<COMObject> pautoWB2;

  external Pointer<COMObject> pautoEDS;

  external Pointer<COMObject> pautoSS;

  @Int32()
  external int eSecureLockIcon;

  @Uint32()
  external int bitfield;

  @Uint32()
  external int uActivateState;

  external Pointer<ITEMIDLIST> pidlViewState;

  external Pointer<COMObject> pctView;

  external Pointer<ITEMIDLIST> pidlCur;

  external Pointer<COMObject> psv;

  external Pointer<COMObject> psf;

  @IntPtr()
  external int hwndView;

  external Pointer<Utf16> pszTitleCur;

  external Pointer<ITEMIDLIST> pidlPending;

  external Pointer<COMObject> psvPending;

  external Pointer<COMObject> psfPending;

  @IntPtr()
  external int hwndViewPending;

  external Pointer<Utf16> pszTitlePending;

  @Int32()
  external int fIsViewMSHTML;

  @Int32()
  external int fPrivacyImpacted;

  external GUID clsidView;

  external GUID clsidViewPending;

  @IntPtr()
  external int hwndFrame;
}

/// {@category Struct}
class BROWSEINFO extends Struct {
  @IntPtr()
  external int hwndOwner;

  external Pointer<ITEMIDLIST> pidlRoot;

  external Pointer<Utf16> pszDisplayName;

  external Pointer<Utf16> lpszTitle;

  @Uint32()
  external int ulFlags;

  external Pointer<NativeFunction<BFFCALLBACK>> lpfn;

  @IntPtr()
  external int lParam;

  @Int32()
  external int iImage;
}

/// {@category Struct}
@Packed(1)
class CABINETSTATE extends Struct {
  @Uint16()
  external int cLength;

  @Uint16()
  external int nVersion;

  @Int32()
  external int bitfield;

  @Uint32()
  external int fMenuEnumFilter;
}

/// {@category Struct}
class CATEGORY_INFO extends Struct {
  @Int32()
  external int cif;

  @Array(260)
  external Array<Uint16> _wszName;

  String get wszName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CMINVOKECOMMANDINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf8> lpVerb;

  external Pointer<Utf8> lpParameters;

  external Pointer<Utf8> lpDirectory;

  @Int32()
  external int nShow;

  @Uint32()
  external int dwHotKey;

  @IntPtr()
  external int hIcon;
}

/// {@category Struct}
class CMINVOKECOMMANDINFOEX extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf8> lpVerb;

  external Pointer<Utf8> lpParameters;

  external Pointer<Utf8> lpDirectory;

  @Int32()
  external int nShow;

  @Uint32()
  external int dwHotKey;

  @IntPtr()
  external int hIcon;

  external Pointer<Utf8> lpTitle;

  external Pointer<Utf16> lpVerbW;

  external Pointer<Utf16> lpParametersW;

  external Pointer<Utf16> lpDirectoryW;

  external Pointer<Utf16> lpTitleW;

  external POINT ptInvoke;
}

/// {@category Struct}
class CMINVOKECOMMANDINFOEX_REMOTE extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf8> lpVerbString;

  external Pointer<Utf8> lpParameters;

  external Pointer<Utf8> lpDirectory;

  @Int32()
  external int nShow;

  @Uint32()
  external int dwHotKey;

  external Pointer<Utf8> lpTitle;

  external Pointer<Utf16> lpVerbWString;

  external Pointer<Utf16> lpParametersW;

  external Pointer<Utf16> lpDirectoryW;

  external Pointer<Utf16> lpTitleW;

  external POINT ptInvoke;

  @Uint32()
  external int lpVerbInt;

  @Uint32()
  external int lpVerbWInt;
}

/// {@category Struct}
class CM_COLUMNINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwState;

  @Uint32()
  external int uWidth;

  @Uint32()
  external int uDefaultWidth;

  @Uint32()
  external int uIdealWidth;

  @Array(80)
  external Array<Uint16> _wszName;

  String get wszName {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_wszName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszName(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _wszName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class CONFIRM_CONFLICT_ITEM extends Struct {
  external Pointer<COMObject> pShellItem;

  external Pointer<Utf16> pszOriginalName;

  external Pointer<Utf16> pszAlternateName;

  external Pointer<Utf16> pszLocationShort;

  external Pointer<Utf16> pszLocationFull;

  @Int32()
  external int nType;
}

/// {@category Struct}
class CONFIRM_CONFLICT_RESULT_INFO extends Struct {
  external Pointer<Utf16> pszNewName;

  @Uint32()
  external int iItemIndex;
}

/// {@category Struct}
@Packed(1)
class CPLINFO extends Struct {
  @Int32()
  external int idIcon;

  @Int32()
  external int idName;

  @Int32()
  external int idInfo;

  @IntPtr()
  external int lData;
}

/// {@category Struct}
class CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION extends Struct {
  @Uint32()
  external int ulAuthenticationPackage;

  external GUID clsidCredentialProvider;

  @Uint32()
  external int cbSerialization;

  external Pointer<Uint8> rgbSerialization;
}

/// {@category Struct}
class CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR extends Struct {
  @Uint32()
  external int dwFieldID;

  @Int32()
  external int cpft;

  external Pointer<Utf16> pszLabel;

  external GUID guidFieldType;
}

/// {@category Struct}
class CSFV extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<COMObject> pshf;

  external Pointer<COMObject> psvOuter;

  external Pointer<ITEMIDLIST> pidl;

  @Int32()
  external int lEvents;

  external Pointer<NativeFunction<LPFNVIEWCALLBACK>> pfnCallback;

  @Int32()
  external int fvm;
}

/// {@category Struct}
@Packed(1)
class DATABLOCK_HEADER extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSignature;
}

/// {@category Struct}
class DEFCONTEXTMENU extends Struct {
  @IntPtr()
  external int hwnd;

  external Pointer<COMObject> pcmcb;

  external Pointer<ITEMIDLIST> pidlFolder;

  external Pointer<COMObject> psf;

  @Uint32()
  external int cidl;

  external Pointer<Pointer<ITEMIDLIST>> apidl;

  external Pointer<COMObject> punkAssociationInfo;

  @Uint32()
  external int cKeys;

  external Pointer<IntPtr> aKeys;
}

/// {@category Struct}
@Packed(1)
class DELEGATEITEMID extends Struct {
  @Uint16()
  external int cbSize;

  @Uint16()
  external int wOuter;

  @Uint16()
  external int cbInner;

  @Array(1)
  external Array<Uint8> rgb;
}

/// {@category Struct}
class DESKBANDINFO extends Struct {
  @Uint32()
  external int dwMask;

  external POINTL ptMinSize;

  external POINTL ptMaxSize;

  external POINTL ptIntegral;

  external POINTL ptActual;

  @Array(256)
  external Array<Uint16> _wszTitle;

  String get wszTitle {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_wszTitle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszTitle(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _wszTitle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwModeFlags;

  @Uint32()
  external int crBkgnd;
}

/// {@category Struct}
class DETAILSINFO extends Struct {
  external Pointer<ITEMIDLIST> pidl;

  @Int32()
  external int fmt;

  @Int32()
  external int cxChar;

  external STRRET str;

  @Int32()
  external int iImage;
}

/// {@category Struct}
class DFMICS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int lParam;

  @Uint32()
  external int idCmdFirst;

  @Uint32()
  external int idDefMax;

  external Pointer<CMINVOKECOMMANDINFO> pici;

  external Pointer<COMObject> punkSite;
}

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

/// {@category Struct}
class DLLVERSIONINFO2 extends Struct {
  external DLLVERSIONINFO info1;

  @Uint32()
  external int dwFlags;

  @Uint64()
  external int ullVersion;
}

/// {@category Struct}
class DRAGINFO extends Struct {
  @Uint32()
  external int uSize;

  external POINT pt;

  @Int32()
  external int fNC;

  external Pointer<Utf16> lpFileList;

  @Uint32()
  external int grfKeyState;
}

/// {@category Struct}
class DROPDESCRIPTION extends Struct {
  @Int32()
  external int type;

  @Array(260)
  external Array<Uint16> _szMessage;

  String get szMessage {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szMessage[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szMessage(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szMessage[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szInsert;

  String get szInsert {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szInsert[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInsert(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szInsert[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class DROPFILES extends Struct {
  @Uint32()
  external int pFiles;

  external POINT pt;

  @Int32()
  external int fNC;

  @Int32()
  external int fWide;
}

/// {@category Struct}
class EXP_DARWIN_LINK extends Struct {
  external DATABLOCK_HEADER dbh;

  @Array(260)
  external Array<Uint8> szDarwinID;

  @Array(260)
  external Array<Uint16> _szwDarwinID;

  String get szwDarwinID {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szwDarwinID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szwDarwinID(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szwDarwinID[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class EXP_PROPERTYSTORAGE extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSignature;

  @Array(1)
  external Array<Uint8> abPropertyStorage;
}

/// {@category Struct}
@Packed(1)
class EXP_SPECIAL_FOLDER extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSignature;

  @Uint32()
  external int idSpecialFolder;

  @Uint32()
  external int cbOffset;
}

/// {@category Struct}
class EXP_SZ_LINK extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSignature;

  @Array(260)
  external Array<Uint8> szTarget;

  @Array(260)
  external Array<Uint16> _swzTarget;

  String get swzTarget {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_swzTarget[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set swzTarget(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _swzTarget[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class EXTRASEARCH extends Struct {
  external GUID guidSearch;

  @Array(80)
  external Array<Uint16> _wszFriendlyName;

  String get wszFriendlyName {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_wszFriendlyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszFriendlyName(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _wszFriendlyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(2084)
  external Array<Uint16> _wszUrl;

  String get wszUrl {
    final charCodes = <int>[];
    for (var i = 0; i < 2084; i++) {
      charCodes.add(_wszUrl[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszUrl(String value) {
    final stringToStore = value.padRight(2084, '\x00');
    for (var i = 0; i < 2084; i++) {
      _wszUrl[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FILEDESCRIPTOR extends Struct {
  @Uint32()
  external int dwFlags;

  external GUID clsid;

  external SIZE sizel;

  external POINTL pointl;

  @Uint32()
  external int dwFileAttributes;

  external FILETIME ftCreationTime;

  external FILETIME ftLastAccessTime;

  external FILETIME ftLastWriteTime;

  @Uint32()
  external int nFileSizeHigh;

  @Uint32()
  external int nFileSizeLow;

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
}

/// {@category Struct}
class FILEGROUPDESCRIPTOR extends Struct {
  @Uint32()
  external int cItems;

  @Array(1)
  external Array<FILEDESCRIPTOR> fgd;
}

/// {@category Struct}
@Packed(1)
class FILE_ATTRIBUTES_ARRAY extends Struct {
  @Uint32()
  external int cItems;

  @Uint32()
  external int dwSumFileAttributes;

  @Uint32()
  external int dwProductFileAttributes;

  @Array(1)
  external Array<Uint32> rgdwFileAttributes;
}

/// {@category Struct}
class FOLDERSETDATA extends Struct {
  external FOLDERSETTINGS fs;

  external GUID vidRestore;

  @Uint32()
  external int dwViewPriority;
}

/// {@category Struct}
class FOLDERSETTINGS extends Struct {
  @Uint32()
  external int ViewMode;

  @Uint32()
  external int fFlags;
}

/// {@category Struct}
class HELPINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int32()
  external int iContextType;

  @Int32()
  external int iCtrlId;

  @IntPtr()
  external int hItemHandle;

  @IntPtr()
  external int dwContextId;

  external POINT MousePos;
}

/// {@category Struct}
class HELPWININFO extends Struct {
  @Int32()
  external int wStructSize;

  @Int32()
  external int x;

  @Int32()
  external int y;

  @Int32()
  external int dx;

  @Int32()
  external int dy;

  @Int32()
  external int wMax;

  @Array(2)
  external Array<Uint16> _rgchMember;

  String get rgchMember {
    final charCodes = <int>[];
    for (var i = 0; i < 2; i++) {
      charCodes.add(_rgchMember[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set rgchMember(String value) {
    final stringToStore = value.padRight(2, '\x00');
    for (var i = 0; i < 2; i++) {
      _rgchMember[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class HLBWINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int grfHLBWIF;

  external RECT rcFramePos;

  external RECT rcDocPos;

  external HLTBINFO hltbinfo;
}

/// {@category Struct}
class HLITEM extends Struct {
  @Uint32()
  external int uHLID;

  external Pointer<Utf16> pwzFriendlyName;
}

/// {@category Struct}
class HLTBINFO extends Struct {
  @Uint32()
  external int uDockType;

  external RECT rcTbPos;
}

/// {@category Struct}
class ITEMSPACING extends Struct {
  @Int32()
  external int cxSmall;

  @Int32()
  external int cySmall;

  @Int32()
  external int cxLarge;

  @Int32()
  external int cyLarge;
}

/// {@category Struct}
class KNOWNFOLDER_DEFINITION extends Struct {
  @Int32()
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

/// {@category Struct}
class MULTIKEYHELP extends Struct {
  @Uint32()
  external int mkSize;

  @Uint16()
  external int mkKeylist;

  @Array(1)
  external Array<Uint16> _szKeyphrase;

  String get szKeyphrase {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_szKeyphrase[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szKeyphrase(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _szKeyphrase[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NC_ADDRESS extends Struct {
  external Pointer<_NC_ADDRESS_NET_ADDRESS_INFO> pAddrInfo;

  @Uint16()
  external int PortNumber;

  @Uint8()
  external int PrefixLength;
}

/// {@category Struct}
class _NC_ADDRESS_NET_ADDRESS_INFO extends Opaque {}

/// {@category Struct}
class NEWCPLINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwHelpContext;

  @IntPtr()
  external int lData;

  @IntPtr()
  external int hIcon;

  @Array(32)
  external Array<Uint16> _szName;

  String get szName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_szName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _szName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(64)
  external Array<Uint16> _szInfo;

  String get szInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInfo(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _szHelpFile;

  String get szHelpFile {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szHelpFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szHelpFile(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szHelpFile[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class NOTIFYICONDATA extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hWnd;

  @Uint32()
  external int uID;

  @Uint32()
  external int uFlags;

  @Uint32()
  external int uCallbackMessage;

  @IntPtr()
  external int hIcon;

  @Array(128)
  external Array<Uint16> _szTip;

  String get szTip {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szTip[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTip(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szTip[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwState;

  @Uint32()
  external int dwStateMask;

  @Array(256)
  external Array<Uint16> _szInfo;

  String get szInfo {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szInfo[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInfo(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szInfo[i] = stringToStore.codeUnitAt(i);
    }
  }

  external _NOTIFYICONDATAW__Anonymous_e__Union Anonymous;

  @Array(64)
  external Array<Uint16> _szInfoTitle;

  String get szInfoTitle {
    final charCodes = <int>[];
    for (var i = 0; i < 64; i++) {
      charCodes.add(_szInfoTitle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szInfoTitle(String value) {
    final stringToStore = value.padRight(64, '\x00');
    for (var i = 0; i < 64; i++) {
      _szInfoTitle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwInfoFlags;

  external GUID guidItem;

  @IntPtr()
  external int hBalloonIcon;
}

/// {@category Struct}
class _NOTIFYICONDATAW__Anonymous_e__Union extends Union {
  @Uint32()
  external int uTimeout;

  @Uint32()
  external int uVersion;
}

extension NOTIFYICONDATAW_Extension on NOTIFYICONDATA {
  int get uTimeout => this.Anonymous.uTimeout;
  set uTimeout(int value) => this.Anonymous.uTimeout = value;

  int get uVersion => this.Anonymous.uVersion;
  set uVersion(int value) => this.Anonymous.uVersion = value;
}

/// {@category Struct}
class NOTIFYICONIDENTIFIER extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hWnd;

  @Uint32()
  external int uID;

  external GUID guidItem;
}

/// {@category Struct}
class NRESARRAY extends Struct {
  @Uint32()
  external int cItems;

  @Array(1)
  external Array<NETRESOURCE> nr;
}

/// {@category Struct}
class NSTCCUSTOMDRA extends Struct {
  external Pointer<COMObject> psi;

  @Uint32()
  external int uItemState;

  @Uint32()
  external int nstcis;

  external Pointer<Utf16> pszText;

  @Int32()
  external int iImage;

  @IntPtr()
  external int himl;

  @Int32()
  external int iLevel;

  @Int32()
  external int iIndent;
}

/// {@category Struct}
class NT_CONSOLE_PROPS extends Struct {
  external DATABLOCK_HEADER dbh;

  @Uint16()
  external int wFillAttribute;

  @Uint16()
  external int wPopupFillAttribute;

  external COORD dwScreenBufferSize;

  external COORD dwWindowSize;

  external COORD dwWindowOrigin;

  @Uint32()
  external int nFont;

  @Uint32()
  external int nInputBufferSize;

  external COORD dwFontSize;

  @Uint32()
  external int uFontFamily;

  @Uint32()
  external int uFontWeight;

  @Array(32)
  external Array<Uint16> _FaceName;

  String get FaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_FaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FaceName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _FaceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int uCursorSize;

  @Int32()
  external int bFullScreen;

  @Int32()
  external int bQuickEdit;

  @Int32()
  external int bInsertMode;

  @Int32()
  external int bAutoPosition;

  @Uint32()
  external int uHistoryBufferSize;

  @Uint32()
  external int uNumberOfHistoryBuffers;

  @Int32()
  external int bHistoryNoDup;

  @Array(16)
  external Array<Uint32> ColorTable;
}

/// {@category Struct}
@Packed(1)
class NT_FE_CONSOLE_PROPS extends Struct {
  external DATABLOCK_HEADER dbh;

  @Uint32()
  external int uCodePage;
}

/// {@category Struct}
class OPENASINFO extends Struct {
  external Pointer<Utf16> pcszFile;

  external Pointer<Utf16> pcszClass;

  @Uint32()
  external int oaifInFlags;
}

/// {@category Struct}
class OPEN_PRINTER_PROPS_INFO extends Struct {
  @Uint32()
  external int dwSize;

  external Pointer<Utf16> pszSheetName;

  @Uint32()
  external int uSheetIndex;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int bModal;
}

/// {@category Struct}
class PARSEDURL extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<Utf16> pszProtocol;

  @Uint32()
  external int cchProtocol;

  external Pointer<Utf16> pszSuffix;

  @Uint32()
  external int cchSuffix;

  @Uint32()
  external int nScheme;
}

/// {@category Struct}
class PERSIST_FOLDER_TARGET_INFO extends Struct {
  external Pointer<ITEMIDLIST> pidlTargetFolder;

  @Array(260)
  external Array<Uint16> _szTargetParsingName;

  String get szTargetParsingName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szTargetParsingName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTargetParsingName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szTargetParsingName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szNetworkProvider;

  String get szNetworkProvider {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szNetworkProvider[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szNetworkProvider(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szNetworkProvider[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwAttributes;

  @Int32()
  external int csidl;
}

/// {@category Struct}
class PREVIEWHANDLERFRAMEINFO extends Struct {
  @IntPtr()
  external int haccel;

  @Uint32()
  external int cAccelEntries;
}

/// {@category Struct}
class PROFILEINFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> lpUserName;

  external Pointer<Utf16> lpProfilePath;

  external Pointer<Utf16> lpDefaultPath;

  external Pointer<Utf16> lpServerName;

  external Pointer<Utf16> lpPolicyPath;

  @IntPtr()
  external int hProfile;
}

/// {@category Struct}
class PUBAPPINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwMask;

  external Pointer<Utf16> pszSource;

  external SYSTEMTIME stAssigned;

  external SYSTEMTIME stPublished;

  external SYSTEMTIME stScheduled;

  external SYSTEMTIME stExpire;
}

/// {@category Struct}
class QCMINFO extends Struct {
  @IntPtr()
  external int hmenu;

  @Uint32()
  external int indexMenu;

  @Uint32()
  external int idCmdFirst;

  @Uint32()
  external int idCmdLast;

  external Pointer<QCMINFO_IDMAP> pIdMap;
}

/// {@category Struct}
class QCMINFO_IDMAP extends Struct {
  @Uint32()
  external int nMaxIds;

  @Array(1)
  external Array<QCMINFO_IDMAP_PLACEMENT> pIdList;
}

/// {@category Struct}
class QCMINFO_IDMAP_PLACEMENT extends Struct {
  @Uint32()
  external int id;

  @Uint32()
  external int fFlags;
}

/// {@category Struct}
class QITAB extends Struct {
  external Pointer<GUID> piid;

  @Uint32()
  external int dwOffset;
}

/// {@category Struct}
class SFVM_HELPTOPIC_DATA extends Struct {
  @Array(260)
  external Array<Uint16> _wszHelpFile;

  String get wszHelpFile {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszHelpFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszHelpFile(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszHelpFile[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _wszHelpTopic;

  String get wszHelpTopic {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszHelpTopic[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszHelpTopic(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszHelpTopic[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SFVM_PROPPAGE_DATA extends Struct {
  @Uint32()
  external int dwReserved;

  external Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> pfn;

  @IntPtr()
  external int lParam;
}

/// {@category Struct}
class SFV_CREATE extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<COMObject> pshf;

  external Pointer<COMObject> psvOuter;

  external Pointer<COMObject> psfvcb;
}

/// {@category Struct}
class SFV_SETITEMPOS extends Struct {
  external Pointer<ITEMIDLIST> pidl;

  external POINT pt;
}

/// {@category Struct}
class SHARDAPPIDINFO extends Struct {
  external Pointer<COMObject> psi;

  external Pointer<Utf16> pszAppID;
}

/// {@category Struct}
class SHARDAPPIDINFOIDLIST extends Struct {
  external Pointer<ITEMIDLIST> pidl;

  external Pointer<Utf16> pszAppID;
}

/// {@category Struct}
class SHARDAPPIDINFOLINK extends Struct {
  external Pointer<COMObject> psl;

  external Pointer<Utf16> pszAppID;
}

/// {@category Struct}
class SHCOLUMNDATA extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwFileAttributes;

  @Uint32()
  external int dwReserved;

  external Pointer<Utf16> pwszExt;

  @Array(260)
  external Array<Uint16> _wszFile;

  String get wszFile {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszFile(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszFile[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SHCOLUMNINFO extends Struct {
  external PROPERTYKEY scid;

  @Uint16()
  external int vt;

  @Uint32()
  external int fmt;

  @Uint32()
  external int cChars;

  @Uint32()
  external int csFlags;

  @Array(80)
  external Array<Uint16> _wszTitle;

  String get wszTitle {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_wszTitle[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszTitle(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _wszTitle[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _wszDescription;

  String get wszDescription {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wszDescription[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDescription(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wszDescription[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SHCOLUMNINIT extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwReserved;

  @Array(260)
  external Array<Uint16> _wszFolder;

  String get wszFolder {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_wszFolder[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszFolder(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _wszFolder[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SHCREATEPROCESSINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf16> pszFile;

  external Pointer<Utf16> pszParameters;

  external Pointer<Utf16> pszCurrentDirectory;

  @IntPtr()
  external int hUserToken;

  external Pointer<SECURITY_ATTRIBUTES> lpProcessAttributes;

  external Pointer<SECURITY_ATTRIBUTES> lpThreadAttributes;

  @Int32()
  external int bInheritHandles;

  @Uint32()
  external int dwCreationFlags;

  external Pointer<STARTUPINFO> lpStartupInfo;

  external Pointer<PROCESS_INFORMATION> lpProcessInformation;
}

/// {@category Struct}
@Packed(1)
class SHChangeDWORDAsIDList extends Struct {
  @Uint16()
  external int cb;

  @Uint32()
  external int dwItem1;

  @Uint32()
  external int dwItem2;

  @Uint16()
  external int cbZero;
}

/// {@category Struct}
class SHChangeNotifyEntry extends Struct {
  external Pointer<ITEMIDLIST> pidl;

  @Int32()
  external int fRecursive;
}

/// {@category Struct}
@Packed(1)
class SHChangeProductKeyAsIDList extends Struct {
  @Uint16()
  external int cb;

  @Array(39)
  external Array<Uint16> _wszProductKey;

  String get wszProductKey {
    final charCodes = <int>[];
    for (var i = 0; i < 39; i++) {
      charCodes.add(_wszProductKey[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszProductKey(String value) {
    final stringToStore = value.padRight(39, '\x00');
    for (var i = 0; i < 39; i++) {
      _wszProductKey[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int cbZero;
}

/// {@category Struct}
@Packed(1)
class SHChangeUpdateImageIDList extends Struct {
  @Uint16()
  external int cb;

  @Int32()
  external int iIconIndex;

  @Int32()
  external int iCurIndex;

  @Uint32()
  external int uFlags;

  @Uint32()
  external int dwProcessID;

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

  @Uint16()
  external int cbZero;
}

/// {@category Struct}
class SHDESCRIPTIONID extends Struct {
  @Int32()
  external int dwDescriptionId;

  external GUID clsid;
}

/// {@category Struct}
class SHDRAGIMAGE extends Struct {
  external SIZE sizeDragImage;

  external POINT ptOffset;

  @IntPtr()
  external int hbmpDragImage;

  @Uint32()
  external int crColorKey;
}

/// {@category Struct}
class SHELLEXECUTEINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int fMask;

  @IntPtr()
  external int hwnd;

  external Pointer<Utf16> lpVerb;

  external Pointer<Utf16> lpFile;

  external Pointer<Utf16> lpParameters;

  external Pointer<Utf16> lpDirectory;

  @Int32()
  external int nShow;

  @IntPtr()
  external int hInstApp;

  external Pointer lpIDList;

  external Pointer<Utf16> lpClass;

  @IntPtr()
  external int hkeyClass;

  @Uint32()
  external int dwHotKey;

  external _SHELLEXECUTEINFOW__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int hProcess;
}

/// {@category Struct}
class _SHELLEXECUTEINFOW__Anonymous_e__Union extends Union {
  @IntPtr()
  external int hIcon;

  @IntPtr()
  external int hMonitor;
}

extension SHELLEXECUTEINFOW_Extension on SHELLEXECUTEINFO {
  int get hIcon => this.Anonymous.hIcon;
  set hIcon(int value) => this.Anonymous.hIcon = value;

  int get hMonitor => this.Anonymous.hMonitor;
  set hMonitor(int value) => this.Anonymous.hMonitor = value;
}

/// {@category Struct}
@Packed(1)
class SHELLFLAGSTATE extends Struct {
  @Int32()
  external int bitfield;
}

/// {@category Struct}
@Packed(1)
class SHELLSTATE extends Struct {
  @Int32()
  external int bitfield1;

  @Uint32()
  external int dwWin95Unused;

  @Uint32()
  external int uWin95Unused;

  @Int32()
  external int lParamSort;

  @Int32()
  external int iSortDirection;

  @Uint32()
  external int version;

  @Uint32()
  external int uNotUsed;

  @Int32()
  external int bitfield2;
}

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

/// {@category Struct}
class SHFILEINFO extends Struct {
  @IntPtr()
  external int hIcon;

  @Int32()
  external int iIcon;

  @Uint32()
  external int dwAttributes;

  @Array(260)
  external Array<Uint16> _szDisplayName;

  String get szDisplayName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szDisplayName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDisplayName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szDisplayName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(80)
  external Array<Uint16> _szTypeName;

  String get szTypeName {
    final charCodes = <int>[];
    for (var i = 0; i < 80; i++) {
      charCodes.add(_szTypeName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTypeName(String value) {
    final stringToStore = value.padRight(80, '\x00');
    for (var i = 0; i < 80; i++) {
      _szTypeName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SHFILEOPSTRUCT extends Struct {
  @IntPtr()
  external int hwnd;

  @Uint32()
  external int wFunc;

  external Pointer<Utf16> pFrom;

  external Pointer<Utf16> pTo;

  @Uint16()
  external int fFlags;

  @Int32()
  external int fAnyOperationsAborted;

  external Pointer hNameMappings;

  external Pointer<Utf16> lpszProgressTitle;
}

/// {@category Struct}
class SHFOLDERCUSTOMSETTINGS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwMask;

  external Pointer<GUID> pvid;

  external Pointer<Utf16> pszWebViewTemplate;

  @Uint32()
  external int cchWebViewTemplate;

  external Pointer<Utf16> pszWebViewTemplateVersion;

  external Pointer<Utf16> pszInfoTip;

  @Uint32()
  external int cchInfoTip;

  external Pointer<GUID> pclsid;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> pszIconFile;

  @Uint32()
  external int cchIconFile;

  @Int32()
  external int iIconIndex;

  external Pointer<Utf16> pszLogo;

  @Uint32()
  external int cchLogo;
}

/// {@category Struct}
class SHNAMEMAPPING extends Struct {
  external Pointer<Utf16> pszOldPath;

  external Pointer<Utf16> pszNewPath;

  @Int32()
  external int cchOldPath;

  @Int32()
  external int cchNewPath;
}

/// {@category Struct}
class SHQUERYRBINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Int64()
  external int i64Size;

  @Int64()
  external int i64NumItems;
}

/// {@category Struct}
class SHSTOCKICONINFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hIcon;

  @Int32()
  external int iSysImageIndex;

  @Int32()
  external int iIcon;

  @Array(260)
  external Array<Uint16> _szPath;

  String get szPath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szPath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szPath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szPath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SLOWAPPINFO extends Struct {
  @Uint64()
  external int ullSize;

  external FILETIME ftLastUsed;

  @Int32()
  external int iTimesUsed;

  external Pointer<Utf16> pszImage;
}

/// {@category Struct}
class SMCSHCHANGENOTIFYSTRUCT extends Struct {
  @Int32()
  external int lEvent;

  external Pointer<ITEMIDLIST> pidl1;

  external Pointer<ITEMIDLIST> pidl2;
}

/// {@category Struct}
class SMDATA extends Struct {
  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hmenu;

  @IntPtr()
  external int hwnd;

  @Uint32()
  external int uId;

  @Uint32()
  external int uIdParent;

  @Uint32()
  external int uIdAncestor;

  external Pointer<COMObject> punk;

  external Pointer<ITEMIDLIST> pidlFolder;

  external Pointer<ITEMIDLIST> pidlItem;

  external Pointer<COMObject> psf;

  external Pointer pvUserData;
}

/// {@category Struct}
class SMINFO extends Struct {
  @Uint32()
  external int dwMask;

  @Uint32()
  external int dwType;

  @Uint32()
  external int dwFlags;

  @Int32()
  external int iIcon;
}

/// {@category Struct}
class SORTCOLUMN extends Struct {
  external PROPERTYKEY propkey;

  @Int32()
  external int direction;
}

/// {@category Struct}
class SV2CVW2_PARAMS extends Struct {
  @Uint32()
  external int cbSize;

  external Pointer<COMObject> psvPrev;

  external Pointer<FOLDERSETTINGS> pfs;

  external Pointer<COMObject> psbOwner;

  external Pointer<RECT> prcView;

  external Pointer<GUID> pvid;

  @IntPtr()
  external int hwndView;
}

/// {@category Struct}
class SYNCMGRHANDLERINFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hIcon;

  @Uint32()
  external int SyncMgrHandlerFlags;

  @Array(32)
  external Array<Uint16> _wszHandlerName;

  String get wszHandlerName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_wszHandlerName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszHandlerName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _wszHandlerName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class SYNCMGRITEM extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external GUID ItemID;

  @Uint32()
  external int dwItemState;

  @IntPtr()
  external int hIcon;

  @Array(128)
  external Array<Uint16> _wszItemName;

  String get wszItemName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_wszItemName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszItemName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _wszItemName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external FILETIME ftLastUpdate;
}

/// {@category Struct}
class SYNCMGRLOGERRORINFO extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int mask;

  @Uint32()
  external int dwSyncMgrErrorFlags;

  external GUID ErrorID;

  external GUID ItemID;
}

/// {@category Struct}
class SYNCMGRPROGRESSITEM extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int mask;

  external Pointer<Utf16> lpcStatusText;

  @Uint32()
  external int dwStatusType;

  @Int32()
  external int iProgValue;

  @Int32()
  external int iMaxValue;
}

/// {@category Struct}
class SYNCMGR_CONFLICT_ID_INFO extends Struct {
  external Pointer<BYTE_BLOB> pblobID;

  external Pointer<BYTE_BLOB> pblobExtra;
}

/// {@category Struct}
class TBINFO extends Struct {
  @Uint32()
  external int cbuttons;

  @Uint32()
  external int uFlags;
}

/// {@category Struct}
class THUMBBUTTON extends Struct {
  @Int32()
  external int dwMask;

  @Uint32()
  external int iId;

  @Uint32()
  external int iBitmap;

  @IntPtr()
  external int hIcon;

  @Array(260)
  external Array<Uint16> _szTip;

  String get szTip {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szTip[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szTip(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szTip[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int32()
  external int dwFlags;
}

/// {@category Struct}
class TOOLBARITEM extends Struct {
  external Pointer<COMObject> ptbar;

  external RECT rcBorderTool;

  external Pointer<Utf16> pwszItem;

  @Int32()
  external int fShow;

  @IntPtr()
  external int hMon;
}

/// {@category Struct}
class WINDOWDATA extends Struct {
  @Uint32()
  external int dwWindowID;

  @Uint32()
  external int uiCP;

  external Pointer<ITEMIDLIST> pidl;

  external Pointer<Utf16> lpszUrl;

  external Pointer<Utf16> lpszUrlLocation;

  external Pointer<Utf16> lpszTitle;
}

/// {@category Struct}
class WTS_THUMBNAILID extends Struct {
  @Array(16)
  external Array<Uint8> rgbKey;
}

/// {@category Struct}
class APPCONSTRAIN_REGISTRATION extends Opaque {}

/// {@category Struct}
class APPSTATE_REGISTRATION extends Opaque {}

/// {@category Struct}
class urlinvokecommandinfo extends Struct {
  @Uint32()
  external int dwcbSize;

  @Uint32()
  external int dwFlags;

  @IntPtr()
  external int hwndParent;

  external Pointer<Utf16> pcszVerb;
}
