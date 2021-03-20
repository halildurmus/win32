// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _shell32 = DynamicLibrary.open('shell32.dll');

/// Retrieves the name of and handle to the executable (.exe) file
/// associated with a specific document file.
///
/// ```c
/// HINSTANCE FindExecutableW(
///   LPCWSTR lpFile,
///   LPCWSTR lpDirectory,
///   LPWSTR  lpResult
/// );
/// ```
/// {@category shell32}
int FindExecutable(Pointer<Utf16> lpFile, Pointer<Utf16> lpDirectory,
    Pointer<Utf16> lpResult) {
  final _FindExecutable = _shell32.lookupFunction<
      IntPtr Function(Pointer<Utf16> lpFile, Pointer<Utf16> lpDirectory,
          Pointer<Utf16> lpResult),
      int Function(Pointer<Utf16> lpFile, Pointer<Utf16> lpDirectory,
          Pointer<Utf16> lpResult)>('FindExecutableW');
  return _FindExecutable(lpFile, lpDirectory, lpResult);
}

/// Creates and initializes a Shell item object from a parsing name.
///
/// ```c
/// SHSTDAPI SHCreateItemFromParsingName(
///   PCWSTR   pszPath,
///   IBindCtx *pbc,
///   REFIID   riid,
///   void     **ppv
/// );
/// ```
/// {@category shell32}
int SHCreateItemFromParsingName(Pointer<Utf16> pszPath, Pointer pbc,
    Pointer<GUID> riid, Pointer<Pointer> ppv) {
  final _SHCreateItemFromParsingName = _shell32.lookupFunction<
      Int32 Function(Pointer<Utf16> pszPath, Pointer pbc, Pointer<GUID> riid,
          Pointer<Pointer> ppv),
      int Function(Pointer<Utf16> pszPath, Pointer pbc, Pointer<GUID> riid,
          Pointer<Pointer> ppv)>('SHCreateItemFromParsingName');
  return _SHCreateItemFromParsingName(pszPath, pbc, riid, ppv);
}

/// Sends a message to the taskbar's status area.
///
/// ```c
/// BOOL Shell_NotifyIconW(
///   DWORD dwMessage,
///   NOTIFYICONDATA *lpData
/// );
/// ```
/// {@category shell32}
int Shell_NotifyIcon(int dwMessage, Pointer<NOTIFYICONDATA> lpData) {
  final _Shell_NotifyIcon = _shell32.lookupFunction<
      Int32 Function(Uint32 dwMessage, Pointer<NOTIFYICONDATA> lpData),
      int Function(
          int dwMessage, Pointer<NOTIFYICONDATA> lpData)>('Shell_NotifyIconW');
  return _Shell_NotifyIcon(dwMessage, lpData);
}

/// Displays a ShellAbout dialog box.
///
/// ```c
/// INT ShellAboutW(
///   HWND    hWnd,
///   LPCWSTR szApp,
///   LPCWSTR szOtherStuff,
///   HICON   hIcon
/// );
/// ```
/// {@category shell32}
int ShellAbout(
    int hWnd, Pointer<Utf16> szApp, Pointer<Utf16> szOtherStuff, int hIcon) {
  final _ShellAbout = _shell32.lookupFunction<
      Int32 Function(IntPtr hWnd, Pointer<Utf16> szApp,
          Pointer<Utf16> szOtherStuff, IntPtr hIcon),
      int Function(int hWnd, Pointer<Utf16> szApp, Pointer<Utf16> szOtherStuff,
          int hIcon)>('ShellAboutW');
  return _ShellAbout(hWnd, szApp, szOtherStuff, hIcon);
}

