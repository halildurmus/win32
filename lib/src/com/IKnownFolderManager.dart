// IKnownFolderManager.dart

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
const CLSID_KnownFolderManager = '{4DF0C730-DF9D-4AE3-9153-AA6B82E9795A}';

/// @nodoc
const IID_IKnownFolderManager = '{8BE2D872-86AA-4D47-B776-32CCA40C7018}';

typedef _FolderIdFromCsidl_Native = Int32 Function(
    Pointer obj, Int32 nCsidl, Pointer<GUID> pfid);
typedef _FolderIdFromCsidl_Dart = int Function(
    Pointer obj, int nCsidl, Pointer<GUID> pfid);

typedef _FolderIdToCsidl_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<Int32> pnCsidl);
typedef _FolderIdToCsidl_Dart = int Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<Int32> pnCsidl);

typedef _GetFolderIds_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<GUID>> ppKFId, Pointer<Uint32> pCount);
typedef _GetFolderIds_Dart = int Function(
    Pointer obj, Pointer<Pointer<GUID>> ppKFId, Pointer<Uint32> pCount);

typedef _GetFolder_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<Pointer> ppkf);
typedef _GetFolder_Dart = int Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<Pointer> ppkf);

typedef _GetFolderByName_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszCanonicalName, Pointer<Pointer> ppkf);
typedef _GetFolderByName_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszCanonicalName, Pointer<Pointer> ppkf);

typedef _RegisterFolder_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD);
typedef _RegisterFolder_Dart = int Function(
    Pointer obj, Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD);

typedef _UnregisterFolder_Native = Int32 Function(
    Pointer obj, Pointer<GUID> rfid);
typedef _UnregisterFolder_Dart = int Function(Pointer obj, Pointer<GUID> rfid);

typedef _FindFolderFromPath_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> pszPath, Uint32 mode, Pointer<Pointer> ppkf);
typedef _FindFolderFromPath_Dart = int Function(
    Pointer obj, Pointer<Utf16> pszPath, int mode, Pointer<Pointer> ppkf);

typedef _FindFolderFromIDList_Native = Int32 Function(
    Pointer obj, Pointer<ITEMIDLIST> pidl, Pointer<Pointer> ppkf);
typedef _FindFolderFromIDList_Dart = int Function(
    Pointer obj, Pointer<ITEMIDLIST> pidl, Pointer<Pointer> ppkf);

typedef _Redirect_Native = Int32 Function(
    Pointer obj,
    Pointer<GUID> rfid,
    IntPtr hwnd,
    Uint32 flags,
    Pointer<Utf16> pszTargetPath,
    Uint32 cFolders,
    Pointer<GUID> pExclusion,
    Pointer<Pointer<Utf16>> ppszError);
typedef _Redirect_Dart = int Function(
    Pointer obj,
    Pointer<GUID> rfid,
    int hwnd,
    int flags,
    Pointer<Utf16> pszTargetPath,
    int cFolders,
    Pointer<GUID> pExclusion,
    Pointer<Pointer<Utf16>> ppszError);

/// {@category Interface}
/// {@category com}
class IKnownFolderManager extends IUnknown {
  // vtable begins at 3, ends at 12

  IKnownFolderManager(Pointer<COMObject> ptr) : super(ptr);

  int FolderIdFromCsidl(int nCsidl, Pointer<GUID> pfid) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_FolderIdFromCsidl_Native>>>()
      .value
      .asFunction<_FolderIdFromCsidl_Dart>()(ptr.ref.lpVtbl, nCsidl, pfid);

  int FolderIdToCsidl(Pointer<GUID> rfid, Pointer<Int32> pnCsidl) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<Pointer<NativeFunction<_FolderIdToCsidl_Native>>>()
          .value
          .asFunction<_FolderIdToCsidl_Dart>()(ptr.ref.lpVtbl, rfid, pnCsidl);

  int GetFolderIds(Pointer<Pointer<GUID>> ppKFId, Pointer<Uint32> pCount) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<Pointer<NativeFunction<_GetFolderIds_Native>>>()
          .value
          .asFunction<_GetFolderIds_Dart>()(ptr.ref.lpVtbl, ppKFId, pCount);

  int GetFolder(Pointer<GUID> rfid, Pointer<Pointer> ppkf) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<Pointer<NativeFunction<_GetFolder_Native>>>()
          .value
          .asFunction<_GetFolder_Dart>()(ptr.ref.lpVtbl, rfid, ppkf);

  int GetFolderByName(Pointer<Utf16> pszCanonicalName, Pointer<Pointer> ppkf) =>
      ptr.ref.lpVtbl.value
              .elementAt(7)
              .cast<Pointer<NativeFunction<_GetFolderByName_Native>>>()
              .value
              .asFunction<_GetFolderByName_Dart>()(
          ptr.ref.lpVtbl, pszCanonicalName, ppkf);

  int RegisterFolder(
          Pointer<GUID> rfid, Pointer<KNOWNFOLDER_DEFINITION> pKFD) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<Pointer<NativeFunction<_RegisterFolder_Native>>>()
          .value
          .asFunction<_RegisterFolder_Dart>()(ptr.ref.lpVtbl, rfid, pKFD);

  int UnregisterFolder(Pointer<GUID> rfid) => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_UnregisterFolder_Native>>>()
      .value
      .asFunction<_UnregisterFolder_Dart>()(ptr.ref.lpVtbl, rfid);

  int FindFolderFromPath(
          Pointer<Utf16> pszPath, int mode, Pointer<Pointer> ppkf) =>
      ptr.ref.lpVtbl.value
              .elementAt(10)
              .cast<Pointer<NativeFunction<_FindFolderFromPath_Native>>>()
              .value
              .asFunction<_FindFolderFromPath_Dart>()(
          ptr.ref.lpVtbl, pszPath, mode, ppkf);

  int FindFolderFromIDList(Pointer<ITEMIDLIST> pidl, Pointer<Pointer> ppkf) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<Pointer<NativeFunction<_FindFolderFromIDList_Native>>>()
          .value
          .asFunction<_FindFolderFromIDList_Dart>()(ptr.ref.lpVtbl, pidl, ppkf);

  int Redirect(
          Pointer<GUID> rfid,
          int hwnd,
          int flags,
          Pointer<Utf16> pszTargetPath,
          int cFolders,
          Pointer<GUID> pExclusion,
          Pointer<Pointer<Utf16>> ppszError) =>
      ptr.ref.lpVtbl.value
              .elementAt(12)
              .cast<Pointer<NativeFunction<_Redirect_Native>>>()
              .value
              .asFunction<_Redirect_Dart>()(ptr.ref.lpVtbl, rfid, hwnd, flags,
          pszTargetPath, cFolders, pExclusion, ppszError);
}

/// {@category com}
class KnownFolderManager extends IKnownFolderManager {
  KnownFolderManager(Pointer<COMObject> ptr) : super(ptr);

  factory KnownFolderManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_KnownFolderManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IKnownFolderManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return KnownFolderManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
