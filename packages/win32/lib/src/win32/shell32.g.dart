// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/ibindctx.g.dart';
import '../com/interface.g.dart';
import '../com/ishellfolder.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _shell32 = DynamicLibrary.open('shell32.dll');

/// Parses a Unicode command line string and returns an array of pointers to the
/// command line arguments, along with a count of such arguments, in a way that
/// is similar to the standard C run-time argv and argc values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-commandlinetoargvw>.
///
/// {@category shell32}
Win32Result<Pointer<Pointer<Utf16>>> CommandLineToArgv(
  PCWSTR lpCmdLine,
  Pointer<Int32> pNumArgs,
) {
  resolveGetLastError();
  final result_ = _CommandLineToArgv(lpCmdLine, pNumArgs);
  return .new(value: result_, error: GetLastError());
}

final _CommandLineToArgv = _shell32
    .lookupFunction<
      Pointer<Pointer<Utf16>> Function(Pointer<Utf16>, Pointer<Int32>),
      Pointer<Pointer<Utf16>> Function(Pointer<Utf16>, Pointer<Int32>)
    >('CommandLineToArgvW');

/// Registers whether a window accepts dropped files.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-dragacceptfiles>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
void DragAcceptFiles(HWND hWnd, bool fAccept) =>
    _DragAcceptFiles(hWnd, fAccept ? TRUE : FALSE);

final _DragAcceptFiles = _shell32
    .lookupFunction<Void Function(Pointer, Int32), void Function(Pointer, int)>(
      'DragAcceptFiles',
    );

/// Releases memory that the system allocated for use in transferring file names
/// to the application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-dragfinish>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
void DragFinish(HDROP hDrop) => _DragFinish(hDrop);

final _DragFinish = _shell32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'DragFinish',
    );

/// Retrieves the names of dropped files that result from a successful
/// drag-and-drop operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-dragqueryfilew>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
int DragQueryFile(HDROP hDrop, int iFile, PWSTR? lpszFile, int cch) =>
    _DragQueryFile(hDrop, iFile, lpszFile ?? nullptr, cch);

final _DragQueryFile = _shell32
    .lookupFunction<
      Uint32 Function(Pointer, Uint32, Pointer<Utf16>, Uint32),
      int Function(Pointer, int, Pointer<Utf16>, int)
    >('DragQueryFileW');

/// Gets a handle to an icon stored as a resource in a file or an icon stored in
/// a file's associated executable file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-extractassociatediconw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
HICON ExtractAssociatedIcon(PWSTR pszIconPath, Pointer<Uint16> piIcon) =>
    HICON(_ExtractAssociatedIcon(nullptr, pszIconPath, piIcon));

final _ExtractAssociatedIcon = _shell32
    .lookupFunction<
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Uint16>),
      Pointer Function(Pointer, Pointer<Utf16>, Pointer<Uint16>)
    >('ExtractAssociatedIconW');

/// Retrieves the name of and handle to the executable (.exe) file associated
/// with a specific document file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-findexecutablew>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
HINSTANCE FindExecutable(PCWSTR lpFile, PCWSTR? lpDirectory, PWSTR lpResult) =>
    HINSTANCE(_FindExecutable(lpFile, lpDirectory ?? nullptr, lpResult));

final _FindExecutable = _shell32
    .lookupFunction<
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>),
      Pointer Function(Pointer<Utf16>, Pointer<Utf16>, Pointer<Utf16>)
    >('FindExecutableW');

/// Displays a dialog box that enables the user to select a Shell folder.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shbrowseforfolderw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
Pointer<ITEMIDLIST> SHBrowseForFolder(Pointer<BROWSEINFO> lpbi) =>
    _SHBrowseForFolder(lpbi);

final _SHBrowseForFolder = _shell32
    .lookupFunction<
      Pointer<ITEMIDLIST> Function(Pointer<BROWSEINFO>),
      Pointer<ITEMIDLIST> Function(Pointer<BROWSEINFO>)
    >('SHBrowseForFolderW');