/// Performs an operation on a specified file.
///
/// ```c
/// HINSTANCE ShellExecuteW(
///   HWND    hwnd,
///   LPCWSTR lpOperation,
///   LPCWSTR lpFile,
///   LPCWSTR lpParameters,
///   LPCWSTR lpDirectory,
///   INT     nShowCmd
/// );
/// ```
/// {@category shell32}
int ShellExecute(int hwnd, Pointer<Utf16> lpOperation, Pointer<Utf16> lpFile,
    Pointer<Utf16> lpParameters, Pointer<Utf16> lpDirectory, int nShowCmd) {
  final _ShellExecute = _shell32.lookupFunction<
      IntPtr Function(
          IntPtr hwnd,
          Pointer<Utf16> lpOperation,
          Pointer<Utf16> lpFile,
          Pointer<Utf16> lpParameters,
          Pointer<Utf16> lpDirectory,
          Int32 nShowCmd),
      int Function(
          int hwnd,
          Pointer<Utf16> lpOperation,
          Pointer<Utf16> lpFile,
          Pointer<Utf16> lpParameters,
          Pointer<Utf16> lpDirectory,
          int nShowCmd)>('ShellExecuteW');
  return _ShellExecute(
      hwnd, lpOperation, lpFile, lpParameters, lpDirectory, nShowCmd);
}

/// Performs an operation on a specified file.
///
/// ```c
/// BOOL ShellExecuteExW(
///   SHELLEXECUTEINFOW *pExecInfo
/// );
/// ```
/// {@category shell32}
int ShellExecuteEx(Pointer<SHELLEXECUTEINFO> pExecInfo) {
  final _ShellExecuteEx = _shell32.lookupFunction<
      Int32 Function(Pointer<SHELLEXECUTEINFO> pExecInfo),
      int Function(Pointer<SHELLEXECUTEINFO> pExecInfo)>('ShellExecuteExW');
  return _ShellExecuteEx(pExecInfo);
}

/// Empties the Recycle Bin on the specified drive.
///
/// ```c
/// SHSTDAPI SHEmptyRecycleBinW(
///   HWND    hwnd,
///   LPCWSTR pszRootPath,
///   DWORD   dwFlags
/// );
/// ```
/// {@category shell32}
int SHEmptyRecycleBin(int hwnd, Pointer<Utf16> pszRootPath, int dwFlags) {
  final _SHEmptyRecycleBin = _shell32.lookupFunction<
      Int32 Function(IntPtr hwnd, Pointer<Utf16> pszRootPath, Uint32 dwFlags),
      int Function(int hwnd, Pointer<Utf16> pszRootPath,
          int dwFlags)>('SHEmptyRecycleBinW');
  return _SHEmptyRecycleBin(hwnd, pszRootPath, dwFlags);
}

/// Retrieves the IShellFolder interface for the desktop folder, which is
/// the root of the Shell's namespace.
///
/// ```c
/// SHSTDAPI SHGetDesktopFolder(
///   IShellFolder **ppshf
/// );
/// ```
/// {@category shell32}
int SHGetDesktopFolder(Pointer<Pointer> ppshf) {
  final _SHGetDesktopFolder = _shell32.lookupFunction<
      Int32 Function(Pointer<Pointer> ppshf),
      int Function(Pointer<Pointer> ppshf)>('SHGetDesktopFolder');
  return _SHGetDesktopFolder(ppshf);
}

/// Retrieves disk space information for a disk volume.
///
/// ```c
/// BOOL SHGetDiskFreeSpaceExW(
///   LPCWSTR        pszDirectoryName,
///   ULARGE_INTEGER *pulFreeBytesAvailableToCaller,
///   ULARGE_INTEGER *pulTotalNumberOfBytes,
///   ULARGE_INTEGER *pulTotalNumberOfFreeBytes
/// );
/// ```
/// {@category shell32}
int SHGetDiskFreeSpaceEx(
    Pointer<Utf16> pszDirectoryName,
    Pointer<Uint64> pulFreeBytesAvailableToCaller,
    Pointer<Uint64> pulTotalNumberOfBytes,
    Pointer<Uint64> pulTotalNumberOfFreeBytes) {
  final _SHGetDiskFreeSpaceEx = _shell32.lookupFunction<
      Int32 Function(
          Pointer<Utf16> pszDirectoryName,
          Pointer<Uint64> pulFreeBytesAvailableToCaller,
          Pointer<Uint64> pulTotalNumberOfBytes,
          Pointer<Uint64> pulTotalNumberOfFreeBytes),
      int Function(
          Pointer<Utf16> pszDirectoryName,
          Pointer<Uint64> pulFreeBytesAvailableToCaller,
          Pointer<Uint64> pulTotalNumberOfBytes,
          Pointer<Uint64> pulTotalNumberOfFreeBytes)>('SHGetDiskFreeSpaceExW');
  return _SHGetDiskFreeSpaceEx(pszDirectoryName, pulFreeBytesAvailableToCaller,
      pulTotalNumberOfBytes, pulTotalNumberOfFreeBytes);
}

