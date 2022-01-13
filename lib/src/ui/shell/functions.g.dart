// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/callbacks.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';
import '../../ui/shell/IShellFolder.dart';
import '../../ui/shell/common/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/registry/structs.g.dart';
import '../../ui/shell/IContextMenu.dart';
import '../../system/com/IDataObject.dart';
import '../../ui/controls/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../ui/controls/callbacks.g.dart';
import '../../ui/shell/IEnumAssocHandlers.dart';
import '../../system/com/IBindCtx.dart';
import '../../system/com/IUnknown.dart';
import '../../ui/shell/IShellItem.dart';
import '../../ui/shell/IFileOperation.dart';
import '../../security/structs.g.dart';
import '../../system/com/IMoniker.dart';
import '../../ui/shell/IShellView.dart';
import '../../ui/shell/IShellItemArray.dart';
import '../../system/com/structs.g.dart';
import '../../system/com/IEnumFORMATETC.dart';
import '../../system/ole/IDropSource.dart';
import '../../storage/filesystem/structs.g.dart';
import '../../system/com/IMalloc.dart';
import '../../ui/shell/IShellBrowser.dart';
import '../../ui/shell/IFileOperationProgressSink.dart';
import '../../system/com/structuredstorage/IStorage.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/com/urlmon/structs.g.dart';
import '../../system/com/IConnectionPoint.dart';
import '../../system/threading/callbacks.g.dart';
import '../../ui/shell/IHlink.dart';
import '../../ui/shell/IHlinkSite.dart';
import '../../ui/shell/IHlinkFrame.dart';
import '../../system/com/IBindStatusCallback.dart';
import '../../ui/shell/IHlinkBrowseContext.dart'; // -----------------------------------------------------------------------

// userenv.dll
// -----------------------------------------------------------------------
final _userenv = DynamicLibrary.open('userenv.dll');

int CreateProfile(
  Pointer<Utf16> pszUserSid,
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszProfilePath,
  int cchProfilePath,
) =>
    _CreateProfile(
      pszUserSid,
      pszUserName,
      pszProfilePath,
      cchProfilePath,
    );

late final _CreateProfile = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUserSid,
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszProfilePath,
  Uint32 cchProfilePath,
),
    int Function(
  Pointer<Utf16> pszUserSid,
  Pointer<Utf16> pszUserName,
  Pointer<Utf16> pszProfilePath,
  int cchProfilePath,
)>('CreateProfile');

int DeleteProfile(
  Pointer<Utf16> lpSidString,
  Pointer<Utf16> lpProfilePath,
  Pointer<Utf16> lpComputerName,
) =>
    _DeleteProfile(
      lpSidString,
      lpProfilePath,
      lpComputerName,
    );

late final _DeleteProfile = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpSidString,
  Pointer<Utf16> lpProfilePath,
  Pointer<Utf16> lpComputerName,
),
    int Function(
  Pointer<Utf16> lpSidString,
  Pointer<Utf16> lpProfilePath,
  Pointer<Utf16> lpComputerName,
)>('DeleteProfileW');

int GetAllUsersProfileDirectory(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
) =>
    _GetAllUsersProfileDirectory(
      lpProfileDir,
      lpcchSize,
    );

late final _GetAllUsersProfileDirectory = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
),
    int Function(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
)>('GetAllUsersProfileDirectoryW');

int GetDefaultUserProfileDirectory(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
) =>
    _GetDefaultUserProfileDirectory(
      lpProfileDir,
      lpcchSize,
    );

late final _GetDefaultUserProfileDirectory = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
),
    int Function(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
)>('GetDefaultUserProfileDirectoryW');

int GetProfileType(
  Pointer<Uint32> dwFlags,
) =>
    _GetProfileType(
      dwFlags,
    );

late final _GetProfileType = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Uint32> dwFlags,
),
    int Function(
  Pointer<Uint32> dwFlags,
)>('GetProfileType');

int GetProfilesDirectory(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
) =>
    _GetProfilesDirectory(
      lpProfileDir,
      lpcchSize,
    );

late final _GetProfilesDirectory = _userenv.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
),
    int Function(
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
)>('GetProfilesDirectoryW');

int GetUserProfileDirectory(
  int hToken,
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
) =>
    _GetUserProfileDirectory(
      hToken,
      lpProfileDir,
      lpcchSize,
    );

late final _GetUserProfileDirectory = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
),
    int Function(
  int hToken,
  Pointer<Utf16> lpProfileDir,
  Pointer<Uint32> lpcchSize,
)>('GetUserProfileDirectoryW');

int LoadUserProfile(
  int hToken,
  Pointer<PROFILEINFO> lpProfileInfo,
) =>
    _LoadUserProfile(
      hToken,
      lpProfileInfo,
    );

late final _LoadUserProfile = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  Pointer<PROFILEINFO> lpProfileInfo,
),
    int Function(
  int hToken,
  Pointer<PROFILEINFO> lpProfileInfo,
)>('LoadUserProfileW');

int UnloadUserProfile(
  int hToken,
  int hProfile,
) =>
    _UnloadUserProfile(
      hToken,
      hProfile,
    );

late final _UnloadUserProfile = _userenv.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  IntPtr hProfile,
),
    int Function(
  int hToken,
  int hProfile,
)>('UnloadUserProfile');

// -----------------------------------------------------------------------
// comctl32.dll
// -----------------------------------------------------------------------
final _comctl32 = DynamicLibrary.open('comctl32.dll');

int DefSubclassProc(
  int hWnd,
  int uMsg,
  int wParam,
  int lParam,
) =>
    _DefSubclassProc(
      hWnd,
      uMsg,
      wParam,
      lParam,
    );

late final _DefSubclassProc = _comctl32.lookupFunction<
    IntPtr Function(
  IntPtr hWnd,
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int hWnd,
  int uMsg,
  int wParam,
  int lParam,
)>('DefSubclassProc');

int GetWindowSubclass(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  Pointer<IntPtr> pdwRefData,
) =>
    _GetWindowSubclass(
      hWnd,
      pfnSubclass,
      uIdSubclass,
      pdwRefData,
    );

late final _GetWindowSubclass = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  IntPtr uIdSubclass,
  Pointer<IntPtr> pdwRefData,
),
    int Function(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  Pointer<IntPtr> pdwRefData,
)>('GetWindowSubclass');

int RemoveWindowSubclass(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
) =>
    _RemoveWindowSubclass(
      hWnd,
      pfnSubclass,
      uIdSubclass,
    );

late final _RemoveWindowSubclass = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  IntPtr uIdSubclass,
),
    int Function(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
)>('RemoveWindowSubclass');

int SetWindowSubclass(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  int dwRefData,
) =>
    _SetWindowSubclass(
      hWnd,
      pfnSubclass,
      uIdSubclass,
      dwRefData,
    );

late final _SetWindowSubclass = _comctl32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  IntPtr uIdSubclass,
  IntPtr dwRefData,
),
    int Function(
  int hWnd,
  Pointer<NativeFunction<SUBCLASSPROC>> pfnSubclass,
  int uIdSubclass,
  int dwRefData,
)>('SetWindowSubclass');

// -----------------------------------------------------------------------
// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int GetMenuContextHelpId(
  int param0,
) =>
    _GetMenuContextHelpId(
      param0,
    );

late final _GetMenuContextHelpId = _user32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('GetMenuContextHelpId');

int GetWindowContextHelpId(
  int param0,
) =>
    _GetWindowContextHelpId(
      param0,
    );

late final _GetWindowContextHelpId = _user32.lookupFunction<
    Uint32 Function(
  IntPtr param0,
),
    int Function(
  int param0,
)>('GetWindowContextHelpId');

int SetMenuContextHelpId(
  int param0,
  int param1,
) =>
    _SetMenuContextHelpId(
      param0,
      param1,
    );

late final _SetMenuContextHelpId = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
),
    int Function(
  int param0,
  int param1,
)>('SetMenuContextHelpId');

int SetWindowContextHelpId(
  int param0,
  int param1,
) =>
    _SetWindowContextHelpId(
      param0,
      param1,
    );

late final _SetWindowContextHelpId = _user32.lookupFunction<
    Int32 Function(
  IntPtr param0,
  Uint32 param1,
),
    int Function(
  int param0,
  int param1,
)>('SetWindowContextHelpId');

int WinHelp(
  int hWndMain,
  Pointer<Utf16> lpszHelp,
  int uCommand,
  int dwData,
) =>
    _WinHelp(
      hWndMain,
      lpszHelp,
      uCommand,
      dwData,
    );

late final _WinHelp = _user32.lookupFunction<
    Int32 Function(
  IntPtr hWndMain,
  Pointer<Utf16> lpszHelp,
  Uint32 uCommand,
  IntPtr dwData,
),
    int Function(
  int hWndMain,
  Pointer<Utf16> lpszHelp,
  int uCommand,
  int dwData,
)>('WinHelpW');

// -----------------------------------------------------------------------
// shell32.dll
// -----------------------------------------------------------------------
final _shell32 = DynamicLibrary.open('shell32.dll');

int AssocCreateForClasses(
  Pointer<ASSOCIATIONELEMENT> rgClasses,
  int cClasses,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _AssocCreateForClasses(
      rgClasses,
      cClasses,
      riid,
      ppv,
    );

late final _AssocCreateForClasses = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ASSOCIATIONELEMENT> rgClasses,
  Uint32 cClasses,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<ASSOCIATIONELEMENT> rgClasses,
  int cClasses,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('AssocCreateForClasses');

int AssocGetDetailsOfPropKey(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<PROPERTYKEY> pkey,
  Pointer<VARIANT> pv,
  Pointer<Int32> pfFoundPropKey,
) =>
    _AssocGetDetailsOfPropKey(
      psf,
      pidl,
      pkey,
      pv,
      pfFoundPropKey,
    );

late final _AssocGetDetailsOfPropKey = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<PROPERTYKEY> pkey,
  Pointer<VARIANT> pv,
  Pointer<Int32> pfFoundPropKey,
),
    int Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<PROPERTYKEY> pkey,
  Pointer<VARIANT> pv,
  Pointer<Int32> pfFoundPropKey,
)>('AssocGetDetailsOfPropKey');

int CDefFolderMenu_Create2(
  Pointer<ITEMIDLIST> pidlFolder,
  int hwnd,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<COMObject> psf,
  Pointer<NativeFunction<LPFNDFMCALLBACK>> pfn,
  int nKeys,
  Pointer<IntPtr> ahkeys,
  Pointer<Pointer<COMObject>> ppcm,
) =>
    _CDefFolderMenu_Create2(
      pidlFolder,
      hwnd,
      cidl,
      apidl,
      psf,
      pfn,
      nKeys,
      ahkeys,
      ppcm,
    );

late final _CDefFolderMenu_Create2 = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlFolder,
  IntPtr hwnd,
  Uint32 cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<COMObject> psf,
  Pointer<NativeFunction<LPFNDFMCALLBACK>> pfn,
  Uint32 nKeys,
  Pointer<IntPtr> ahkeys,
  Pointer<Pointer<COMObject>> ppcm,
),
    int Function(
  Pointer<ITEMIDLIST> pidlFolder,
  int hwnd,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<COMObject> psf,
  Pointer<NativeFunction<LPFNDFMCALLBACK>> pfn,
  int nKeys,
  Pointer<IntPtr> ahkeys,
  Pointer<Pointer<COMObject>> ppcm,
)>('CDefFolderMenu_Create2');

int CIDLData_CreateFromIDArray(
  Pointer<ITEMIDLIST> pidlFolder,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<Pointer<COMObject>> ppdtobj,
) =>
    _CIDLData_CreateFromIDArray(
      pidlFolder,
      cidl,
      apidl,
      ppdtobj,
    );

late final _CIDLData_CreateFromIDArray = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlFolder,
  Uint32 cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<Pointer<COMObject>> ppdtobj,
),
    int Function(
  Pointer<ITEMIDLIST> pidlFolder,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<Pointer<COMObject>> ppdtobj,
)>('CIDLData_CreateFromIDArray');

Pointer<Pointer<Utf16>> CommandLineToArgv(
  Pointer<Utf16> lpCmdLine,
  Pointer<Int32> pNumArgs,
) =>
    _CommandLineToArgv(
      lpCmdLine,
      pNumArgs,
    );

late final _CommandLineToArgv = _shell32.lookupFunction<
    Pointer<Pointer<Utf16>> Function(
  Pointer<Utf16> lpCmdLine,
  Pointer<Int32> pNumArgs,
),
    Pointer<Pointer<Utf16>> Function(
  Pointer<Utf16> lpCmdLine,
  Pointer<Int32> pNumArgs,
)>('CommandLineToArgvW');

int DAD_AutoScroll(
  int hwnd,
  Pointer<AUTO_SCROLL_DATA> pad,
  Pointer<POINT> pptNow,
) =>
    _DAD_AutoScroll(
      hwnd,
      pad,
      pptNow,
    );

late final _DAD_AutoScroll = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<AUTO_SCROLL_DATA> pad,
  Pointer<POINT> pptNow,
),
    int Function(
  int hwnd,
  Pointer<AUTO_SCROLL_DATA> pad,
  Pointer<POINT> pptNow,
)>('DAD_AutoScroll');

int DAD_DragEnterEx(
  int hwndTarget,
  POINT ptStart,
) =>
    _DAD_DragEnterEx(
      hwndTarget,
      ptStart,
    );

late final _DAD_DragEnterEx = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwndTarget,
  POINT ptStart,
),
    int Function(
  int hwndTarget,
  POINT ptStart,
)>('DAD_DragEnterEx');

int DAD_DragEnterEx2(
  int hwndTarget,
  POINT ptStart,
  Pointer<COMObject> pdtObject,
) =>
    _DAD_DragEnterEx2(
      hwndTarget,
      ptStart,
      pdtObject,
    );

late final _DAD_DragEnterEx2 = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwndTarget,
  POINT ptStart,
  Pointer<COMObject> pdtObject,
),
    int Function(
  int hwndTarget,
  POINT ptStart,
  Pointer<COMObject> pdtObject,
)>('DAD_DragEnterEx2');

int DAD_DragLeave() => _DAD_DragLeave();

late final _DAD_DragLeave =
    _shell32.lookupFunction<Int32 Function(), int Function()>('DAD_DragLeave');

int DAD_DragMove(
  POINT pt,
) =>
    _DAD_DragMove(
      pt,
    );

late final _DAD_DragMove = _shell32.lookupFunction<
    Int32 Function(
  POINT pt,
),
    int Function(
  POINT pt,
)>('DAD_DragMove');

int DAD_SetDragImage(
  int him,
  Pointer<POINT> pptOffset,
) =>
    _DAD_SetDragImage(
      him,
      pptOffset,
    );

late final _DAD_SetDragImage = _shell32.lookupFunction<
    Int32 Function(
  IntPtr him,
  Pointer<POINT> pptOffset,
),
    int Function(
  int him,
  Pointer<POINT> pptOffset,
)>('DAD_SetDragImage');

int DAD_ShowDragImage(
  int fShow,
) =>
    _DAD_ShowDragImage(
      fShow,
    );

late final _DAD_ShowDragImage = _shell32.lookupFunction<
    Int32 Function(
  Int32 fShow,
),
    int Function(
  int fShow,
)>('DAD_ShowDragImage');

int DoEnvironmentSubst(
  Pointer<Utf16> pszSrc,
  int cchSrc,
) =>
    _DoEnvironmentSubst(
      pszSrc,
      cchSrc,
    );

late final _DoEnvironmentSubst = _shell32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszSrc,
  Uint32 cchSrc,
),
    int Function(
  Pointer<Utf16> pszSrc,
  int cchSrc,
)>('DoEnvironmentSubstW');

void DragAcceptFiles(
  int hWnd,
  int fAccept,
) =>
    _DragAcceptFiles(
      hWnd,
      fAccept,
    );

late final _DragAcceptFiles = _shell32.lookupFunction<
    Void Function(
  IntPtr hWnd,
  Int32 fAccept,
),
    void Function(
  int hWnd,
  int fAccept,
)>('DragAcceptFiles');

void DragFinish(
  int hDrop,
) =>
    _DragFinish(
      hDrop,
    );

late final _DragFinish = _shell32.lookupFunction<
    Void Function(
  IntPtr hDrop,
),
    void Function(
  int hDrop,
)>('DragFinish');

int DragQueryFile(
  int hDrop,
  int iFile,
  Pointer<Utf16> lpszFile,
  int cch,
) =>
    _DragQueryFile(
      hDrop,
      iFile,
      lpszFile,
      cch,
    );

late final _DragQueryFile = _shell32.lookupFunction<
    Uint32 Function(
  IntPtr hDrop,
  Uint32 iFile,
  Pointer<Utf16> lpszFile,
  Uint32 cch,
),
    int Function(
  int hDrop,
  int iFile,
  Pointer<Utf16> lpszFile,
  int cch,
)>('DragQueryFileW');

int DragQueryPoint(
  int hDrop,
  Pointer<POINT> ppt,
) =>
    _DragQueryPoint(
      hDrop,
      ppt,
    );

late final _DragQueryPoint = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hDrop,
  Pointer<POINT> ppt,
),
    int Function(
  int hDrop,
  Pointer<POINT> ppt,
)>('DragQueryPoint');

int DriveType(
  int iDrive,
) =>
    _DriveType(
      iDrive,
    );

late final _DriveType = _shell32.lookupFunction<
    Int32 Function(
  Int32 iDrive,
),
    int Function(
  int iDrive,
)>('DriveType');

int DuplicateIcon(
  int hInst,
  int hIcon,
) =>
    _DuplicateIcon(
      hInst,
      hIcon,
    );

late final _DuplicateIcon = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hInst,
  IntPtr hIcon,
),
    int Function(
  int hInst,
  int hIcon,
)>('DuplicateIcon');

int ExtractAssociatedIconEx(
  int hInst,
  Pointer<Utf16> pszIconPath,
  Pointer<Uint16> piIconIndex,
  Pointer<Uint16> piIconId,
) =>
    _ExtractAssociatedIconEx(
      hInst,
      pszIconPath,
      piIconIndex,
      piIconId,
    );

late final _ExtractAssociatedIconEx = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hInst,
  Pointer<Utf16> pszIconPath,
  Pointer<Uint16> piIconIndex,
  Pointer<Uint16> piIconId,
),
    int Function(
  int hInst,
  Pointer<Utf16> pszIconPath,
  Pointer<Uint16> piIconIndex,
  Pointer<Uint16> piIconId,
)>('ExtractAssociatedIconExW');

int ExtractAssociatedIcon(
  int hInst,
  Pointer<Utf16> pszIconPath,
  Pointer<Uint16> piIcon,
) =>
    _ExtractAssociatedIcon(
      hInst,
      pszIconPath,
      piIcon,
    );

late final _ExtractAssociatedIcon = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hInst,
  Pointer<Utf16> pszIconPath,
  Pointer<Uint16> piIcon,
),
    int Function(
  int hInst,
  Pointer<Utf16> pszIconPath,
  Pointer<Uint16> piIcon,
)>('ExtractAssociatedIconW');

int ExtractIconEx(
  Pointer<Utf16> lpszFile,
  int nIconIndex,
  Pointer<IntPtr> phiconLarge,
  Pointer<IntPtr> phiconSmall,
  int nIcons,
) =>
    _ExtractIconEx(
      lpszFile,
      nIconIndex,
      phiconLarge,
      phiconSmall,
      nIcons,
    );

late final _ExtractIconEx = _shell32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> lpszFile,
  Int32 nIconIndex,
  Pointer<IntPtr> phiconLarge,
  Pointer<IntPtr> phiconSmall,
  Uint32 nIcons,
),
    int Function(
  Pointer<Utf16> lpszFile,
  int nIconIndex,
  Pointer<IntPtr> phiconLarge,
  Pointer<IntPtr> phiconSmall,
  int nIcons,
)>('ExtractIconExW');

int ExtractIcon(
  int hInst,
  Pointer<Utf16> pszExeFileName,
  int nIconIndex,
) =>
    _ExtractIcon(
      hInst,
      pszExeFileName,
      nIconIndex,
    );

late final _ExtractIcon = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hInst,
  Pointer<Utf16> pszExeFileName,
  Uint32 nIconIndex,
),
    int Function(
  int hInst,
  Pointer<Utf16> pszExeFileName,
  int nIconIndex,
)>('ExtractIconW');

int FindExecutable(
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpDirectory,
  Pointer<Utf16> lpResult,
) =>
    _FindExecutable(
      lpFile,
      lpDirectory,
      lpResult,
    );

late final _FindExecutable = _shell32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpDirectory,
  Pointer<Utf16> lpResult,
),
    int Function(
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpDirectory,
  Pointer<Utf16> lpResult,
)>('FindExecutableW');

int GetCurrentProcessExplicitAppUserModelID(
  Pointer<Pointer<Utf16>> AppID,
) =>
    _GetCurrentProcessExplicitAppUserModelID(
      AppID,
    );

late final _GetCurrentProcessExplicitAppUserModelID = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> AppID,
),
    int Function(
  Pointer<Pointer<Utf16>> AppID,
)>('GetCurrentProcessExplicitAppUserModelID');

int GetFileNameFromBrowse(
  int hwnd,
  Pointer<Utf16> pszFilePath,
  int cchFilePath,
  Pointer<Utf16> pszWorkingDir,
  Pointer<Utf16> pszDefExt,
  Pointer<Utf16> pszFilters,
  Pointer<Utf16> pszTitle,
) =>
    _GetFileNameFromBrowse(
      hwnd,
      pszFilePath,
      cchFilePath,
      pszWorkingDir,
      pszDefExt,
      pszFilters,
      pszTitle,
    );

late final _GetFileNameFromBrowse = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszFilePath,
  Uint32 cchFilePath,
  Pointer<Utf16> pszWorkingDir,
  Pointer<Utf16> pszDefExt,
  Pointer<Utf16> pszFilters,
  Pointer<Utf16> pszTitle,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszFilePath,
  int cchFilePath,
  Pointer<Utf16> pszWorkingDir,
  Pointer<Utf16> pszDefExt,
  Pointer<Utf16> pszFilters,
  Pointer<Utf16> pszTitle,
)>('GetFileNameFromBrowse');

Pointer<ITEMIDLIST> ILAppendID(
  Pointer<ITEMIDLIST> pidl,
  Pointer<SHITEMID> pmkid,
  int fAppend,
) =>
    _ILAppendID(
      pidl,
      pmkid,
      fAppend,
    );

late final _ILAppendID = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<SHITEMID> pmkid,
  Int32 fAppend,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<SHITEMID> pmkid,
  int fAppend,
)>('ILAppendID');

Pointer<ITEMIDLIST> ILClone(
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILClone(
      pidl,
    );

late final _ILClone = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
)>('ILClone');

Pointer<ITEMIDLIST> ILCloneFirst(
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILCloneFirst(
      pidl,
    );

late final _ILCloneFirst = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
)>('ILCloneFirst');

Pointer<ITEMIDLIST> ILCombine(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
) =>
    _ILCombine(
      pidl1,
      pidl2,
    );

late final _ILCombine = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
)>('ILCombine');

Pointer<ITEMIDLIST> ILCreateFromPath(
  Pointer<Utf16> pszPath,
) =>
    _ILCreateFromPath(
      pszPath,
    );

late final _ILCreateFromPath = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<Utf16> pszPath,
)>('ILCreateFromPathW');

Pointer<ITEMIDLIST> ILFindChild(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<ITEMIDLIST> pidlChild,
) =>
    _ILFindChild(
      pidlParent,
      pidlChild,
    );

late final _ILFindChild = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<ITEMIDLIST> pidlChild,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<ITEMIDLIST> pidlChild,
)>('ILFindChild');

Pointer<ITEMIDLIST> ILFindLastID(
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILFindLastID(
      pidl,
    );

late final _ILFindLastID = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
)>('ILFindLastID');

void ILFree(
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILFree(
      pidl,
    );

late final _ILFree = _shell32.lookupFunction<
    Void Function(
  Pointer<ITEMIDLIST> pidl,
),
    void Function(
  Pointer<ITEMIDLIST> pidl,
)>('ILFree');

Pointer<ITEMIDLIST> ILGetNext(
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILGetNext(
      pidl,
    );

late final _ILGetNext = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<ITEMIDLIST> pidl,
)>('ILGetNext');

int ILGetSize(
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILGetSize(
      pidl,
    );

late final _ILGetSize = _shell32.lookupFunction<
    Uint32 Function(
  Pointer<ITEMIDLIST> pidl,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
)>('ILGetSize');

int ILIsEqual(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
) =>
    _ILIsEqual(
      pidl1,
      pidl2,
    );

late final _ILIsEqual = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
),
    int Function(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
)>('ILIsEqual');

int ILIsParent(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
  int fImmediate,
) =>
    _ILIsParent(
      pidl1,
      pidl2,
      fImmediate,
    );

late final _ILIsParent = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
  Int32 fImmediate,
),
    int Function(
  Pointer<ITEMIDLIST> pidl1,
  Pointer<ITEMIDLIST> pidl2,
  int fImmediate,
)>('ILIsParent');

int ILLoadFromStreamEx(
  Pointer<COMObject> pstm,
  Pointer<Pointer<ITEMIDLIST>> pidl,
) =>
    _ILLoadFromStreamEx(
      pstm,
      pidl,
    );

late final _ILLoadFromStreamEx = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<Pointer<ITEMIDLIST>> pidl,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<Pointer<ITEMIDLIST>> pidl,
)>('ILLoadFromStreamEx');

int ILRemoveLastID(
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILRemoveLastID(
      pidl,
    );

late final _ILRemoveLastID = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
)>('ILRemoveLastID');

int ILSaveToStream(
  Pointer<COMObject> pstm,
  Pointer<ITEMIDLIST> pidl,
) =>
    _ILSaveToStream(
      pstm,
      pidl,
    );

late final _ILSaveToStream = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<ITEMIDLIST> pidl,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<ITEMIDLIST> pidl,
)>('ILSaveToStream');

int InitNetworkAddressControl() => _InitNetworkAddressControl();

late final _InitNetworkAddressControl =
    _shell32.lookupFunction<Int32 Function(), int Function()>(
        'InitNetworkAddressControl');

int IsLFNDrive(
  Pointer<Utf16> pszPath,
) =>
    _IsLFNDrive(
      pszPath,
    );

late final _IsLFNDrive = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('IsLFNDriveW');

int IsNetDrive(
  int iDrive,
) =>
    _IsNetDrive(
      iDrive,
    );

late final _IsNetDrive = _shell32.lookupFunction<
    Int32 Function(
  Int32 iDrive,
),
    int Function(
  int iDrive,
)>('IsNetDrive');

int IsUserAnAdmin() => _IsUserAnAdmin();

late final _IsUserAnAdmin =
    _shell32.lookupFunction<Int32 Function(), int Function()>('IsUserAnAdmin');

Pointer<COMObject> OpenRegStream(
  int hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  int grfMode,
) =>
    _OpenRegStream(
      hkey,
      pszSubkey,
      pszValue,
      grfMode,
    );

late final _OpenRegStream = _shell32.lookupFunction<
    Pointer<COMObject> Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  Uint32 grfMode,
),
    Pointer<COMObject> Function(
  int hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  int grfMode,
)>('OpenRegStream');

int PathCleanupSpec(
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszSpec,
) =>
    _PathCleanupSpec(
      pszDir,
      pszSpec,
    );

late final _PathCleanupSpec = _shell32.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszSpec,
),
    int Function(
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszSpec,
)>('PathCleanupSpec');

void PathGetShortPath(
  Pointer<Utf16> pszLongPath,
) =>
    _PathGetShortPath(
      pszLongPath,
    );

late final _PathGetShortPath = _shell32.lookupFunction<
    Void Function(
  Pointer<Utf16> pszLongPath,
),
    void Function(
  Pointer<Utf16> pszLongPath,
)>('PathGetShortPath');

int PathIsExe(
  Pointer<Utf16> pszPath,
) =>
    _PathIsExe(
      pszPath,
    );

late final _PathIsExe = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsExe');