/// Creates and initializes a Shell item object from a parsing name.
///
/// This method uses the [ComInterface.type] method to retrieve metadata about
/// the target interface defined by [T], including its IID (Interface ID) and
/// instantiation logic.
///
/// All COM interfaces provided by this package are pre-registered. Custom COM
/// interfaces must be registered manually using the [ComInterface.register]
/// method before calling this method.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-shcreateitemfromparsingname>.
///
/// {@category shell32}
T SHCreateItemFromParsingName<T extends IUnknown>(
  PCWSTR pszPath,
  IBindCtx? pbc,
) {
  final companion = ComInterface.type<T>();
  final riid = companion.iid.toNative();
  final ppv = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _SHCreateItemFromParsingName(pszPath, pbc?.ptr ?? nullptr, riid, ppv),
  );
  free(riid);
  if (hr$.isError) {
    free(ppv);
    throw WindowsException(hr$);
  }
  final result = companion.fromPointer(ppv.value.cast());
  free(ppv);
  return result;
}

final _SHCreateItemFromParsingName = _shell32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        VTablePointer,
        Pointer<GUID>,
        Pointer<Pointer>,
      ),
      int Function(
        Pointer<Utf16>,
        VTablePointer,
        Pointer<GUID>,
        Pointer<Pointer>,
      )
    >('SHCreateItemFromParsingName');

/// Sends a message to the taskbar's status area.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shell_notifyiconw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
bool Shell_NotifyIcon(
  NOTIFY_ICON_MESSAGE dwMessage,
  Pointer<NOTIFYICONDATA> lpData,
) => _Shell_NotifyIcon(dwMessage, lpData) != FALSE;

final _Shell_NotifyIcon = _shell32
    .lookupFunction<
      Int32 Function(Uint32, Pointer<NOTIFYICONDATA>),
      int Function(int, Pointer<NOTIFYICONDATA>)
    >('Shell_NotifyIconW');

/// Displays a ShellAbout dialog box.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shellaboutw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
int ShellAbout(HWND? hWnd, PCWSTR szApp, PCWSTR? szOtherStuff, HICON? hIcon) =>
    _ShellAbout(
      hWnd ?? nullptr,
      szApp,
      szOtherStuff ?? nullptr,
      hIcon ?? nullptr,
    );

final _ShellAbout = _shell32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer),
      int Function(Pointer, Pointer<Utf16>, Pointer<Utf16>, Pointer)
    >('ShellAboutW');

/// Performs an operation on a specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shellexecutew>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
HINSTANCE ShellExecute(
  HWND? hwnd,
  PCWSTR? lpOperation,
  PCWSTR lpFile,
  PCWSTR? lpParameters,
  PCWSTR? lpDirectory,
  SHOW_WINDOW_CMD nShowCmd,
) => HINSTANCE(
  _ShellExecute(
    hwnd ?? nullptr,
    lpOperation ?? nullptr,
    lpFile,
    lpParameters ?? nullptr,
    lpDirectory ?? nullptr,
    nShowCmd,
  ),
);

final _ShellExecute = _shell32
    .lookupFunction<
      Pointer Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Int32,
      ),
      Pointer Function(
        Pointer,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        Pointer<Utf16>,
        int,
      )
    >('ShellExecuteW');

/// Performs an operation on a specified file.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shellexecuteexw>.
///
/// {@category shell32}
Win32Result<bool> ShellExecuteEx(Pointer<SHELLEXECUTEINFO> pExecInfo) {
  resolveGetLastError();
  final result_ = _ShellExecuteEx(pExecInfo);
  return .new(value: result_ != FALSE, error: GetLastError());
}

final _ShellExecuteEx = _shell32
    .lookupFunction<
      Int32 Function(Pointer<SHELLEXECUTEINFO>),
      int Function(Pointer<SHELLEXECUTEINFO>)
    >('ShellExecuteExW');