/// Returns the type of media that is in the given drive.
///
/// ```c
/// HRESULT SHGetDriveMedia(
///   PCWSTR pszDrive,
///   DWORD  *pdwMediaContent
/// );
/// ```
/// {@category shell32}
int SHGetDriveMedia(Pointer<Utf16> pszDrive, Pointer<Uint32> pdwMediaContent) {
  final _SHGetDriveMedia = _shell32.lookupFunction<
      Int32 Function(Pointer<Utf16> pszDrive, Pointer<Uint32> pdwMediaContent),
      int Function(Pointer<Utf16> pszDrive,
          Pointer<Uint32> pdwMediaContent)>('SHGetDriveMedia');
  return _SHGetDriveMedia(pszDrive, pdwMediaContent);
}

/// Gets the path of a folder identified by a CSIDL value.
///
/// ```c
/// SHFOLDERAPI SHGetFolderPathW(
///   HWND   hwnd,
///   int    csidl,
///   HANDLE hToken,
///   DWORD  dwFlags,
///   LPWSTR pszPath
/// );
/// ```
/// {@category shell32}
int SHGetFolderPath(
    int hwnd, int csidl, int hToken, int dwFlags, Pointer<Utf16> pszPath) {
  final _SHGetFolderPath = _shell32.lookupFunction<
      Int32 Function(IntPtr hwnd, Int32 csidl, IntPtr hToken, Uint32 dwFlags,
          Pointer<Utf16> pszPath),
      int Function(int hwnd, int csidl, int hToken, int dwFlags,
          Pointer<Utf16> pszPath)>('SHGetFolderPathW');
  return _SHGetFolderPath(hwnd, csidl, hToken, dwFlags, pszPath);
}

/// Retrieves the full path of a known folder identified by the folder's
/// KNOWNFOLDERID.
///
/// ```c
/// HRESULT SHGetKnownFolderPath(
///   REFKNOWNFOLDERID rfid,
///   DWORD            dwFlags,
///   HANDLE           hToken,
///   PWSTR            *ppszPath
/// );
/// ```
/// {@category shell32}
int SHGetKnownFolderPath(Pointer<GUID> rfid, int dwFlags, int hToken,
    Pointer<Pointer<Utf16>> ppszPath) {
  final _SHGetKnownFolderPath = _shell32.lookupFunction<
      Int32 Function(Pointer<GUID> rfid, Uint32 dwFlags, IntPtr hToken,
          Pointer<Pointer<Utf16>> ppszPath),
      int Function(Pointer<GUID> rfid, int dwFlags, int hToken,
          Pointer<Pointer<Utf16>> ppszPath)>('SHGetKnownFolderPath');
  return _SHGetKnownFolderPath(rfid, dwFlags, hToken, ppszPath);
}

/// Retrieves the size of the Recycle Bin and the number of items in it,
/// for a specified drive.
///
/// ```c
/// SHSTDAPI SHQueryRecycleBinW(
///   LPCWSTR         pszRootPath,
///   LPSHQUERYRBINFO pSHQueryRBInfo
/// );
/// ```
/// {@category shell32}
int SHQueryRecycleBin(
    Pointer<Utf16> pszRootPath, Pointer<SHQUERYRBINFO> pSHQueryRBInfo) {
  final _SHQueryRecycleBin = _shell32.lookupFunction<
      Int32 Function(
          Pointer<Utf16> pszRootPath, Pointer<SHQUERYRBINFO> pSHQueryRBInfo),
      int Function(Pointer<Utf16> pszRootPath,
          Pointer<SHQUERYRBINFO> pSHQueryRBInfo)>('SHQueryRecycleBinW');
  return _SHQueryRecycleBin(pszRootPath, pSHQueryRBInfo);
}
