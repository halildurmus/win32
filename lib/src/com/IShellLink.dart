// IShellLink.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_ShellLink = '{00021401-0000-0000-C000-000000000046}';

/// @nodoc
const IID_IShellLink = '{000214F9-0000-0000-C000-000000000046}';

typedef _GetPath_Native = Int32 Function(Pointer obj, Pointer<Utf16> pszFile,
    Int32 cch, Pointer<WIN32_FIND_DATA> pfd, Uint32 fFlags);
typedef _GetPath_Dart = int Function(Pointer obj, Pointer<Utf16> pszFile,
    int cch, Pointer<WIN32_FIND_DATA> pfd, int fFlags);

typedef _GetIDList_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<ITEMIDLIST>> ppidl);
typedef _GetIDList_Dart = int Function(
    Pointer obj, Pointer<Pointer<ITEMIDLIST>> ppidl);

typedef _SetIDList_Native = Int32 Function(
    Pointer obj, Pointer<ITEMIDLIST> pidl);
typedef _SetIDList_Dart = int Function(Pointer obj, Pointer<ITEMIDLIST> pidl);

typedef _GetDescription_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName, Int32 cch);
typedef _GetDescription_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszName, int cch);

typedef _SetDescription_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszName);
typedef _SetDescription_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszName);

typedef _GetWorkingDirectory_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDir, Int32 cch);
typedef _GetWorkingDirectory_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDir, int cch);

typedef _SetWorkingDirectory_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszDir);
typedef _SetWorkingDirectory_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszDir);

typedef _GetArguments_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszArgs, Int32 cch);
typedef _GetArguments_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszArgs, int cch);

typedef _SetArguments_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszArgs);
typedef _SetArguments_Dart = int Function(Pointer obj, Pointer<Utf16> pszArgs);

typedef _GetHotkey_Native = Int32 Function(
    Pointer obj, Pointer<Uint16> pwHotkey);
typedef _GetHotkey_Dart = int Function(Pointer obj, Pointer<Uint16> pwHotkey);

typedef _SetHotkey_Native = Int32 Function(Pointer obj, Uint16 wHotkey);
typedef _SetHotkey_Dart = int Function(Pointer obj, int wHotkey);

typedef _GetShowCmd_Native = Int32 Function(
    Pointer obj, Pointer<Int32> piShowCmd);
typedef _GetShowCmd_Dart = int Function(Pointer obj, Pointer<Int32> piShowCmd);

typedef _SetShowCmd_Native = Int32 Function(Pointer obj, Int32 iShowCmd);
typedef _SetShowCmd_Dart = int Function(Pointer obj, int iShowCmd);

typedef _GetIconLocation_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszIconPath, Int32 cch, Pointer<Int32> piIcon);
typedef _GetIconLocation_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszIconPath, int cch, Pointer<Int32> piIcon);

typedef _SetIconLocation_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszIconPath, Int32 iIcon);
typedef _SetIconLocation_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszIconPath, int iIcon);

typedef _SetRelativePath_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszPathRel, Uint32 dwReserved);
typedef _SetRelativePath_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszPathRel, int dwReserved);

typedef _Resolve_Native = Int32 Function(
    Pointer obj, IntPtr hwnd, Uint32 fFlags);
typedef _Resolve_Dart = int Function(Pointer obj, int hwnd, int fFlags);

typedef _SetPath_Native = Int32 Function(Pointer obj, Pointer<Utf16> pszFile);
typedef _SetPath_Dart = int Function(Pointer obj, Pointer<Utf16> pszFile);

/// {@category Interface}
/// {@category com}
class IShellLink extends IUnknown {
  // vtable begins at 3, ends at 20

  IShellLink(Pointer<COMObject> ptr) : super(ptr);

  int GetPath(Pointer<Utf16> pszFile, int cch, Pointer<WIN32_FIND_DATA> pfd,
          int fFlags) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<Pointer<NativeFunction<_GetPath_Native>>>()
              .value
              .asFunction<_GetPath_Dart>()(
          ptr.ref.lpVtbl, pszFile, cch, pfd, fFlags);

  int GetIDList(Pointer<Pointer<ITEMIDLIST>> ppidl) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetIDList_Native>>>()
      .value
      .asFunction<_GetIDList_Dart>()(ptr.ref.lpVtbl, ppidl);

  int SetIDList(Pointer<ITEMIDLIST> pidl) => ptr.ref.lpVtbl.value
      .elementAt(5)
      .cast<Pointer<NativeFunction<_SetIDList_Native>>>()
      .value
      .asFunction<_SetIDList_Dart>()(ptr.ref.lpVtbl, pidl);

