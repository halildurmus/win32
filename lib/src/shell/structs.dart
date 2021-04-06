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

class ShFindChangeNotificationHandle extends Struct {
  @IntPtr()
  external int Value;
}

class HDROP extends Struct {
  @IntPtr()
  external int Value;
}

class HPSXA extends Struct {
  @IntPtr()
  external int Value;
}

class APPCATEGORYINFO extends Struct {
  @Uint32()
  external int Locale;
  external Pointer<Utf16> pszDescription;
  external GUID AppCategoryId;
}

class APPCATEGORYINFOLIST extends Struct {
  @Uint32()
  external int cCategory;
  external Pointer<APPCATEGORYINFO> pCategoryInfo;
}

class LOGFONTA extends Struct {
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
  external Array<Int8> lfFaceName;
}

class LOGFONTW extends Struct {
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
  external Array<Uint16> lfFaceName;
}

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

class MULTIKEYHELPA extends Struct {
  @Uint32()
  external int mkSize;
  @Int8()
  external int mkKeylist;
  @Array(1)
  external Array<Int8> szKeyphrase;
}

class MULTIKEYHELPW extends Struct {
  @Uint32()
  external int mkSize;
  @Uint16()
  external int mkKeylist;
  @Array(1)
  external Array<Uint16> szKeyphrase;
}

class HELPWININFOA extends Struct {
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
  external Array<Int8> rgchMember;
}

class HELPWININFOW extends Struct {
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
  external Array<Uint16> rgchMember;
}

class QueryCancelAutoPlay extends Struct {}

class TimeCategorizer extends Struct {}

class AlphabeticalCategorizer extends Struct {}

class MergedCategorizer extends Struct {}

class ImageProperties extends Struct {}

class CDBurn extends Struct {}

class StartMenuPin extends Struct {}

class WebWizardHost extends Struct {}

class PublishDropTarget extends Struct {}

class PublishingWizard extends Struct {}

class InternetPrintOrdering extends Struct {}

class FolderViewHost extends Struct {}

class ExplorerBrowser extends Struct {}

class ImageRecompress extends Struct {}

class TrayBandSiteService extends Struct {}

class TrayDeskBand extends Struct {}

class AttachmentServices extends Struct {}

class DocPropShellExtension extends Struct {}

class FSCopyHandler extends Struct {}

class PreviousVersions extends Struct {}

class NamespaceTreeControl extends Struct {}

class IENamespaceTreeControl extends Struct {}

class ApplicationAssociationRegistrationUI extends Struct {}

class DesktopGadget extends Struct {}

class AccessibilityDockingService extends Struct {}

class ExecuteFolder extends Struct {}

class VirtualDesktopManager extends Struct {}

class StorageProviderBanners extends Struct {}

class SHITEMID extends Struct {
  @Uint16()
  external int cb;
  @Array(1)
  external Array<Uint8> abID;
}

class ITEMIDLIST extends Struct {
  external SHITEMID mkid;
}

class STRRET extends Struct {
  @Uint32()
  external int uType;
  @Uint32()
  external int Anonymous;
}

class SHELLDETAILS extends Struct {
  @Int32()
  external int fmt;
  @Int32()
  external int cxChar;
  external STRRET str;
}

class COMDLG_FILTERSPEC extends Struct {
  external Pointer<Utf16> pszName;
  external Pointer<Utf16> pszSpec;
}

class DesktopWallpaper extends Struct {}

class ShellDesktop extends Struct {}

class ShellFSFolder extends Struct {}

class NetworkPlaces extends Struct {}

class ShellLink extends Struct {}

class DriveSizeCategorizer extends Struct {}

class DriveTypeCategorizer extends Struct {}

class FreeSpaceCategorizer extends Struct {}

class SizeCategorizer extends Struct {}

class PropertiesUI extends Struct {}

class UserNotification extends Struct {}

class TaskbarList extends Struct {}

class ShellItem extends Struct {}

class NamespaceWalker extends Struct {}

class FileOperation extends Struct {}

