// IShellLibrary.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../ui/shell/IShellItem.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IShellLibrary = '{11A66EFA-382E-451A-9234-1E0E12EF3085}';

/// {@category Interface}
/// {@category com}
class IShellLibrary extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IShellLibrary(Pointer<COMObject> ptr) : super(ptr);

  int LoadLibraryFromItem(
    Pointer<COMObject> psiLibrary,
    int grfMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiLibrary,
            Uint32 grfMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiLibrary,
            int grfMode,
          )>()(
        ptr.ref.lpVtbl,
        psiLibrary,
        grfMode,
      );

  int LoadLibraryFromKnownFolder(
    Pointer<GUID> kfidLibrary,
    int grfMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> kfidLibrary,
            Uint32 grfMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> kfidLibrary,
            int grfMode,
          )>()(
        ptr.ref.lpVtbl,
        kfidLibrary,
        grfMode,
      );

  int AddFolder(
    Pointer<COMObject> psiLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiLocation,
          )>()(
        ptr.ref.lpVtbl,
        psiLocation,
      );

  int RemoveFolder(
    Pointer<COMObject> psiLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiLocation,
          )>()(
        ptr.ref.lpVtbl,
        psiLocation,
      );

  int GetFolders(
    int lff,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lff,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lff,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        lff,
        riid,
        ppv,
      );

  int ResolveFolder(
    Pointer<COMObject> psiFolderToResolve,
    int dwTimeout,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiFolderToResolve,
            Uint32 dwTimeout,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiFolderToResolve,
            int dwTimeout,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        psiFolderToResolve,
        dwTimeout,
        riid,
        ppv,
      );

  int GetDefaultSaveFolder(
    int dsft,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dsft,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dsft,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        dsft,
        riid,
        ppv,
      );

  int SetDefaultSaveFolder(
    int dsft,
    Pointer<COMObject> psi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dsft,
            Pointer<COMObject> psi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dsft,
            Pointer<COMObject> psi,
          )>()(
        ptr.ref.lpVtbl,
        dsft,
        psi,
      );

  int GetOptions(
    Pointer<Int32> plofOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plofOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plofOptions,
          )>()(
        ptr.ref.lpVtbl,
        plofOptions,
      );

  int SetOptions(
    int lofMask,
    int lofOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lofMask,
            Int32 lofOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lofMask,
            int lofOptions,
          )>()(
        ptr.ref.lpVtbl,
        lofMask,
        lofOptions,
      );

  int GetFolderType(
    Pointer<GUID> pftid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pftid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pftid,
          )>()(
        ptr.ref.lpVtbl,
        pftid,
      );

  int SetFolderType(
    Pointer<GUID> ftid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> ftid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> ftid,
          )>()(
        ptr.ref.lpVtbl,
        ftid,
      );

  int GetIcon(
    Pointer<Pointer<Utf16>> ppszIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszIcon,
          )>()(
        ptr.ref.lpVtbl,
        ppszIcon,
      );

  int SetIcon(
    Pointer<Utf16> pszIcon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszIcon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszIcon,
          )>()(
        ptr.ref.lpVtbl,
        pszIcon,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int Save(
    Pointer<COMObject> psiFolderToSaveIn,
    Pointer<Utf16> pszLibraryName,
    int lsf,
    Pointer<Pointer<COMObject>> ppsiSavedTo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiFolderToSaveIn,
            Pointer<Utf16> pszLibraryName,
            Int32 lsf,
            Pointer<Pointer<COMObject>> ppsiSavedTo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiFolderToSaveIn,
            Pointer<Utf16> pszLibraryName,
            int lsf,
            Pointer<Pointer<COMObject>> ppsiSavedTo,
          )>()(
        ptr.ref.lpVtbl,
        psiFolderToSaveIn,
        pszLibraryName,
        lsf,
        ppsiSavedTo,
      );

  int SaveInKnownFolder(
    Pointer<GUID> kfidToSaveIn,
    Pointer<Utf16> pszLibraryName,
    int lsf,
    Pointer<Pointer<COMObject>> ppsiSavedTo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> kfidToSaveIn,
            Pointer<Utf16> pszLibraryName,
            Int32 lsf,
            Pointer<Pointer<COMObject>> ppsiSavedTo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> kfidToSaveIn,
            Pointer<Utf16> pszLibraryName,
            int lsf,
            Pointer<Pointer<COMObject>> ppsiSavedTo,
          )>()(
        ptr.ref.lpVtbl,
        kfidToSaveIn,
        pszLibraryName,
        lsf,
        ppsiSavedTo,
      );
}

/// @nodoc
const CLSID_ShellLibrary = '{D9B3211D-E57F-4426-AAEF-30A806ADD397}';

/// {@category com}
class ShellLibrary extends IShellLibrary {
  ShellLibrary(Pointer<COMObject> ptr) : super(ptr);

  factory ShellLibrary.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ShellLibrary);
    final iid = calloc<GUID>()..ref.setGUID(IID_IShellLibrary);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ShellLibrary(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