int PathIsSlow(
  Pointer<Utf16> pszFile,
  int dwAttr,
) =>
    _PathIsSlow(
      pszFile,
      dwAttr,
    );

late final _PathIsSlow = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFile,
  Uint32 dwAttr,
),
    int Function(
  Pointer<Utf16> pszFile,
  int dwAttr,
)>('PathIsSlowW');

int PathMakeUniqueName(
  Pointer<Utf16> pszUniqueName,
  int cchMax,
  Pointer<Utf16> pszTemplate,
  Pointer<Utf16> pszLongPlate,
  Pointer<Utf16> pszDir,
) =>
    _PathMakeUniqueName(
      pszUniqueName,
      cchMax,
      pszTemplate,
      pszLongPlate,
      pszDir,
    );

late final _PathMakeUniqueName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUniqueName,
  Uint32 cchMax,
  Pointer<Utf16> pszTemplate,
  Pointer<Utf16> pszLongPlate,
  Pointer<Utf16> pszDir,
),
    int Function(
  Pointer<Utf16> pszUniqueName,
  int cchMax,
  Pointer<Utf16> pszTemplate,
  Pointer<Utf16> pszLongPlate,
  Pointer<Utf16> pszDir,
)>('PathMakeUniqueName');

void PathQualify(
  Pointer<Utf16> psz,
) =>
    _PathQualify(
      psz,
    );

late final _PathQualify = _shell32.lookupFunction<
    Void Function(
  Pointer<Utf16> psz,
),
    void Function(
  Pointer<Utf16> psz,
)>('PathQualify');

int PathResolve(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Uint16>> dirs,
  int fFlags,
) =>
    _PathResolve(
      pszPath,
      dirs,
      fFlags,
    );

late final _PathResolve = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Uint16>> dirs,
  Int32 fFlags,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Uint16>> dirs,
  int fFlags,
)>('PathResolve');

int PathYetAnotherMakeUniqueName(
  Pointer<Utf16> pszUniqueName,
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszShort,
  Pointer<Utf16> pszFileSpec,
) =>
    _PathYetAnotherMakeUniqueName(
      pszUniqueName,
      pszPath,
      pszShort,
      pszFileSpec,
    );

late final _PathYetAnotherMakeUniqueName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUniqueName,
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszShort,
  Pointer<Utf16> pszFileSpec,
),
    int Function(
  Pointer<Utf16> pszUniqueName,
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszShort,
  Pointer<Utf16> pszFileSpec,
)>('PathYetAnotherMakeUniqueName');

int PickIconDlg(
  int hwnd,
  Pointer<Utf16> pszIconPath,
  int cchIconPath,
  Pointer<Int32> piIconIndex,
) =>
    _PickIconDlg(
      hwnd,
      pszIconPath,
      cchIconPath,
      piIconIndex,
    );

late final _PickIconDlg = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszIconPath,
  Uint32 cchIconPath,
  Pointer<Int32> piIconIndex,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszIconPath,
  int cchIconPath,
  Pointer<Int32> piIconIndex,
)>('PickIconDlg');

int ReadCabinetState(
  Pointer<CABINETSTATE> pcs,
  int cLength,
) =>
    _ReadCabinetState(
      pcs,
      cLength,
    );

late final _ReadCabinetState = _shell32.lookupFunction<
    Int32 Function(
  Pointer<CABINETSTATE> pcs,
  Int32 cLength,
),
    int Function(
  Pointer<CABINETSTATE> pcs,
  int cLength,
)>('ReadCabinetState');

int RealDriveType(
  int iDrive,
  int fOKToHitNet,
) =>
    _RealDriveType(
      iDrive,
      fOKToHitNet,
    );

late final _RealDriveType = _shell32.lookupFunction<
    Int32 Function(
  Int32 iDrive,
  Int32 fOKToHitNet,
),
    int Function(
  int iDrive,
  int fOKToHitNet,
)>('RealDriveType');

int RestartDialog(
  int hwnd,
  Pointer<Utf16> pszPrompt,
  int dwReturn,
) =>
    _RestartDialog(
      hwnd,
      pszPrompt,
      dwReturn,
    );

late final _RestartDialog = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszPrompt,
  Uint32 dwReturn,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszPrompt,
  int dwReturn,
)>('RestartDialog');

int RestartDialogEx(
  int hwnd,
  Pointer<Utf16> pszPrompt,
  int dwReturn,
  int dwReasonCode,
) =>
    _RestartDialogEx(
      hwnd,
      pszPrompt,
      dwReturn,
      dwReasonCode,
    );

late final _RestartDialogEx = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszPrompt,
  Uint32 dwReturn,
  Uint32 dwReasonCode,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszPrompt,
  int dwReturn,
  int dwReasonCode,
)>('RestartDialogEx');

int SHAddFromPropSheetExtArray(
  int hpsxa,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> lpfnAddPage,
  int lParam,
) =>
    _SHAddFromPropSheetExtArray(
      hpsxa,
      lpfnAddPage,
      lParam,
    );

late final _SHAddFromPropSheetExtArray = _shell32.lookupFunction<
    Uint32 Function(
  IntPtr hpsxa,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> lpfnAddPage,
  IntPtr lParam,
),
    int Function(
  int hpsxa,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> lpfnAddPage,
  int lParam,
)>('SHAddFromPropSheetExtArray');

void SHAddToRecentDocs(
  int uFlags,
  Pointer pv,
) =>
    _SHAddToRecentDocs(
      uFlags,
      pv,
    );

late final _SHAddToRecentDocs = _shell32.lookupFunction<
    Void Function(
  Uint32 uFlags,
  Pointer pv,
),
    void Function(
  int uFlags,
  Pointer pv,
)>('SHAddToRecentDocs');

Pointer SHAlloc(
  int cb,
) =>
    _SHAlloc(
      cb,
    );

late final _SHAlloc = _shell32.lookupFunction<
    Pointer Function(
  IntPtr cb,
),
    Pointer Function(
  int cb,
)>('SHAlloc');

int SHAppBarMessage(
  int dwMessage,
  Pointer<APPBARDATA> pData,
) =>
    _SHAppBarMessage(
      dwMessage,
      pData,
    );

late final _SHAppBarMessage = _shell32.lookupFunction<
    IntPtr Function(
  Uint32 dwMessage,
  Pointer<APPBARDATA> pData,
),
    int Function(
  int dwMessage,
  Pointer<APPBARDATA> pData,
)>('SHAppBarMessage');

int SHAssocEnumHandlers(
  Pointer<Utf16> pszExtra,
  int afFilter,
  Pointer<Pointer<COMObject>> ppEnumHandler,
) =>
    _SHAssocEnumHandlers(
      pszExtra,
      afFilter,
      ppEnumHandler,
    );

late final _SHAssocEnumHandlers = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszExtra,
  Int32 afFilter,
  Pointer<Pointer<COMObject>> ppEnumHandler,
),
    int Function(
  Pointer<Utf16> pszExtra,
  int afFilter,
  Pointer<Pointer<COMObject>> ppEnumHandler,
)>('SHAssocEnumHandlers');

int SHAssocEnumHandlersForProtocolByApplication(
  Pointer<Utf16> protocol,
  Pointer<GUID> riid,
  Pointer<Pointer> enumHandlers,
) =>
    _SHAssocEnumHandlersForProtocolByApplication(
      protocol,
      riid,
      enumHandlers,
    );

late final _SHAssocEnumHandlersForProtocolByApplication =
    _shell32.lookupFunction<
        Int32 Function(
  Pointer<Utf16> protocol,
  Pointer<GUID> riid,
  Pointer<Pointer> enumHandlers,
),
        int Function(
  Pointer<Utf16> protocol,
  Pointer<GUID> riid,
  Pointer<Pointer> enumHandlers,
)>('SHAssocEnumHandlersForProtocolByApplication');

int SHBindToFolderIDListParent(
  Pointer<COMObject> psfRoot,
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
) =>
    _SHBindToFolderIDListParent(
      psfRoot,
      pidl,
      riid,
      ppv,
      ppidlLast,
    );

late final _SHBindToFolderIDListParent = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psfRoot,
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
),
    int Function(
  Pointer<COMObject> psfRoot,
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
)>('SHBindToFolderIDListParent');

int SHBindToFolderIDListParentEx(
  Pointer<COMObject> psfRoot,
  Pointer<ITEMIDLIST> pidl,
  Pointer<COMObject> ppbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
) =>
    _SHBindToFolderIDListParentEx(
      psfRoot,
      pidl,
      ppbc,
      riid,
      ppv,
      ppidlLast,
    );

late final _SHBindToFolderIDListParentEx = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psfRoot,
  Pointer<ITEMIDLIST> pidl,
  Pointer<COMObject> ppbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
),
    int Function(
  Pointer<COMObject> psfRoot,
  Pointer<ITEMIDLIST> pidl,
  Pointer<COMObject> ppbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
)>('SHBindToFolderIDListParentEx');

int SHBindToObject(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHBindToObject(
      psf,
      pidl,
      pbc,
      riid,
      ppv,
    );

late final _SHBindToObject = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHBindToObject');

int SHBindToParent(
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
) =>
    _SHBindToParent(
      pidl,
      riid,
      ppv,
      ppidlLast,
    );

late final _SHBindToParent = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
  Pointer<Pointer<ITEMIDLIST>> ppidlLast,
)>('SHBindToParent');

Pointer<ITEMIDLIST> SHBrowseForFolder(
  Pointer<BROWSEINFO> lpbi,
) =>
    _SHBrowseForFolder(
      lpbi,
    );

late final _SHBrowseForFolder = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<BROWSEINFO> lpbi,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<BROWSEINFO> lpbi,
)>('SHBrowseForFolderW');

int SHCLSIDFromString(
  Pointer<Utf16> psz,
  Pointer<GUID> pclsid,
) =>
    _SHCLSIDFromString(
      psz,
      pclsid,
    );

late final _SHCLSIDFromString = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<Utf16> psz,
  Pointer<GUID> pclsid,
)>('SHCLSIDFromString');

int SHChangeNotification_Lock(
  int hChange,
  int dwProcId,
  Pointer<Pointer<Pointer<ITEMIDLIST>>> pppidl,
  Pointer<Int32> plEvent,
) =>
    _SHChangeNotification_Lock(
      hChange,
      dwProcId,
      pppidl,
      plEvent,
    );

late final _SHChangeNotification_Lock = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hChange,
  Uint32 dwProcId,
  Pointer<Pointer<Pointer<ITEMIDLIST>>> pppidl,
  Pointer<Int32> plEvent,
),
    int Function(
  int hChange,
  int dwProcId,
  Pointer<Pointer<Pointer<ITEMIDLIST>>> pppidl,
  Pointer<Int32> plEvent,
)>('SHChangeNotification_Lock');

int SHChangeNotification_Unlock(
  int hLock,
) =>
    _SHChangeNotification_Unlock(
      hLock,
    );

late final _SHChangeNotification_Unlock = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hLock,
),
    int Function(
  int hLock,
)>('SHChangeNotification_Unlock');

void SHChangeNotify(
  int wEventId,
  int uFlags,
  Pointer dwItem1,
  Pointer dwItem2,
) =>
    _SHChangeNotify(
      wEventId,
      uFlags,
      dwItem1,
      dwItem2,
    );

late final _SHChangeNotify = _shell32.lookupFunction<
    Void Function(
  Uint32 wEventId,
  Uint32 uFlags,
  Pointer dwItem1,
  Pointer dwItem2,
),
    void Function(
  int wEventId,
  int uFlags,
  Pointer dwItem1,
  Pointer dwItem2,
)>('SHChangeNotify');

int SHChangeNotifyDeregister(
  int ulID,
) =>
    _SHChangeNotifyDeregister(
      ulID,
    );

late final _SHChangeNotifyDeregister = _shell32.lookupFunction<
    Int32 Function(
  Uint32 ulID,
),
    int Function(
  int ulID,
)>('SHChangeNotifyDeregister');

int SHChangeNotifyRegister(
  int hwnd,
  int fSources,
  int fEvents,
  int wMsg,
  int cEntries,
  Pointer<SHChangeNotifyEntry> pshcne,
) =>
    _SHChangeNotifyRegister(
      hwnd,
      fSources,
      fEvents,
      wMsg,
      cEntries,
      pshcne,
    );

late final _SHChangeNotifyRegister = _shell32.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Int32 fSources,
  Int32 fEvents,
  Uint32 wMsg,
  Int32 cEntries,
  Pointer<SHChangeNotifyEntry> pshcne,
),
    int Function(
  int hwnd,
  int fSources,
  int fEvents,
  int wMsg,
  int cEntries,
  Pointer<SHChangeNotifyEntry> pshcne,
)>('SHChangeNotifyRegister');

void SHChangeNotifyRegisterThread(
  int status,
) =>
    _SHChangeNotifyRegisterThread(
      status,
    );

late final _SHChangeNotifyRegisterThread = _shell32.lookupFunction<
    Void Function(
  Int32 status,
),
    void Function(
  int status,
)>('SHChangeNotifyRegisterThread');

Pointer<ITEMIDLIST> SHCloneSpecialIDList(
  int hwnd,
  int csidl,
  int fCreate,
) =>
    _SHCloneSpecialIDList(
      hwnd,
      csidl,
      fCreate,
    );

late final _SHCloneSpecialIDList = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  IntPtr hwnd,
  Int32 csidl,
  Int32 fCreate,
),
    Pointer<ITEMIDLIST> Function(
  int hwnd,
  int csidl,
  int fCreate,
)>('SHCloneSpecialIDList');

int SHCoCreateInstance(
  Pointer<Utf16> pszCLSID,
  Pointer<GUID> pclsid,
  Pointer<COMObject> pUnkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCoCreateInstance(
      pszCLSID,
      pclsid,
      pUnkOuter,
      riid,
      ppv,
    );

late final _SHCoCreateInstance = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszCLSID,
  Pointer<GUID> pclsid,
  Pointer<COMObject> pUnkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Utf16> pszCLSID,
  Pointer<GUID> pclsid,
  Pointer<COMObject> pUnkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCoCreateInstance');

int SHCreateAssociationRegistration(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateAssociationRegistration(
      riid,
      ppv,
    );

late final _SHCreateAssociationRegistration = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateAssociationRegistration');

int SHCreateDataObject(
  Pointer<ITEMIDLIST> pidlFolder,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<COMObject> pdtInner,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateDataObject(
      pidlFolder,
      cidl,
      apidl,
      pdtInner,
      riid,
      ppv,
    );

late final _SHCreateDataObject = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlFolder,
  Uint32 cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<COMObject> pdtInner,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<ITEMIDLIST> pidlFolder,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Pointer<COMObject> pdtInner,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateDataObject');

int SHCreateDefaultContextMenu(
  Pointer<DEFCONTEXTMENU> pdcm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateDefaultContextMenu(
      pdcm,
      riid,
      ppv,
    );

late final _SHCreateDefaultContextMenu = _shell32.lookupFunction<
    Int32 Function(
  Pointer<DEFCONTEXTMENU> pdcm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<DEFCONTEXTMENU> pdcm,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateDefaultContextMenu');

int SHCreateDefaultExtractIcon(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateDefaultExtractIcon(
      riid,
      ppv,
    );

late final _SHCreateDefaultExtractIcon = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateDefaultExtractIcon');

int SHCreateDefaultPropertiesOp(
  Pointer<COMObject> psi,
  Pointer<Pointer<COMObject>> ppFileOp,
) =>
    _SHCreateDefaultPropertiesOp(
      psi,
      ppFileOp,
    );

late final _SHCreateDefaultPropertiesOp = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psi,
  Pointer<Pointer<COMObject>> ppFileOp,
),
    int Function(
  Pointer<COMObject> psi,
  Pointer<Pointer<COMObject>> ppFileOp,
)>('SHCreateDefaultPropertiesOp');

int SHCreateDirectory(
  int hwnd,
  Pointer<Utf16> pszPath,
) =>
    _SHCreateDirectory(
      hwnd,
      pszPath,
    );

late final _SHCreateDirectory = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszPath,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszPath,
)>('SHCreateDirectory');

int SHCreateDirectoryEx(
  int hwnd,
  Pointer<Utf16> pszPath,
  Pointer<SECURITY_ATTRIBUTES> psa,
) =>
    _SHCreateDirectoryEx(
      hwnd,
      pszPath,
      psa,
    );

late final _SHCreateDirectoryEx = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszPath,
  Pointer<SECURITY_ATTRIBUTES> psa,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszPath,
  Pointer<SECURITY_ATTRIBUTES> psa,
)>('SHCreateDirectoryExW');

int SHCreateFileExtractIcon(
  Pointer<Utf16> pszFile,
  int dwFileAttributes,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateFileExtractIcon(
      pszFile,
      dwFileAttributes,
      riid,
      ppv,
    );

late final _SHCreateFileExtractIcon = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFile,
  Uint32 dwFileAttributes,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Utf16> pszFile,
  int dwFileAttributes,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateFileExtractIconW');

int SHCreateItemFromIDList(
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateItemFromIDList(
      pidl,
      riid,
      ppv,
    );

late final _SHCreateItemFromIDList = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateItemFromIDList');

int SHCreateItemFromParsingName(
  Pointer<Utf16> pszPath,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateItemFromParsingName(
      pszPath,
      pbc,
      riid,
      ppv,
    );

late final _SHCreateItemFromParsingName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateItemFromParsingName');

int SHCreateItemFromRelativeName(
  Pointer<COMObject> psiParent,
  Pointer<Utf16> pszName,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateItemFromRelativeName(
      psiParent,
      pszName,
      pbc,
      riid,
      ppv,
    );

late final _SHCreateItemFromRelativeName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psiParent,
  Pointer<Utf16> pszName,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> psiParent,
  Pointer<Utf16> pszName,
  Pointer<COMObject> pbc,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateItemFromRelativeName');

int SHCreateItemInKnownFolder(
  Pointer<GUID> kfid,
  int dwKFFlags,
  Pointer<Utf16> pszItem,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateItemInKnownFolder(
      kfid,
      dwKFFlags,
      pszItem,
      riid,
      ppv,
    );

late final _SHCreateItemInKnownFolder = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> kfid,
  Uint32 dwKFFlags,
  Pointer<Utf16> pszItem,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> kfid,
  int dwKFFlags,
  Pointer<Utf16> pszItem,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateItemInKnownFolder');

int SHCreateItemWithParent(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psfParent,
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvItem,
) =>
    _SHCreateItemWithParent(
      pidlParent,
      psfParent,
      pidl,
      riid,
      ppvItem,
    );

late final _SHCreateItemWithParent = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psfParent,
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvItem,
),
    int Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psfParent,
  Pointer<ITEMIDLIST> pidl,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvItem,
)>('SHCreateItemWithParent');

int SHCreateProcessAsUser(
  Pointer<SHCREATEPROCESSINFO> pscpi,
) =>
    _SHCreateProcessAsUser(
      pscpi,
    );

late final _SHCreateProcessAsUser = _shell32.lookupFunction<
    Int32 Function(
  Pointer<SHCREATEPROCESSINFO> pscpi,
),
    int Function(
  Pointer<SHCREATEPROCESSINFO> pscpi,
)>('SHCreateProcessAsUserW');

int SHCreatePropSheetExtArray(
  int hKey,
  Pointer<Utf16> pszSubKey,
  int max_iface,
) =>
    _SHCreatePropSheetExtArray(
      hKey,
      pszSubKey,
      max_iface,
    );

late final _SHCreatePropSheetExtArray = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hKey,
  Pointer<Utf16> pszSubKey,
  Uint32 max_iface,
),
    int Function(
  int hKey,
  Pointer<Utf16> pszSubKey,
  int max_iface,
)>('SHCreatePropSheetExtArray');

int SHCreateQueryCancelAutoPlayMoniker(
  Pointer<Pointer<COMObject>> ppmoniker,
) =>
    _SHCreateQueryCancelAutoPlayMoniker(
      ppmoniker,
    );

late final _SHCreateQueryCancelAutoPlayMoniker = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppmoniker,
),
    int Function(
  Pointer<Pointer<COMObject>> ppmoniker,
)>('SHCreateQueryCancelAutoPlayMoniker');

int SHCreateShellFolderView(
  Pointer<SFV_CREATE> pcsfv,
  Pointer<Pointer<COMObject>> ppsv,
) =>
    _SHCreateShellFolderView(
      pcsfv,
      ppsv,
    );

late final _SHCreateShellFolderView = _shell32.lookupFunction<
    Int32 Function(
  Pointer<SFV_CREATE> pcsfv,
  Pointer<Pointer<COMObject>> ppsv,
),
    int Function(
  Pointer<SFV_CREATE> pcsfv,
  Pointer<Pointer<COMObject>> ppsv,
)>('SHCreateShellFolderView');

int SHCreateShellFolderViewEx(
  Pointer<CSFV> pcsfv,
  Pointer<Pointer<COMObject>> ppsv,
) =>
    _SHCreateShellFolderViewEx(
      pcsfv,
      ppsv,
    );

late final _SHCreateShellFolderViewEx = _shell32.lookupFunction<
    Int32 Function(
  Pointer<CSFV> pcsfv,
  Pointer<Pointer<COMObject>> ppsv,
),
    int Function(
  Pointer<CSFV> pcsfv,
  Pointer<Pointer<COMObject>> ppsv,
)>('SHCreateShellFolderViewEx');

int SHCreateShellItem(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psfParent,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<COMObject>> ppsi,
) =>
    _SHCreateShellItem(
      pidlParent,
      psfParent,
      pidl,
      ppsi,
    );

late final _SHCreateShellItem = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psfParent,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<COMObject>> ppsi,
),
    int Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psfParent,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<COMObject>> ppsi,
)>('SHCreateShellItem');

int SHCreateShellItemArray(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psf,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  Pointer<Pointer<COMObject>> ppsiItemArray,
) =>
    _SHCreateShellItemArray(
      pidlParent,
      psf,
      cidl,
      ppidl,
      ppsiItemArray,
    );

late final _SHCreateShellItemArray = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psf,
  Uint32 cidl,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  Pointer<Pointer<COMObject>> ppsiItemArray,
),
    int Function(
  Pointer<ITEMIDLIST> pidlParent,
  Pointer<COMObject> psf,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  Pointer<Pointer<COMObject>> ppsiItemArray,
)>('SHCreateShellItemArray');

int SHCreateShellItemArrayFromDataObject(
  Pointer<COMObject> pdo,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateShellItemArrayFromDataObject(
      pdo,
      riid,
      ppv,
    );

late final _SHCreateShellItemArrayFromDataObject = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pdo,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pdo,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateShellItemArrayFromDataObject');

int SHCreateShellItemArrayFromIDLists(
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> rgpidl,
  Pointer<Pointer<COMObject>> ppsiItemArray,
) =>
    _SHCreateShellItemArrayFromIDLists(
      cidl,
      rgpidl,
      ppsiItemArray,
    );

late final _SHCreateShellItemArrayFromIDLists = _shell32.lookupFunction<
    Int32 Function(
  Uint32 cidl,
  Pointer<Pointer<ITEMIDLIST>> rgpidl,
  Pointer<Pointer<COMObject>> ppsiItemArray,
),
    int Function(
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> rgpidl,
  Pointer<Pointer<COMObject>> ppsiItemArray,
)>('SHCreateShellItemArrayFromIDLists');

int SHCreateShellItemArrayFromShellItem(
  Pointer<COMObject> psi,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHCreateShellItemArrayFromShellItem(
      psi,
      riid,
      ppv,
    );

late final _SHCreateShellItemArrayFromShellItem = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psi,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> psi,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHCreateShellItemArrayFromShellItem');

int SHCreateStdEnumFmtEtc(
  int cfmt,
  Pointer<FORMATETC> afmt,
  Pointer<Pointer<COMObject>> ppenumFormatEtc,
) =>
    _SHCreateStdEnumFmtEtc(
      cfmt,
      afmt,
      ppenumFormatEtc,
    );

late final _SHCreateStdEnumFmtEtc = _shell32.lookupFunction<
    Int32 Function(
  Uint32 cfmt,
  Pointer<FORMATETC> afmt,
  Pointer<Pointer<COMObject>> ppenumFormatEtc,
),
    int Function(
  int cfmt,
  Pointer<FORMATETC> afmt,
  Pointer<Pointer<COMObject>> ppenumFormatEtc,
)>('SHCreateStdEnumFmtEtc');

int SHDefExtractIcon(
  Pointer<Utf16> pszIconFile,
  int iIndex,
  int uFlags,
  Pointer<IntPtr> phiconLarge,
  Pointer<IntPtr> phiconSmall,
  int nIconSize,
) =>
    _SHDefExtractIcon(
      pszIconFile,
      iIndex,
      uFlags,
      phiconLarge,
      phiconSmall,
      nIconSize,
    );

late final _SHDefExtractIcon = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszIconFile,
  Int32 iIndex,
  Uint32 uFlags,
  Pointer<IntPtr> phiconLarge,
  Pointer<IntPtr> phiconSmall,
  Uint32 nIconSize,
),
    int Function(
  Pointer<Utf16> pszIconFile,
  int iIndex,
  int uFlags,
  Pointer<IntPtr> phiconLarge,
  Pointer<IntPtr> phiconSmall,
  int nIconSize,
)>('SHDefExtractIconW');

void SHDestroyPropSheetExtArray(
  int hpsxa,
) =>
    _SHDestroyPropSheetExtArray(
      hpsxa,
    );

late final _SHDestroyPropSheetExtArray = _shell32.lookupFunction<
    Void Function(
  IntPtr hpsxa,
),
    void Function(
  int hpsxa,
)>('SHDestroyPropSheetExtArray');

int SHDoDragDrop(
  int hwnd,
  Pointer<COMObject> pdata,
  Pointer<COMObject> pdsrc,
  int dwEffect,
  Pointer<Uint32> pdwEffect,
) =>
    _SHDoDragDrop(
      hwnd,
      pdata,
      pdsrc,
      dwEffect,
      pdwEffect,
    );

late final _SHDoDragDrop = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<COMObject> pdata,
  Pointer<COMObject> pdsrc,
  Uint32 dwEffect,
  Pointer<Uint32> pdwEffect,
),
    int Function(
  int hwnd,
  Pointer<COMObject> pdata,
  Pointer<COMObject> pdsrc,
  int dwEffect,
  Pointer<Uint32> pdwEffect,
)>('SHDoDragDrop');

int SHEmptyRecycleBin(
  int hwnd,
  Pointer<Utf16> pszRootPath,
  int dwFlags,
) =>
    _SHEmptyRecycleBin(
      hwnd,
      pszRootPath,
      dwFlags,
    );

late final _SHEmptyRecycleBin = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszRootPath,
  Uint32 dwFlags,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszRootPath,
  int dwFlags,
)>('SHEmptyRecycleBinW');

int SHEnumerateUnreadMailAccounts(
  int hKeyUser,
  int dwIndex,
  Pointer<Utf16> pszMailAddress,
  int cchMailAddress,
) =>
    _SHEnumerateUnreadMailAccounts(
      hKeyUser,
      dwIndex,
      pszMailAddress,
      cchMailAddress,
    );

late final _SHEnumerateUnreadMailAccounts = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hKeyUser,
  Uint32 dwIndex,
  Pointer<Utf16> pszMailAddress,
  Int32 cchMailAddress,
),
    int Function(
  int hKeyUser,
  int dwIndex,
  Pointer<Utf16> pszMailAddress,
  int cchMailAddress,
)>('SHEnumerateUnreadMailAccountsW');

int SHEvaluateSystemCommandTemplate(
  Pointer<Utf16> pszCmdTemplate,
  Pointer<Pointer<Utf16>> ppszApplication,
  Pointer<Pointer<Utf16>> ppszCommandLine,
  Pointer<Pointer<Utf16>> ppszParameters,
) =>
    _SHEvaluateSystemCommandTemplate(
      pszCmdTemplate,
      ppszApplication,
      ppszCommandLine,
      ppszParameters,
    );