class FileOpenDialog extends Struct {}

class FileSaveDialog extends Struct {}

class KnownFolderManager extends Struct {}

class SharingConfigurationManager extends Struct {}

class NetworkConnections extends Struct {}

class ScheduledTasks extends Struct {}

class ApplicationAssociationRegistration extends Struct {}

class SearchFolderItemFactory extends Struct {}

class OpenControlPanel extends Struct {}

class MailRecipient extends Struct {}

class NetworkExplorerFolder extends Struct {}

class DestinationList extends Struct {}

class ApplicationDestinations extends Struct {}

class ApplicationDocumentLists extends Struct {}

class HomeGroup extends Struct {}

class ShellLibrary extends Struct {}

class AppStartupLink extends Struct {}

class EnumerableObjectCollection extends Struct {}

class FrameworkInputPane extends Struct {}

class DefFolderMenu extends Struct {}

class AppVisibility extends Struct {}

class AppShellVerbHandler extends Struct {}

class ExecuteUnknown extends Struct {}

class PackageDebugSettings extends Struct {}

class SuspensionDependencyManager extends Struct {}

class ApplicationActivationManager extends Struct {}

class ApplicationDesignModeSettings extends Struct {}

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

class PERSIST_FOLDER_TARGET_INFO extends Struct {
  external Pointer<ITEMIDLIST> pidlTargetFolder;
  @Array(129)
  external Array<Uint16> szTargetParsingName;
  @Array(129)
  external Array<Uint16> szNetworkProvider;
  @Uint32()
  external int dwAttributes;
  @Int32()
  external int csidl;
}

class EXTRASEARCH extends Struct {
  external GUID guidSearch;
  @Array(80)
  external Array<Uint16> wszFriendlyName;
  @Array(136)
  external Array<Uint16> wszUrl;
}

class FOLDERSETTINGS extends Struct {
  @Uint32()
  external int ViewMode;
  @Uint32()
  external int fFlags;
}

class SV2CVW2_PARAMS extends Struct {
  @Uint32()
  external int cbSize;
  external IShellView psvPrev;
  external Pointer<FOLDERSETTINGS> pfs;
  external IShellBrowser psbOwner;
  external Pointer<RECT> prcView;
  external Pointer<GUID> pvid;
  @IntPtr()
  external int hwndView;
}

class SORTCOLUMN extends Struct {
  external PROPERTYKEY propkey;
  @Uint32()
  external int direction;
}

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
  external Array<Uint16> wszName;
}

class SHELL_ITEM_RESOURCE extends Struct {
  external GUID guidType;
  @Array(129)
  external Array<Uint16> szName;
}

class CATEGORY_INFO extends Struct {
  @Uint32()
  external int cif;
  @Array(129)
  external Array<Uint16> wszName;
}

class SHDRAGIMAGE extends Struct {
  external SIZE sizeDragImage;
  external POINT ptOffset;
  @IntPtr()
  external int hbmpDragImage;
  @Uint32()
  external int crColorKey;
}

class DESKBANDINFO extends Struct {
  @Uint32()
  external int dwMask;
  external POINTL ptMinSize;
  external POINTL ptMaxSize;
  external POINTL ptIntegral;
  external POINTL ptActual;
  @Array(129)
  external Array<Uint16> wszTitle;
  @Uint32()
  external int dwModeFlags;
  @Uint32()
  external int crBkgnd;
}

class THUMBBUTTON extends Struct {
  @Uint32()
  external int dwMask;
  @Uint32()
  external int iId;
  @Uint32()
  external int iBitmap;
  @IntPtr()
  external int hIcon;
  @Array(129)
  external Array<Uint16> szTip;
  @Uint32()
  external int dwFlags;
}

class BANDSITEINFO extends Struct {
  @Uint32()
  external int dwMask;
  @Uint32()
  external int dwState;
  @Uint32()
  external int dwStyle;
}

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
  external Pointer punk;
  external Pointer<ITEMIDLIST> pidlFolder;
  external Pointer<ITEMIDLIST> pidlItem;
  external Pointer psf;
  external Pointer pvUserData;
}

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

