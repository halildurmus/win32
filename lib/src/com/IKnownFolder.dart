// IKnownFolder.dart

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

import 'IUnknown.dart';

/// @nodoc
const IID_IKnownFolder = '{3AA7AF7E-9B36-420C-A8E3-F77D4674A488}';

typedef _GetId_Native = Int32 Function(Pointer obj, Pointer<GUID> pkfid);
typedef _GetId_Dart = int Function(Pointer obj, Pointer<GUID> pkfid);

typedef _GetCategory_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pCategory);
typedef _GetCategory_Dart = int Function(
    Pointer obj, Pointer<Uint32> pCategory);

typedef _GetShellItem_Native = Int32 Function(
    Pointer obj, Uint32 dwFlags, Pointer<GUID> riid, Pointer<Pointer> ppv);
typedef _GetShellItem_Dart = int Function(
    Pointer obj, int dwFlags, Pointer<GUID> riid, Pointer<Pointer> ppv);

typedef _GetPath_Native = Int32 Function(
    Pointer obj, Uint32 dwFlags, Pointer<Pointer<Utf16>> ppszPath);
typedef _GetPath_Dart = int Function(
    Pointer obj, int dwFlags, Pointer<Pointer<Utf16>> ppszPath);

typedef _SetPath_Native = Int32 Function(
    Pointer obj, Uint32 dwFlags, Pointer<Utf16> pszPath);
typedef _SetPath_Dart = int Function(
    Pointer obj, int dwFlags, Pointer<Utf16> pszPath);

typedef _GetIDList_Native = Int32 Function(
    Pointer obj, Uint32 dwFlags, Pointer<Pointer<ITEMIDLIST>> ppidl);
typedef _GetIDList_Dart = int Function(
    Pointer obj, int dwFlags, Pointer<Pointer<ITEMIDLIST>> ppidl);

typedef _GetFolderType_Native = Int32 Function(
    Pointer obj, Pointer<GUID> pftid);
typedef _GetFolderType_Dart = int Function(Pointer obj, Pointer<GUID> pftid);

typedef _GetRedirectionCapabilities_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pCapabilities);
typedef _GetRedirectionCapabilities_Dart = int Function(
    Pointer obj, Pointer<Uint32> pCapabilities);

typedef _GetFolderDefinition_Native = Int32 Function(
    Pointer obj, Pointer<KNOWNFOLDER_DEFINITION> pKFD);
typedef _GetFolderDefinition_Dart = int Function(
    Pointer obj, Pointer<KNOWNFOLDER_DEFINITION> pKFD);

/// {@category Interface}
/// {@category com}
class IKnownFolder extends IUnknown {
  // vtable begins at 3, ends at 11

  IKnownFolder(Pointer<COMObject> ptr) : super(ptr);

  int GetId(Pointer<GUID> pkfid) =>
      Pointer<NativeFunction<_GetId_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetId_Dart>()(ptr.ref.lpVtbl, pkfid);

  int GetCategory(Pointer<Uint32> pCategory) =>
      Pointer<NativeFunction<_GetCategory_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetCategory_Dart>()(ptr.ref.lpVtbl, pCategory);

  int GetShellItem(int dwFlags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_GetShellItem_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetShellItem_Dart>()(ptr.ref.lpVtbl, dwFlags, riid, ppv);

  int GetPath(int dwFlags, Pointer<Pointer<Utf16>> ppszPath) =>
      Pointer<NativeFunction<_GetPath_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetPath_Dart>()(ptr.ref.lpVtbl, dwFlags, ppszPath);

  int SetPath(int dwFlags, Pointer<Utf16> pszPath) =>
      Pointer<NativeFunction<_SetPath_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_SetPath_Dart>()(ptr.ref.lpVtbl, dwFlags, pszPath);

  int GetIDList(int dwFlags, Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      Pointer<NativeFunction<_GetIDList_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<_GetIDList_Dart>()(ptr.ref.lpVtbl, dwFlags, ppidl);

  int GetFolderType(Pointer<GUID> pftid) =>
      Pointer<NativeFunction<_GetFolderType_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(9).value)
          .asFunction<_GetFolderType_Dart>()(ptr.ref.lpVtbl, pftid);

  int GetRedirectionCapabilities(Pointer<Uint32> pCapabilities) =>
      Pointer<NativeFunction<_GetRedirectionCapabilities_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_GetRedirectionCapabilities_Dart>()(
          ptr.ref.lpVtbl, pCapabilities);

  int GetFolderDefinition(Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      Pointer<NativeFunction<_GetFolderDefinition_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(11).value)
          .asFunction<_GetFolderDefinition_Dart>()(ptr.ref.lpVtbl, pKFD);
}