late final _SHEvaluateSystemCommandTemplate = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszCmdTemplate,
  Pointer<Pointer<Utf16>> ppszApplication,
  Pointer<Pointer<Utf16>> ppszCommandLine,
  Pointer<Pointer<Utf16>> ppszParameters,
),
    int Function(
  Pointer<Utf16> pszCmdTemplate,
  Pointer<Pointer<Utf16>> ppszApplication,
  Pointer<Pointer<Utf16>> ppszCommandLine,
  Pointer<Pointer<Utf16>> ppszParameters,
)>('SHEvaluateSystemCommandTemplate');

int SHFileOperation(
  Pointer<SHFILEOPSTRUCT> lpFileOp,
) =>
    _SHFileOperation(
      lpFileOp,
    );

late final _SHFileOperation = _shell32.lookupFunction<
    Int32 Function(
  Pointer<SHFILEOPSTRUCT> lpFileOp,
),
    int Function(
  Pointer<SHFILEOPSTRUCT> lpFileOp,
)>('SHFileOperationW');

int SHFindFiles(
  Pointer<ITEMIDLIST> pidlFolder,
  Pointer<ITEMIDLIST> pidlSaveFile,
) =>
    _SHFindFiles(
      pidlFolder,
      pidlSaveFile,
    );

late final _SHFindFiles = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlFolder,
  Pointer<ITEMIDLIST> pidlSaveFile,
),
    int Function(
  Pointer<ITEMIDLIST> pidlFolder,
  Pointer<ITEMIDLIST> pidlSaveFile,
)>('SHFindFiles');

Pointer<COMObject> SHFind_InitMenuPopup(
  int hmenu,
  int hwndOwner,
  int idCmdFirst,
  int idCmdLast,
) =>
    _SHFind_InitMenuPopup(
      hmenu,
      hwndOwner,
      idCmdFirst,
      idCmdLast,
    );

late final _SHFind_InitMenuPopup = _shell32.lookupFunction<
    Pointer<COMObject> Function(
  IntPtr hmenu,
  IntPtr hwndOwner,
  Uint32 idCmdFirst,
  Uint32 idCmdLast,
),
    Pointer<COMObject> Function(
  int hmenu,
  int hwndOwner,
  int idCmdFirst,
  int idCmdLast,
)>('SHFind_InitMenuPopup');

void SHFlushSFCache() => _SHFlushSFCache();

late final _SHFlushSFCache =
    _shell32.lookupFunction<Void Function(), void Function()>('SHFlushSFCache');

int SHFormatDrive(
  int hwnd,
  int drive,
  int fmtID,
  int options,
) =>
    _SHFormatDrive(
      hwnd,
      drive,
      fmtID,
      options,
    );

late final _SHFormatDrive = _shell32.lookupFunction<
    Uint32 Function(
  IntPtr hwnd,
  Uint32 drive,
  Uint32 fmtID,
  Int32 options,
),
    int Function(
  int hwnd,
  int drive,
  int fmtID,
  int options,
)>('SHFormatDrive');

void SHFree(
  Pointer pv,
) =>
    _SHFree(
      pv,
    );

late final _SHFree = _shell32.lookupFunction<
    Void Function(
  Pointer pv,
),
    void Function(
  Pointer pv,
)>('SHFree');

void SHFreeNameMappings(
  int hNameMappings,
) =>
    _SHFreeNameMappings(
      hNameMappings,
    );

late final _SHFreeNameMappings = _shell32.lookupFunction<
    Void Function(
  IntPtr hNameMappings,
),
    void Function(
  int hNameMappings,
)>('SHFreeNameMappings');

int SHGetAttributesFromDataObject(
  Pointer<COMObject> pdo,
  int dwAttributeMask,
  Pointer<Uint32> pdwAttributes,
  Pointer<Uint32> pcItems,
) =>
    _SHGetAttributesFromDataObject(
      pdo,
      dwAttributeMask,
      pdwAttributes,
      pcItems,
    );

late final _SHGetAttributesFromDataObject = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pdo,
  Uint32 dwAttributeMask,
  Pointer<Uint32> pdwAttributes,
  Pointer<Uint32> pcItems,
),
    int Function(
  Pointer<COMObject> pdo,
  int dwAttributeMask,
  Pointer<Uint32> pdwAttributes,
  Pointer<Uint32> pcItems,
)>('SHGetAttributesFromDataObject');

int SHGetDataFromIDList(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  int nFormat,
  Pointer pv,
  int cb,
) =>
    _SHGetDataFromIDList(
      psf,
      pidl,
      nFormat,
      pv,
      cb,
    );

late final _SHGetDataFromIDList = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  Int32 nFormat,
  Pointer pv,
  Int32 cb,
),
    int Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidl,
  int nFormat,
  Pointer pv,
  int cb,
)>('SHGetDataFromIDListW');

int SHGetDesktopFolder(
  Pointer<Pointer<COMObject>> ppshf,
) =>
    _SHGetDesktopFolder(
      ppshf,
    );

late final _SHGetDesktopFolder = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppshf,
),
    int Function(
  Pointer<Pointer<COMObject>> ppshf,
)>('SHGetDesktopFolder');

int SHGetDiskFreeSpaceEx(
  Pointer<Utf16> pszDirectoryName,
  Pointer<Uint64> pulFreeBytesAvailableToCaller,
  Pointer<Uint64> pulTotalNumberOfBytes,
  Pointer<Uint64> pulTotalNumberOfFreeBytes,
) =>
    _SHGetDiskFreeSpaceEx(
      pszDirectoryName,
      pulFreeBytesAvailableToCaller,
      pulTotalNumberOfBytes,
      pulTotalNumberOfFreeBytes,
    );

late final _SHGetDiskFreeSpaceEx = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszDirectoryName,
  Pointer<Uint64> pulFreeBytesAvailableToCaller,
  Pointer<Uint64> pulTotalNumberOfBytes,
  Pointer<Uint64> pulTotalNumberOfFreeBytes,
),
    int Function(
  Pointer<Utf16> pszDirectoryName,
  Pointer<Uint64> pulFreeBytesAvailableToCaller,
  Pointer<Uint64> pulTotalNumberOfBytes,
  Pointer<Uint64> pulTotalNumberOfFreeBytes,
)>('SHGetDiskFreeSpaceExW');

int SHGetDriveMedia(
  Pointer<Utf16> pszDrive,
  Pointer<Uint32> pdwMediaContent,
) =>
    _SHGetDriveMedia(
      pszDrive,
      pdwMediaContent,
    );

late final _SHGetDriveMedia = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszDrive,
  Pointer<Uint32> pdwMediaContent,
),
    int Function(
  Pointer<Utf16> pszDrive,
  Pointer<Uint32> pdwMediaContent,
)>('SHGetDriveMedia');

int SHGetFileInfo(
  Pointer<Utf16> pszPath,
  int dwFileAttributes,
  Pointer<SHFILEINFO> psfi,
  int cbFileInfo,
  int uFlags,
) =>
    _SHGetFileInfo(
      pszPath,
      dwFileAttributes,
      psfi,
      cbFileInfo,
      uFlags,
    );

late final _SHGetFileInfo = _shell32.lookupFunction<
    IntPtr Function(
  Pointer<Utf16> pszPath,
  Uint32 dwFileAttributes,
  Pointer<SHFILEINFO> psfi,
  Uint32 cbFileInfo,
  Int32 uFlags,
),
    int Function(
  Pointer<Utf16> pszPath,
  int dwFileAttributes,
  Pointer<SHFILEINFO> psfi,
  int cbFileInfo,
  int uFlags,
)>('SHGetFileInfoW');

int SHGetFolderLocation(
  int hwnd,
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
) =>
    _SHGetFolderLocation(
      hwnd,
      csidl,
      hToken,
      dwFlags,
      ppidl,
    );

late final _SHGetFolderLocation = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 csidl,
  IntPtr hToken,
  Uint32 dwFlags,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
),
    int Function(
  int hwnd,
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
)>('SHGetFolderLocation');

int SHGetFolderPathAndSubDir(
  int hwnd,
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Utf16> pszSubDir,
  Pointer<Utf16> pszPath,
) =>
    _SHGetFolderPathAndSubDir(
      hwnd,
      csidl,
      hToken,
      dwFlags,
      pszSubDir,
      pszPath,
    );

late final _SHGetFolderPathAndSubDir = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 csidl,
  IntPtr hToken,
  Uint32 dwFlags,
  Pointer<Utf16> pszSubDir,
  Pointer<Utf16> pszPath,
),
    int Function(
  int hwnd,
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Utf16> pszSubDir,
  Pointer<Utf16> pszPath,
)>('SHGetFolderPathAndSubDirW');

int SHGetFolderPath(
  int hwnd,
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Utf16> pszPath,
) =>
    _SHGetFolderPath(
      hwnd,
      csidl,
      hToken,
      dwFlags,
      pszPath,
    );

late final _SHGetFolderPath = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 csidl,
  IntPtr hToken,
  Uint32 dwFlags,
  Pointer<Utf16> pszPath,
),
    int Function(
  int hwnd,
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Utf16> pszPath,
)>('SHGetFolderPathW');

int SHGetIDListFromObject(
  Pointer<COMObject> punk,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
) =>
    _SHGetIDListFromObject(
      punk,
      ppidl,
    );

late final _SHGetIDListFromObject = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
)>('SHGetIDListFromObject');

int SHGetIconOverlayIndex(
  Pointer<Utf16> pszIconPath,
  int iIconIndex,
) =>
    _SHGetIconOverlayIndex(
      pszIconPath,
      iIconIndex,
    );

late final _SHGetIconOverlayIndex = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszIconPath,
  Int32 iIconIndex,
),
    int Function(
  Pointer<Utf16> pszIconPath,
  int iIconIndex,
)>('SHGetIconOverlayIndexW');

int SHGetImageList(
  int iImageList,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
) =>
    _SHGetImageList(
      iImageList,
      riid,
      ppvObj,
    );

late final _SHGetImageList = _shell32.lookupFunction<
    Int32 Function(
  Int32 iImageList,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
),
    int Function(
  int iImageList,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
)>('SHGetImageList');

int SHGetInstanceExplorer(
  Pointer<Pointer<COMObject>> ppunk,
) =>
    _SHGetInstanceExplorer(
      ppunk,
    );

late final _SHGetInstanceExplorer = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppunk,
),
    int Function(
  Pointer<Pointer<COMObject>> ppunk,
)>('SHGetInstanceExplorer');

int SHGetItemFromDataObject(
  Pointer<COMObject> pdtobj,
  int dwFlags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHGetItemFromDataObject(
      pdtobj,
      dwFlags,
      riid,
      ppv,
    );

late final _SHGetItemFromDataObject = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pdtobj,
  Int32 dwFlags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pdtobj,
  int dwFlags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHGetItemFromDataObject');

int SHGetItemFromObject(
  Pointer<COMObject> punk,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHGetItemFromObject(
      punk,
      riid,
      ppv,
    );

late final _SHGetItemFromObject = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHGetItemFromObject');

int SHGetKnownFolderIDList(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
) =>
    _SHGetKnownFolderIDList(
      rfid,
      dwFlags,
      hToken,
      ppidl,
    );

late final _SHGetKnownFolderIDList = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rfid,
  Uint32 dwFlags,
  IntPtr hToken,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
),
    int Function(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
)>('SHGetKnownFolderIDList');

int SHGetKnownFolderItem(
  Pointer<GUID> rfid,
  int flags,
  int hToken,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHGetKnownFolderItem(
      rfid,
      flags,
      hToken,
      riid,
      ppv,
    );

late final _SHGetKnownFolderItem = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rfid,
  Int32 flags,
  IntPtr hToken,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<GUID> rfid,
  int flags,
  int hToken,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHGetKnownFolderItem');

int SHGetKnownFolderPath(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<Pointer<Utf16>> ppszPath,
) =>
    _SHGetKnownFolderPath(
      rfid,
      dwFlags,
      hToken,
      ppszPath,
    );

late final _SHGetKnownFolderPath = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rfid,
  Uint32 dwFlags,
  IntPtr hToken,
  Pointer<Pointer<Utf16>> ppszPath,
),
    int Function(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<Pointer<Utf16>> ppszPath,
)>('SHGetKnownFolderPath');

int SHGetLocalizedName(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszResModule,
  int cch,
  Pointer<Int32> pidsRes,
) =>
    _SHGetLocalizedName(
      pszPath,
      pszResModule,
      cch,
      pidsRes,
    );

late final _SHGetLocalizedName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszResModule,
  Uint32 cch,
  Pointer<Int32> pidsRes,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszResModule,
  int cch,
  Pointer<Int32> pidsRes,
)>('SHGetLocalizedName');

int SHGetMalloc(
  Pointer<Pointer<COMObject>> ppMalloc,
) =>
    _SHGetMalloc(
      ppMalloc,
    );

late final _SHGetMalloc = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppMalloc,
),
    int Function(
  Pointer<Pointer<COMObject>> ppMalloc,
)>('SHGetMalloc');

int SHGetNameFromIDList(
  Pointer<ITEMIDLIST> pidl,
  int sigdnName,
  Pointer<Pointer<Utf16>> ppszName,
) =>
    _SHGetNameFromIDList(
      pidl,
      sigdnName,
      ppszName,
    );

late final _SHGetNameFromIDList = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
  Int32 sigdnName,
  Pointer<Pointer<Utf16>> ppszName,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
  int sigdnName,
  Pointer<Pointer<Utf16>> ppszName,
)>('SHGetNameFromIDList');

int SHGetNewLinkInfo(
  Pointer<Utf16> pszLinkTo,
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszName,
  Pointer<Int32> pfMustCopy,
  int uFlags,
) =>
    _SHGetNewLinkInfo(
      pszLinkTo,
      pszDir,
      pszName,
      pfMustCopy,
      uFlags,
    );

late final _SHGetNewLinkInfo = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLinkTo,
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszName,
  Pointer<Int32> pfMustCopy,
  Uint32 uFlags,
),
    int Function(
  Pointer<Utf16> pszLinkTo,
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszName,
  Pointer<Int32> pfMustCopy,
  int uFlags,
)>('SHGetNewLinkInfoW');

int SHGetPathFromIDListEx(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszPath,
  int cchPath,
  int uOpts,
) =>
    _SHGetPathFromIDListEx(
      pidl,
      pszPath,
      cchPath,
      uOpts,
    );

late final _SHGetPathFromIDListEx = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszPath,
  Uint32 cchPath,
  Int32 uOpts,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszPath,
  int cchPath,
  int uOpts,
)>('SHGetPathFromIDListEx');

int SHGetPathFromIDList(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszPath,
) =>
    _SHGetPathFromIDList(
      pidl,
      pszPath,
    );

late final _SHGetPathFromIDList = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszPath,
)>('SHGetPathFromIDListW');

int SHGetRealIDL(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidlSimple,
  Pointer<Pointer<ITEMIDLIST>> ppidlReal,
) =>
    _SHGetRealIDL(
      psf,
      pidlSimple,
      ppidlReal,
    );

late final _SHGetRealIDL = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidlSimple,
  Pointer<Pointer<ITEMIDLIST>> ppidlReal,
),
    int Function(
  Pointer<COMObject> psf,
  Pointer<ITEMIDLIST> pidlSimple,
  Pointer<Pointer<ITEMIDLIST>> ppidlReal,
)>('SHGetRealIDL');

int SHGetSetFolderCustomSettings(
  Pointer<SHFOLDERCUSTOMSETTINGS> pfcs,
  Pointer<Utf16> pszPath,
  int dwReadWrite,
) =>
    _SHGetSetFolderCustomSettings(
      pfcs,
      pszPath,
      dwReadWrite,
    );

late final _SHGetSetFolderCustomSettings = _shell32.lookupFunction<
    Int32 Function(
  Pointer<SHFOLDERCUSTOMSETTINGS> pfcs,
  Pointer<Utf16> pszPath,
  Uint32 dwReadWrite,
),
    int Function(
  Pointer<SHFOLDERCUSTOMSETTINGS> pfcs,
  Pointer<Utf16> pszPath,
  int dwReadWrite,
)>('SHGetSetFolderCustomSettings');

void SHGetSetSettings(
  Pointer<SHELLSTATE> lpss,
  int dwMask,
  int bSet,
) =>
    _SHGetSetSettings(
      lpss,
      dwMask,
      bSet,
    );

late final _SHGetSetSettings = _shell32.lookupFunction<
    Void Function(
  Pointer<SHELLSTATE> lpss,
  Uint32 dwMask,
  Int32 bSet,
),
    void Function(
  Pointer<SHELLSTATE> lpss,
  int dwMask,
  int bSet,
)>('SHGetSetSettings');

void SHGetSettings(
  Pointer<SHELLFLAGSTATE> psfs,
  int dwMask,
) =>
    _SHGetSettings(
      psfs,
      dwMask,
    );

late final _SHGetSettings = _shell32.lookupFunction<
    Void Function(
  Pointer<SHELLFLAGSTATE> psfs,
  Uint32 dwMask,
),
    void Function(
  Pointer<SHELLFLAGSTATE> psfs,
  int dwMask,
)>('SHGetSettings');

int SHGetSpecialFolderLocation(
  int hwnd,
  int csidl,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
) =>
    _SHGetSpecialFolderLocation(
      hwnd,
      csidl,
      ppidl,
    );

late final _SHGetSpecialFolderLocation = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 csidl,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
),
    int Function(
  int hwnd,
  int csidl,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
)>('SHGetSpecialFolderLocation');

int SHGetSpecialFolderPath(
  int hwnd,
  Pointer<Utf16> pszPath,
  int csidl,
  int fCreate,
) =>
    _SHGetSpecialFolderPath(
      hwnd,
      pszPath,
      csidl,
      fCreate,
    );

late final _SHGetSpecialFolderPath = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszPath,
  Int32 csidl,
  Int32 fCreate,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszPath,
  int csidl,
  int fCreate,
)>('SHGetSpecialFolderPathW');

int SHGetStockIconInfo(
  int siid,
  int uFlags,
  Pointer<SHSTOCKICONINFO> psii,
) =>
    _SHGetStockIconInfo(
      siid,
      uFlags,
      psii,
    );

late final _SHGetStockIconInfo = _shell32.lookupFunction<
    Int32 Function(
  Int32 siid,
  Uint32 uFlags,
  Pointer<SHSTOCKICONINFO> psii,
),
    int Function(
  int siid,
  int uFlags,
  Pointer<SHSTOCKICONINFO> psii,
)>('SHGetStockIconInfo');

int SHGetTemporaryPropertyForItem(
  Pointer<COMObject> psi,
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> ppropvar,
) =>
    _SHGetTemporaryPropertyForItem(
      psi,
      propkey,
      ppropvar,
    );

late final _SHGetTemporaryPropertyForItem = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psi,
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> ppropvar,
),
    int Function(
  Pointer<COMObject> psi,
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> ppropvar,
)>('SHGetTemporaryPropertyForItem');

int SHGetUnreadMailCount(
  int hKeyUser,
  Pointer<Utf16> pszMailAddress,
  Pointer<Uint32> pdwCount,
  Pointer<FILETIME> pFileTime,
  Pointer<Utf16> pszShellExecuteCommand,
  int cchShellExecuteCommand,
) =>
    _SHGetUnreadMailCount(
      hKeyUser,
      pszMailAddress,
      pdwCount,
      pFileTime,
      pszShellExecuteCommand,
      cchShellExecuteCommand,
    );

late final _SHGetUnreadMailCount = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hKeyUser,
  Pointer<Utf16> pszMailAddress,
  Pointer<Uint32> pdwCount,
  Pointer<FILETIME> pFileTime,
  Pointer<Utf16> pszShellExecuteCommand,
  Int32 cchShellExecuteCommand,
),
    int Function(
  int hKeyUser,
  Pointer<Utf16> pszMailAddress,
  Pointer<Uint32> pdwCount,
  Pointer<FILETIME> pFileTime,
  Pointer<Utf16> pszShellExecuteCommand,
  int cchShellExecuteCommand,
)>('SHGetUnreadMailCountW');

int SHHandleUpdateImage(
  Pointer<ITEMIDLIST> pidlExtra,
) =>
    _SHHandleUpdateImage(
      pidlExtra,
    );

late final _SHHandleUpdateImage = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlExtra,
),
    int Function(
  Pointer<ITEMIDLIST> pidlExtra,
)>('SHHandleUpdateImage');

int SHILCreateFromPath(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  Pointer<Uint32> rgfInOut,
) =>
    _SHILCreateFromPath(
      pszPath,
      ppidl,
      rgfInOut,
    );

late final _SHILCreateFromPath = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  Pointer<Uint32> rgfInOut,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  Pointer<Uint32> rgfInOut,
)>('SHILCreateFromPath');

int SHInvokePrinterCommand(
  int hwnd,
  int uAction,
  Pointer<Utf16> lpBuf1,
  Pointer<Utf16> lpBuf2,
  int fModal,
) =>
    _SHInvokePrinterCommand(
      hwnd,
      uAction,
      lpBuf1,
      lpBuf2,
      fModal,
    );

late final _SHInvokePrinterCommand = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Uint32 uAction,
  Pointer<Utf16> lpBuf1,
  Pointer<Utf16> lpBuf2,
  Int32 fModal,
),
    int Function(
  int hwnd,
  int uAction,
  Pointer<Utf16> lpBuf1,
  Pointer<Utf16> lpBuf2,
  int fModal,
)>('SHInvokePrinterCommandW');

int SHIsFileAvailableOffline(
  Pointer<Utf16> pwszPath,
  Pointer<Uint32> pdwStatus,
) =>
    _SHIsFileAvailableOffline(
      pwszPath,
      pdwStatus,
    );

late final _SHIsFileAvailableOffline = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszPath,
  Pointer<Uint32> pdwStatus,
),
    int Function(
  Pointer<Utf16> pwszPath,
  Pointer<Uint32> pdwStatus,
)>('SHIsFileAvailableOffline');

int SHLimitInputEdit(
  int hwndEdit,
  Pointer<COMObject> psf,
) =>
    _SHLimitInputEdit(
      hwndEdit,
      psf,
    );

late final _SHLimitInputEdit = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwndEdit,
  Pointer<COMObject> psf,
),
    int Function(
  int hwndEdit,
  Pointer<COMObject> psf,
)>('SHLimitInputEdit');

int SHLoadInProc(
  Pointer<GUID> rclsid,
) =>
    _SHLoadInProc(
      rclsid,
    );

late final _SHLoadInProc = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rclsid,
),
    int Function(
  Pointer<GUID> rclsid,
)>('SHLoadInProc');

int SHLoadNonloadedIconOverlayIdentifiers() =>
    _SHLoadNonloadedIconOverlayIdentifiers();

late final _SHLoadNonloadedIconOverlayIdentifiers =
    _shell32.lookupFunction<Int32 Function(), int Function()>(
        'SHLoadNonloadedIconOverlayIdentifiers');

int SHMapPIDLToSystemImageListIndex(
  Pointer<COMObject> pshf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Int32> piIndexSel,
) =>
    _SHMapPIDLToSystemImageListIndex(
      pshf,
      pidl,
      piIndexSel,
    );

late final _SHMapPIDLToSystemImageListIndex = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pshf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Int32> piIndexSel,
),
    int Function(
  Pointer<COMObject> pshf,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Int32> piIndexSel,
)>('SHMapPIDLToSystemImageListIndex');

int SHMultiFileProperties(
  Pointer<COMObject> pdtobj,
  int dwFlags,
) =>
    _SHMultiFileProperties(
      pdtobj,
      dwFlags,
    );

late final _SHMultiFileProperties = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pdtobj,
  Uint32 dwFlags,
),
    int Function(
  Pointer<COMObject> pdtobj,
  int dwFlags,
)>('SHMultiFileProperties');

int SHObjectProperties(
  int hwnd,
  int shopObjectType,
  Pointer<Utf16> pszObjectName,
  Pointer<Utf16> pszPropertyPage,
) =>
    _SHObjectProperties(
      hwnd,
      shopObjectType,
      pszObjectName,
      pszPropertyPage,
    );

late final _SHObjectProperties = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Int32 shopObjectType,
  Pointer<Utf16> pszObjectName,
  Pointer<Utf16> pszPropertyPage,
),
    int Function(
  int hwnd,
  int shopObjectType,
  Pointer<Utf16> pszObjectName,
  Pointer<Utf16> pszPropertyPage,
)>('SHObjectProperties');

int SHOpenFolderAndSelectItems(
  Pointer<ITEMIDLIST> pidlFolder,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  int dwFlags,
) =>
    _SHOpenFolderAndSelectItems(
      pidlFolder,
      cidl,
      apidl,
      dwFlags,
    );

late final _SHOpenFolderAndSelectItems = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidlFolder,
  Uint32 cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  Uint32 dwFlags,
),
    int Function(
  Pointer<ITEMIDLIST> pidlFolder,
  int cidl,
  Pointer<Pointer<ITEMIDLIST>> apidl,
  int dwFlags,
)>('SHOpenFolderAndSelectItems');

int SHOpenPropSheet(
  Pointer<Utf16> pszCaption,
  Pointer<IntPtr> ahkeys,
  int ckeys,
  Pointer<GUID> pclsidDefault,
  Pointer<COMObject> pdtobj,
  Pointer<COMObject> psb,
  Pointer<Utf16> pStartPage,
) =>
    _SHOpenPropSheet(
      pszCaption,
      ahkeys,
      ckeys,
      pclsidDefault,
      pdtobj,
      psb,
      pStartPage,
    );

late final _SHOpenPropSheet = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszCaption,
  Pointer<IntPtr> ahkeys,
  Uint32 ckeys,
  Pointer<GUID> pclsidDefault,
  Pointer<COMObject> pdtobj,
  Pointer<COMObject> psb,
  Pointer<Utf16> pStartPage,
),
    int Function(
  Pointer<Utf16> pszCaption,
  Pointer<IntPtr> ahkeys,
  int ckeys,
  Pointer<GUID> pclsidDefault,
  Pointer<COMObject> pdtobj,
  Pointer<COMObject> psb,
  Pointer<Utf16> pStartPage,
)>('SHOpenPropSheetW');

int SHOpenWithDialog(
  int hwndParent,
  Pointer<OPENASINFO> poainfo,
) =>
    _SHOpenWithDialog(
      hwndParent,
      poainfo,
    );

late final _SHOpenWithDialog = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<OPENASINFO> poainfo,
),
    int Function(
  int hwndParent,
  Pointer<OPENASINFO> poainfo,
)>('SHOpenWithDialog');

int SHParseDisplayName(
  Pointer<Utf16> pszName,
  Pointer<COMObject> pbc,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  int sfgaoIn,
  Pointer<Uint32> psfgaoOut,
) =>
    _SHParseDisplayName(
      pszName,
      pbc,
      ppidl,
      sfgaoIn,
      psfgaoOut,
    );

late final _SHParseDisplayName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
  Pointer<COMObject> pbc,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  Uint32 sfgaoIn,
  Pointer<Uint32> psfgaoOut,
),
    int Function(
  Pointer<Utf16> pszName,
  Pointer<COMObject> pbc,
  Pointer<Pointer<ITEMIDLIST>> ppidl,
  int sfgaoIn,
  Pointer<Uint32> psfgaoOut,
)>('SHParseDisplayName');

int SHPathPrepareForWrite(
  int hwnd,
  Pointer<COMObject> punkEnableModless,
  Pointer<Utf16> pszPath,
  int dwFlags,
) =>
    _SHPathPrepareForWrite(
      hwnd,
      punkEnableModless,
      pszPath,
      dwFlags,
    );

late final _SHPathPrepareForWrite = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<COMObject> punkEnableModless,
  Pointer<Utf16> pszPath,
  Uint32 dwFlags,
),
    int Function(
  int hwnd,
  Pointer<COMObject> punkEnableModless,
  Pointer<Utf16> pszPath,
  int dwFlags,
)>('SHPathPrepareForWriteW');

int SHQueryRecycleBin(
  Pointer<Utf16> pszRootPath,
  Pointer<SHQUERYRBINFO> pSHQueryRBInfo,
) =>
    _SHQueryRecycleBin(
      pszRootPath,
      pSHQueryRBInfo,
    );