class SMCSHCHANGENOTIFYSTRUCT extends Struct {
  @Int32()
  external int lEvent;
  external Pointer<ITEMIDLIST> pidl1;
  external Pointer<ITEMIDLIST> pidl2;
}

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

class PREVIEWHANDLERFRAMEINFO extends Struct {
  @IntPtr()
  external int haccel;
  @Uint32()
  external int cAccelEntries;
}

class BANNER_NOTIFICATION extends Struct {
  @Uint32()
  external int event;
  external Pointer<Utf16> providerIdentity;
  external Pointer<Utf16> contentId;
}

class NSTCCUSTOMDRAW extends Struct {
  external Pointer psi;
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

class ShellFolderViewOC extends Struct {}

class ShellFolderItem extends Struct {}

class ShellLinkObject extends Struct {}

class ShellFolderView extends Struct {}

class Shell extends Struct {}

class ShellDispatchInproc extends Struct {}

class FileSearchBand extends Struct {}

class DATABLOCK_HEADER extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwSignature;
}

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
  external Array<Uint16> FaceName;
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

class NT_FE_CONSOLE_PROPS extends Struct {
  external DATABLOCK_HEADER dbh;
  @Uint32()
  external int uCodePage;
}

class EXP_DARWIN_LINK extends Struct {
  external DATABLOCK_HEADER dbh;
  @Array(129)
  external Array<Int8> szDarwinID;
  @Array(129)
  external Array<Uint16> szwDarwinID;
}

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

class EXP_SZ_LINK extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwSignature;
  @Array(129)
  external Array<Int8> szTarget;
  @Array(129)
  external Array<Uint16> swzTarget;
}

class EXP_PROPERTYSTORAGE extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwSignature;
  @Array(1)
  external Array<Uint8> abPropertyStorage;
}

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

class BROWSEINFOA extends Struct {
  @IntPtr()
  external int hwndOwner;
  external Pointer<ITEMIDLIST> pidlRoot;
  external Pointer<Utf8> pszDisplayName;
  external Pointer<Utf8> lpszTitle;
  @Uint32()
  external int ulFlags;
  external BFFCALLBACK lpfn;
  @IntPtr()
  external int lParam;
  @Int32()
  external int iImage;
}

class BROWSEINFOW extends Struct {
  @IntPtr()
  external int hwndOwner;
  external Pointer<ITEMIDLIST> pidlRoot;
  external Pointer<Utf16> pszDisplayName;
  external Pointer<Utf16> lpszTitle;
  @Uint32()
  external int ulFlags;
  external BFFCALLBACK lpfn;
  @IntPtr()
  external int lParam;
  @Int32()
  external int iImage;
}

class NRESARRAY extends Struct {
  @Uint32()
  external int cItems;
  @Array(1)
  external Array<NETRESOURCEA> nr;
}

class CIDA extends Struct {
  @Uint32()
  external int cidl;
  @Array(1)
  external Array<Uint32> aoffset;
}

class FILEDESCRIPTORA extends Struct {
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
  @Array(129)
  external Array<Int8> cFileName;
}

class FILEDESCRIPTORW extends Struct {
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
  @Array(129)
  external Array<Uint16> cFileName;
}

class FILEGROUPDESCRIPTORA extends Struct {
  @Uint32()
  external int cItems;
  @Array(1)
  external Array<FILEDESCRIPTORA> fgd;
}

class FILEGROUPDESCRIPTORW extends Struct {
  @Uint32()
  external int cItems;
  @Array(1)
  external Array<FILEDESCRIPTORW> fgd;
}

class DROPFILES extends Struct {
  @Uint32()
  external int pFiles;
  external POINT pt;
  @Int32()
  external int fNC;
  @Int32()
  external int fWide;
}

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

class DROPDESCRIPTION extends Struct {
  @Uint32()
  external int type;
  @Array(129)
  external Array<Uint16> szMessage;
  @Array(129)
  external Array<Uint16> szInsert;
}

