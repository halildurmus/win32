// IShellLink.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

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
      Pointer<NativeFunction<_GetPath_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_GetPath_Dart>()(
          ptr.ref.lpVtbl, pszFile, cch, pfd, fFlags);

  int GetIDList(Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      Pointer<NativeFunction<_GetIDList_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetIDList_Dart>()(ptr.ref.lpVtbl, ppidl);

  int SetIDList(Pointer<ITEMIDLIST> pidl) =>
      Pointer<NativeFunction<_SetIDList_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_SetIDList_Dart>()(ptr.ref.lpVtbl, pidl);

  int GetDescription(Pointer<Utf16> pszName, int cch) =>
      Pointer<NativeFunction<_GetDescription_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetDescription_Dart>()(ptr.ref.lpVtbl, pszName, cch);

  int SetDescription(Pointer<Utf16> pszName) =>
      Pointer<NativeFunction<_SetDescription_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_SetDescription_Dart>()(ptr.ref.lpVtbl, pszName);

  int GetWorkingDirectory(Pointer<Utf16> pszDir, int cch) =>
      Pointer<NativeFunction<_GetWorkingDirectory_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetWorkingDirectory_Dart>()(ptr.ref.lpVtbl, pszDir, cch);

  int SetWorkingDirectory(Pointer<Utf16> pszDir) =>
      Pointer<NativeFunction<_SetWorkingDirectory_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_SetWorkingDirectory_Dart>()(ptr.ref.lpVtbl, pszDir);

  int GetArguments(Pointer<Utf16> pszArgs, int cch) =>
      Pointer<NativeFunction<_GetArguments_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_GetArguments_Dart>()(ptr.ref.lpVtbl, pszArgs, cch);

  int SetArguments(Pointer<Utf16> pszArgs) =>
      Pointer<NativeFunction<_SetArguments_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_SetArguments_Dart>()(ptr.ref.lpVtbl, pszArgs);

  int GetHotkey(Pointer<Uint16> pwHotkey) =>
      Pointer<NativeFunction<_GetHotkey_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_GetHotkey_Dart>()(ptr.ref.lpVtbl, pwHotkey);

  int SetHotkey(int wHotkey) =>
      Pointer<NativeFunction<_SetHotkey_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_SetHotkey_Dart>()(ptr.ref.lpVtbl, wHotkey);

  int GetShowCmd(Pointer<Int32> piShowCmd) =>
      Pointer<NativeFunction<_GetShowCmd_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<_GetShowCmd_Dart>()(ptr.ref.lpVtbl, piShowCmd);

  int SetShowCmd(int iShowCmd) =>
      Pointer<NativeFunction<_SetShowCmd_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(15).value)
          .asFunction<_SetShowCmd_Dart>()(ptr.ref.lpVtbl, iShowCmd);

  int GetIconLocation(
          Pointer<Utf16> pszIconPath, int cch, Pointer<Int32> piIcon) =>
      Pointer<NativeFunction<_GetIconLocation_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_GetIconLocation_Dart>()(
          ptr.ref.lpVtbl, pszIconPath, cch, piIcon);

  int SetIconLocation(Pointer<Utf16> pszIconPath, int iIcon) =>
      Pointer<NativeFunction<_SetIconLocation_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(17).value)
              .asFunction<_SetIconLocation_Dart>()(
          ptr.ref.lpVtbl, pszIconPath, iIcon);

  int SetRelativePath(Pointer<Utf16> pszPathRel, int dwReserved) =>
      Pointer<NativeFunction<_SetRelativePath_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<_SetRelativePath_Dart>()(
          ptr.ref.lpVtbl, pszPathRel, dwReserved);

  int Resolve(int hwnd, int fFlags) =>
      Pointer<NativeFunction<_Resolve_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<_Resolve_Dart>()(ptr.ref.lpVtbl, hwnd, fFlags);

  int SetPath(Pointer<Utf16> pszFile) =>
      Pointer<NativeFunction<_SetPath_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
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