late final _SHQueryRecycleBin = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszRootPath,
  Pointer<SHQUERYRBINFO> pSHQueryRBInfo,
),
    int Function(
  Pointer<Utf16> pszRootPath,
  Pointer<SHQUERYRBINFO> pSHQueryRBInfo,
)>('SHQueryRecycleBinW');

int SHQueryUserNotificationState(
  Pointer<Int32> pquns,
) =>
    _SHQueryUserNotificationState(
      pquns,
    );

late final _SHQueryUserNotificationState = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Int32> pquns,
),
    int Function(
  Pointer<Int32> pquns,
)>('SHQueryUserNotificationState');

int SHRemoveLocalizedName(
  Pointer<Utf16> pszPath,
) =>
    _SHRemoveLocalizedName(
      pszPath,
    );

late final _SHRemoveLocalizedName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('SHRemoveLocalizedName');

int SHReplaceFromPropSheetExtArray(
  int hpsxa,
  int uPageID,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> lpfnReplaceWith,
  int lParam,
) =>
    _SHReplaceFromPropSheetExtArray(
      hpsxa,
      uPageID,
      lpfnReplaceWith,
      lParam,
    );

late final _SHReplaceFromPropSheetExtArray = _shell32.lookupFunction<
    Uint32 Function(
  IntPtr hpsxa,
  Uint32 uPageID,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> lpfnReplaceWith,
  IntPtr lParam,
),
    int Function(
  int hpsxa,
  int uPageID,
  Pointer<NativeFunction<LPFNSVADDPROPSHEETPAGE>> lpfnReplaceWith,
  int lParam,
)>('SHReplaceFromPropSheetExtArray');

int SHResolveLibrary(
  Pointer<COMObject> psiLibrary,
) =>
    _SHResolveLibrary(
      psiLibrary,
    );

late final _SHResolveLibrary = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psiLibrary,
),
    int Function(
  Pointer<COMObject> psiLibrary,
)>('SHResolveLibrary');

int SHRestricted(
  int rest,
) =>
    _SHRestricted(
      rest,
    );

late final _SHRestricted = _shell32.lookupFunction<
    Uint32 Function(
  Int32 rest,
),
    int Function(
  int rest,
)>('SHRestricted');

int SHSetDefaultProperties(
  int hwnd,
  Pointer<COMObject> psi,
  int dwFileOpFlags,
  Pointer<COMObject> pfops,
) =>
    _SHSetDefaultProperties(
      hwnd,
      psi,
      dwFileOpFlags,
      pfops,
    );

late final _SHSetDefaultProperties = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<COMObject> psi,
  Uint32 dwFileOpFlags,
  Pointer<COMObject> pfops,
),
    int Function(
  int hwnd,
  Pointer<COMObject> psi,
  int dwFileOpFlags,
  Pointer<COMObject> pfops,
)>('SHSetDefaultProperties');

int SHSetFolderPath(
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Utf16> pszPath,
) =>
    _SHSetFolderPath(
      csidl,
      hToken,
      dwFlags,
      pszPath,
    );

late final _SHSetFolderPath = _shell32.lookupFunction<
    Int32 Function(
  Int32 csidl,
  IntPtr hToken,
  Uint32 dwFlags,
  Pointer<Utf16> pszPath,
),
    int Function(
  int csidl,
  int hToken,
  int dwFlags,
  Pointer<Utf16> pszPath,
)>('SHSetFolderPathW');

void SHSetInstanceExplorer(
  Pointer<COMObject> punk,
) =>
    _SHSetInstanceExplorer(
      punk,
    );

late final _SHSetInstanceExplorer = _shell32.lookupFunction<
    Void Function(
  Pointer<COMObject> punk,
),
    void Function(
  Pointer<COMObject> punk,
)>('SHSetInstanceExplorer');

int SHSetKnownFolderPath(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<Utf16> pszPath,
) =>
    _SHSetKnownFolderPath(
      rfid,
      dwFlags,
      hToken,
      pszPath,
    );

late final _SHSetKnownFolderPath = _shell32.lookupFunction<
    Int32 Function(
  Pointer<GUID> rfid,
  Uint32 dwFlags,
  IntPtr hToken,
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<GUID> rfid,
  int dwFlags,
  int hToken,
  Pointer<Utf16> pszPath,
)>('SHSetKnownFolderPath');

int SHSetLocalizedName(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszResModule,
  int idsRes,
) =>
    _SHSetLocalizedName(
      pszPath,
      pszResModule,
      idsRes,
    );

late final _SHSetLocalizedName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszResModule,
  Int32 idsRes,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszResModule,
  int idsRes,
)>('SHSetLocalizedName');

int SHSetTemporaryPropertyForItem(
  Pointer<COMObject> psi,
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
) =>
    _SHSetTemporaryPropertyForItem(
      psi,
      propkey,
      propvar,
    );

late final _SHSetTemporaryPropertyForItem = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psi,
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
),
    int Function(
  Pointer<COMObject> psi,
  Pointer<PROPERTYKEY> propkey,
  Pointer<PROPVARIANT> propvar,
)>('SHSetTemporaryPropertyForItem');

int SHSetUnreadMailCount(
  Pointer<Utf16> pszMailAddress,
  int dwCount,
  Pointer<Utf16> pszShellExecuteCommand,
) =>
    _SHSetUnreadMailCount(
      pszMailAddress,
      dwCount,
      pszShellExecuteCommand,
    );

late final _SHSetUnreadMailCount = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszMailAddress,
  Uint32 dwCount,
  Pointer<Utf16> pszShellExecuteCommand,
),
    int Function(
  Pointer<Utf16> pszMailAddress,
  int dwCount,
  Pointer<Utf16> pszShellExecuteCommand,
)>('SHSetUnreadMailCountW');

int SHShellFolderView_Message(
  int hwndMain,
  int uMsg,
  int lParam,
) =>
    _SHShellFolderView_Message(
      hwndMain,
      uMsg,
      lParam,
    );

late final _SHShellFolderView_Message = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hwndMain,
  Uint32 uMsg,
  IntPtr lParam,
),
    int Function(
  int hwndMain,
  int uMsg,
  int lParam,
)>('SHShellFolderView_Message');

int SHShowManageLibraryUI(
  Pointer<COMObject> psiLibrary,
  int hwndOwner,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszInstruction,
  int lmdOptions,
) =>
    _SHShowManageLibraryUI(
      psiLibrary,
      hwndOwner,
      pszTitle,
      pszInstruction,
      lmdOptions,
    );

late final _SHShowManageLibraryUI = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> psiLibrary,
  IntPtr hwndOwner,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszInstruction,
  Int32 lmdOptions,
),
    int Function(
  Pointer<COMObject> psiLibrary,
  int hwndOwner,
  Pointer<Utf16> pszTitle,
  Pointer<Utf16> pszInstruction,
  int lmdOptions,
)>('SHShowManageLibraryUI');

Pointer<ITEMIDLIST> SHSimpleIDListFromPath(
  Pointer<Utf16> pszPath,
) =>
    _SHSimpleIDListFromPath(
      pszPath,
    );

late final _SHSimpleIDListFromPath = _shell32.lookupFunction<
    Pointer<ITEMIDLIST> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<ITEMIDLIST> Function(
  Pointer<Utf16> pszPath,
)>('SHSimpleIDListFromPath');

int SHStartNetConnectionDialog(
  int hwnd,
  Pointer<Utf16> pszRemoteName,
  int dwType,
) =>
    _SHStartNetConnectionDialog(
      hwnd,
      pszRemoteName,
      dwType,
    );

late final _SHStartNetConnectionDialog = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszRemoteName,
  Uint32 dwType,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszRemoteName,
  int dwType,
)>('SHStartNetConnectionDialogW');

int SHTestTokenMembership(
  int hToken,
  int ulRID,
) =>
    _SHTestTokenMembership(
      hToken,
      ulRID,
    );

late final _SHTestTokenMembership = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hToken,
  Uint32 ulRID,
),
    int Function(
  int hToken,
  int ulRID,
)>('SHTestTokenMembership');

void SHUpdateImage(
  Pointer<Utf16> pszHashItem,
  int iIndex,
  int uFlags,
  int iImageIndex,
) =>
    _SHUpdateImage(
      pszHashItem,
      iIndex,
      uFlags,
      iImageIndex,
    );

late final _SHUpdateImage = _shell32.lookupFunction<
    Void Function(
  Pointer<Utf16> pszHashItem,
  Int32 iIndex,
  Uint32 uFlags,
  Int32 iImageIndex,
),
    void Function(
  Pointer<Utf16> pszHashItem,
  int iIndex,
  int uFlags,
  int iImageIndex,
)>('SHUpdateImageW');

int SHValidateUNC(
  int hwndOwner,
  Pointer<Utf16> pszFile,
  int fConnect,
) =>
    _SHValidateUNC(
      hwndOwner,
      pszFile,
      fConnect,
    );

late final _SHValidateUNC = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hwndOwner,
  Pointer<Utf16> pszFile,
  Int32 fConnect,
),
    int Function(
  int hwndOwner,
  Pointer<Utf16> pszFile,
  int fConnect,
)>('SHValidateUNC');

int SetCurrentProcessExplicitAppUserModelID(
  Pointer<Utf16> AppID,
) =>
    _SetCurrentProcessExplicitAppUserModelID(
      AppID,
    );

late final _SetCurrentProcessExplicitAppUserModelID = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> AppID,
),
    int Function(
  Pointer<Utf16> AppID,
)>('SetCurrentProcessExplicitAppUserModelID');

int ShellAbout(
  int hWnd,
  Pointer<Utf16> szApp,
  Pointer<Utf16> szOtherStuff,
  int hIcon,
) =>
    _ShellAbout(
      hWnd,
      szApp,
      szOtherStuff,
      hIcon,
    );

late final _ShellAbout = _shell32.lookupFunction<
    Int32 Function(
  IntPtr hWnd,
  Pointer<Utf16> szApp,
  Pointer<Utf16> szOtherStuff,
  IntPtr hIcon,
),
    int Function(
  int hWnd,
  Pointer<Utf16> szApp,
  Pointer<Utf16> szOtherStuff,
  int hIcon,
)>('ShellAboutW');

int ShellExecuteEx(
  Pointer<SHELLEXECUTEINFO> pExecInfo,
) =>
    _ShellExecuteEx(
      pExecInfo,
    );

late final _ShellExecuteEx = _shell32.lookupFunction<
    Int32 Function(
  Pointer<SHELLEXECUTEINFO> pExecInfo,
),
    int Function(
  Pointer<SHELLEXECUTEINFO> pExecInfo,
)>('ShellExecuteExW');

int ShellExecute(
  int hwnd,
  Pointer<Utf16> lpOperation,
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpParameters,
  Pointer<Utf16> lpDirectory,
  int nShowCmd,
) =>
    _ShellExecute(
      hwnd,
      lpOperation,
      lpFile,
      lpParameters,
      lpDirectory,
      nShowCmd,
    );

late final _ShellExecute = _shell32.lookupFunction<
    IntPtr Function(
  IntPtr hwnd,
  Pointer<Utf16> lpOperation,
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpParameters,
  Pointer<Utf16> lpDirectory,
  Int32 nShowCmd,
),
    int Function(
  int hwnd,
  Pointer<Utf16> lpOperation,
  Pointer<Utf16> lpFile,
  Pointer<Utf16> lpParameters,
  Pointer<Utf16> lpDirectory,
  int nShowCmd,
)>('ShellExecuteW');

int Shell_GetCachedImageIndex(
  Pointer<Utf16> pszIconPath,
  int iIconIndex,
  int uIconFlags,
) =>
    _Shell_GetCachedImageIndex(
      pszIconPath,
      iIconIndex,
      uIconFlags,
    );

late final _Shell_GetCachedImageIndex = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszIconPath,
  Int32 iIconIndex,
  Uint32 uIconFlags,
),
    int Function(
  Pointer<Utf16> pszIconPath,
  int iIconIndex,
  int uIconFlags,
)>('Shell_GetCachedImageIndexW');

int Shell_GetImageLists(
  Pointer<IntPtr> phiml,
  Pointer<IntPtr> phimlSmall,
) =>
    _Shell_GetImageLists(
      phiml,
      phimlSmall,
    );

late final _Shell_GetImageLists = _shell32.lookupFunction<
    Int32 Function(
  Pointer<IntPtr> phiml,
  Pointer<IntPtr> phimlSmall,
),
    int Function(
  Pointer<IntPtr> phiml,
  Pointer<IntPtr> phimlSmall,
)>('Shell_GetImageLists');

int Shell_MergeMenus(
  int hmDst,
  int hmSrc,
  int uInsert,
  int uIDAdjust,
  int uIDAdjustMax,
  int uFlags,
) =>
    _Shell_MergeMenus(
      hmDst,
      hmSrc,
      uInsert,
      uIDAdjust,
      uIDAdjustMax,
      uFlags,
    );

late final _Shell_MergeMenus = _shell32.lookupFunction<
    Uint32 Function(
  IntPtr hmDst,
  IntPtr hmSrc,
  Uint32 uInsert,
  Uint32 uIDAdjust,
  Uint32 uIDAdjustMax,
  Uint32 uFlags,
),
    int Function(
  int hmDst,
  int hmSrc,
  int uInsert,
  int uIDAdjust,
  int uIDAdjustMax,
  int uFlags,
)>('Shell_MergeMenus');

int Shell_NotifyIconGetRect(
  Pointer<NOTIFYICONIDENTIFIER> identifier,
  Pointer<RECT> iconLocation,
) =>
    _Shell_NotifyIconGetRect(
      identifier,
      iconLocation,
    );

late final _Shell_NotifyIconGetRect = _shell32.lookupFunction<
    Int32 Function(
  Pointer<NOTIFYICONIDENTIFIER> identifier,
  Pointer<RECT> iconLocation,
),
    int Function(
  Pointer<NOTIFYICONIDENTIFIER> identifier,
  Pointer<RECT> iconLocation,
)>('Shell_NotifyIconGetRect');

int Shell_NotifyIcon(
  int dwMessage,
  Pointer<NOTIFYICONDATA> lpData,
) =>
    _Shell_NotifyIcon(
      dwMessage,
      lpData,
    );

late final _Shell_NotifyIcon = _shell32.lookupFunction<
    Int32 Function(
  Uint32 dwMessage,
  Pointer<NOTIFYICONDATA> lpData,
),
    int Function(
  int dwMessage,
  Pointer<NOTIFYICONDATA> lpData,
)>('Shell_NotifyIconW');

int SignalFileOpen(
  Pointer<ITEMIDLIST> pidl,
) =>
    _SignalFileOpen(
      pidl,
    );

late final _SignalFileOpen = _shell32.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
)>('SignalFileOpen');

int StgMakeUniqueName(
  Pointer<COMObject> pstgParent,
  Pointer<Utf16> pszFileSpec,
  int grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _StgMakeUniqueName(
      pstgParent,
      pszFileSpec,
      grfMode,
      riid,
      ppv,
    );

late final _StgMakeUniqueName = _shell32.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstgParent,
  Pointer<Utf16> pszFileSpec,
  Uint32 grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> pstgParent,
  Pointer<Utf16> pszFileSpec,
  int grfMode,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('StgMakeUniqueName');

int Win32DeleteFile(
  Pointer<Utf16> pszPath,
) =>
    _Win32DeleteFile(
      pszPath,
    );

late final _Win32DeleteFile = _shell32.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('Win32DeleteFile');

int WriteCabinetState(
  Pointer<CABINETSTATE> pcs,
) =>
    _WriteCabinetState(
      pcs,
    );

late final _WriteCabinetState = _shell32.lookupFunction<
    Int32 Function(
  Pointer<CABINETSTATE> pcs,
),
    int Function(
  Pointer<CABINETSTATE> pcs,
)>('WriteCabinetState');

// -----------------------------------------------------------------------
// ole32.dll
// -----------------------------------------------------------------------
final _ole32 = DynamicLibrary.open('ole32.dll');

void HMONITOR_UserFree(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HMONITOR_UserFree(
      param0,
      param1,
    );

late final _HMONITOR_UserFree = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HMONITOR_UserFree');

void HMONITOR_UserFree64(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
) =>
    _HMONITOR_UserFree64(
      param0,
      param1,
    );

late final _HMONITOR_UserFree64 = _ole32.lookupFunction<
    Void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
),
    void Function(
  Pointer<Uint32> param0,
  Pointer<IntPtr> param1,
)>('HMONITOR_UserFree64');

Pointer<Uint8> HMONITOR_UserMarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMONITOR_UserMarshal(
      param0,
      param1,
      param2,
    );

late final _HMONITOR_UserMarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMONITOR_UserMarshal');

Pointer<Uint8> HMONITOR_UserMarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMONITOR_UserMarshal64(
      param0,
      param1,
      param2,
    );

late final _HMONITOR_UserMarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMONITOR_UserMarshal64');

int HMONITOR_UserSize(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HMONITOR_UserSize(
      param0,
      param1,
      param2,
    );

late final _HMONITOR_UserSize = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HMONITOR_UserSize');

int HMONITOR_UserSize64(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
) =>
    _HMONITOR_UserSize64(
      param0,
      param1,
      param2,
    );

late final _HMONITOR_UserSize64 = _ole32.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> param0,
  Uint32 param1,
  Pointer<IntPtr> param2,
),
    int Function(
  Pointer<Uint32> param0,
  int param1,
  Pointer<IntPtr> param2,
)>('HMONITOR_UserSize64');

Pointer<Uint8> HMONITOR_UserUnmarshal(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMONITOR_UserUnmarshal(
      param0,
      param1,
      param2,
    );

late final _HMONITOR_UserUnmarshal = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMONITOR_UserUnmarshal');

Pointer<Uint8> HMONITOR_UserUnmarshal64(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
) =>
    _HMONITOR_UserUnmarshal64(
      param0,
      param1,
      param2,
    );

late final _HMONITOR_UserUnmarshal64 = _ole32.lookupFunction<
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
),
    Pointer<Uint8> Function(
  Pointer<Uint32> param0,
  Pointer<Uint8> param1,
  Pointer<IntPtr> param2,
)>('HMONITOR_UserUnmarshal64');

// -----------------------------------------------------------------------
// shdocvw.dll
// -----------------------------------------------------------------------
final _shdocvw = DynamicLibrary.open('shdocvw.dll');

int ImportPrivacySettings(
  Pointer<Utf16> pszFilename,
  Pointer<Int32> pfParsePrivacyPreferences,
  Pointer<Int32> pfParsePerSiteRules,
) =>
    _ImportPrivacySettings(
      pszFilename,
      pfParsePrivacyPreferences,
      pfParsePerSiteRules,
    );

late final _ImportPrivacySettings = _shdocvw.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFilename,
  Pointer<Int32> pfParsePrivacyPreferences,
  Pointer<Int32> pfParsePerSiteRules,
),
    int Function(
  Pointer<Utf16> pszFilename,
  Pointer<Int32> pfParsePrivacyPreferences,
  Pointer<Int32> pfParsePerSiteRules,
)>('ImportPrivacySettings');

int SoftwareUpdateMessageBox(
  int hWnd,
  Pointer<Utf16> pszDistUnit,
  int dwFlags,
  Pointer<SOFTDISTINFO> psdi,
) =>
    _SoftwareUpdateMessageBox(
      hWnd,
      pszDistUnit,
      dwFlags,
      psdi,
    );

late final _SoftwareUpdateMessageBox = _shdocvw.lookupFunction<
    Uint32 Function(
  IntPtr hWnd,
  Pointer<Utf16> pszDistUnit,
  Uint32 dwFlags,
  Pointer<SOFTDISTINFO> psdi,
),
    int Function(
  int hWnd,
  Pointer<Utf16> pszDistUnit,
  int dwFlags,
  Pointer<SOFTDISTINFO> psdi,
)>('SoftwareUpdateMessageBox');

// -----------------------------------------------------------------------
// api-ms-win-shcore-scaling-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_shcore_scaling_l1_1_0 =
    DynamicLibrary.open('api-ms-win-shcore-scaling-l1-1-0.dll');

int GetScaleFactorForDevice(
  int deviceType,
) =>
    _GetScaleFactorForDevice(
      deviceType,
    );

late final _GetScaleFactorForDevice =
    _api_ms_win_shcore_scaling_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 deviceType,
),
        int Function(
  int deviceType,
)>('GetScaleFactorForDevice');

int RegisterScaleChangeNotifications(
  int displayDevice,
  int hwndNotify,
  int uMsgNotify,
  Pointer<Uint32> pdwCookie,
) =>
    _RegisterScaleChangeNotifications(
      displayDevice,
      hwndNotify,
      uMsgNotify,
      pdwCookie,
    );

late final _RegisterScaleChangeNotifications =
    _api_ms_win_shcore_scaling_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 displayDevice,
  IntPtr hwndNotify,
  Uint32 uMsgNotify,
  Pointer<Uint32> pdwCookie,
),
        int Function(
  int displayDevice,
  int hwndNotify,
  int uMsgNotify,
  Pointer<Uint32> pdwCookie,
)>('RegisterScaleChangeNotifications');

int RevokeScaleChangeNotifications(
  int displayDevice,
  int dwCookie,
) =>
    _RevokeScaleChangeNotifications(
      displayDevice,
      dwCookie,
    );

late final _RevokeScaleChangeNotifications =
    _api_ms_win_shcore_scaling_l1_1_0.lookupFunction<
        Int32 Function(
  Int32 displayDevice,
  Uint32 dwCookie,
),
        int Function(
  int displayDevice,
  int dwCookie,
)>('RevokeScaleChangeNotifications');

// -----------------------------------------------------------------------
// api-ms-win-shcore-scaling-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_shcore_scaling_l1_1_1 =
    DynamicLibrary.open('api-ms-win-shcore-scaling-l1-1-1.dll');

int GetScaleFactorForMonitor(
  int hMon,
  Pointer<Int32> pScale,
) =>
    _GetScaleFactorForMonitor(
      hMon,
      pScale,
    );

late final _GetScaleFactorForMonitor =
    _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr hMon,
  Pointer<Int32> pScale,
),
        int Function(
  int hMon,
  Pointer<Int32> pScale,
)>('GetScaleFactorForMonitor');

int RegisterScaleChangeEvent(
  int hEvent,
  Pointer<IntPtr> pdwCookie,
) =>
    _RegisterScaleChangeEvent(
      hEvent,
      pdwCookie,
    );

late final _RegisterScaleChangeEvent =
    _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr hEvent,
  Pointer<IntPtr> pdwCookie,
),
        int Function(
  int hEvent,
  Pointer<IntPtr> pdwCookie,
)>('RegisterScaleChangeEvent');

int UnregisterScaleChangeEvent(
  int dwCookie,
) =>
    _UnregisterScaleChangeEvent(
      dwCookie,
    );

late final _UnregisterScaleChangeEvent =
    _api_ms_win_shcore_scaling_l1_1_1.lookupFunction<
        Int32 Function(
  IntPtr dwCookie,
),
        int Function(
  int dwCookie,
)>('UnregisterScaleChangeEvent');

// -----------------------------------------------------------------------
// api-ms-win-shcore-scaling-l1-1-2.dll
// -----------------------------------------------------------------------
final _api_ms_win_shcore_scaling_l1_1_2 =
    DynamicLibrary.open('api-ms-win-shcore-scaling-l1-1-2.dll');

int GetDpiForShellUIComponent(
  int param0,
) =>
    _GetDpiForShellUIComponent(
      param0,
    );

late final _GetDpiForShellUIComponent =
    _api_ms_win_shcore_scaling_l1_1_2.lookupFunction<
        Uint32 Function(
  Int32 param0,
),
        int Function(
  int param0,
)>('GetDpiForShellUIComponent');

// -----------------------------------------------------------------------
// shlwapi.dll
// -----------------------------------------------------------------------
final _shlwapi = DynamicLibrary.open('shlwapi.dll');

int AssocCreate(
  GUID clsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _AssocCreate(
      clsid,
      riid,
      ppv,
    );

late final _AssocCreate = _shlwapi.lookupFunction<
    Int32 Function(
  GUID clsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  GUID clsid,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('AssocCreate');

int AssocGetPerceivedType(
  Pointer<Utf16> pszExt,
  Pointer<Int32> ptype,
  Pointer<Uint32> pflag,
  Pointer<Pointer<Utf16>> ppszType,
) =>
    _AssocGetPerceivedType(
      pszExt,
      ptype,
      pflag,
      ppszType,
    );

late final _AssocGetPerceivedType = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszExt,
  Pointer<Int32> ptype,
  Pointer<Uint32> pflag,
  Pointer<Pointer<Utf16>> ppszType,
),
    int Function(
  Pointer<Utf16> pszExt,
  Pointer<Int32> ptype,
  Pointer<Uint32> pflag,
  Pointer<Pointer<Utf16>> ppszType,
)>('AssocGetPerceivedType');

int AssocIsDangerous(
  Pointer<Utf16> pszAssoc,
) =>
    _AssocIsDangerous(
      pszAssoc,
    );

late final _AssocIsDangerous = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszAssoc,
),
    int Function(
  Pointer<Utf16> pszAssoc,
)>('AssocIsDangerous');

int AssocQueryKey(
  int flags,
  int key,
  Pointer<Utf16> pszAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<IntPtr> phkeyOut,
) =>
    _AssocQueryKey(
      flags,
      key,
      pszAssoc,
      pszExtra,
      phkeyOut,
    );

late final _AssocQueryKey = _shlwapi.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Int32 key,
  Pointer<Utf16> pszAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<IntPtr> phkeyOut,
),
    int Function(
  int flags,
  int key,
  Pointer<Utf16> pszAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<IntPtr> phkeyOut,
)>('AssocQueryKeyW');

int AssocQueryStringByKey(
  int flags,
  int str,
  int hkAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
) =>
    _AssocQueryStringByKey(
      flags,
      str,
      hkAssoc,
      pszExtra,
      pszOut,
      pcchOut,
    );

late final _AssocQueryStringByKey = _shlwapi.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Int32 str,
  IntPtr hkAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
),
    int Function(
  int flags,
  int str,
  int hkAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
)>('AssocQueryStringByKeyW');

int AssocQueryString(
  int flags,
  int str,
  Pointer<Utf16> pszAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
) =>
    _AssocQueryString(
      flags,
      str,
      pszAssoc,
      pszExtra,
      pszOut,
      pcchOut,
    );

late final _AssocQueryString = _shlwapi.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Int32 str,
  Pointer<Utf16> pszAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
),
    int Function(
  int flags,
  int str,
  Pointer<Utf16> pszAssoc,
  Pointer<Utf16> pszExtra,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
)>('AssocQueryStringW');

int ChrCmpI(
  int w1,
  int w2,
) =>
    _ChrCmpI(
      w1,
      w2,
    );

late final _ChrCmpI = _shlwapi.lookupFunction<
    Int32 Function(
  Uint16 w1,
  Uint16 w2,
),
    int Function(
  int w1,
  int w2,
)>('ChrCmpIW');

int ColorAdjustLuma(
  int clrRGB,
  int n,
  int fScale,
) =>
    _ColorAdjustLuma(
      clrRGB,
      n,
      fScale,
    );

late final _ColorAdjustLuma = _shlwapi.lookupFunction<
    Uint32 Function(
  Uint32 clrRGB,
  Int32 n,
  Int32 fScale,
),
    int Function(
  int clrRGB,
  int n,
  int fScale,
)>('ColorAdjustLuma');

int ColorHLSToRGB(
  int wHue,
  int wLuminance,
  int wSaturation,
) =>
    _ColorHLSToRGB(
      wHue,
      wLuminance,
      wSaturation,
    );

late final _ColorHLSToRGB = _shlwapi.lookupFunction<
    Uint32 Function(
  Uint16 wHue,
  Uint16 wLuminance,
  Uint16 wSaturation,
),
    int Function(
  int wHue,
  int wLuminance,
  int wSaturation,
)>('ColorHLSToRGB');