class SHChangeNotifyEntry extends Struct {
  external Pointer<ITEMIDLIST> pidl;
  @Int32()
  external int fRecursive;
}

class SHARDAPPIDINFO extends Struct {
  external Pointer psi;
  external Pointer<Utf16> pszAppID;
}

class SHARDAPPIDINFOIDLIST extends Struct {
  external Pointer<ITEMIDLIST> pidl;
  external Pointer<Utf16> pszAppID;
}

class SHARDAPPIDINFOLINK extends Struct {
  external Pointer psl;
  external Pointer<Utf16> pszAppID;
}

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
  @Array(129)
  external Array<Uint16> szName;
  @Uint16()
  external int cbZero;
}

class SHDESCRIPTIONID extends Struct {
  @Uint32()
  external int dwDescriptionId;
  external GUID clsid;
}

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

class CABINETSTATE extends Struct {
  @Uint16()
  external int cLength;
  @Uint16()
  external int nVersion;
  @Int32()
  external int _bitfield;
  @Uint32()
  external int fMenuEnumFilter;
}

class OPENASINFO extends Struct {
  external Pointer<Utf16> pcszFile;
  external Pointer<Utf16> pcszClass;
  @Uint32()
  external int oaifInFlags;
}

class QCMINFO_IDMAP_PLACEMENT extends Struct {
  @Uint32()
  external int id;
  @Uint32()
  external int fFlags;
}

class QCMINFO_IDMAP extends Struct {
  @Uint32()
  external int nMaxIds;
  @Array(1)
  external Array<QCMINFO_IDMAP_PLACEMENT> pIdList;
}

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

class SFVM_PROPPAGE_DATA extends Struct {
  @Uint32()
  external int dwReserved;
  external Pointer<FNSVADDPROPSHEETPAGE> pfn;
  @IntPtr()
  external int lParam;
}

class SFVM_HELPTOPIC_DATA extends Struct {
  @Array(129)
  external Array<Uint16> wszHelpFile;
  @Array(129)
  external Array<Uint16> wszHelpTopic;
}

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

class SFV_CREATE extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer pshf;
  external IShellView psvOuter;
  external Pointer psfvcb;
}

class DEFCONTEXTMENU extends Struct {
  @IntPtr()
  external int hwnd;
  external Pointer pcmcb;
  external Pointer<ITEMIDLIST> pidlFolder;
  external Pointer psf;
  @Uint32()
  external int cidl;
  external Pointer<Pointer<ITEMIDLIST>> apidl;
  external Pointer punkAssociationInfo;
  @Uint32()
  external int cKeys;
  external Pointer<IntPtr> aKeys;
}

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
  external Pointer punkSite;
}

class CSFV extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer pshf;
  external IShellView psvOuter;
  external Pointer<ITEMIDLIST> pidl;
  @Int32()
  external int lEvents;
  external Pointer<FNVIEWCALLBACK> pfnCallback;
  @Uint32()
  external int fvm;
}

class SHELLSTATEA extends Struct {
  @Int32()
  external int _bitfield1;
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
  external int _bitfield2;
}

class SHELLSTATEW extends Struct {
  @Int32()
  external int _bitfield1;
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
  external int _bitfield2;
}

class SHELLFLAGSTATE extends Struct {
  @Int32()
  external int _bitfield;
}

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
  external Pointer psf;
  external Pointer<ITEMIDLIST> pidl;
}

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
  external Array<Uint16> wszTitle;
  @Array(128)
  external Array<Uint16> wszDescription;
}

class SHCOLUMNINIT extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwReserved;
  @Array(129)
  external Array<Uint16> wszFolder;
}

class SHCOLUMNDATA extends Struct {
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwFileAttributes;
  @Uint32()
  external int dwReserved;
  external Pointer<Utf16> pwszExt;
  @Array(129)
  external Array<Uint16> wszFile;
}

class SHChangeProductKeyAsIDList extends Struct {
  @Uint16()
  external int cb;
  @Array(39)
  external Array<Uint16> wszProductKey;
  @Uint16()
  external int cbZero;
}

