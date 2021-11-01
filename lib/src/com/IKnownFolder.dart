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
    Pointer obj, Pointer<Int32> pCategory);
typedef _GetCategory_Dart = int Function(Pointer obj, Pointer<Int32> pCategory);

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

  int GetId(Pointer<GUID> pkfid) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetId_Native>>>()
      .value
      .asFunction<_GetId_Dart>()(ptr.ref.lpVtbl, pkfid);

  int GetCategory(Pointer<Int32> pCategory) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<Pointer<NativeFunction<_GetCategory_Native>>>()
      .value
      .asFunction<_GetCategory_Dart>()(ptr.ref.lpVtbl, pCategory);

  int GetShellItem(int dwFlags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_GetShellItem_Native>>>()
          .value
          .asFunction<_GetShellItem_Dart>()(ptr.ref.lpVtbl, dwFlags, riid, ppv);

  int GetPath(int dwFlags, Pointer<Pointer<Utf16>> ppszPath) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_GetPath_Native>>>()
          .value
          .asFunction<_GetPath_Dart>()(ptr.ref.lpVtbl, dwFlags, ppszPath);

  int SetPath(int dwFlags, Pointer<Utf16> pszPath) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetPath_Native>>>()
      .value
      .asFunction<_SetPath_Dart>()(ptr.ref.lpVtbl, dwFlags, pszPath);

  int GetIDList(int dwFlags, Pointer<Pointer<ITEMIDLIST>> ppidl) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_GetIDList_Native>>>()
          .value
          .asFunction<_GetIDList_Dart>()(ptr.ref.lpVtbl, dwFlags, ppidl);

  int GetFolderType(Pointer<GUID> pftid) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_GetFolderType_Native>>>()
      .value
      .asFunction<_GetFolderType_Dart>()(ptr.ref.lpVtbl, pftid);

  int GetRedirectionCapabilities(Pointer<Uint32> pCapabilities) => ptr
          .ref.lpVtbl.value
          .elementAt(10)
          .cast<Pointer<NativeFunction<_GetRedirectionCapabilities_Native>>>()
          .value
          .asFunction<_GetRedirectionCapabilities_Dart>()(
      ptr.ref.lpVtbl, pCapabilities);

  int GetFolderDefinition(Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_GetFolderDefinition_Native>>>()
          .value
          .asFunction<_GetFolderDefinition_Dart>()(ptr.ref.lpVtbl, pKFD);
}