void ColorRGBToHLS(
  int clrRGB,
  Pointer<Uint16> pwHue,
  Pointer<Uint16> pwLuminance,
  Pointer<Uint16> pwSaturation,
) =>
    _ColorRGBToHLS(
      clrRGB,
      pwHue,
      pwLuminance,
      pwSaturation,
    );

late final _ColorRGBToHLS = _shlwapi.lookupFunction<
    Void Function(
  Uint32 clrRGB,
  Pointer<Uint16> pwHue,
  Pointer<Uint16> pwLuminance,
  Pointer<Uint16> pwSaturation,
),
    void Function(
  int clrRGB,
  Pointer<Uint16> pwHue,
  Pointer<Uint16> pwLuminance,
  Pointer<Uint16> pwSaturation,
)>('ColorRGBToHLS');

int ConnectToConnectionPoint(
  Pointer<COMObject> punk,
  Pointer<GUID> riidEvent,
  int fConnect,
  Pointer<COMObject> punkTarget,
  Pointer<Uint32> pdwCookie,
  Pointer<Pointer<COMObject>> ppcpOut,
) =>
    _ConnectToConnectionPoint(
      punk,
      riidEvent,
      fConnect,
      punkTarget,
      pdwCookie,
      ppcpOut,
    );

late final _ConnectToConnectionPoint = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<GUID> riidEvent,
  Int32 fConnect,
  Pointer<COMObject> punkTarget,
  Pointer<Uint32> pdwCookie,
  Pointer<Pointer<COMObject>> ppcpOut,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<GUID> riidEvent,
  int fConnect,
  Pointer<COMObject> punkTarget,
  Pointer<Uint32> pdwCookie,
  Pointer<Pointer<COMObject>> ppcpOut,
)>('ConnectToConnectionPoint');

int GetAcceptLanguages(
  Pointer<Utf16> pszLanguages,
  Pointer<Uint32> pcchLanguages,
) =>
    _GetAcceptLanguages(
      pszLanguages,
      pcchLanguages,
    );

late final _GetAcceptLanguages = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszLanguages,
  Pointer<Uint32> pcchLanguages,
),
    int Function(
  Pointer<Utf16> pszLanguages,
  Pointer<Uint32> pcchLanguages,
)>('GetAcceptLanguagesW');

int GetMenuPosFromID(
  int hmenu,
  int id,
) =>
    _GetMenuPosFromID(
      hmenu,
      id,
    );

late final _GetMenuPosFromID = _shlwapi.lookupFunction<
    Int32 Function(
  IntPtr hmenu,
  Uint32 id,
),
    int Function(
  int hmenu,
  int id,
)>('GetMenuPosFromID');

int HashData(
  Pointer<Uint8> pbData,
  int cbData,
  Pointer<Uint8> pbHash,
  int cbHash,
) =>
    _HashData(
      pbData,
      cbData,
      pbHash,
      cbHash,
    );

late final _HashData = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pbData,
  Uint32 cbData,
  Pointer<Uint8> pbHash,
  Uint32 cbHash,
),
    int Function(
  Pointer<Uint8> pbData,
  int cbData,
  Pointer<Uint8> pbHash,
  int cbHash,
)>('HashData');

int IStream_Copy(
  Pointer<COMObject> pstmFrom,
  Pointer<COMObject> pstmTo,
  int cb,
) =>
    _IStream_Copy(
      pstmFrom,
      pstmTo,
      cb,
    );

late final _IStream_Copy = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstmFrom,
  Pointer<COMObject> pstmTo,
  Uint32 cb,
),
    int Function(
  Pointer<COMObject> pstmFrom,
  Pointer<COMObject> pstmTo,
  int cb,
)>('IStream_Copy');

int IStream_Read(
  Pointer<COMObject> pstm,
  Pointer pv,
  int cb,
) =>
    _IStream_Read(
      pstm,
      pv,
      cb,
    );

late final _IStream_Read = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer pv,
  Uint32 cb,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer pv,
  int cb,
)>('IStream_Read');

int IStream_ReadPidl(
  Pointer<COMObject> pstm,
  Pointer<Pointer<ITEMIDLIST>> ppidlOut,
) =>
    _IStream_ReadPidl(
      pstm,
      ppidlOut,
    );

late final _IStream_ReadPidl = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<Pointer<ITEMIDLIST>> ppidlOut,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<Pointer<ITEMIDLIST>> ppidlOut,
)>('IStream_ReadPidl');

int IStream_ReadStr(
  Pointer<COMObject> pstm,
  Pointer<Pointer<Utf16>> ppsz,
) =>
    _IStream_ReadStr(
      pstm,
      ppsz,
    );

late final _IStream_ReadStr = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<Pointer<Utf16>> ppsz,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<Pointer<Utf16>> ppsz,
)>('IStream_ReadStr');

int IStream_Reset(
  Pointer<COMObject> pstm,
) =>
    _IStream_Reset(
      pstm,
    );

late final _IStream_Reset = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
),
    int Function(
  Pointer<COMObject> pstm,
)>('IStream_Reset');

int IStream_Size(
  Pointer<COMObject> pstm,
  Pointer<Uint64> pui,
) =>
    _IStream_Size(
      pstm,
      pui,
    );

late final _IStream_Size = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<Uint64> pui,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<Uint64> pui,
)>('IStream_Size');

int IStream_Write(
  Pointer<COMObject> pstm,
  Pointer pv,
  int cb,
) =>
    _IStream_Write(
      pstm,
      pv,
      cb,
    );

late final _IStream_Write = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer pv,
  Uint32 cb,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer pv,
  int cb,
)>('IStream_Write');

int IStream_WritePidl(
  Pointer<COMObject> pstm,
  Pointer<ITEMIDLIST> pidlWrite,
) =>
    _IStream_WritePidl(
      pstm,
      pidlWrite,
    );

late final _IStream_WritePidl = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<ITEMIDLIST> pidlWrite,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<ITEMIDLIST> pidlWrite,
)>('IStream_WritePidl');

int IStream_WriteStr(
  Pointer<COMObject> pstm,
  Pointer<Utf16> psz,
) =>
    _IStream_WriteStr(
      pstm,
      psz,
    );

late final _IStream_WriteStr = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pstm,
  Pointer<Utf16> psz,
),
    int Function(
  Pointer<COMObject> pstm,
  Pointer<Utf16> psz,
)>('IStream_WriteStr');

void IUnknown_AtomicRelease(
  Pointer<Pointer> ppunk,
) =>
    _IUnknown_AtomicRelease(
      ppunk,
    );

late final _IUnknown_AtomicRelease = _shlwapi.lookupFunction<
    Void Function(
  Pointer<Pointer> ppunk,
),
    void Function(
  Pointer<Pointer> ppunk,
)>('IUnknown_AtomicRelease');

int IUnknown_GetSite(
  Pointer<COMObject> punk,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _IUnknown_GetSite(
      punk,
      riid,
      ppv,
    );

late final _IUnknown_GetSite = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('IUnknown_GetSite');

int IUnknown_GetWindow(
  Pointer<COMObject> punk,
  Pointer<IntPtr> phwnd,
) =>
    _IUnknown_GetWindow(
      punk,
      phwnd,
    );

late final _IUnknown_GetWindow = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<IntPtr> phwnd,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<IntPtr> phwnd,
)>('IUnknown_GetWindow');

int IUnknown_QueryService(
  Pointer<COMObject> punk,
  Pointer<GUID> guidService,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvOut,
) =>
    _IUnknown_QueryService(
      punk,
      guidService,
      riid,
      ppvOut,
    );

late final _IUnknown_QueryService = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<GUID> guidService,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvOut,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<GUID> guidService,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvOut,
)>('IUnknown_QueryService');

void IUnknown_Set(
  Pointer<Pointer<COMObject>> ppunk,
  Pointer<COMObject> punk,
) =>
    _IUnknown_Set(
      ppunk,
      punk,
    );

late final _IUnknown_Set = _shlwapi.lookupFunction<
    Void Function(
  Pointer<Pointer<COMObject>> ppunk,
  Pointer<COMObject> punk,
),
    void Function(
  Pointer<Pointer<COMObject>> ppunk,
  Pointer<COMObject> punk,
)>('IUnknown_Set');

int IUnknown_SetSite(
  Pointer<COMObject> punk,
  Pointer<COMObject> punkSite,
) =>
    _IUnknown_SetSite(
      punk,
      punkSite,
    );

late final _IUnknown_SetSite = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
  Pointer<COMObject> punkSite,
),
    int Function(
  Pointer<COMObject> punk,
  Pointer<COMObject> punkSite,
)>('IUnknown_SetSite');

int IntlStrEqWorker(
  int fCaseSens,
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
  int nChar,
) =>
    _IntlStrEqWorker(
      fCaseSens,
      lpString1,
      lpString2,
      nChar,
    );

late final _IntlStrEqWorker = _shlwapi.lookupFunction<
    Int32 Function(
  Int32 fCaseSens,
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
  Int32 nChar,
),
    int Function(
  int fCaseSens,
  Pointer<Utf16> lpString1,
  Pointer<Utf16> lpString2,
  int nChar,
)>('IntlStrEqWorkerW');

int IsCharSpace(
  int wch,
) =>
    _IsCharSpace(
      wch,
    );

late final _IsCharSpace = _shlwapi.lookupFunction<
    Int32 Function(
  Uint16 wch,
),
    int Function(
  int wch,
)>('IsCharSpaceW');

int IsInternetESCEnabled() => _IsInternetESCEnabled();

late final _IsInternetESCEnabled = _shlwapi
    .lookupFunction<Int32 Function(), int Function()>('IsInternetESCEnabled');

int IsOS(
  int dwOS,
) =>
    _IsOS(
      dwOS,
    );

late final _IsOS = _shlwapi.lookupFunction<
    Int32 Function(
  Uint32 dwOS,
),
    int Function(
  int dwOS,
)>('IsOS');

int ParseURL(
  Pointer<Utf16> pcszURL,
  Pointer<PARSEDURL> ppu,
) =>
    _ParseURL(
      pcszURL,
      ppu,
    );

late final _ParseURL = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pcszURL,
  Pointer<PARSEDURL> ppu,
),
    int Function(
  Pointer<Utf16> pcszURL,
  Pointer<PARSEDURL> ppu,
)>('ParseURLW');

Pointer<Utf16> PathAddBackslash(
  Pointer<Utf16> pszPath,
) =>
    _PathAddBackslash(
      pszPath,
    );

late final _PathAddBackslash = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
)>('PathAddBackslashW');

int PathAddExtension(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszExt,
) =>
    _PathAddExtension(
      pszPath,
      pszExt,
    );

late final _PathAddExtension = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszExt,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszExt,
)>('PathAddExtensionW');

int PathAppend(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszMore,
) =>
    _PathAppend(
      pszPath,
      pszMore,
    );

late final _PathAppend = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszMore,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszMore,
)>('PathAppendW');

Pointer<Utf16> PathBuildRoot(
  Pointer<Utf16> pszRoot,
  int iDrive,
) =>
    _PathBuildRoot(
      pszRoot,
      iDrive,
    );

late final _PathBuildRoot = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszRoot,
  Int32 iDrive,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszRoot,
  int iDrive,
)>('PathBuildRootW');

int PathCanonicalize(
  Pointer<Utf16> pszBuf,
  Pointer<Utf16> pszPath,
) =>
    _PathCanonicalize(
      pszBuf,
      pszPath,
    );

late final _PathCanonicalize = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszBuf,
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszBuf,
  Pointer<Utf16> pszPath,
)>('PathCanonicalizeW');

Pointer<Utf16> PathCombine(
  Pointer<Utf16> pszDest,
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszFile,
) =>
    _PathCombine(
      pszDest,
      pszDir,
      pszFile,
    );

late final _PathCombine = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszDest,
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszFile,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszDest,
  Pointer<Utf16> pszDir,
  Pointer<Utf16> pszFile,
)>('PathCombineW');

int PathCommonPrefix(
  Pointer<Utf16> pszFile1,
  Pointer<Utf16> pszFile2,
  Pointer<Utf16> achPath,
) =>
    _PathCommonPrefix(
      pszFile1,
      pszFile2,
      achPath,
    );

late final _PathCommonPrefix = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFile1,
  Pointer<Utf16> pszFile2,
  Pointer<Utf16> achPath,
),
    int Function(
  Pointer<Utf16> pszFile1,
  Pointer<Utf16> pszFile2,
  Pointer<Utf16> achPath,
)>('PathCommonPrefixW');

int PathCompactPathEx(
  Pointer<Utf16> pszOut,
  Pointer<Utf16> pszSrc,
  int cchMax,
  int dwFlags,
) =>
    _PathCompactPathEx(
      pszOut,
      pszSrc,
      cchMax,
      dwFlags,
    );

late final _PathCompactPathEx = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszOut,
  Pointer<Utf16> pszSrc,
  Uint32 cchMax,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszOut,
  Pointer<Utf16> pszSrc,
  int cchMax,
  int dwFlags,
)>('PathCompactPathExW');

int PathCompactPath(
  int hDC,
  Pointer<Utf16> pszPath,
  int dx,
) =>
    _PathCompactPath(
      hDC,
      pszPath,
      dx,
    );

late final _PathCompactPath = _shlwapi.lookupFunction<
    Int32 Function(
  IntPtr hDC,
  Pointer<Utf16> pszPath,
  Uint32 dx,
),
    int Function(
  int hDC,
  Pointer<Utf16> pszPath,
  int dx,
)>('PathCompactPathW');

int PathCreateFromUrlAlloc(
  Pointer<Utf16> pszIn,
  Pointer<Pointer<Utf16>> ppszOut,
  int dwFlags,
) =>
    _PathCreateFromUrlAlloc(
      pszIn,
      ppszOut,
      dwFlags,
    );

late final _PathCreateFromUrlAlloc = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszIn,
  Pointer<Pointer<Utf16>> ppszOut,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszIn,
  Pointer<Pointer<Utf16>> ppszOut,
  int dwFlags,
)>('PathCreateFromUrlAlloc');

int PathCreateFromUrl(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszPath,
  Pointer<Uint32> pcchPath,
  int dwFlags,
) =>
    _PathCreateFromUrl(
      pszUrl,
      pszPath,
      pcchPath,
      dwFlags,
    );

late final _PathCreateFromUrl = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszPath,
  Pointer<Uint32> pcchPath,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszPath,
  Pointer<Uint32> pcchPath,
  int dwFlags,
)>('PathCreateFromUrlW');

int PathFileExists(
  Pointer<Utf16> pszPath,
) =>
    _PathFileExists(
      pszPath,
    );

late final _PathFileExists = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathFileExistsW');

Pointer<Utf16> PathFindExtension(
  Pointer<Utf16> pszPath,
) =>
    _PathFindExtension(
      pszPath,
    );

late final _PathFindExtension = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
)>('PathFindExtensionW');

Pointer<Utf16> PathFindFileName(
  Pointer<Utf16> pszPath,
) =>
    _PathFindFileName(
      pszPath,
    );

late final _PathFindFileName = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
)>('PathFindFileNameW');

Pointer<Utf16> PathFindNextComponent(
  Pointer<Utf16> pszPath,
) =>
    _PathFindNextComponent(
      pszPath,
    );

late final _PathFindNextComponent = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
)>('PathFindNextComponentW');

int PathFindOnPath(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Uint16>> ppszOtherDirs,
) =>
    _PathFindOnPath(
      pszPath,
      ppszOtherDirs,
    );

late final _PathFindOnPath = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Uint16>> ppszOtherDirs,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Uint16>> ppszOtherDirs,
)>('PathFindOnPathW');

Pointer<Utf16> PathFindSuffixArray(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> apszSuffix,
  int iArraySize,
) =>
    _PathFindSuffixArray(
      pszPath,
      apszSuffix,
      iArraySize,
    );

late final _PathFindSuffixArray = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> apszSuffix,
  Int32 iArraySize,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> apszSuffix,
  int iArraySize,
)>('PathFindSuffixArrayW');

Pointer<Utf16> PathGetArgs(
  Pointer<Utf16> pszPath,
) =>
    _PathGetArgs(
      pszPath,
    );

late final _PathGetArgs = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
)>('PathGetArgsW');

int PathGetCharType(
  int ch,
) =>
    _PathGetCharType(
      ch,
    );

late final _PathGetCharType = _shlwapi.lookupFunction<
    Uint32 Function(
  Uint16 ch,
),
    int Function(
  int ch,
)>('PathGetCharTypeW');

int PathGetDriveNumber(
  Pointer<Utf16> pszPath,
) =>
    _PathGetDriveNumber(
      pszPath,
    );

late final _PathGetDriveNumber = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathGetDriveNumberW');

int PathIsContentType(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszContentType,
) =>
    _PathIsContentType(
      pszPath,
      pszContentType,
    );

late final _PathIsContentType = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszContentType,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszContentType,
)>('PathIsContentTypeW');

int PathIsDirectoryEmpty(
  Pointer<Utf16> pszPath,
) =>
    _PathIsDirectoryEmpty(
      pszPath,
    );

late final _PathIsDirectoryEmpty = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsDirectoryEmptyW');

int PathIsDirectory(
  Pointer<Utf16> pszPath,
) =>
    _PathIsDirectory(
      pszPath,
    );

late final _PathIsDirectory = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsDirectoryW');

int PathIsFileSpec(
  Pointer<Utf16> pszPath,
) =>
    _PathIsFileSpec(
      pszPath,
    );

late final _PathIsFileSpec = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsFileSpecW');

int PathIsLFNFileSpec(
  Pointer<Utf16> pszName,
) =>
    _PathIsLFNFileSpec(
      pszName,
    );

late final _PathIsLFNFileSpec = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszName,
),
    int Function(
  Pointer<Utf16> pszName,
)>('PathIsLFNFileSpecW');

int PathIsNetworkPath(
  Pointer<Utf16> pszPath,
) =>
    _PathIsNetworkPath(
      pszPath,
    );

late final _PathIsNetworkPath = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsNetworkPathW');

int PathIsPrefix(
  Pointer<Utf16> pszPrefix,
  Pointer<Utf16> pszPath,
) =>
    _PathIsPrefix(
      pszPrefix,
      pszPath,
    );

late final _PathIsPrefix = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPrefix,
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPrefix,
  Pointer<Utf16> pszPath,
)>('PathIsPrefixW');

int PathIsRelative(
  Pointer<Utf16> pszPath,
) =>
    _PathIsRelative(
      pszPath,
    );

late final _PathIsRelative = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsRelativeW');

int PathIsRoot(
  Pointer<Utf16> pszPath,
) =>
    _PathIsRoot(
      pszPath,
    );

late final _PathIsRoot = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsRootW');

int PathIsSameRoot(
  Pointer<Utf16> pszPath1,
  Pointer<Utf16> pszPath2,
) =>
    _PathIsSameRoot(
      pszPath1,
      pszPath2,
    );

late final _PathIsSameRoot = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath1,
  Pointer<Utf16> pszPath2,
),
    int Function(
  Pointer<Utf16> pszPath1,
  Pointer<Utf16> pszPath2,
)>('PathIsSameRootW');

int PathIsSystemFolder(
  Pointer<Utf16> pszPath,
  int dwAttrb,
) =>
    _PathIsSystemFolder(
      pszPath,
      dwAttrb,
    );

late final _PathIsSystemFolder = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Uint32 dwAttrb,
),
    int Function(
  Pointer<Utf16> pszPath,
  int dwAttrb,
)>('PathIsSystemFolderW');

int PathIsUNCServerShare(
  Pointer<Utf16> pszPath,
) =>
    _PathIsUNCServerShare(
      pszPath,
    );

late final _PathIsUNCServerShare = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsUNCServerShareW');

int PathIsUNCServer(
  Pointer<Utf16> pszPath,
) =>
    _PathIsUNCServer(
      pszPath,
    );

late final _PathIsUNCServer = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsUNCServerW');

int PathIsUNC(
  Pointer<Utf16> pszPath,
) =>
    _PathIsUNC(
      pszPath,
    );

late final _PathIsUNC = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsUNCW');

int PathIsURL(
  Pointer<Utf16> pszPath,
) =>
    _PathIsURL(
      pszPath,
    );

late final _PathIsURL = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathIsURLW');

int PathMakePretty(
  Pointer<Utf16> pszPath,
) =>
    _PathMakePretty(
      pszPath,
    );

late final _PathMakePretty = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathMakePrettyW');

int PathMakeSystemFolder(
  Pointer<Utf16> pszPath,
) =>
    _PathMakeSystemFolder(
      pszPath,
    );

late final _PathMakeSystemFolder = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathMakeSystemFolderW');

int PathMatchSpecEx(
  Pointer<Utf16> pszFile,
  Pointer<Utf16> pszSpec,
  int dwFlags,
) =>
    _PathMatchSpecEx(
      pszFile,
      pszSpec,
      dwFlags,
    );

late final _PathMatchSpecEx = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFile,
  Pointer<Utf16> pszSpec,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszFile,
  Pointer<Utf16> pszSpec,
  int dwFlags,
)>('PathMatchSpecExW');

int PathMatchSpec(
  Pointer<Utf16> pszFile,
  Pointer<Utf16> pszSpec,
) =>
    _PathMatchSpec(
      pszFile,
      pszSpec,
    );

late final _PathMatchSpec = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFile,
  Pointer<Utf16> pszSpec,
),
    int Function(
  Pointer<Utf16> pszFile,
  Pointer<Utf16> pszSpec,
)>('PathMatchSpecW');

int PathParseIconLocation(
  Pointer<Utf16> pszIconFile,
) =>
    _PathParseIconLocation(
      pszIconFile,
    );

late final _PathParseIconLocation = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszIconFile,
),
    int Function(
  Pointer<Utf16> pszIconFile,
)>('PathParseIconLocationW');

int PathQuoteSpaces(
  Pointer<Utf16> lpsz,
) =>
    _PathQuoteSpaces(
      lpsz,
    );

late final _PathQuoteSpaces = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpsz,
),
    int Function(
  Pointer<Utf16> lpsz,
)>('PathQuoteSpacesW');

int PathRelativePathTo(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszFrom,
  int dwAttrFrom,
  Pointer<Utf16> pszTo,
  int dwAttrTo,
) =>
    _PathRelativePathTo(
      pszPath,
      pszFrom,
      dwAttrFrom,
      pszTo,
      dwAttrTo,
    );

late final _PathRelativePathTo = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszFrom,
  Uint32 dwAttrFrom,
  Pointer<Utf16> pszTo,
  Uint32 dwAttrTo,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszFrom,
  int dwAttrFrom,
  Pointer<Utf16> pszTo,
  int dwAttrTo,
)>('PathRelativePathToW');

void PathRemoveArgs(
  Pointer<Utf16> pszPath,
) =>
    _PathRemoveArgs(
      pszPath,
    );

late final _PathRemoveArgs = _shlwapi.lookupFunction<
    Void Function(
  Pointer<Utf16> pszPath,
),
    void Function(
  Pointer<Utf16> pszPath,
)>('PathRemoveArgsW');

Pointer<Utf16> PathRemoveBackslash(
  Pointer<Utf16> pszPath,
) =>
    _PathRemoveBackslash(
      pszPath,
    );

late final _PathRemoveBackslash = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
)>('PathRemoveBackslashW');

void PathRemoveBlanks(
  Pointer<Utf16> pszPath,
) =>
    _PathRemoveBlanks(
      pszPath,
    );

late final _PathRemoveBlanks = _shlwapi.lookupFunction<
    Void Function(
  Pointer<Utf16> pszPath,
),
    void Function(
  Pointer<Utf16> pszPath,
)>('PathRemoveBlanksW');

void PathRemoveExtension(
  Pointer<Utf16> pszPath,
) =>
    _PathRemoveExtension(
      pszPath,
    );

late final _PathRemoveExtension = _shlwapi.lookupFunction<
    Void Function(
  Pointer<Utf16> pszPath,
),
    void Function(
  Pointer<Utf16> pszPath,
)>('PathRemoveExtensionW');

int PathRemoveFileSpec(
  Pointer<Utf16> pszPath,
) =>
    _PathRemoveFileSpec(
      pszPath,
    );

late final _PathRemoveFileSpec = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathRemoveFileSpecW');

int PathRenameExtension(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszExt,
) =>
    _PathRenameExtension(
      pszPath,
      pszExt,
    );

late final _PathRenameExtension = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszExt,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszExt,
)>('PathRenameExtensionW');

int PathSearchAndQualify(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _PathSearchAndQualify(
      pszPath,
      pszBuf,
      cchBuf,
    );

late final _PathSearchAndQualify = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('PathSearchAndQualifyW');

void PathSetDlgItemPath(
  int hDlg,
  int id,
  Pointer<Utf16> pszPath,
) =>
    _PathSetDlgItemPath(
      hDlg,
      id,
      pszPath,
    );

late final _PathSetDlgItemPath = _shlwapi.lookupFunction<
    Void Function(
  IntPtr hDlg,
  Int32 id,
  Pointer<Utf16> pszPath,
),
    void Function(
  int hDlg,
  int id,
  Pointer<Utf16> pszPath,
)>('PathSetDlgItemPathW');

Pointer<Utf16> PathSkipRoot(
  Pointer<Utf16> pszPath,
) =>
    _PathSkipRoot(
      pszPath,
    );

late final _PathSkipRoot = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszPath,
)>('PathSkipRootW');

void PathStripPath(
  Pointer<Utf16> pszPath,
) =>
    _PathStripPath(
      pszPath,
    );

late final _PathStripPath = _shlwapi.lookupFunction<
    Void Function(
  Pointer<Utf16> pszPath,
),
    void Function(
  Pointer<Utf16> pszPath,
)>('PathStripPathW');

int PathStripToRoot(
  Pointer<Utf16> pszPath,
) =>
    _PathStripToRoot(
      pszPath,
    );

late final _PathStripToRoot = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathStripToRootW');

int PathUnExpandEnvStrings(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _PathUnExpandEnvStrings(
      pszPath,
      pszBuf,
      cchBuf,
    );

late final _PathUnExpandEnvStrings = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('PathUnExpandEnvStringsW');

void PathUndecorate(
  Pointer<Utf16> pszPath,
) =>
    _PathUndecorate(
      pszPath,
    );

late final _PathUndecorate = _shlwapi.lookupFunction<
    Void Function(
  Pointer<Utf16> pszPath,
),
    void Function(
  Pointer<Utf16> pszPath,
)>('PathUndecorateW');

int PathUnmakeSystemFolder(
  Pointer<Utf16> pszPath,
) =>
    _PathUnmakeSystemFolder(
      pszPath,
    );

late final _PathUnmakeSystemFolder = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathUnmakeSystemFolderW');

int PathUnquoteSpaces(
  Pointer<Utf16> lpsz,
) =>
    _PathUnquoteSpaces(
      lpsz,
    );

late final _PathUnquoteSpaces = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpsz,
),
    int Function(
  Pointer<Utf16> lpsz,
)>('PathUnquoteSpacesW');

int QISearch(
  Pointer that,
  Pointer<QITAB> pqit,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _QISearch(
      that,
      pqit,
      riid,
      ppv,
    );

late final _QISearch = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer that,
  Pointer<QITAB> pqit,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer that,
  Pointer<QITAB> pqit,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('QISearch');

int SHAllocShared(
  Pointer pvData,
  int dwSize,
  int dwProcessId,
) =>
    _SHAllocShared(
      pvData,
      dwSize,
      dwProcessId,
    );

late final _SHAllocShared = _shlwapi.lookupFunction<
    IntPtr Function(
  Pointer pvData,
  Uint32 dwSize,
  Uint32 dwProcessId,
),
    int Function(
  Pointer pvData,
  int dwSize,
  int dwProcessId,
)>('SHAllocShared');

int SHAnsiToAnsi(
  Pointer<Utf8> pszSrc,
  Pointer<Utf8> pszDst,
  int cchBuf,
) =>
    _SHAnsiToAnsi(
      pszSrc,
      pszDst,
      cchBuf,
    );

late final _SHAnsiToAnsi = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszSrc,
  Pointer<Utf8> pszDst,
  Int32 cchBuf,
),
    int Function(
  Pointer<Utf8> pszSrc,
  Pointer<Utf8> pszDst,
  int cchBuf,
)>('SHAnsiToAnsi');