class TBINFO extends Struct {
  @Uint32()
  external int cbuttons;
  @Uint32()
  external int uFlags;
}

class SFV_SETITEMPOS extends Struct {
  external Pointer<ITEMIDLIST> pidl;
  external POINT pt;
}

class AASHELLMENUFILENAME extends Struct {
  @Int16()
  external int cbTotal;
  @Array(12)
  external Array<Uint8> rgbReserved;
  @Array(1)
  external Array<Uint16> szFileName;
}

class AASHELLMENUITEM extends Struct {
  external Pointer lpReserved1;
  @Int32()
  external int iReserved;
  @Uint32()
  external int uiReserved;
  external Pointer<AASHELLMENUFILENAME> lpName;
  external Pointer<Utf16> psz;
}

class DRAGINFOA extends Struct {
  @Uint32()
  external int uSize;
  external POINT pt;
  @Int32()
  external int fNC;
  external Pointer<Utf8> lpFileList;
  @Uint32()
  external int grfKeyState;
}

class DRAGINFOW extends Struct {
  @Uint32()
  external int uSize;
  external POINT pt;
  @Int32()
  external int fNC;
  external Pointer<Utf16> lpFileList;
  @Uint32()
  external int grfKeyState;
}

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

class SHFILEOPSTRUCTA extends Struct {
  @IntPtr()
  external int hwnd;
  @Uint32()
  external int wFunc;
  external Pointer<Int8> pFrom;
  external Pointer<Int8> pTo;
  @Uint16()
  external int fFlags;
  @Int32()
  external int fAnyOperationsAborted;
  external Pointer hNameMappings;
  external Pointer<Utf8> lpszProgressTitle;
}

class SHFILEOPSTRUCTW extends Struct {
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

class SHNAMEMAPPINGA extends Struct {
  external Pointer<Utf8> pszOldPath;
  external Pointer<Utf8> pszNewPath;
  @Int32()
  external int cchOldPath;
  @Int32()
  external int cchNewPath;
}

class SHNAMEMAPPINGW extends Struct {
  external Pointer<Utf16> pszOldPath;
  external Pointer<Utf16> pszNewPath;
  @Int32()
  external int cchOldPath;
  @Int32()
  external int cchNewPath;
}

class SHELLEXECUTEINFOA extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int fMask;
  @IntPtr()
  external int hwnd;
  external Pointer<Utf8> lpVerb;
  external Pointer<Utf8> lpFile;
  external Pointer<Utf8> lpParameters;
  external Pointer<Utf8> lpDirectory;
  @Int32()
  external int nShow;
  @IntPtr()
  external int hInstApp;
  external Pointer lpIDList;
  external Pointer<Utf8> lpClass;
  @IntPtr()
  external int hkeyClass;
  @Uint32()
  external int dwHotKey;
  @Uint32()
  external int Anonymous;
  @IntPtr()
  external int hProcess;
}

class SHELLEXECUTEINFOW extends Struct {
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
  @Uint32()
  external int Anonymous;
  @IntPtr()
  external int hProcess;
}

class SHCREATEPROCESSINFOW extends Struct {
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

class ASSOCIATIONELEMENT extends Struct {
  @Uint32()
  external int ac;
  @IntPtr()
  external int hkClass;
  external Pointer<Utf16> pszClass;
}

class SHQUERYRBINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Int64()
  external int i64Size;
  @Int64()
  external int i64NumItems;
}

class NOTIFYICONDATAA extends Struct {
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
  external Array<Int8> szTip;
  @Uint32()
  external int dwState;
  @Uint32()
  external int dwStateMask;
  @Array(129)
  external Array<Int8> szInfo;
  @Uint32()
  external int Anonymous;
  @Array(64)
  external Array<Int8> szInfoTitle;
  @Uint32()
  external int dwInfoFlags;
  external GUID guidItem;
  @IntPtr()
  external int hBalloonIcon;
}