/// Empties the Recycle Bin on the specified drive.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shemptyrecyclebinw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
void SHEmptyRecycleBin(HWND? hwnd, PCWSTR? pszRootPath, int dwFlags) {
  final hr$ = HRESULT(
    _SHEmptyRecycleBin(hwnd ?? nullptr, pszRootPath ?? nullptr, dwFlags),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _SHEmptyRecycleBin = _shell32
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Utf16>, Uint32),
      int Function(Pointer, Pointer<Utf16>, int)
    >('SHEmptyRecycleBinW');

/// Copies, moves, renames, or deletes a file system object.
///
/// On Windows Vista and later releases, we recommend that you use
/// IFileOperation instead of this function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shfileoperationw>.
///
/// {@category shell32}
Win32Result<int> SHFileOperation(Pointer<SHFILEOPSTRUCT> lpFileOp) {
  resolveGetLastError();
  final result_ = _SHFileOperation(lpFileOp);
  return .new(value: result_, error: GetLastError());
}

final _SHFileOperation = _shell32
    .lookupFunction<
      Int32 Function(Pointer<SHFILEOPSTRUCT>),
      int Function(Pointer<SHFILEOPSTRUCT>)
    >('SHFileOperationW');

/// Frees a file name mapping object that was retrieved by the SHFileOperation
/// function.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shfreenamemappings>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
void SHFreeNameMappings(HANDLE? hNameMappings) =>
    _SHFreeNameMappings(hNameMappings ?? nullptr);

final _SHFreeNameMappings = _shell32
    .lookupFunction<Void Function(Pointer), void Function(Pointer)>(
      'SHFreeNameMappings',
    );

/// Retrieves the IShellFolder interface for the desktop folder, which is the
/// root of the Shell's namespace.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetdesktopfolder>.
///
/// {@category shell32}
IShellFolder? SHGetDesktopFolder() {
  final ppshf = adaptiveCalloc<VTablePointer>();
  final hr$ = HRESULT(_SHGetDesktopFolder(ppshf));
  if (hr$.isError) {
    free(ppshf);
    throw WindowsException(hr$);
  }
  final result$ = ppshf.value;
  free(ppshf);
  if (result$.isNull) return null;
  return .new(result$);
}

final _SHGetDesktopFolder = _shell32
    .lookupFunction<
      Int32 Function(Pointer<VTablePointer>),
      int Function(Pointer<VTablePointer>)
    >('SHGetDesktopFolder');

/// Retrieves disk space information for a disk volume.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shgetdiskfreespaceexw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
bool SHGetDiskFreeSpaceEx(
  PCWSTR pszDirectoryName,
  Pointer<Uint64>? pulFreeBytesAvailableToCaller,
  Pointer<Uint64>? pulTotalNumberOfBytes,
  Pointer<Uint64>? pulTotalNumberOfFreeBytes,
) =>
    _SHGetDiskFreeSpaceEx(
      pszDirectoryName,
      pulFreeBytesAvailableToCaller ?? nullptr,
      pulTotalNumberOfBytes ?? nullptr,
      pulTotalNumberOfFreeBytes ?? nullptr,
    ) !=
    FALSE;

final _SHGetDiskFreeSpaceEx = _shell32
    .lookupFunction<
      Int32 Function(
        Pointer<Utf16>,
        Pointer<Uint64>,
        Pointer<Uint64>,
        Pointer<Uint64>,
      ),
      int Function(
        Pointer<Utf16>,
        Pointer<Uint64>,
        Pointer<Uint64>,
        Pointer<Uint64>,
      )
    >('SHGetDiskFreeSpaceExW');

/// Returns the type of media that is in the given drive.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shgetdrivemedia>.
///
/// {@category shell32}
int SHGetDriveMedia(PCWSTR pszDrive) {
  final pdwMediaContent = adaptiveCalloc<Uint32>();
  final hr$ = HRESULT(_SHGetDriveMedia(pszDrive, pdwMediaContent));
  if (hr$.isError) {
    free(pdwMediaContent);
    throw WindowsException(hr$);
  }
  final result$ = pdwMediaContent.value;
  free(pdwMediaContent);
  return result$;
}

final _SHGetDriveMedia = _shell32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Uint32>),
      int Function(Pointer<Utf16>, Pointer<Uint32>)
    >('SHGetDriveMedia');

/// Retrieves information about an object in the file system, such as a file,
/// folder, directory, or drive root.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shgetfileinfow>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
int SHGetFileInfo(
  PCWSTR pszPath,
  FILE_FLAGS_AND_ATTRIBUTES dwFileAttributes,
  Pointer<SHFILEINFO>? psfi,
  int cbFileInfo,
  SHGFI_FLAGS uFlags,
) => _SHGetFileInfo(
  pszPath,
  dwFileAttributes,
  psfi ?? nullptr,
  cbFileInfo,
  uFlags,
);