int SHAnsiToUnicode(
  Pointer<Utf8> pszSrc,
  Pointer<Utf16> pwszDst,
  int cwchBuf,
) =>
    _SHAnsiToUnicode(
      pszSrc,
      pwszDst,
      cwchBuf,
    );

late final _SHAnsiToUnicode = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf8> pszSrc,
  Pointer<Utf16> pwszDst,
  Int32 cwchBuf,
),
    int Function(
  Pointer<Utf8> pszSrc,
  Pointer<Utf16> pwszDst,
  int cwchBuf,
)>('SHAnsiToUnicode');

int SHAutoComplete(
  int hwndEdit,
  int dwFlags,
) =>
    _SHAutoComplete(
      hwndEdit,
      dwFlags,
    );

late final _SHAutoComplete = _shlwapi.lookupFunction<
    Int32 Function(
  IntPtr hwndEdit,
  Uint32 dwFlags,
),
    int Function(
  int hwndEdit,
  int dwFlags,
)>('SHAutoComplete');

int SHCopyKey(
  int hkeySrc,
  Pointer<Utf16> pszSrcSubKey,
  int hkeyDest,
  int fReserved,
) =>
    _SHCopyKey(
      hkeySrc,
      pszSrcSubKey,
      hkeyDest,
      fReserved,
    );

late final _SHCopyKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkeySrc,
  Pointer<Utf16> pszSrcSubKey,
  IntPtr hkeyDest,
  Uint32 fReserved,
),
    int Function(
  int hkeySrc,
  Pointer<Utf16> pszSrcSubKey,
  int hkeyDest,
  int fReserved,
)>('SHCopyKeyW');

Pointer<COMObject> SHCreateMemStream(
  Pointer<Uint8> pInit,
  int cbInit,
) =>
    _SHCreateMemStream(
      pInit,
      cbInit,
    );

late final _SHCreateMemStream = _shlwapi.lookupFunction<
    Pointer<COMObject> Function(
  Pointer<Uint8> pInit,
  Uint32 cbInit,
),
    Pointer<COMObject> Function(
  Pointer<Uint8> pInit,
  int cbInit,
)>('SHCreateMemStream');

int SHCreateShellPalette(
  int hdc,
) =>
    _SHCreateShellPalette(
      hdc,
    );

late final _SHCreateShellPalette = _shlwapi.lookupFunction<
    IntPtr Function(
  IntPtr hdc,
),
    int Function(
  int hdc,
)>('SHCreateShellPalette');

int SHCreateStreamOnFileEx(
  Pointer<Utf16> pszFile,
  int grfMode,
  int dwAttributes,
  int fCreate,
  Pointer<COMObject> pstmTemplate,
  Pointer<Pointer<COMObject>> ppstm,
) =>
    _SHCreateStreamOnFileEx(
      pszFile,
      grfMode,
      dwAttributes,
      fCreate,
      pstmTemplate,
      ppstm,
    );

late final _SHCreateStreamOnFileEx = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFile,
  Uint32 grfMode,
  Uint32 dwAttributes,
  Int32 fCreate,
  Pointer<COMObject> pstmTemplate,
  Pointer<Pointer<COMObject>> ppstm,
),
    int Function(
  Pointer<Utf16> pszFile,
  int grfMode,
  int dwAttributes,
  int fCreate,
  Pointer<COMObject> pstmTemplate,
  Pointer<Pointer<COMObject>> ppstm,
)>('SHCreateStreamOnFileEx');

int SHCreateStreamOnFile(
  Pointer<Utf16> pszFile,
  int grfMode,
  Pointer<Pointer<COMObject>> ppstm,
) =>
    _SHCreateStreamOnFile(
      pszFile,
      grfMode,
      ppstm,
    );

late final _SHCreateStreamOnFile = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszFile,
  Uint32 grfMode,
  Pointer<Pointer<COMObject>> ppstm,
),
    int Function(
  Pointer<Utf16> pszFile,
  int grfMode,
  Pointer<Pointer<COMObject>> ppstm,
)>('SHCreateStreamOnFileW');

int SHCreateThread(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnThreadProc,
  Pointer pData,
  int flags,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCallback,
) =>
    _SHCreateThread(
      pfnThreadProc,
      pData,
      flags,
      pfnCallback,
    );

late final _SHCreateThread = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnThreadProc,
  Pointer pData,
  Uint32 flags,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCallback,
),
    int Function(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnThreadProc,
  Pointer pData,
  int flags,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCallback,
)>('SHCreateThread');

int SHCreateThreadRef(
  Pointer<Int32> pcRef,
  Pointer<Pointer<COMObject>> ppunk,
) =>
    _SHCreateThreadRef(
      pcRef,
      ppunk,
    );

late final _SHCreateThreadRef = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Int32> pcRef,
  Pointer<Pointer<COMObject>> ppunk,
),
    int Function(
  Pointer<Int32> pcRef,
  Pointer<Pointer<COMObject>> ppunk,
)>('SHCreateThreadRef');

int SHCreateThreadWithHandle(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnThreadProc,
  Pointer pData,
  int flags,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCallback,
  Pointer<IntPtr> pHandle,
) =>
    _SHCreateThreadWithHandle(
      pfnThreadProc,
      pData,
      flags,
      pfnCallback,
      pHandle,
    );

late final _SHCreateThreadWithHandle = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnThreadProc,
  Pointer pData,
  Uint32 flags,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCallback,
  Pointer<IntPtr> pHandle,
),
    int Function(
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnThreadProc,
  Pointer pData,
  int flags,
  Pointer<NativeFunction<LPTHREAD_START_ROUTINE>> pfnCallback,
  Pointer<IntPtr> pHandle,
)>('SHCreateThreadWithHandle');

int SHDeleteEmptyKey(
  int hkey,
  Pointer<Utf16> pszSubKey,
) =>
    _SHDeleteEmptyKey(
      hkey,
      pszSubKey,
    );

late final _SHDeleteEmptyKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubKey,
),
    int Function(
  int hkey,
  Pointer<Utf16> pszSubKey,
)>('SHDeleteEmptyKeyW');

int SHDeleteKey(
  int hkey,
  Pointer<Utf16> pszSubKey,
) =>
    _SHDeleteKey(
      hkey,
      pszSubKey,
    );

late final _SHDeleteKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubKey,
),
    int Function(
  int hkey,
  Pointer<Utf16> pszSubKey,
)>('SHDeleteKeyW');

int SHDeleteValue(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
) =>
    _SHDeleteValue(
      hkey,
      pszSubKey,
      pszValue,
    );

late final _SHDeleteValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
),
    int Function(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
)>('SHDeleteValueW');

int SHEnumKeyEx(
  int hkey,
  int dwIndex,
  Pointer<Utf16> pszName,
  Pointer<Uint32> pcchName,
) =>
    _SHEnumKeyEx(
      hkey,
      dwIndex,
      pszName,
      pcchName,
    );

late final _SHEnumKeyEx = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Uint32 dwIndex,
  Pointer<Utf16> pszName,
  Pointer<Uint32> pcchName,
),
    int Function(
  int hkey,
  int dwIndex,
  Pointer<Utf16> pszName,
  Pointer<Uint32> pcchName,
)>('SHEnumKeyExW');

int SHEnumValue(
  int hkey,
  int dwIndex,
  Pointer<Utf16> pszValueName,
  Pointer<Uint32> pcchValueName,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _SHEnumValue(
      hkey,
      dwIndex,
      pszValueName,
      pcchValueName,
      pdwType,
      pvData,
      pcbData,
    );

late final _SHEnumValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Uint32 dwIndex,
  Pointer<Utf16> pszValueName,
  Pointer<Uint32> pcchValueName,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  int hkey,
  int dwIndex,
  Pointer<Utf16> pszValueName,
  Pointer<Uint32> pcchValueName,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('SHEnumValueW');

int SHFormatDateTime(
  Pointer<FILETIME> pft,
  Pointer<Uint32> pdwFlags,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _SHFormatDateTime(
      pft,
      pdwFlags,
      pszBuf,
      cchBuf,
    );

late final _SHFormatDateTime = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> pft,
  Pointer<Uint32> pdwFlags,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    int Function(
  Pointer<FILETIME> pft,
  Pointer<Uint32> pdwFlags,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('SHFormatDateTimeW');

int SHFreeShared(
  int hData,
  int dwProcessId,
) =>
    _SHFreeShared(
      hData,
      dwProcessId,
    );

late final _SHFreeShared = _shlwapi.lookupFunction<
    Int32 Function(
  IntPtr hData,
  Uint32 dwProcessId,
),
    int Function(
  int hData,
  int dwProcessId,
)>('SHFreeShared');

int SHGetInverseCMAP(
  Pointer<Uint8> pbMap,
  int cbMap,
) =>
    _SHGetInverseCMAP(
      pbMap,
      cbMap,
    );

late final _SHGetInverseCMAP = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Uint8> pbMap,
  Uint32 cbMap,
),
    int Function(
  Pointer<Uint8> pbMap,
  int cbMap,
)>('SHGetInverseCMAP');

int SHGetThreadRef(
  Pointer<Pointer<COMObject>> ppunk,
) =>
    _SHGetThreadRef(
      ppunk,
    );

late final _SHGetThreadRef = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppunk,
),
    int Function(
  Pointer<Pointer<COMObject>> ppunk,
)>('SHGetThreadRef');

int SHGetValue(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _SHGetValue(
      hkey,
      pszSubKey,
      pszValue,
      pdwType,
      pvData,
      pcbData,
    );

late final _SHGetValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('SHGetValueW');

int SHGetViewStatePropertyBag(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszBagName,
  int dwFlags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
) =>
    _SHGetViewStatePropertyBag(
      pidl,
      pszBagName,
      dwFlags,
      riid,
      ppv,
    );

late final _SHGetViewStatePropertyBag = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszBagName,
  Uint32 dwFlags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
),
    int Function(
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszBagName,
  int dwFlags,
  Pointer<GUID> riid,
  Pointer<Pointer> ppv,
)>('SHGetViewStatePropertyBag');

int SHGlobalCounterDecrement(
  int id,
) =>
    _SHGlobalCounterDecrement(
      id,
    );

late final _SHGlobalCounterDecrement = _shlwapi.lookupFunction<
    Int32 Function(
  Int32 id,
),
    int Function(
  int id,
)>('SHGlobalCounterDecrement');

int SHGlobalCounterGetValue(
  int id,
) =>
    _SHGlobalCounterGetValue(
      id,
    );

late final _SHGlobalCounterGetValue = _shlwapi.lookupFunction<
    Int32 Function(
  Int32 id,
),
    int Function(
  int id,
)>('SHGlobalCounterGetValue');

int SHGlobalCounterIncrement(
  int id,
) =>
    _SHGlobalCounterIncrement(
      id,
    );

late final _SHGlobalCounterIncrement = _shlwapi.lookupFunction<
    Int32 Function(
  Int32 id,
),
    int Function(
  int id,
)>('SHGlobalCounterIncrement');

int SHIsLowMemoryMachine(
  int dwType,
) =>
    _SHIsLowMemoryMachine(
      dwType,
    );

late final _SHIsLowMemoryMachine = _shlwapi.lookupFunction<
    Int32 Function(
  Uint32 dwType,
),
    int Function(
  int dwType,
)>('SHIsLowMemoryMachine');

int SHLoadIndirectString(
  Pointer<Utf16> pszSource,
  Pointer<Utf16> pszOutBuf,
  int cchOutBuf,
  Pointer<Pointer> ppvReserved,
) =>
    _SHLoadIndirectString(
      pszSource,
      pszOutBuf,
      cchOutBuf,
      ppvReserved,
    );

late final _SHLoadIndirectString = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszSource,
  Pointer<Utf16> pszOutBuf,
  Uint32 cchOutBuf,
  Pointer<Pointer> ppvReserved,
),
    int Function(
  Pointer<Utf16> pszSource,
  Pointer<Utf16> pszOutBuf,
  int cchOutBuf,
  Pointer<Pointer> ppvReserved,
)>('SHLoadIndirectString');

Pointer SHLockShared(
  int hData,
  int dwProcessId,
) =>
    _SHLockShared(
      hData,
      dwProcessId,
    );

late final _SHLockShared = _shlwapi.lookupFunction<
    Pointer Function(
  IntPtr hData,
  Uint32 dwProcessId,
),
    Pointer Function(
  int hData,
  int dwProcessId,
)>('SHLockShared');

int SHMessageBoxCheck(
  int hwnd,
  Pointer<Utf16> pszText,
  Pointer<Utf16> pszCaption,
  int uType,
  int iDefault,
  Pointer<Utf16> pszRegVal,
) =>
    _SHMessageBoxCheck(
      hwnd,
      pszText,
      pszCaption,
      uType,
      iDefault,
      pszRegVal,
    );

late final _SHMessageBoxCheck = _shlwapi.lookupFunction<
    Int32 Function(
  IntPtr hwnd,
  Pointer<Utf16> pszText,
  Pointer<Utf16> pszCaption,
  Uint32 uType,
  Int32 iDefault,
  Pointer<Utf16> pszRegVal,
),
    int Function(
  int hwnd,
  Pointer<Utf16> pszText,
  Pointer<Utf16> pszCaption,
  int uType,
  int iDefault,
  Pointer<Utf16> pszRegVal,
)>('SHMessageBoxCheckW');

Pointer<COMObject> SHOpenRegStream2(
  int hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  int grfMode,
) =>
    _SHOpenRegStream2(
      hkey,
      pszSubkey,
      pszValue,
      grfMode,
    );

late final _SHOpenRegStream2 = _shlwapi.lookupFunction<
    Pointer<COMObject> Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  Uint32 grfMode,
),
    Pointer<COMObject> Function(
  int hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  int grfMode,
)>('SHOpenRegStream2W');

Pointer<COMObject> SHOpenRegStream(
  int hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  int grfMode,
) =>
    _SHOpenRegStream(
      hkey,
      pszSubkey,
      pszValue,
      grfMode,
    );

late final _SHOpenRegStream = _shlwapi.lookupFunction<
    Pointer<COMObject> Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  Uint32 grfMode,
),
    Pointer<COMObject> Function(
  int hkey,
  Pointer<Utf16> pszSubkey,
  Pointer<Utf16> pszValue,
  int grfMode,
)>('SHOpenRegStreamW');

int SHQueryInfoKey(
  int hkey,
  Pointer<Uint32> pcSubKeys,
  Pointer<Uint32> pcchMaxSubKeyLen,
  Pointer<Uint32> pcValues,
  Pointer<Uint32> pcchMaxValueNameLen,
) =>
    _SHQueryInfoKey(
      hkey,
      pcSubKeys,
      pcchMaxSubKeyLen,
      pcValues,
      pcchMaxValueNameLen,
    );

late final _SHQueryInfoKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Uint32> pcSubKeys,
  Pointer<Uint32> pcchMaxSubKeyLen,
  Pointer<Uint32> pcValues,
  Pointer<Uint32> pcchMaxValueNameLen,
),
    int Function(
  int hkey,
  Pointer<Uint32> pcSubKeys,
  Pointer<Uint32> pcchMaxSubKeyLen,
  Pointer<Uint32> pcValues,
  Pointer<Uint32> pcchMaxValueNameLen,
)>('SHQueryInfoKeyW');

int SHQueryValueEx(
  int hkey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwReserved,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _SHQueryValueEx(
      hkey,
      pszValue,
      pdwReserved,
      pdwType,
      pvData,
      pcbData,
    );

late final _SHQueryValueEx = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwReserved,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  int hkey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwReserved,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('SHQueryValueExW');

int SHRegCloseUSKey(
  int hUSKey,
) =>
    _SHRegCloseUSKey(
      hUSKey,
    );

late final _SHRegCloseUSKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSKey,
),
    int Function(
  int hUSKey,
)>('SHRegCloseUSKey');

int SHRegCreateUSKey(
  Pointer<Utf16> pwzPath,
  int samDesired,
  int hRelativeUSKey,
  Pointer<IntPtr> phNewUSKey,
  int dwFlags,
) =>
    _SHRegCreateUSKey(
      pwzPath,
      samDesired,
      hRelativeUSKey,
      phNewUSKey,
      dwFlags,
    );

late final _SHRegCreateUSKey = _shlwapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwzPath,
  Uint32 samDesired,
  IntPtr hRelativeUSKey,
  Pointer<IntPtr> phNewUSKey,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwzPath,
  int samDesired,
  int hRelativeUSKey,
  Pointer<IntPtr> phNewUSKey,
  int dwFlags,
)>('SHRegCreateUSKeyW');

int SHRegDeleteEmptyUSKey(
  int hUSKey,
  Pointer<Utf16> pwzSubKey,
  int delRegFlags,
) =>
    _SHRegDeleteEmptyUSKey(
      hUSKey,
      pwzSubKey,
      delRegFlags,
    );

late final _SHRegDeleteEmptyUSKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSKey,
  Pointer<Utf16> pwzSubKey,
  Int32 delRegFlags,
),
    int Function(
  int hUSKey,
  Pointer<Utf16> pwzSubKey,
  int delRegFlags,
)>('SHRegDeleteEmptyUSKeyW');

int SHRegDeleteUSValue(
  int hUSKey,
  Pointer<Utf16> pwzValue,
  int delRegFlags,
) =>
    _SHRegDeleteUSValue(
      hUSKey,
      pwzValue,
      delRegFlags,
    );

late final _SHRegDeleteUSValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSKey,
  Pointer<Utf16> pwzValue,
  Int32 delRegFlags,
),
    int Function(
  int hUSKey,
  Pointer<Utf16> pwzValue,
  int delRegFlags,
)>('SHRegDeleteUSValueW');

int SHRegDuplicateHKey(
  int hkey,
) =>
    _SHRegDuplicateHKey(
      hkey,
    );

late final _SHRegDuplicateHKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
),
    int Function(
  int hkey,
)>('SHRegDuplicateHKey');

int SHRegEnumUSKey(
  int hUSKey,
  int dwIndex,
  Pointer<Utf16> pwzName,
  Pointer<Uint32> pcchName,
  int enumRegFlags,
) =>
    _SHRegEnumUSKey(
      hUSKey,
      dwIndex,
      pwzName,
      pcchName,
      enumRegFlags,
    );

late final _SHRegEnumUSKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSKey,
  Uint32 dwIndex,
  Pointer<Utf16> pwzName,
  Pointer<Uint32> pcchName,
  Int32 enumRegFlags,
),
    int Function(
  int hUSKey,
  int dwIndex,
  Pointer<Utf16> pwzName,
  Pointer<Uint32> pcchName,
  int enumRegFlags,
)>('SHRegEnumUSKeyW');

int SHRegEnumUSValue(
  int hUSkey,
  int dwIndex,
  Pointer<Utf16> pszValueName,
  Pointer<Uint32> pcchValueName,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  int enumRegFlags,
) =>
    _SHRegEnumUSValue(
      hUSkey,
      dwIndex,
      pszValueName,
      pcchValueName,
      pdwType,
      pvData,
      pcbData,
      enumRegFlags,
    );

late final _SHRegEnumUSValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSkey,
  Uint32 dwIndex,
  Pointer<Utf16> pszValueName,
  Pointer<Uint32> pcchValueName,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  Int32 enumRegFlags,
),
    int Function(
  int hUSkey,
  int dwIndex,
  Pointer<Utf16> pszValueName,
  Pointer<Uint32> pcchValueName,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  int enumRegFlags,
)>('SHRegEnumUSValueW');

int SHRegGetBoolUSValue(
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  int fIgnoreHKCU,
  int fDefault,
) =>
    _SHRegGetBoolUSValue(
      pszSubKey,
      pszValue,
      fIgnoreHKCU,
      fDefault,
    );

late final _SHRegGetBoolUSValue = _shlwapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Int32 fIgnoreHKCU,
  Int32 fDefault,
),
    int Function(
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  int fIgnoreHKCU,
  int fDefault,
)>('SHRegGetBoolUSValueW');

int SHRegGetInt(
  int hk,
  Pointer<Utf16> pwzKey,
  int iDefault,
) =>
    _SHRegGetInt(
      hk,
      pwzKey,
      iDefault,
    );

late final _SHRegGetInt = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hk,
  Pointer<Utf16> pwzKey,
  Int32 iDefault,
),
    int Function(
  int hk,
  Pointer<Utf16> pwzKey,
  int iDefault,
)>('SHRegGetIntW');

int SHRegGetPath(
  int hKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValue,
  Pointer<Utf16> pszPath,
  int dwFlags,
) =>
    _SHRegGetPath(
      hKey,
      pcszSubKey,
      pcszValue,
      pszPath,
      dwFlags,
    );

late final _SHRegGetPath = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValue,
  Pointer<Utf16> pszPath,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValue,
  Pointer<Utf16> pszPath,
  int dwFlags,
)>('SHRegGetPathW');

int SHRegGetUSValue(
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  int fIgnoreHKCU,
  Pointer pvDefaultData,
  int dwDefaultDataSize,
) =>
    _SHRegGetUSValue(
      pszSubKey,
      pszValue,
      pdwType,
      pvData,
      pcbData,
      fIgnoreHKCU,
      pvDefaultData,
      dwDefaultDataSize,
    );

late final _SHRegGetUSValue = _shlwapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  Int32 fIgnoreHKCU,
  Pointer pvDefaultData,
  Uint32 dwDefaultDataSize,
),
    int Function(
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  int fIgnoreHKCU,
  Pointer pvDefaultData,
  int dwDefaultDataSize,
)>('SHRegGetUSValueW');

int SHRegGetValueFromHKCUHKLM(
  Pointer<Utf16> pwszKey,
  Pointer<Utf16> pwszValue,
  int srrfFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _SHRegGetValueFromHKCUHKLM(
      pwszKey,
      pwszValue,
      srrfFlags,
      pdwType,
      pvData,
      pcbData,
    );

late final _SHRegGetValueFromHKCUHKLM = _shlwapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwszKey,
  Pointer<Utf16> pwszValue,
  Int32 srrfFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  Pointer<Utf16> pwszKey,
  Pointer<Utf16> pwszValue,
  int srrfFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('SHRegGetValueFromHKCUHKLM');

int SHRegGetValue(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  int srrfFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
) =>
    _SHRegGetValue(
      hkey,
      pszSubKey,
      pszValue,
      srrfFlags,
      pdwType,
      pvData,
      pcbData,
    );

late final _SHRegGetValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Int32 srrfFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
),
    int Function(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  int srrfFlags,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
)>('SHRegGetValueW');

int SHRegOpenUSKey(
  Pointer<Utf16> pwzPath,
  int samDesired,
  int hRelativeUSKey,
  Pointer<IntPtr> phNewUSKey,
  int fIgnoreHKCU,
) =>
    _SHRegOpenUSKey(
      pwzPath,
      samDesired,
      hRelativeUSKey,
      phNewUSKey,
      fIgnoreHKCU,
    );

late final _SHRegOpenUSKey = _shlwapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwzPath,
  Uint32 samDesired,
  IntPtr hRelativeUSKey,
  Pointer<IntPtr> phNewUSKey,
  Int32 fIgnoreHKCU,
),
    int Function(
  Pointer<Utf16> pwzPath,
  int samDesired,
  int hRelativeUSKey,
  Pointer<IntPtr> phNewUSKey,
  int fIgnoreHKCU,
)>('SHRegOpenUSKeyW');

int SHRegQueryInfoUSKey(
  int hUSKey,
  Pointer<Uint32> pcSubKeys,
  Pointer<Uint32> pcchMaxSubKeyLen,
  Pointer<Uint32> pcValues,
  Pointer<Uint32> pcchMaxValueNameLen,
  int enumRegFlags,
) =>
    _SHRegQueryInfoUSKey(
      hUSKey,
      pcSubKeys,
      pcchMaxSubKeyLen,
      pcValues,
      pcchMaxValueNameLen,
      enumRegFlags,
    );

late final _SHRegQueryInfoUSKey = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSKey,
  Pointer<Uint32> pcSubKeys,
  Pointer<Uint32> pcchMaxSubKeyLen,
  Pointer<Uint32> pcValues,
  Pointer<Uint32> pcchMaxValueNameLen,
  Int32 enumRegFlags,
),
    int Function(
  int hUSKey,
  Pointer<Uint32> pcSubKeys,
  Pointer<Uint32> pcchMaxSubKeyLen,
  Pointer<Uint32> pcValues,
  Pointer<Uint32> pcchMaxValueNameLen,
  int enumRegFlags,
)>('SHRegQueryInfoUSKeyW');

int SHRegQueryUSValue(
  int hUSKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  int fIgnoreHKCU,
  Pointer pvDefaultData,
  int dwDefaultDataSize,
) =>
    _SHRegQueryUSValue(
      hUSKey,
      pszValue,
      pdwType,
      pvData,
      pcbData,
      fIgnoreHKCU,
      pvDefaultData,
      dwDefaultDataSize,
    );

late final _SHRegQueryUSValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  Int32 fIgnoreHKCU,
  Pointer pvDefaultData,
  Uint32 dwDefaultDataSize,
),
    int Function(
  int hUSKey,
  Pointer<Utf16> pszValue,
  Pointer<Uint32> pdwType,
  Pointer pvData,
  Pointer<Uint32> pcbData,
  int fIgnoreHKCU,
  Pointer pvDefaultData,
  int dwDefaultDataSize,
)>('SHRegQueryUSValueW');

int SHRegSetPath(
  int hKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValue,
  Pointer<Utf16> pcszPath,
  int dwFlags,
) =>
    _SHRegSetPath(
      hKey,
      pcszSubKey,
      pcszValue,
      pcszPath,
      dwFlags,
    );

late final _SHRegSetPath = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValue,
  Pointer<Utf16> pcszPath,
  Uint32 dwFlags,
),
    int Function(
  int hKey,
  Pointer<Utf16> pcszSubKey,
  Pointer<Utf16> pcszValue,
  Pointer<Utf16> pcszPath,
  int dwFlags,
)>('SHRegSetPathW');

int SHRegSetUSValue(
  Pointer<Utf16> pwzSubKey,
  Pointer<Utf16> pwzValue,
  int dwType,
  Pointer pvData,
  int cbData,
  int dwFlags,
) =>
    _SHRegSetUSValue(
      pwzSubKey,
      pwzValue,
      dwType,
      pvData,
      cbData,
      dwFlags,
    );

late final _SHRegSetUSValue = _shlwapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pwzSubKey,
  Pointer<Utf16> pwzValue,
  Uint32 dwType,
  Pointer pvData,
  Uint32 cbData,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pwzSubKey,
  Pointer<Utf16> pwzValue,
  int dwType,
  Pointer pvData,
  int cbData,
  int dwFlags,
)>('SHRegSetUSValueW');

int SHRegWriteUSValue(
  int hUSKey,
  Pointer<Utf16> pwzValue,
  int dwType,
  Pointer pvData,
  int cbData,
  int dwFlags,
) =>
    _SHRegWriteUSValue(
      hUSKey,
      pwzValue,
      dwType,
      pvData,
      cbData,
      dwFlags,
    );

late final _SHRegWriteUSValue = _shlwapi.lookupFunction<
    Uint32 Function(
  IntPtr hUSKey,
  Pointer<Utf16> pwzValue,
  Uint32 dwType,
  Pointer pvData,
  Uint32 cbData,
  Uint32 dwFlags,
),
    int Function(
  int hUSKey,
  Pointer<Utf16> pwzValue,
  int dwType,
  Pointer pvData,
  int cbData,
  int dwFlags,
)>('SHRegWriteUSValueW');

int SHReleaseThreadRef() => _SHReleaseThreadRef();

late final _SHReleaseThreadRef = _shlwapi
    .lookupFunction<Int32 Function(), int Function()>('SHReleaseThreadRef');

int SHSendMessageBroadcast(
  int uMsg,
  int wParam,
  int lParam,
) =>
    _SHSendMessageBroadcast(
      uMsg,
      wParam,
      lParam,
    );

