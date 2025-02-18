// iknownfoldermanager.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IKnownFolderManager = '{8be2d872-86aa-4d47-b776-32cca40c7018}';

/// Exposes methods that create, enumerate or manage existing known folders.
///
/// {@category com}
class IKnownFolderManager extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IKnownFolderManager(super.ptr);

  factory IKnownFolderManager.from(IUnknown interface) =>
      IKnownFolderManager(interface.toInterface(IID_IKnownFolderManager));

  int folderIdFromCsidl(int nCsidl, Pointer<GUID> pfid) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Int32 nCsidl, Pointer<GUID> pfid)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, int nCsidl, Pointer<GUID> pfid)>()(
    ptr.ref.lpVtbl,
    nCsidl,
    pfid,
  );

  int folderIdToCsidl(Pointer<GUID> rfid, Pointer<Int32> pnCsidl) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<GUID> rfid,
                  Pointer<Int32> pnCsidl,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<GUID> rfid, Pointer<Int32> pnCsidl)
          >()(ptr.ref.lpVtbl, rfid, pnCsidl);

  int getFolderIds(Pointer<Pointer<GUID>> ppKFId, Pointer<Uint32> pCount) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<GUID>> ppKFId,
                  Pointer<Uint32> pCount,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Pointer<GUID>> ppKFId,
              Pointer<Uint32> pCount,
            )
          >()(ptr.ref.lpVtbl, ppKFId, pCount);

  int getFolder(Pointer<GUID> rfid, Pointer<Pointer<COMObject>> ppkf) =>
      (ptr.ref.vtable + 6)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<GUID> rfid,
                  Pointer<Pointer<COMObject>> ppkf,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<GUID> rfid,
              Pointer<Pointer<COMObject>> ppkf,
            )
          >()(ptr.ref.lpVtbl, rfid, ppkf);

  int getFolderByName(
    Pointer<Utf16> pszCanonicalName,
    Pointer<Pointer<COMObject>> ppkf,
  ) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> pszCanonicalName,
              Pointer<Pointer<COMObject>> ppkf,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> pszCanonicalName,
          Pointer<Pointer<COMObject>> ppkf,
        )
      >()(ptr.ref.lpVtbl, pszCanonicalName, ppkf);

  int registerFolder(
    Pointer<GUID> rfid,
    Pointer<KNOWNFOLDER_DEFINITION> pKFD,
  ) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<GUID> rfid,
              Pointer<KNOWNFOLDER_DEFINITION> pKFD,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<GUID> rfid,
          Pointer<KNOWNFOLDER_DEFINITION> pKFD,
        )
      >()(ptr.ref.lpVtbl, rfid, pKFD);

  int unregisterFolder(Pointer<GUID> rfid) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> rfid)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> rfid)>()(
    ptr.ref.lpVtbl,
    rfid,
  );

  int findFolderFromPath(
    Pointer<Utf16> pszPath,
    int mode,
    Pointer<Pointer<COMObject>> ppkf,
  ) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> pszPath,
              Int32 mode,
              Pointer<Pointer<COMObject>> ppkf,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> pszPath,
          int mode,
          Pointer<Pointer<COMObject>> ppkf,
        )
      >()(ptr.ref.lpVtbl, pszPath, mode, ppkf);

  int findFolderFromIDList(
    Pointer<ITEMIDLIST> pidl,
    Pointer<Pointer<COMObject>> ppkf,
  ) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<ITEMIDLIST> pidl,
              Pointer<Pointer<COMObject>> ppkf,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<ITEMIDLIST> pidl,
          Pointer<Pointer<COMObject>> ppkf,
        )
      >()(ptr.ref.lpVtbl, pidl, ppkf);

  int redirect(
    Pointer<GUID> rfid,
    int hwnd,
    int flags,
    Pointer<Utf16> pszTargetPath,
    int cFolders,
    Pointer<GUID> pExclusion,
    Pointer<Pointer<Utf16>> ppszError,
  ) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<GUID> rfid,
              IntPtr hwnd,
              Uint32 flags,
              Pointer<Utf16> pszTargetPath,
              Uint32 cFolders,
              Pointer<GUID> pExclusion,
              Pointer<Pointer<Utf16>> ppszError,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<GUID> rfid,
          int hwnd,
          int flags,
          Pointer<Utf16> pszTargetPath,
          int cFolders,
          Pointer<GUID> pExclusion,
          Pointer<Pointer<Utf16>> ppszError,
        )
      >()(
    ptr.ref.lpVtbl,
    rfid,
    hwnd,
    flags,
    pszTargetPath,
    cFolders,
    pExclusion,
    ppszError,
  );
}

/// @nodoc
const CLSID_KnownFolderManager = '{4df0c730-df9d-4ae3-9153-aa6b82e9795a}';

/// {@category com}
class KnownFolderManager extends IKnownFolderManager {
  KnownFolderManager(super.ptr);

  factory KnownFolderManager.createInstance() => KnownFolderManager(
    COMObject.createFromID(CLSID_KnownFolderManager, IID_IKnownFolderManager),
  );
}