class NOTIFYICONDATAW extends Struct {
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
  external Array<Uint16> szTip;
  @Uint32()
  external int dwState;
  @Uint32()
  external int dwStateMask;
  @Array(129)
  external Array<Uint16> szInfo;
  @Uint32()
  external int Anonymous;
  @Array(64)
  external Array<Uint16> szInfoTitle;
  @Uint32()
  external int dwInfoFlags;
  external GUID guidItem;
  @IntPtr()
  external int hBalloonIcon;
}

class NOTIFYICONIDENTIFIER extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hWnd;
  @Uint32()
  external int uID;
  external GUID guidItem;
}

class SHFILEINFOA extends Struct {
  @IntPtr()
  external int hIcon;
  @Int32()
  external int iIcon;
  @Uint32()
  external int dwAttributes;
  @Array(129)
  external Array<Int8> szDisplayName;
  @Array(80)
  external Array<Int8> szTypeName;
}

class SHFILEINFOW extends Struct {
  @IntPtr()
  external int hIcon;
  @Int32()
  external int iIcon;
  @Uint32()
  external int dwAttributes;
  @Array(129)
  external Array<Uint16> szDisplayName;
  @Array(80)
  external Array<Uint16> szTypeName;
}

class SHSTOCKICONINFO extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hIcon;
  @Int32()
  external int iSysImageIndex;
  @Int32()
  external int iIcon;
  @Array(129)
  external Array<Uint16> szPath;
}

class OPEN_PRINTER_PROPS_INFOA extends Struct {
  @Uint32()
  external int dwSize;
  external Pointer<Utf8> pszSheetName;
  @Uint32()
  external int uSheetIndex;
  @Uint32()
  external int dwFlags;
  @Int32()
  external int bModal;
}