late final _SHSendMessageBroadcast = _shlwapi.lookupFunction<
    IntPtr Function(
  Uint32 uMsg,
  IntPtr wParam,
  IntPtr lParam,
),
    int Function(
  int uMsg,
  int wParam,
  int lParam,
)>('SHSendMessageBroadcastW');

int SHSetThreadRef(
  Pointer<COMObject> punk,
) =>
    _SHSetThreadRef(
      punk,
    );

late final _SHSetThreadRef = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> punk,
),
    int Function(
  Pointer<COMObject> punk,
)>('SHSetThreadRef');

int SHSetValue(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  int dwType,
  Pointer pvData,
  int cbData,
) =>
    _SHSetValue(
      hkey,
      pszSubKey,
      pszValue,
      dwType,
      pvData,
      cbData,
    );

late final _SHSetValue = _shlwapi.lookupFunction<
    Int32 Function(
  IntPtr hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  Uint32 dwType,
  Pointer pvData,
  Uint32 cbData,
),
    int Function(
  int hkey,
  Pointer<Utf16> pszSubKey,
  Pointer<Utf16> pszValue,
  int dwType,
  Pointer pvData,
  int cbData,
)>('SHSetValueW');

int SHSkipJunction(
  Pointer<COMObject> pbc,
  Pointer<GUID> pclsid,
) =>
    _SHSkipJunction(
      pbc,
      pclsid,
    );

late final _SHSkipJunction = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pbc,
  Pointer<GUID> pclsid,
),
    int Function(
  Pointer<COMObject> pbc,
  Pointer<GUID> pclsid,
)>('SHSkipJunction');

int SHStrDup(
  Pointer<Utf16> psz,
  Pointer<Pointer<Utf16>> ppwsz,
) =>
    _SHStrDup(
      psz,
      ppwsz,
    );

late final _SHStrDup = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz,
  Pointer<Pointer<Utf16>> ppwsz,
),
    int Function(
  Pointer<Utf16> psz,
  Pointer<Pointer<Utf16>> ppwsz,
)>('SHStrDupW');

int SHStripMneumonic(
  Pointer<Utf16> pszMenu,
) =>
    _SHStripMneumonic(
      pszMenu,
    );

late final _SHStripMneumonic = _shlwapi.lookupFunction<
    Uint16 Function(
  Pointer<Utf16> pszMenu,
),
    int Function(
  Pointer<Utf16> pszMenu,
)>('SHStripMneumonicW');

int SHUnicodeToAnsi(
  Pointer<Utf16> pwszSrc,
  Pointer<Utf8> pszDst,
  int cchBuf,
) =>
    _SHUnicodeToAnsi(
      pwszSrc,
      pszDst,
      cchBuf,
    );

late final _SHUnicodeToAnsi = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszSrc,
  Pointer<Utf8> pszDst,
  Int32 cchBuf,
),
    int Function(
  Pointer<Utf16> pwszSrc,
  Pointer<Utf8> pszDst,
  int cchBuf,
)>('SHUnicodeToAnsi');

int SHUnicodeToUnicode(
  Pointer<Utf16> pwzSrc,
  Pointer<Utf16> pwzDst,
  int cwchBuf,
) =>
    _SHUnicodeToUnicode(
      pwzSrc,
      pwzDst,
      cwchBuf,
    );

late final _SHUnicodeToUnicode = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzSrc,
  Pointer<Utf16> pwzDst,
  Int32 cwchBuf,
),
    int Function(
  Pointer<Utf16> pwzSrc,
  Pointer<Utf16> pwzDst,
  int cwchBuf,
)>('SHUnicodeToUnicode');

int SHUnlockShared(
  Pointer pvData,
) =>
    _SHUnlockShared(
      pvData,
    );

late final _SHUnlockShared = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer pvData,
),
    int Function(
  Pointer pvData,
)>('SHUnlockShared');

int ShellMessageBox(
  int hAppInst,
  int hWnd,
  Pointer<Utf16> lpcText,
  Pointer<Utf16> lpcTitle,
  int fuStyle,
) =>
    _ShellMessageBox(
      hAppInst,
      hWnd,
      lpcText,
      lpcTitle,
      fuStyle,
    );

late final _ShellMessageBox = _shlwapi.lookupFunction<
    Int32 Function(
  IntPtr hAppInst,
  IntPtr hWnd,
  Pointer<Utf16> lpcText,
  Pointer<Utf16> lpcTitle,
  Uint32 fuStyle,
),
    int Function(
  int hAppInst,
  int hWnd,
  Pointer<Utf16> lpcText,
  Pointer<Utf16> lpcTitle,
  int fuStyle,
)>('ShellMessageBoxW');

int StrCSpnI(
  Pointer<Utf16> pszStr,
  Pointer<Utf16> pszSet,
) =>
    _StrCSpnI(
      pszStr,
      pszSet,
    );

late final _StrCSpnI = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszStr,
  Pointer<Utf16> pszSet,
),
    int Function(
  Pointer<Utf16> pszStr,
  Pointer<Utf16> pszSet,
)>('StrCSpnIW');

int StrCSpn(
  Pointer<Utf16> pszStr,
  Pointer<Utf16> pszSet,
) =>
    _StrCSpn(
      pszStr,
      pszSet,
    );

late final _StrCSpn = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszStr,
  Pointer<Utf16> pszSet,
),
    int Function(
  Pointer<Utf16> pszStr,
  Pointer<Utf16> pszSet,
)>('StrCSpnW');

Pointer<Utf16> StrCatBuff(
  Pointer<Utf16> pszDest,
  Pointer<Utf16> pszSrc,
  int cchDestBuffSize,
) =>
    _StrCatBuff(
      pszDest,
      pszSrc,
      cchDestBuffSize,
    );

late final _StrCatBuff = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszDest,
  Pointer<Utf16> pszSrc,
  Int32 cchDestBuffSize,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszDest,
  Pointer<Utf16> pszSrc,
  int cchDestBuffSize,
)>('StrCatBuffW');

int StrCatChain(
  Pointer<Utf16> pszDst,
  int cchDst,
  int ichAt,
  Pointer<Utf16> pszSrc,
) =>
    _StrCatChain(
      pszDst,
      cchDst,
      ichAt,
      pszSrc,
    );

late final _StrCatChain = _shlwapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszDst,
  Uint32 cchDst,
  Uint32 ichAt,
  Pointer<Utf16> pszSrc,
),
    int Function(
  Pointer<Utf16> pszDst,
  int cchDst,
  int ichAt,
  Pointer<Utf16> pszSrc,
)>('StrCatChainW');

Pointer<Utf16> StrCat(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
) =>
    _StrCat(
      psz1,
      psz2,
    );

late final _StrCat = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
)>('StrCatW');

Pointer<Utf16> StrChrI(
  Pointer<Utf16> pszStart,
  int wMatch,
) =>
    _StrChrI(
      pszStart,
      wMatch,
    );

late final _StrChrI = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Uint16 wMatch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  int wMatch,
)>('StrChrIW');

Pointer<Utf16> StrChrNI(
  Pointer<Utf16> pszStart,
  int wMatch,
  int cchMax,
) =>
    _StrChrNI(
      pszStart,
      wMatch,
      cchMax,
    );

late final _StrChrNI = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Uint16 wMatch,
  Uint32 cchMax,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  int wMatch,
  int cchMax,
)>('StrChrNIW');

Pointer<Utf16> StrChrN(
  Pointer<Utf16> pszStart,
  int wMatch,
  int cchMax,
) =>
    _StrChrN(
      pszStart,
      wMatch,
      cchMax,
    );

late final _StrChrN = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Uint16 wMatch,
  Uint32 cchMax,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  int wMatch,
  int cchMax,
)>('StrChrNW');

Pointer<Utf16> StrChr(
  Pointer<Utf16> pszStart,
  int wMatch,
) =>
    _StrChr(
      pszStart,
      wMatch,
    );

late final _StrChr = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Uint16 wMatch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  int wMatch,
)>('StrChrW');

int StrCmpC(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
) =>
    _StrCmpC(
      pszStr1,
      pszStr2,
    );

late final _StrCmpC = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
),
    int Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
)>('StrCmpCW');

int StrCmpIC(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
) =>
    _StrCmpIC(
      pszStr1,
      pszStr2,
    );

late final _StrCmpIC = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
),
    int Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
)>('StrCmpICW');

int StrCmpI(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
) =>
    _StrCmpI(
      psz1,
      psz2,
    );

late final _StrCmpI = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
),
    int Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
)>('StrCmpIW');

int StrCmpLogical(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
) =>
    _StrCmpLogical(
      psz1,
      psz2,
    );

late final _StrCmpLogical = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
),
    int Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
)>('StrCmpLogicalW');

int StrCmpNC(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
  int nChar,
) =>
    _StrCmpNC(
      pszStr1,
      pszStr2,
      nChar,
    );

late final _StrCmpNC = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
  Int32 nChar,
),
    int Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
  int nChar,
)>('StrCmpNCW');

int StrCmpNIC(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
  int nChar,
) =>
    _StrCmpNIC(
      pszStr1,
      pszStr2,
      nChar,
    );

late final _StrCmpNIC = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
  Int32 nChar,
),
    int Function(
  Pointer<Utf16> pszStr1,
  Pointer<Utf16> pszStr2,
  int nChar,
)>('StrCmpNICW');

int StrCmpNI(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int nChar,
) =>
    _StrCmpNI(
      psz1,
      psz2,
      nChar,
    );

late final _StrCmpNI = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  Int32 nChar,
),
    int Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int nChar,
)>('StrCmpNIW');

int StrCmpN(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int nChar,
) =>
    _StrCmpN(
      psz1,
      psz2,
      nChar,
    );

late final _StrCmpN = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  Int32 nChar,
),
    int Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int nChar,
)>('StrCmpNW');

int StrCmp(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
) =>
    _StrCmp(
      psz1,
      psz2,
    );

late final _StrCmp = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
),
    int Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
)>('StrCmpW');

Pointer<Utf16> StrCpyN(
  Pointer<Utf16> pszDst,
  Pointer<Utf16> pszSrc,
  int cchMax,
) =>
    _StrCpyN(
      pszDst,
      pszSrc,
      cchMax,
    );

late final _StrCpyN = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszDst,
  Pointer<Utf16> pszSrc,
  Int32 cchMax,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszDst,
  Pointer<Utf16> pszSrc,
  int cchMax,
)>('StrCpyNW');

Pointer<Utf16> StrCpy(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
) =>
    _StrCpy(
      psz1,
      psz2,
    );

late final _StrCpy = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
)>('StrCpyW');

Pointer<Utf16> StrDup(
  Pointer<Utf16> pszSrch,
) =>
    _StrDup(
      pszSrch,
    );

late final _StrDup = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszSrch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszSrch,
)>('StrDupW');

int StrFormatByteSizeEx(
  int ull,
  int flags,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _StrFormatByteSizeEx(
      ull,
      flags,
      pszBuf,
      cchBuf,
    );

late final _StrFormatByteSizeEx = _shlwapi.lookupFunction<
    Int32 Function(
  Uint64 ull,
  Int32 flags,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    int Function(
  int ull,
  int flags,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('StrFormatByteSizeEx');

Pointer<Utf16> StrFormatByteSize(
  int qdw,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _StrFormatByteSize(
      qdw,
      pszBuf,
      cchBuf,
    );

late final _StrFormatByteSize = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Int64 qdw,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    Pointer<Utf16> Function(
  int qdw,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('StrFormatByteSizeW');

Pointer<Utf16> StrFormatKBSize(
  int qdw,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _StrFormatKBSize(
      qdw,
      pszBuf,
      cchBuf,
    );

late final _StrFormatKBSize = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Int64 qdw,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    Pointer<Utf16> Function(
  int qdw,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('StrFormatKBSizeW');

int StrFromTimeInterval(
  Pointer<Utf16> pszOut,
  int cchMax,
  int dwTimeMS,
  int digits,
) =>
    _StrFromTimeInterval(
      pszOut,
      cchMax,
      dwTimeMS,
      digits,
    );

late final _StrFromTimeInterval = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszOut,
  Uint32 cchMax,
  Uint32 dwTimeMS,
  Int32 digits,
),
    int Function(
  Pointer<Utf16> pszOut,
  int cchMax,
  int dwTimeMS,
  int digits,
)>('StrFromTimeIntervalW');

int StrIsIntlEqual(
  int fCaseSens,
  Pointer<Utf16> pszString1,
  Pointer<Utf16> pszString2,
  int nChar,
) =>
    _StrIsIntlEqual(
      fCaseSens,
      pszString1,
      pszString2,
      nChar,
    );

late final _StrIsIntlEqual = _shlwapi.lookupFunction<
    Int32 Function(
  Int32 fCaseSens,
  Pointer<Utf16> pszString1,
  Pointer<Utf16> pszString2,
  Int32 nChar,
),
    int Function(
  int fCaseSens,
  Pointer<Utf16> pszString1,
  Pointer<Utf16> pszString2,
  int nChar,
)>('StrIsIntlEqualW');

Pointer<Utf16> StrNCat(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int cchMax,
) =>
    _StrNCat(
      psz1,
      psz2,
      cchMax,
    );

late final _StrNCat = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  Int32 cchMax,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int cchMax,
)>('StrNCatW');

Pointer<Utf16> StrPBrk(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszSet,
) =>
    _StrPBrk(
      psz,
      pszSet,
    );

late final _StrPBrk = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszSet,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszSet,
)>('StrPBrkW');

Pointer<Utf16> StrRChrI(
  Pointer<Utf16> pszStart,
  Pointer<Utf16> pszEnd,
  int wMatch,
) =>
    _StrRChrI(
      pszStart,
      pszEnd,
      wMatch,
    );

late final _StrRChrI = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Pointer<Utf16> pszEnd,
  Uint16 wMatch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Pointer<Utf16> pszEnd,
  int wMatch,
)>('StrRChrIW');

Pointer<Utf16> StrRChr(
  Pointer<Utf16> pszStart,
  Pointer<Utf16> pszEnd,
  int wMatch,
) =>
    _StrRChr(
      pszStart,
      pszEnd,
      wMatch,
    );

late final _StrRChr = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Pointer<Utf16> pszEnd,
  Uint16 wMatch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszStart,
  Pointer<Utf16> pszEnd,
  int wMatch,
)>('StrRChrW');

Pointer<Utf16> StrRStrI(
  Pointer<Utf16> pszSource,
  Pointer<Utf16> pszLast,
  Pointer<Utf16> pszSrch,
) =>
    _StrRStrI(
      pszSource,
      pszLast,
      pszSrch,
    );

late final _StrRStrI = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszSource,
  Pointer<Utf16> pszLast,
  Pointer<Utf16> pszSrch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszSource,
  Pointer<Utf16> pszLast,
  Pointer<Utf16> pszSrch,
)>('StrRStrIW');

int StrRetToBSTR(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<Utf16>> pbstr,
) =>
    _StrRetToBSTR(
      pstr,
      pidl,
      pbstr,
    );

late final _StrRetToBSTR = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<Utf16>> pbstr,
),
    int Function(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<Utf16>> pbstr,
)>('StrRetToBSTR');

int StrRetToBuf(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszBuf,
  int cchBuf,
) =>
    _StrRetToBuf(
      pstr,
      pidl,
      pszBuf,
      cchBuf,
    );

late final _StrRetToBuf = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszBuf,
  Uint32 cchBuf,
),
    int Function(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Utf16> pszBuf,
  int cchBuf,
)>('StrRetToBufW');

int StrRetToStr(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<Utf16>> ppsz,
) =>
    _StrRetToStr(
      pstr,
      pidl,
      ppsz,
    );

late final _StrRetToStr = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<Utf16>> ppsz,
),
    int Function(
  Pointer<STRRET> pstr,
  Pointer<ITEMIDLIST> pidl,
  Pointer<Pointer<Utf16>> ppsz,
)>('StrRetToStrW');

int StrSpn(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszSet,
) =>
    _StrSpn(
      psz,
      pszSet,
    );

late final _StrSpn = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszSet,
),
    int Function(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszSet,
)>('StrSpnW');

Pointer<Utf16> StrStrI(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
) =>
    _StrStrI(
      pszFirst,
      pszSrch,
    );

late final _StrStrI = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
)>('StrStrIW');

Pointer<Utf16> StrStrNI(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
  int cchMax,
) =>
    _StrStrNI(
      pszFirst,
      pszSrch,
      cchMax,
    );

late final _StrStrNI = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
  Uint32 cchMax,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
  int cchMax,
)>('StrStrNIW');

Pointer<Utf16> StrStrN(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
  int cchMax,
) =>
    _StrStrN(
      pszFirst,
      pszSrch,
      cchMax,
    );

late final _StrStrN = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
  Uint32 cchMax,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
  int cchMax,
)>('StrStrNW');

Pointer<Utf16> StrStr(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
) =>
    _StrStr(
      pszFirst,
      pszSrch,
    );

late final _StrStr = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszFirst,
  Pointer<Utf16> pszSrch,
)>('StrStrW');

int StrToInt64Ex(
  Pointer<Utf16> pszString,
  int dwFlags,
  Pointer<Int64> pllRet,
) =>
    _StrToInt64Ex(
      pszString,
      dwFlags,
      pllRet,
    );

late final _StrToInt64Ex = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszString,
  Int32 dwFlags,
  Pointer<Int64> pllRet,
),
    int Function(
  Pointer<Utf16> pszString,
  int dwFlags,
  Pointer<Int64> pllRet,
)>('StrToInt64ExW');

int StrToIntEx(
  Pointer<Utf16> pszString,
  int dwFlags,
  Pointer<Int32> piRet,
) =>
    _StrToIntEx(
      pszString,
      dwFlags,
      piRet,
    );

late final _StrToIntEx = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszString,
  Int32 dwFlags,
  Pointer<Int32> piRet,
),
    int Function(
  Pointer<Utf16> pszString,
  int dwFlags,
  Pointer<Int32> piRet,
)>('StrToIntExW');

int StrToInt(
  Pointer<Utf16> pszSrc,
) =>
    _StrToInt(
      pszSrc,
    );

late final _StrToInt = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszSrc,
),
    int Function(
  Pointer<Utf16> pszSrc,
)>('StrToIntW');

int StrTrim(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszTrimChars,
) =>
    _StrTrim(
      psz,
      pszTrimChars,
    );

late final _StrTrim = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszTrimChars,
),
    int Function(
  Pointer<Utf16> psz,
  Pointer<Utf16> pszTrimChars,
)>('StrTrimW');

int UrlApplyScheme(
  Pointer<Utf16> pszIn,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
  int dwFlags,
) =>
    _UrlApplyScheme(
      pszIn,
      pszOut,
      pcchOut,
      dwFlags,
    );

late final _UrlApplyScheme = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszIn,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszIn,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
  int dwFlags,
)>('UrlApplySchemeW');

int UrlCanonicalize(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszCanonicalized,
  Pointer<Uint32> pcchCanonicalized,
  int dwFlags,
) =>
    _UrlCanonicalize(
      pszUrl,
      pszCanonicalized,
      pcchCanonicalized,
      dwFlags,
    );

late final _UrlCanonicalize = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszCanonicalized,
  Pointer<Uint32> pcchCanonicalized,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszCanonicalized,
  Pointer<Uint32> pcchCanonicalized,
  int dwFlags,
)>('UrlCanonicalizeW');

int UrlCombine(
  Pointer<Utf16> pszBase,
  Pointer<Utf16> pszRelative,
  Pointer<Utf16> pszCombined,
  Pointer<Uint32> pcchCombined,
  int dwFlags,
) =>
    _UrlCombine(
      pszBase,
      pszRelative,
      pszCombined,
      pcchCombined,
      dwFlags,
    );

late final _UrlCombine = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszBase,
  Pointer<Utf16> pszRelative,
  Pointer<Utf16> pszCombined,
  Pointer<Uint32> pcchCombined,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszBase,
  Pointer<Utf16> pszRelative,
  Pointer<Utf16> pszCombined,
  Pointer<Uint32> pcchCombined,
  int dwFlags,
)>('UrlCombineW');

int UrlCompare(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int fIgnoreSlash,
) =>
    _UrlCompare(
      psz1,
      psz2,
      fIgnoreSlash,
    );

late final _UrlCompare = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  Int32 fIgnoreSlash,
),
    int Function(
  Pointer<Utf16> psz1,
  Pointer<Utf16> psz2,
  int fIgnoreSlash,
)>('UrlCompareW');

int UrlCreateFromPath(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszUrl,
  Pointer<Uint32> pcchUrl,
  int dwFlags,
) =>
    _UrlCreateFromPath(
      pszPath,
      pszUrl,
      pcchUrl,
      dwFlags,
    );

late final _UrlCreateFromPath = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszUrl,
  Pointer<Uint32> pcchUrl,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Utf16> pszUrl,
  Pointer<Uint32> pcchUrl,
  int dwFlags,
)>('UrlCreateFromPathW');

int UrlEscape(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszEscaped,
  Pointer<Uint32> pcchEscaped,
  int dwFlags,
) =>
    _UrlEscape(
      pszUrl,
      pszEscaped,
      pcchEscaped,
      dwFlags,
    );

late final _UrlEscape = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszEscaped,
  Pointer<Uint32> pcchEscaped,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszEscaped,
  Pointer<Uint32> pcchEscaped,
  int dwFlags,
)>('UrlEscapeW');

int UrlFixup(
  Pointer<Utf16> pcszUrl,
  Pointer<Utf16> pszTranslatedUrl,
  int cchMax,
) =>
    _UrlFixup(
      pcszUrl,
      pszTranslatedUrl,
      cchMax,
    );

late final _UrlFixup = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pcszUrl,
  Pointer<Utf16> pszTranslatedUrl,
  Uint32 cchMax,
),
    int Function(
  Pointer<Utf16> pcszUrl,
  Pointer<Utf16> pszTranslatedUrl,
  int cchMax,
)>('UrlFixupW');

Pointer<Utf16> UrlGetLocation(
  Pointer<Utf16> pszURL,
) =>
    _UrlGetLocation(
      pszURL,
    );

late final _UrlGetLocation = _shlwapi.lookupFunction<
    Pointer<Utf16> Function(
  Pointer<Utf16> pszURL,
),
    Pointer<Utf16> Function(
  Pointer<Utf16> pszURL,
)>('UrlGetLocationW');

int UrlGetPart(
  Pointer<Utf16> pszIn,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
  int dwPart,
  int dwFlags,
) =>
    _UrlGetPart(
      pszIn,
      pszOut,
      pcchOut,
      dwPart,
      dwFlags,
    );

late final _UrlGetPart = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszIn,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
  Uint32 dwPart,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszIn,
  Pointer<Utf16> pszOut,
  Pointer<Uint32> pcchOut,
  int dwPart,
  int dwFlags,
)>('UrlGetPartW');

int UrlHash(
  Pointer<Utf16> pszUrl,
  Pointer<Uint8> pbHash,
  int cbHash,
) =>
    _UrlHash(
      pszUrl,
      pbHash,
      cbHash,
    );

late final _UrlHash = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUrl,
  Pointer<Uint8> pbHash,
  Uint32 cbHash,
),
    int Function(
  Pointer<Utf16> pszUrl,
  Pointer<Uint8> pbHash,
  int cbHash,
)>('UrlHashW');

int UrlIsNoHistory(
  Pointer<Utf16> pszURL,
) =>
    _UrlIsNoHistory(
      pszURL,
    );

late final _UrlIsNoHistory = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszURL,
),
    int Function(
  Pointer<Utf16> pszURL,
)>('UrlIsNoHistoryW');

int UrlIsOpaque(
  Pointer<Utf16> pszURL,
) =>
    _UrlIsOpaque(
      pszURL,
    );

late final _UrlIsOpaque = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszURL,
),
    int Function(
  Pointer<Utf16> pszURL,
)>('UrlIsOpaqueW');

int UrlIs(
  Pointer<Utf16> pszUrl,
  int UrlIs,
) =>
    _UrlIs(
      pszUrl,
      UrlIs,
    );

late final _UrlIs = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUrl,
  Int32 UrlIs,
),
    int Function(
  Pointer<Utf16> pszUrl,
  int UrlIs,
)>('UrlIsW');

int UrlUnescape(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszUnescaped,
  Pointer<Uint32> pcchUnescaped,
  int dwFlags,
) =>
    _UrlUnescape(
      pszUrl,
      pszUnescaped,
      pcchUnescaped,
      dwFlags,
    );

late final _UrlUnescape = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszUnescaped,
  Pointer<Uint32> pcchUnescaped,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszUrl,
  Pointer<Utf16> pszUnescaped,
  Pointer<Uint32> pcchUnescaped,
  int dwFlags,
)>('UrlUnescapeW');

int WhichPlatform() => _WhichPlatform();

late final _WhichPlatform =
    _shlwapi.lookupFunction<Uint32 Function(), int Function()>('WhichPlatform');

int wnsprintf(
  Pointer<Utf16> pszDest,
  int cchDest,
  Pointer<Utf16> pszFmt,
) =>
    _wnsprintf(
      pszDest,
      cchDest,
      pszFmt,
    );

late final _wnsprintf = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszDest,
  Int32 cchDest,
  Pointer<Utf16> pszFmt,
),
    int Function(
  Pointer<Utf16> pszDest,
  int cchDest,
  Pointer<Utf16> pszFmt,
)>('wnsprintfW');

int wvnsprintf(
  Pointer<Utf16> pszDest,
  int cchDest,
  Pointer<Utf16> pszFmt,
  Pointer<Int8> arglist,
) =>
    _wvnsprintf(
      pszDest,
      cchDest,
      pszFmt,
      arglist,
    );

late final _wvnsprintf = _shlwapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszDest,
  Int32 cchDest,
  Pointer<Utf16> pszFmt,
  Pointer<Int8> arglist,
),
    int Function(
  Pointer<Utf16> pszDest,
  int cchDest,
  Pointer<Utf16> pszFmt,
  Pointer<Int8> arglist,
)>('wvnsprintfW');

// -----------------------------------------------------------------------
// hlink.dll
// -----------------------------------------------------------------------
final _hlink = DynamicLibrary.open('hlink.dll');

int HlinkClone(
  Pointer<COMObject> pihl,
  Pointer<GUID> riid,
  Pointer<COMObject> pihlsiteForClone,
  int dwSiteData,
  Pointer<Pointer> ppvObj,
) =>
    _HlinkClone(
      pihl,
      riid,
      pihlsiteForClone,
      dwSiteData,
      ppvObj,
    );

late final _HlinkClone = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pihl,
  Pointer<GUID> riid,
  Pointer<COMObject> pihlsiteForClone,
  Uint32 dwSiteData,
  Pointer<Pointer> ppvObj,
),
    int Function(
  Pointer<COMObject> pihl,
  Pointer<GUID> riid,
  Pointer<COMObject> pihlsiteForClone,
  int dwSiteData,
  Pointer<Pointer> ppvObj,
)>('HlinkClone');

int HlinkCreateBrowseContext(
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
) =>
    _HlinkCreateBrowseContext(
      piunkOuter,
      riid,
      ppvObj,
    );

late final _HlinkCreateBrowseContext = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
),
    int Function(
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
)>('HlinkCreateBrowseContext');

int HlinkCreateExtensionServices(
  Pointer<Utf16> pwzAdditionalHeaders,
  int phwnd,
  Pointer<Utf16> pszUsername,
  Pointer<Utf16> pszPassword,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
) =>
    _HlinkCreateExtensionServices(
      pwzAdditionalHeaders,
      phwnd,
      pszUsername,
      pszPassword,
      piunkOuter,
      riid,
      ppvObj,
    );

late final _HlinkCreateExtensionServices = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzAdditionalHeaders,
  IntPtr phwnd,
  Pointer<Utf16> pszUsername,
  Pointer<Utf16> pszPassword,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
),
    int Function(
  Pointer<Utf16> pwzAdditionalHeaders,
  int phwnd,
  Pointer<Utf16> pszUsername,
  Pointer<Utf16> pszPassword,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
)>('HlinkCreateExtensionServices');