  int GetDescription(Pointer<Utf16> pszName, int cch) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_GetDescription_Native>>>()
      .value
      .asFunction<_GetDescription_Dart>()(ptr.ref.lpVtbl, pszName, cch);

  int SetDescription(Pointer<Utf16> pszName) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetDescription_Native>>>()
      .value
      .asFunction<_SetDescription_Dart>()(ptr.ref.lpVtbl, pszName);

  int GetWorkingDirectory(Pointer<Utf16> pszDir, int cch) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_GetWorkingDirectory_Native>>>()
          .value
          .asFunction<_GetWorkingDirectory_Dart>()(ptr.ref.lpVtbl, pszDir, cch);

  int SetWorkingDirectory(Pointer<Utf16> pszDir) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_SetWorkingDirectory_Native>>>()
      .value
      .asFunction<_SetWorkingDirectory_Dart>()(ptr.ref.lpVtbl, pszDir);

  int GetArguments(Pointer<Utf16> pszArgs, int cch) => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_GetArguments_Native>>>()
      .value
      .asFunction<_GetArguments_Dart>()(ptr.ref.lpVtbl, pszArgs, cch);

  int SetArguments(Pointer<Utf16> pszArgs) => ptr.ref.lpVtbl.value
      .elementAt(11)
      .cast<Pointer<NativeFunction<_SetArguments_Native>>>()
      .value
      .asFunction<_SetArguments_Dart>()(ptr.ref.lpVtbl, pszArgs);

  int GetHotkey(Pointer<Uint16> pwHotkey) => ptr.ref.lpVtbl.value
      .elementAt(12)
      .cast<Pointer<NativeFunction<_GetHotkey_Native>>>()
      .value
      .asFunction<_GetHotkey_Dart>()(ptr.ref.lpVtbl, pwHotkey);

  int SetHotkey(int wHotkey) => ptr.ref.lpVtbl.value
      .elementAt(13)
      .cast<Pointer<NativeFunction<_SetHotkey_Native>>>()
      .value
      .asFunction<_SetHotkey_Dart>()(ptr.ref.lpVtbl, wHotkey);

  int GetShowCmd(Pointer<Int32> piShowCmd) => ptr.ref.lpVtbl.value
      .elementAt(14)
      .cast<Pointer<NativeFunction<_GetShowCmd_Native>>>()
      .value
      .asFunction<_GetShowCmd_Dart>()(ptr.ref.lpVtbl, piShowCmd);

  int SetShowCmd(int iShowCmd) => ptr.ref.lpVtbl.value
      .elementAt(15)
      .cast<Pointer<NativeFunction<_SetShowCmd_Native>>>()
      .value
      .asFunction<_SetShowCmd_Dart>()(ptr.ref.lpVtbl, iShowCmd);

  int GetIconLocation(
          Pointer<Utf16> pszIconPath, int cch, Pointer<Int32> piIcon) =>
      ptr.ref.lpVtbl.value
              .elementAt(16)
              .cast<Pointer<NativeFunction<_GetIconLocation_Native>>>()
              .value
              .asFunction<_GetIconLocation_Dart>()(
          ptr.ref.lpVtbl, pszIconPath, cch, piIcon);

  int SetIconLocation(Pointer<Utf16> pszIconPath, int iIcon) => ptr
      .ref.lpVtbl.value
      .elementAt(17)
      .cast<Pointer<NativeFunction<_SetIconLocation_Native>>>()
      .value
      .asFunction<_SetIconLocation_Dart>()(ptr.ref.lpVtbl, pszIconPath, iIcon);

  int SetRelativePath(Pointer<Utf16> pszPathRel, int dwReserved) =>
      ptr.ref.lpVtbl.value
              .elementAt(18)
              .cast<Pointer<NativeFunction<_SetRelativePath_Native>>>()
              .value
              .asFunction<_SetRelativePath_Dart>()(
          ptr.ref.lpVtbl, pszPathRel, dwReserved);

  int Resolve(int hwnd, int fFlags) => ptr.ref.lpVtbl.value
      .elementAt(19)
      .cast<Pointer<NativeFunction<_Resolve_Native>>>()
      .value
      .asFunction<_Resolve_Dart>()(ptr.ref.lpVtbl, hwnd, fFlags);

  int SetPath(Pointer<Utf16> pszFile) => ptr.ref.lpVtbl.value
      .elementAt(20)
      .cast<Pointer<NativeFunction<_SetPath_Native>>>()
      .value
      .asFunction<_SetPath_Dart>()(ptr.ref.lpVtbl, pszFile);
}

/// {@category com}
class ShellLink extends IShellLink {
  ShellLink(Pointer<COMObject> ptr) : super(ptr);

  factory ShellLink.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ShellLink);
    final iid = calloc<GUID>()..ref.setGUID(IID_IShellLink);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ShellLink(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