class OPEN_PRINTER_PROPS_INFOW extends Struct {
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

class PARSEDURLA extends Struct {
  @Uint32()
  external int cbSize;
  external Pointer<Utf8> pszProtocol;
  @Uint32()
  external int cchProtocol;
  external Pointer<Utf8> pszSuffix;
  @Uint32()
  external int cchSuffix;
  @Uint32()
  external int nScheme;
}

class PARSEDURLW extends Struct {
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

class QITAB extends Struct {
  external Pointer<GUID> piid;
  @Uint32()
  external int dwOffset;
}

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

class DLLVERSIONINFO2 extends Struct {
  external DLLVERSIONINFO info1;
  @Uint32()
  external int dwFlags;
  @Uint64()
  external int ullVersion;
}

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

class SLOWAPPINFO extends Struct {
  @Uint64()
  external int ullSize;
  external FILETIME ftLastUsed;
  @Int32()
  external int iTimesUsed;
  external Pointer<Utf16> pszImage;
}

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

class PasswordCredentialProvider extends Struct {}

class V1PasswordCredentialProvider extends Struct {}

class PINLogonCredentialProvider extends Struct {}

class NPCredentialProvider extends Struct {}

class SmartcardCredentialProvider extends Struct {}

class V1SmartcardCredentialProvider extends Struct {}

class SmartcardPinProvider extends Struct {}

class SmartcardReaderSelectionProvider extends Struct {}

class SmartcardWinRTProvider extends Struct {}

class GenericCredentialProvider extends Struct {}

class RASProvider extends Struct {}

class OnexCredentialProvider extends Struct {}

class OnexPlapSmartcardCredentialProvider extends Struct {}

class VaultProvider extends Struct {}

class WinBioCredentialProvider extends Struct {}

class V1WinBioCredentialProvider extends Struct {}

class CREDENTIAL_PROVIDER_FIELD_DESCRIPTOR extends Struct {
  @Uint32()
  external int dwFieldID;
  @Uint32()
  external int cpft;
  external Pointer<Utf16> pszLabel;
  external GUID guidFieldType;
}

class CREDENTIAL_PROVIDER_CREDENTIAL_SERIALIZATION extends Struct {
  @Uint32()
  external int ulAuthenticationPackage;
  external GUID clsidCredentialProvider;
  @Uint32()
  external int cbSerialization;
  external Pointer<Uint8> rgbSerialization;
}

class SyncMgrClient extends Struct {}

class SyncMgrControl extends Struct {}

class SyncMgrScheduleWizard extends Struct {}

class SyncMgrFolder extends Struct {}

class SyncSetupFolder extends Struct {}

class ConflictFolder extends Struct {}

class SyncResultsFolder extends Struct {}

class SimpleConflictPresenter extends Struct {}

class SYNCMGR_CONFLICT_ID_INFO extends Struct {
  external Pointer<BYTE_BLOB> pblobID;
  external Pointer<BYTE_BLOB> pblobExtra;
}

class CONFIRM_CONFLICT_ITEM extends Struct {
  external IShellItem2 pShellItem;
  external Pointer<Utf16> pszOriginalName;
  external Pointer<Utf16> pszAlternateName;
  external Pointer<Utf16> pszLocationShort;
  external Pointer<Utf16> pszLocationFull;
  @Uint32()
  external int nType;
}

class CONFIRM_CONFLICT_RESULT_INFO extends Struct {
  external Pointer<Utf16> pszNewName;
  @Uint32()
  external int iItemIndex;
}

class InputPanelConfiguration extends Struct {}

class LocalThumbnailCache extends Struct {}

class SharedBitmap extends Struct {}

class WTS_THUMBNAILID extends Struct {
  @Array(16)
  external Array<Uint8> rgbKey;
}

class ShellImageDataFactory extends Struct {}

class SyncMgr extends Struct {}

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
  external Array<Uint16> wszItemName;
  external FILETIME ftLastUpdate;
}

class SYNCMGRHANDLERINFO extends Struct {
  @Uint32()
  external int cbSize;
  @IntPtr()
  external int hIcon;
  @Uint32()
  external int SyncMgrHandlerFlags;
  @Array(32)
  external Array<Uint16> wszHandlerName;
}

class ThumbnailStreamCache extends Struct {}

class TrackShellMenu extends Struct {}

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

class HLITEM extends Struct {
  @Uint32()
  external int uHLID;
  external Pointer<Utf16> pwzFriendlyName;
}

class HLTBINFO extends Struct {
  @Uint32()
  external int uDockType;
  external RECT rcTbPos;
}

class HLBWINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int grfHLBWIF;
  external RECT rcFramePos;
  external RECT rcDocPos;
  external HLTBINFO hltbinfo;
}

class BASEBROWSERDATAXP extends Struct {
  @IntPtr()
  external int _hwnd;
  external Pointer _ptl;
  external Pointer _phlf;
  external IWebBrowser2 _pautoWB2;
  external Pointer _pautoEDS;
  external Pointer _pautoSS;
  @Int32()
  external int _eSecureLockIcon;
  @Uint32()
  external int _bitfield;
  @Uint32()
  external int _uActivateState;
  external Pointer<ITEMIDLIST> _pidlViewState;
  external Pointer _pctView;
  external Pointer<ITEMIDLIST> _pidlCur;
  external IShellView _psv;
  external Pointer _psf;
  @IntPtr()
  external int _hwndView;
  external Pointer<Utf16> _pszTitleCur;
  external Pointer<ITEMIDLIST> _pidlPending;
  external IShellView _psvPending;
  external Pointer _psfPending;
  @IntPtr()
  external int _hwndViewPending;
  external Pointer<Utf16> _pszTitlePending;
  @Int32()
  external int _fIsViewMSHTML;
  @Int32()
  external int _fPrivacyImpacted;
  external GUID _clsidView;
  external GUID _clsidViewPending;
  @IntPtr()
  external int _hwndFrame;
}