int HlinkCreateFromData(
  Pointer<COMObject> piDataObj,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
) =>
    _HlinkCreateFromData(
      piDataObj,
      pihlsite,
      dwSiteData,
      piunkOuter,
      riid,
      ppvObj,
    );

late final _HlinkCreateFromData = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> piDataObj,
  Pointer<COMObject> pihlsite,
  Uint32 dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
),
    int Function(
  Pointer<COMObject> piDataObj,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
)>('HlinkCreateFromData');

int HlinkCreateFromMoniker(
  Pointer<COMObject> pimkTrgt,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
) =>
    _HlinkCreateFromMoniker(
      pimkTrgt,
      pwzLocation,
      pwzFriendlyName,
      pihlsite,
      dwSiteData,
      piunkOuter,
      riid,
      ppvObj,
    );

late final _HlinkCreateFromMoniker = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pimkTrgt,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<COMObject> pihlsite,
  Uint32 dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
),
    int Function(
  Pointer<COMObject> pimkTrgt,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
)>('HlinkCreateFromMoniker');

int HlinkCreateFromString(
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
) =>
    _HlinkCreateFromString(
      pwzTarget,
      pwzLocation,
      pwzFriendlyName,
      pihlsite,
      dwSiteData,
      piunkOuter,
      riid,
      ppvObj,
    );

late final _HlinkCreateFromString = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<COMObject> pihlsite,
  Uint32 dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
),
    int Function(
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
)>('HlinkCreateFromString');

int HlinkCreateShortcut(
  int grfHLSHORTCUTF,
  Pointer<COMObject> pihl,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  int dwReserved,
) =>
    _HlinkCreateShortcut(
      grfHLSHORTCUTF,
      pihl,
      pwzDir,
      pwzFileName,
      ppwzShortcutFile,
      dwReserved,
    );

late final _HlinkCreateShortcut = _hlink.lookupFunction<
    Int32 Function(
  Uint32 grfHLSHORTCUTF,
  Pointer<COMObject> pihl,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  Uint32 dwReserved,
),
    int Function(
  int grfHLSHORTCUTF,
  Pointer<COMObject> pihl,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  int dwReserved,
)>('HlinkCreateShortcut');

int HlinkCreateShortcutFromMoniker(
  int grfHLSHORTCUTF,
  Pointer<COMObject> pimkTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  int dwReserved,
) =>
    _HlinkCreateShortcutFromMoniker(
      grfHLSHORTCUTF,
      pimkTarget,
      pwzLocation,
      pwzDir,
      pwzFileName,
      ppwzShortcutFile,
      dwReserved,
    );

late final _HlinkCreateShortcutFromMoniker = _hlink.lookupFunction<
    Int32 Function(
  Uint32 grfHLSHORTCUTF,
  Pointer<COMObject> pimkTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  Uint32 dwReserved,
),
    int Function(
  int grfHLSHORTCUTF,
  Pointer<COMObject> pimkTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  int dwReserved,
)>('HlinkCreateShortcutFromMoniker');

int HlinkCreateShortcutFromString(
  int grfHLSHORTCUTF,
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  int dwReserved,
) =>
    _HlinkCreateShortcutFromString(
      grfHLSHORTCUTF,
      pwzTarget,
      pwzLocation,
      pwzDir,
      pwzFileName,
      ppwzShortcutFile,
      dwReserved,
    );

late final _HlinkCreateShortcutFromString = _hlink.lookupFunction<
    Int32 Function(
  Uint32 grfHLSHORTCUTF,
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  Uint32 dwReserved,
),
    int Function(
  int grfHLSHORTCUTF,
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzDir,
  Pointer<Utf16> pwzFileName,
  Pointer<Pointer<Utf16>> ppwzShortcutFile,
  int dwReserved,
)>('HlinkCreateShortcutFromString');

int HlinkGetSpecialReference(
  int uReference,
  Pointer<Pointer<Utf16>> ppwzReference,
) =>
    _HlinkGetSpecialReference(
      uReference,
      ppwzReference,
    );

late final _HlinkGetSpecialReference = _hlink.lookupFunction<
    Int32 Function(
  Uint32 uReference,
  Pointer<Pointer<Utf16>> ppwzReference,
),
    int Function(
  int uReference,
  Pointer<Pointer<Utf16>> ppwzReference,
)>('HlinkGetSpecialReference');

int HlinkGetValueFromParams(
  Pointer<Utf16> pwzParams,
  Pointer<Utf16> pwzName,
  Pointer<Pointer<Utf16>> ppwzValue,
) =>
    _HlinkGetValueFromParams(
      pwzParams,
      pwzName,
      ppwzValue,
    );

late final _HlinkGetValueFromParams = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzParams,
  Pointer<Utf16> pwzName,
  Pointer<Pointer<Utf16>> ppwzValue,
),
    int Function(
  Pointer<Utf16> pwzParams,
  Pointer<Utf16> pwzName,
  Pointer<Pointer<Utf16>> ppwzValue,
)>('HlinkGetValueFromParams');

int HlinkIsShortcut(
  Pointer<Utf16> pwzFileName,
) =>
    _HlinkIsShortcut(
      pwzFileName,
    );

late final _HlinkIsShortcut = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzFileName,
),
    int Function(
  Pointer<Utf16> pwzFileName,
)>('HlinkIsShortcut');

int HlinkNavigate(
  Pointer<COMObject> pihl,
  Pointer<COMObject> pihlframe,
  int grfHLNF,
  Pointer<COMObject> pbc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pihlbc,
) =>
    _HlinkNavigate(
      pihl,
      pihlframe,
      grfHLNF,
      pbc,
      pibsc,
      pihlbc,
    );

late final _HlinkNavigate = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pihl,
  Pointer<COMObject> pihlframe,
  Uint32 grfHLNF,
  Pointer<COMObject> pbc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pihlbc,
),
    int Function(
  Pointer<COMObject> pihl,
  Pointer<COMObject> pihlframe,
  int grfHLNF,
  Pointer<COMObject> pbc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pihlbc,
)>('HlinkNavigate');

int HlinkNavigateToStringReference(
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> pihlframe,
  int grfHLNF,
  Pointer<COMObject> pibc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pihlbc,
) =>
    _HlinkNavigateToStringReference(
      pwzTarget,
      pwzLocation,
      pihlsite,
      dwSiteData,
      pihlframe,
      grfHLNF,
      pibc,
      pibsc,
      pihlbc,
    );

late final _HlinkNavigateToStringReference = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<COMObject> pihlsite,
  Uint32 dwSiteData,
  Pointer<COMObject> pihlframe,
  Uint32 grfHLNF,
  Pointer<COMObject> pibc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pihlbc,
),
    int Function(
  Pointer<Utf16> pwzTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> pihlframe,
  int grfHLNF,
  Pointer<COMObject> pibc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pihlbc,
)>('HlinkNavigateToStringReference');

int HlinkOnNavigate(
  Pointer<COMObject> pihlframe,
  Pointer<COMObject> pihlbc,
  int grfHLNF,
  Pointer<COMObject> pimkTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<Uint32> puHLID,
) =>
    _HlinkOnNavigate(
      pihlframe,
      pihlbc,
      grfHLNF,
      pimkTarget,
      pwzLocation,
      pwzFriendlyName,
      puHLID,
    );

late final _HlinkOnNavigate = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pihlframe,
  Pointer<COMObject> pihlbc,
  Uint32 grfHLNF,
  Pointer<COMObject> pimkTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<Uint32> puHLID,
),
    int Function(
  Pointer<COMObject> pihlframe,
  Pointer<COMObject> pihlbc,
  int grfHLNF,
  Pointer<COMObject> pimkTarget,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
  Pointer<Uint32> puHLID,
)>('HlinkOnNavigate');

int HlinkOnRenameDocument(
  int dwReserved,
  Pointer<COMObject> pihlbc,
  Pointer<COMObject> pimkOld,
  Pointer<COMObject> pimkNew,
) =>
    _HlinkOnRenameDocument(
      dwReserved,
      pihlbc,
      pimkOld,
      pimkNew,
    );

late final _HlinkOnRenameDocument = _hlink.lookupFunction<
    Int32 Function(
  Uint32 dwReserved,
  Pointer<COMObject> pihlbc,
  Pointer<COMObject> pimkOld,
  Pointer<COMObject> pimkNew,
),
    int Function(
  int dwReserved,
  Pointer<COMObject> pihlbc,
  Pointer<COMObject> pimkOld,
  Pointer<COMObject> pimkNew,
)>('HlinkOnRenameDocument');

int HlinkParseDisplayName(
  Pointer<COMObject> pibc,
  Pointer<Utf16> pwzDisplayName,
  int fNoForceAbs,
  Pointer<Uint32> pcchEaten,
  Pointer<Pointer<COMObject>> ppimk,
) =>
    _HlinkParseDisplayName(
      pibc,
      pwzDisplayName,
      fNoForceAbs,
      pcchEaten,
      ppimk,
    );

late final _HlinkParseDisplayName = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pibc,
  Pointer<Utf16> pwzDisplayName,
  Int32 fNoForceAbs,
  Pointer<Uint32> pcchEaten,
  Pointer<Pointer<COMObject>> ppimk,
),
    int Function(
  Pointer<COMObject> pibc,
  Pointer<Utf16> pwzDisplayName,
  int fNoForceAbs,
  Pointer<Uint32> pcchEaten,
  Pointer<Pointer<COMObject>> ppimk,
)>('HlinkParseDisplayName');

int HlinkPreprocessMoniker(
  Pointer<COMObject> pibc,
  Pointer<COMObject> pimkIn,
  Pointer<Pointer<COMObject>> ppimkOut,
) =>
    _HlinkPreprocessMoniker(
      pibc,
      pimkIn,
      ppimkOut,
    );

late final _HlinkPreprocessMoniker = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pibc,
  Pointer<COMObject> pimkIn,
  Pointer<Pointer<COMObject>> ppimkOut,
),
    int Function(
  Pointer<COMObject> pibc,
  Pointer<COMObject> pimkIn,
  Pointer<Pointer<COMObject>> ppimkOut,
)>('HlinkPreprocessMoniker');

int HlinkQueryCreateFromData(
  Pointer<COMObject> piDataObj,
) =>
    _HlinkQueryCreateFromData(
      piDataObj,
    );

late final _HlinkQueryCreateFromData = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> piDataObj,
),
    int Function(
  Pointer<COMObject> piDataObj,
)>('HlinkQueryCreateFromData');

int HlinkResolveMonikerForData(
  Pointer<COMObject> pimkReference,
  int reserved,
  Pointer<COMObject> pibc,
  int cFmtetc,
  Pointer<FORMATETC> rgFmtetc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pimkBase,
) =>
    _HlinkResolveMonikerForData(
      pimkReference,
      reserved,
      pibc,
      cFmtetc,
      rgFmtetc,
      pibsc,
      pimkBase,
    );

late final _HlinkResolveMonikerForData = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pimkReference,
  Uint32 reserved,
  Pointer<COMObject> pibc,
  Uint32 cFmtetc,
  Pointer<FORMATETC> rgFmtetc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pimkBase,
),
    int Function(
  Pointer<COMObject> pimkReference,
  int reserved,
  Pointer<COMObject> pibc,
  int cFmtetc,
  Pointer<FORMATETC> rgFmtetc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pimkBase,
)>('HlinkResolveMonikerForData');

int HlinkResolveShortcut(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
) =>
    _HlinkResolveShortcut(
      pwzShortcutFileName,
      pihlsite,
      dwSiteData,
      piunkOuter,
      riid,
      ppvObj,
    );

late final _HlinkResolveShortcut = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<COMObject> pihlsite,
  Uint32 dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
),
    int Function(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<COMObject> pihlsite,
  int dwSiteData,
  Pointer<COMObject> piunkOuter,
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObj,
)>('HlinkResolveShortcut');

int HlinkResolveShortcutToMoniker(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<Pointer<COMObject>> ppimkTarget,
  Pointer<Pointer<Utf16>> ppwzLocation,
) =>
    _HlinkResolveShortcutToMoniker(
      pwzShortcutFileName,
      ppimkTarget,
      ppwzLocation,
    );

late final _HlinkResolveShortcutToMoniker = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<Pointer<COMObject>> ppimkTarget,
  Pointer<Pointer<Utf16>> ppwzLocation,
),
    int Function(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<Pointer<COMObject>> ppimkTarget,
  Pointer<Pointer<Utf16>> ppwzLocation,
)>('HlinkResolveShortcutToMoniker');

int HlinkResolveShortcutToString(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<Pointer<Utf16>> ppwzTarget,
  Pointer<Pointer<Utf16>> ppwzLocation,
) =>
    _HlinkResolveShortcutToString(
      pwzShortcutFileName,
      ppwzTarget,
      ppwzLocation,
    );

late final _HlinkResolveShortcutToString = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<Pointer<Utf16>> ppwzTarget,
  Pointer<Pointer<Utf16>> ppwzLocation,
),
    int Function(
  Pointer<Utf16> pwzShortcutFileName,
  Pointer<Pointer<Utf16>> ppwzTarget,
  Pointer<Pointer<Utf16>> ppwzLocation,
)>('HlinkResolveShortcutToString');

int HlinkResolveStringForData(
  Pointer<Utf16> pwzReference,
  int reserved,
  Pointer<COMObject> pibc,
  int cFmtetc,
  Pointer<FORMATETC> rgFmtetc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pimkBase,
) =>
    _HlinkResolveStringForData(
      pwzReference,
      reserved,
      pibc,
      cFmtetc,
      rgFmtetc,
      pibsc,
      pimkBase,
    );

late final _HlinkResolveStringForData = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzReference,
  Uint32 reserved,
  Pointer<COMObject> pibc,
  Uint32 cFmtetc,
  Pointer<FORMATETC> rgFmtetc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pimkBase,
),
    int Function(
  Pointer<Utf16> pwzReference,
  int reserved,
  Pointer<COMObject> pibc,
  int cFmtetc,
  Pointer<FORMATETC> rgFmtetc,
  Pointer<COMObject> pibsc,
  Pointer<COMObject> pimkBase,
)>('HlinkResolveStringForData');

int HlinkSetSpecialReference(
  int uReference,
  Pointer<Utf16> pwzReference,
) =>
    _HlinkSetSpecialReference(
      uReference,
      pwzReference,
    );

late final _HlinkSetSpecialReference = _hlink.lookupFunction<
    Int32 Function(
  Uint32 uReference,
  Pointer<Utf16> pwzReference,
),
    int Function(
  int uReference,
  Pointer<Utf16> pwzReference,
)>('HlinkSetSpecialReference');

int HlinkTranslateURL(
  Pointer<Utf16> pwzURL,
  int grfFlags,
  Pointer<Pointer<Utf16>> ppwzTranslatedURL,
) =>
    _HlinkTranslateURL(
      pwzURL,
      grfFlags,
      ppwzTranslatedURL,
    );

late final _HlinkTranslateURL = _hlink.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwzURL,
  Uint32 grfFlags,
  Pointer<Pointer<Utf16>> ppwzTranslatedURL,
),
    int Function(
  Pointer<Utf16> pwzURL,
  int grfFlags,
  Pointer<Pointer<Utf16>> ppwzTranslatedURL,
)>('HlinkTranslateURL');

int HlinkUpdateStackItem(
  Pointer<COMObject> pihlframe,
  Pointer<COMObject> pihlbc,
  int uHLID,
  Pointer<COMObject> pimkTrgt,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
) =>
    _HlinkUpdateStackItem(
      pihlframe,
      pihlbc,
      uHLID,
      pimkTrgt,
      pwzLocation,
      pwzFriendlyName,
    );

late final _HlinkUpdateStackItem = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pihlframe,
  Pointer<COMObject> pihlbc,
  Uint32 uHLID,
  Pointer<COMObject> pimkTrgt,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
),
    int Function(
  Pointer<COMObject> pihlframe,
  Pointer<COMObject> pihlbc,
  int uHLID,
  Pointer<COMObject> pimkTrgt,
  Pointer<Utf16> pwzLocation,
  Pointer<Utf16> pwzFriendlyName,
)>('HlinkUpdateStackItem');

int OleSaveToStreamEx(
  Pointer<COMObject> piunk,
  Pointer<COMObject> pistm,
  int fClearDirty,
) =>
    _OleSaveToStreamEx(
      piunk,
      pistm,
      fClearDirty,
    );

late final _OleSaveToStreamEx = _hlink.lookupFunction<
    Int32 Function(
  Pointer<COMObject> piunk,
  Pointer<COMObject> pistm,
  Int32 fClearDirty,
),
    int Function(
  Pointer<COMObject> piunk,
  Pointer<COMObject> pistm,
  int fClearDirty,
)>('OleSaveToStreamEx');

// -----------------------------------------------------------------------
// api-ms-win-core-path-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_path_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-path-l1-1-0.dll');

int PathAllocCanonicalize(
  Pointer<Utf16> pszPathIn,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
) =>
    _PathAllocCanonicalize(
      pszPathIn,
      dwFlags,
      ppszPathOut,
    );

late final _PathAllocCanonicalize = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPathIn,
  Uint32 dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
),
    int Function(
  Pointer<Utf16> pszPathIn,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
)>('PathAllocCanonicalize');

int PathAllocCombine(
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
) =>
    _PathAllocCombine(
      pszPathIn,
      pszMore,
      dwFlags,
      ppszPathOut,
    );

late final _PathAllocCombine = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  Uint32 dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
),
    int Function(
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  int dwFlags,
  Pointer<Pointer<Utf16>> ppszPathOut,
)>('PathAllocCombine');

int PathCchAddBackslash(
  Pointer<Utf16> pszPath,
  int cchPath,
) =>
    _PathCchAddBackslash(
      pszPath,
      cchPath,
    );

late final _PathCchAddBackslash = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
)>('PathCchAddBackslash');

int PathCchAddBackslashEx(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Pointer<Utf16>> ppszEnd,
  Pointer<IntPtr> pcchRemaining,
) =>
    _PathCchAddBackslashEx(
      pszPath,
      cchPath,
      ppszEnd,
      pcchRemaining,
    );

late final _PathCchAddBackslashEx = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
  Pointer<Pointer<Utf16>> ppszEnd,
  Pointer<IntPtr> pcchRemaining,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Pointer<Utf16>> ppszEnd,
  Pointer<IntPtr> pcchRemaining,
)>('PathCchAddBackslashEx');

int PathCchAddExtension(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszExt,
) =>
    _PathCchAddExtension(
      pszPath,
      cchPath,
      pszExt,
    );

late final _PathCchAddExtension = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
  Pointer<Utf16> pszExt,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszExt,
)>('PathCchAddExtension');

int PathCchAppend(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszMore,
) =>
    _PathCchAppend(
      pszPath,
      cchPath,
      pszMore,
    );

late final _PathCchAppend = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
  Pointer<Utf16> pszMore,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszMore,
)>('PathCchAppend');

int PathCchAppendEx(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszMore,
  int dwFlags,
) =>
    _PathCchAppendEx(
      pszPath,
      cchPath,
      pszMore,
      dwFlags,
    );

late final _PathCchAppendEx = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
  Pointer<Utf16> pszMore,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszMore,
  int dwFlags,
)>('PathCchAppendEx');

int PathCchCanonicalize(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
) =>
    _PathCchCanonicalize(
      pszPathOut,
      cchPathOut,
      pszPathIn,
    );

late final _PathCchCanonicalize = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPathOut,
  IntPtr cchPathOut,
  Pointer<Utf16> pszPathIn,
),
    int Function(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
)>('PathCchCanonicalize');

int PathCchCanonicalizeEx(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
  int dwFlags,
) =>
    _PathCchCanonicalizeEx(
      pszPathOut,
      cchPathOut,
      pszPathIn,
      dwFlags,
    );

late final _PathCchCanonicalizeEx = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPathOut,
  IntPtr cchPathOut,
  Pointer<Utf16> pszPathIn,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
  int dwFlags,
)>('PathCchCanonicalizeEx');

int PathCchCombine(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
) =>
    _PathCchCombine(
      pszPathOut,
      cchPathOut,
      pszPathIn,
      pszMore,
    );

late final _PathCchCombine = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPathOut,
  IntPtr cchPathOut,
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
),
    int Function(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
)>('PathCchCombine');

int PathCchCombineEx(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  int dwFlags,
) =>
    _PathCchCombineEx(
      pszPathOut,
      cchPathOut,
      pszPathIn,
      pszMore,
      dwFlags,
    );

late final _PathCchCombineEx = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPathOut,
  IntPtr cchPathOut,
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Utf16> pszPathOut,
  int cchPathOut,
  Pointer<Utf16> pszPathIn,
  Pointer<Utf16> pszMore,
  int dwFlags,
)>('PathCchCombineEx');

int PathCchFindExtension(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Pointer<Utf16>> ppszExt,
) =>
    _PathCchFindExtension(
      pszPath,
      cchPath,
      ppszExt,
    );

late final _PathCchFindExtension = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
  Pointer<Pointer<Utf16>> ppszExt,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Pointer<Utf16>> ppszExt,
)>('PathCchFindExtension');

int PathCchIsRoot(
  Pointer<Utf16> pszPath,
) =>
    _PathCchIsRoot(
      pszPath,
    );

late final _PathCchIsRoot = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
),
    int Function(
  Pointer<Utf16> pszPath,
)>('PathCchIsRoot');

int PathCchRemoveBackslash(
  Pointer<Utf16> pszPath,
  int cchPath,
) =>
    _PathCchRemoveBackslash(
      pszPath,
      cchPath,
    );

late final _PathCchRemoveBackslash =
    _api_ms_win_core_path_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
),
        int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
)>('PathCchRemoveBackslash');

int PathCchRemoveBackslashEx(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Pointer<Utf16>> ppszEnd,
  Pointer<IntPtr> pcchRemaining,
) =>
    _PathCchRemoveBackslashEx(
      pszPath,
      cchPath,
      ppszEnd,
      pcchRemaining,
    );

late final _PathCchRemoveBackslashEx =
    _api_ms_win_core_path_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
  Pointer<Pointer<Utf16>> ppszEnd,
  Pointer<IntPtr> pcchRemaining,
),
        int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Pointer<Utf16>> ppszEnd,
  Pointer<IntPtr> pcchRemaining,
)>('PathCchRemoveBackslashEx');

int PathCchRemoveExtension(
  Pointer<Utf16> pszPath,
  int cchPath,
) =>
    _PathCchRemoveExtension(
      pszPath,
      cchPath,
    );

late final _PathCchRemoveExtension =
    _api_ms_win_core_path_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
),
        int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
)>('PathCchRemoveExtension');

int PathCchRemoveFileSpec(
  Pointer<Utf16> pszPath,
  int cchPath,
) =>
    _PathCchRemoveFileSpec(
      pszPath,
      cchPath,
    );

late final _PathCchRemoveFileSpec = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
)>('PathCchRemoveFileSpec');

int PathCchRenameExtension(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszExt,
) =>
    _PathCchRenameExtension(
      pszPath,
      cchPath,
      pszExt,
    );

late final _PathCchRenameExtension =
    _api_ms_win_core_path_l1_1_0.lookupFunction<
        Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
  Pointer<Utf16> pszExt,
),
        int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
  Pointer<Utf16> pszExt,
)>('PathCchRenameExtension');

int PathCchSkipRoot(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> ppszRootEnd,
) =>
    _PathCchSkipRoot(
      pszPath,
      ppszRootEnd,
    );

late final _PathCchSkipRoot = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> ppszRootEnd,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> ppszRootEnd,
)>('PathCchSkipRoot');

int PathCchStripPrefix(
  Pointer<Utf16> pszPath,
  int cchPath,
) =>
    _PathCchStripPrefix(
      pszPath,
      cchPath,
    );

late final _PathCchStripPrefix = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
)>('PathCchStripPrefix');

int PathCchStripToRoot(
  Pointer<Utf16> pszPath,
  int cchPath,
) =>
    _PathCchStripToRoot(
      pszPath,
      cchPath,
    );

late final _PathCchStripToRoot = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  IntPtr cchPath,
),
    int Function(
  Pointer<Utf16> pszPath,
  int cchPath,
)>('PathCchStripToRoot');

int PathIsUNCEx(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> ppszServer,
) =>
    _PathIsUNCEx(
      pszPath,
      ppszServer,
    );

late final _PathIsUNCEx = _api_ms_win_core_path_l1_1_0.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> ppszServer,
),
    int Function(
  Pointer<Utf16> pszPath,
  Pointer<Pointer<Utf16>> ppszServer,
)>('PathIsUNCEx');

// -----------------------------------------------------------------------
// api-ms-win-core-psm-appnotify-l1-1-0.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_psm_appnotify_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-psm-appnotify-l1-1-0.dll');

int RegisterAppStateChangeNotification(
  Pointer<NativeFunction<PAPPSTATE_CHANGE_ROUTINE>> Routine,
  Pointer Context,
  Pointer<Pointer<APPSTATE_REGISTRATION>> Registration,
) =>
    _RegisterAppStateChangeNotification(
      Routine,
      Context,
      Registration,
    );

late final _RegisterAppStateChangeNotification =
    _api_ms_win_core_psm_appnotify_l1_1_0.lookupFunction<
        Uint32 Function(
  Pointer<NativeFunction<PAPPSTATE_CHANGE_ROUTINE>> Routine,
  Pointer Context,
  Pointer<Pointer<APPSTATE_REGISTRATION>> Registration,
),
        int Function(
  Pointer<NativeFunction<PAPPSTATE_CHANGE_ROUTINE>> Routine,
  Pointer Context,
  Pointer<Pointer<APPSTATE_REGISTRATION>> Registration,
)>('RegisterAppStateChangeNotification');

void UnregisterAppStateChangeNotification(
  Pointer<APPSTATE_REGISTRATION> Registration,
) =>
    _UnregisterAppStateChangeNotification(
      Registration,
    );

late final _UnregisterAppStateChangeNotification =
    _api_ms_win_core_psm_appnotify_l1_1_0.lookupFunction<
        Void Function(
  Pointer<APPSTATE_REGISTRATION> Registration,
),
        void Function(
  Pointer<APPSTATE_REGISTRATION> Registration,
)>('UnregisterAppStateChangeNotification');

// -----------------------------------------------------------------------
// api-ms-win-core-psm-appnotify-l1-1-1.dll
// -----------------------------------------------------------------------
final _api_ms_win_core_psm_appnotify_l1_1_1 =
    DynamicLibrary.open('api-ms-win-core-psm-appnotify-l1-1-1.dll');

int RegisterAppConstrainedChangeNotification(
  Pointer<NativeFunction<PAPPCONSTRAIN_CHANGE_ROUTINE>> Routine,
  Pointer Context,
  Pointer<Pointer<APPCONSTRAIN_REGISTRATION>> Registration,
) =>
    _RegisterAppConstrainedChangeNotification(
      Routine,
      Context,
      Registration,
    );

late final _RegisterAppConstrainedChangeNotification =
    _api_ms_win_core_psm_appnotify_l1_1_1.lookupFunction<
        Uint32 Function(
  Pointer<NativeFunction<PAPPCONSTRAIN_CHANGE_ROUTINE>> Routine,
  Pointer Context,
  Pointer<Pointer<APPCONSTRAIN_REGISTRATION>> Registration,
),
        int Function(
  Pointer<NativeFunction<PAPPCONSTRAIN_CHANGE_ROUTINE>> Routine,
  Pointer Context,
  Pointer<Pointer<APPCONSTRAIN_REGISTRATION>> Registration,
)>('RegisterAppConstrainedChangeNotification');

void UnregisterAppConstrainedChangeNotification(
  Pointer<APPCONSTRAIN_REGISTRATION> Registration,
) =>
    _UnregisterAppConstrainedChangeNotification(
      Registration,
    );

late final _UnregisterAppConstrainedChangeNotification =
    _api_ms_win_core_psm_appnotify_l1_1_1.lookupFunction<
        Void Function(
  Pointer<APPCONSTRAIN_REGISTRATION> Registration,
),
        void Function(
  Pointer<APPCONSTRAIN_REGISTRATION> Registration,
)>('UnregisterAppConstrainedChangeNotification');