final _SHGetFileInfo = _shell32
    .lookupFunction<
      IntPtr Function(
        Pointer<Utf16>,
        Uint32,
        Pointer<SHFILEINFO>,
        Uint32,
        Uint32,
      ),
      int Function(Pointer<Utf16>, int, Pointer<SHFILEINFO>, int, int)
    >('SHGetFileInfoW');

/// Deprecated.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetfolderpathw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
void SHGetFolderPath(int csidl, HANDLE? hToken, int dwFlags, PWSTR pszPath) {
  final hr$ = HRESULT(
    _SHGetFolderPath(nullptr, csidl, hToken ?? nullptr, dwFlags, pszPath),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _SHGetFolderPath = _shell32
    .lookupFunction<
      Int32 Function(Pointer, Int32, Pointer, Uint32, Pointer<Utf16>),
      int Function(Pointer, int, Pointer, int, Pointer<Utf16>)
    >('SHGetFolderPathW');

/// Retrieves the full path of a known folder identified by the folder's
/// KNOWNFOLDERID.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetknownfolderpath>.
///
/// {@category shell32}
PWSTR SHGetKnownFolderPath(
  Pointer<GUID> rfid,
  KNOWN_FOLDER_FLAG dwFlags,
  HANDLE? hToken,
) {
  final ppszPath = adaptiveCalloc<Pointer<Utf16>>();
  final hr$ = HRESULT(
    _SHGetKnownFolderPath(rfid, dwFlags, hToken ?? nullptr, ppszPath),
  );
  if (hr$.isError) {
    free(ppszPath);
    throw WindowsException(hr$);
  }
  final result$ = ppszPath.value;
  free(ppszPath);
  return .new(result$);
}

final _SHGetKnownFolderPath = _shell32
    .lookupFunction<
      Int32 Function(Pointer<GUID>, Uint32, Pointer, Pointer<Pointer<Utf16>>),
      int Function(Pointer<GUID>, int, Pointer, Pointer<Pointer<Utf16>>)
    >('SHGetKnownFolderPath');

/// Retrieves the localized name of a file in a Shell folder.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shgetlocalizedname>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
void SHGetLocalizedName(
  PCWSTR pszPath,
  PWSTR pszResModule,
  int cch,
  Pointer<Int32> pidsRes,
) {
  final hr$ = HRESULT(_SHGetLocalizedName(pszPath, pszResModule, cch, pidsRes));
  if (hr$.isError) throw WindowsException(hr$);
}

final _SHGetLocalizedName = _shell32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<Utf16>, Uint32, Pointer<Int32>),
      int Function(Pointer<Utf16>, Pointer<Utf16>, int, Pointer<Int32>)
    >('SHGetLocalizedName');

/// Converts an item identifier list to a file system path.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shlobj_core/nf-shlobj_core-shgetpathfromidlistw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
bool SHGetPathFromIDList(Pointer<ITEMIDLIST> pidl, PWSTR pszPath) =>
    _SHGetPathFromIDList(pidl, pszPath) != FALSE;

final _SHGetPathFromIDList = _shell32
    .lookupFunction<
      Int32 Function(Pointer<ITEMIDLIST>, Pointer<Utf16>),
      int Function(Pointer<ITEMIDLIST>, Pointer<Utf16>)
    >('SHGetPathFromIDListW');

/// Retrieves the size of the Recycle Bin and the number of items in it, for a
/// specified drive.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shellapi/nf-shellapi-shqueryrecyclebinw>.
///
/// {@category shell32}
@pragma('vm:prefer-inline')
void SHQueryRecycleBin(
  PCWSTR? pszRootPath,
  Pointer<SHQUERYRBINFO> pSHQueryRBInfo,
) {
  final hr$ = HRESULT(
    _SHQueryRecycleBin(pszRootPath ?? nullptr, pSHQueryRBInfo),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _SHQueryRecycleBin = _shell32
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Pointer<SHQUERYRBINFO>),
      int Function(Pointer<Utf16>, Pointer<SHQUERYRBINFO>)
    >('SHQueryRecycleBinW');