class BASEBROWSERDATALH extends Struct {
  @IntPtr()
  external int _hwnd;
  external Pointer _ptl;
  external Pointer _phlf;
  external IWebBrowser2 _pautoWB2;
  external Pointer _pautoEDS;
  external Pointer _pautoSS;
  @Int32()
  external int _eSecureLockIcon;
  @Uint32()
  external int _bitfield;
  @Uint32()
  external int _uActivateState;
  external Pointer<ITEMIDLIST> _pidlViewState;
  external Pointer _pctView;
  external Pointer<ITEMIDLIST> _pidlCur;
  external IShellView _psv;
  external Pointer _psf;
  @IntPtr()
  external int _hwndView;
  external Pointer<Utf16> _pszTitleCur;
  external Pointer<ITEMIDLIST> _pidlPending;
  external IShellView _psvPending;
  external Pointer _psfPending;
  @IntPtr()
  external int _hwndViewPending;
  external Pointer<Utf16> _pszTitlePending;
  @Int32()
  external int _fIsViewMSHTML;
  @Int32()
  external int _fPrivacyImpacted;
  external GUID _clsidView;
  external GUID _clsidViewPending;
  @IntPtr()
  external int _hwndFrame;
  @Int32()
  external int _lPhishingFilterStatus;
}

class FOLDERSETDATA extends Struct {
  external FOLDERSETTINGS _fs;
  external GUID _vidRestore;
  @Uint32()
  external int _dwViewPriority;
}

class TOOLBARITEM extends Struct {
  external IDockingWindow ptbar;
  external RECT rcBorderTool;
  external Pointer<Utf16> pwszItem;
  @Int32()
  external int fShow;
  @IntPtr()
  external int hMon;
}

class ImageTranscode extends Struct {}

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

class NEWCPLINFOA extends Struct {
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
  external Array<Int8> szName;
  @Array(64)
  external Array<Int8> szInfo;
  @Array(128)
  external Array<Int8> szHelpFile;
}

class NEWCPLINFOW extends Struct {
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
  external Array<Uint16> szName;
  @Array(64)
  external Array<Uint16> szInfo;
  @Array(128)
  external Array<Uint16> szHelpFile;
}

class PROFILEINFOA extends Struct {
  @Uint32()
  external int dwSize;
  @Uint32()
  external int dwFlags;
  external Pointer<Utf8> lpUserName;
  external Pointer<Utf8> lpProfilePath;
  external Pointer<Utf8> lpDefaultPath;
  external Pointer<Utf8> lpServerName;
  external Pointer<Utf8> lpPolicyPath;
  @IntPtr()
  external int hProfile;
}

class PROFILEINFOW extends Struct {
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

class urlinvokecommandinfoA extends Struct {
  @Uint32()
  external int dwcbSize;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hwndParent;
  external Pointer<Utf8> pcszVerb;
}

class urlinvokecommandinfoW extends Struct {
  @Uint32()
  external int dwcbSize;
  @Uint32()
  external int dwFlags;
  @IntPtr()
  external int hwndParent;
  external Pointer<Utf16> pcszVerb;
}

class _APPSTATE_REGISTRATION extends Struct {}

class _APPCONSTRAIN_REGISTRATION extends Struct {}

class NC_ADDRESS extends Struct {
  external Pointer<NET_ADDRESS_INFO> pAddrInfo;
  @Uint16()
  external int PortNumber;
  @Uint8()
  external int PrefixLength;
}

class SERIALIZEDPROPERTYVALUE extends Struct {
  @Uint32()
  external int dwType;
  @Array(1)
  external Array<Uint8> rgb;
}

class SOFTDISTINFO extends Struct {
  @Uint32()
  external int cbSize;
  @Uint32()
  external int dwFlags;
  @Uint32()
  external int dwAdState;
  external Pointer<Utf16> szTitle;
  external Pointer<Utf16> szAbstract;
  external Pointer<Utf16> szHREF;
  @Uint32()
  external int dwInstalledVersionMS;
  @Uint32()
  external int dwInstalledVersionLS;
  @Uint32()
  external int dwUpdateVersionMS;
  @Uint32()
  external int dwUpdateVersionLS;
  @Uint32()
  external int dwAdvertisedVersionMS;
  @Uint32()
  external int dwAdvertisedVersionLS;
  @Uint32()
  external int dwReserved;
}
