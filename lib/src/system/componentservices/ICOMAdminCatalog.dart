// ICOMAdminCatalog.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../system/componentservices/structs.g.dart';

/// @nodoc
const IID_ICOMAdminCatalog = '{DD662187-DFC2-11D1-A2CF-00805FC79235}';

/// {@category Interface}
/// {@category com}
class ICOMAdminCatalog extends IDispatch {
  // vtable begins at 7, is 26 entries long.
  ICOMAdminCatalog(Pointer<COMObject> ptr) : super(ptr);

  int GetCollection(
    Pointer<Utf16> bstrCollName,
    Pointer<Pointer<COMObject>> ppCatalogCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCollName,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCollName,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrCollName,
        ppCatalogCollection,
      );

  int Connect(
    Pointer<Utf16> bstrCatalogServerName,
    Pointer<Pointer<COMObject>> ppCatalogCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCatalogServerName,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCatalogServerName,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrCatalogServerName,
        ppCatalogCollection,
      );

  int get MajorVersion {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMajorVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMajorVersion,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get MinorVersion {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plMinorVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plMinorVersion,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetCollectionByQuery(
    Pointer<Utf16> bstrCollName,
    Pointer<Pointer<SAFEARRAY>> ppsaVarQuery,
    Pointer<Pointer<COMObject>> ppCatalogCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCollName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarQuery,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCollName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarQuery,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrCollName,
        ppsaVarQuery,
        ppCatalogCollection,
      );

  int ImportComponent(
    Pointer<Utf16> bstrApplIDOrName,
    Pointer<Utf16> bstrCLSIDOrProgID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Utf16> bstrCLSIDOrProgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Utf16> bstrCLSIDOrProgID,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIDOrName,
        bstrCLSIDOrProgID,
      );

  int InstallComponent(
    Pointer<Utf16> bstrApplIDOrName,
    Pointer<Utf16> bstrDLL,
    Pointer<Utf16> bstrTLB,
    Pointer<Utf16> bstrPSDLL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Utf16> bstrDLL,
            Pointer<Utf16> bstrTLB,
            Pointer<Utf16> bstrPSDLL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Utf16> bstrDLL,
            Pointer<Utf16> bstrTLB,
            Pointer<Utf16> bstrPSDLL,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIDOrName,
        bstrDLL,
        bstrTLB,
        bstrPSDLL,
      );

  int ShutdownApplication(
    Pointer<Utf16> bstrApplIDOrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIDOrName,
      );

  int ExportApplication(
    Pointer<Utf16> bstrApplIDOrName,
    Pointer<Utf16> bstrApplicationFile,
    int lOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Utf16> bstrApplicationFile,
            Int32 lOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Utf16> bstrApplicationFile,
            int lOptions,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIDOrName,
        bstrApplicationFile,
        lOptions,
      );

  int InstallApplication(
    Pointer<Utf16> bstrApplicationFile,
    Pointer<Utf16> bstrDestinationDirectory,
    int lOptions,
    Pointer<Utf16> bstrUserId,
    Pointer<Utf16> bstrPassword,
    Pointer<Utf16> bstrRSN,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationFile,
            Pointer<Utf16> bstrDestinationDirectory,
            Int32 lOptions,
            Pointer<Utf16> bstrUserId,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrRSN,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationFile,
            Pointer<Utf16> bstrDestinationDirectory,
            int lOptions,
            Pointer<Utf16> bstrUserId,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrRSN,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationFile,
        bstrDestinationDirectory,
        lOptions,
        bstrUserId,
        bstrPassword,
        bstrRSN,
      );

  int StopRouter() => ptr.ref.lpVtbl.value
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

  int RefreshRouter() => ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int StartRouter() => ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int Reserved1() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int Reserved2() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int InstallMultipleComponents(
    Pointer<Utf16> bstrApplIDOrName,
    Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
    Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIDOrName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIDOrName,
        ppsaVarFileNames,
        ppsaVarCLSIDs,
      );

  int GetMultipleComponentsInfo(
    Pointer<Utf16> bstrApplIdOrName,
    Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
    Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
    Pointer<Pointer<SAFEARRAY>> ppsaVarClassNames,
    Pointer<Pointer<SAFEARRAY>> ppsaVarFileFlags,
    Pointer<Pointer<SAFEARRAY>> ppsaVarComponentFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
            Pointer<Pointer<SAFEARRAY>> ppsaVarClassNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileFlags,
            Pointer<Pointer<SAFEARRAY>> ppsaVarComponentFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
            Pointer<Pointer<SAFEARRAY>> ppsaVarClassNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileFlags,
            Pointer<Pointer<SAFEARRAY>> ppsaVarComponentFlags,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIdOrName,
        ppsaVarFileNames,
        ppsaVarCLSIDs,
        ppsaVarClassNames,
        ppsaVarFileFlags,
        ppsaVarComponentFlags,
      );

  int RefreshComponents() => ptr.ref.lpVtbl.value
          .elementAt(24)
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

  int BackupREGDB(
    Pointer<Utf16> bstrBackupFilePath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrBackupFilePath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrBackupFilePath,
          )>()(
        ptr.ref.lpVtbl,
        bstrBackupFilePath,
      );

  int RestoreREGDB(
    Pointer<Utf16> bstrBackupFilePath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrBackupFilePath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrBackupFilePath,
          )>()(
        ptr.ref.lpVtbl,
        bstrBackupFilePath,
      );

  int QueryApplicationFile(
    Pointer<Utf16> bstrApplicationFile,
    Pointer<Pointer<Utf16>> pbstrApplicationName,
    Pointer<Pointer<Utf16>> pbstrApplicationDescription,
    Pointer<Int16> pbHasUsers,
    Pointer<Int16> pbIsProxy,
    Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationFile,
            Pointer<Pointer<Utf16>> pbstrApplicationName,
            Pointer<Pointer<Utf16>> pbstrApplicationDescription,
            Pointer<Int16> pbHasUsers,
            Pointer<Int16> pbIsProxy,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationFile,
            Pointer<Pointer<Utf16>> pbstrApplicationName,
            Pointer<Pointer<Utf16>> pbstrApplicationDescription,
            Pointer<Int16> pbHasUsers,
            Pointer<Int16> pbIsProxy,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationFile,
        pbstrApplicationName,
        pbstrApplicationDescription,
        pbHasUsers,
        pbIsProxy,
        ppsaVarFileNames,
      );

  int StartApplication(
    Pointer<Utf16> bstrApplIdOrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIdOrName,
      );

  int ServiceCheck(
    int lService,
    Pointer<Int32> plStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lService,
            Pointer<Int32> plStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lService,
            Pointer<Int32> plStatus,
          )>()(
        ptr.ref.lpVtbl,
        lService,
        plStatus,
      );

  int InstallMultipleEventClasses(
    Pointer<Utf16> bstrApplIdOrName,
    Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
    Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
            Pointer<Pointer<SAFEARRAY>> ppsaVarFileNames,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDS,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIdOrName,
        ppsaVarFileNames,
        ppsaVarCLSIDS,
      );

  int InstallEventClass(
    Pointer<Utf16> bstrApplIdOrName,
    Pointer<Utf16> bstrDLL,
    Pointer<Utf16> bstrTLB,
    Pointer<Utf16> bstrPSDLL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
            Pointer<Utf16> bstrDLL,
            Pointer<Utf16> bstrTLB,
            Pointer<Utf16> bstrPSDLL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplIdOrName,
            Pointer<Utf16> bstrDLL,
            Pointer<Utf16> bstrTLB,
            Pointer<Utf16> bstrPSDLL,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplIdOrName,
        bstrDLL,
        bstrTLB,
        bstrPSDLL,
      );

  int GetEventClassesForIID(
    Pointer<Utf16> bstrIID,
    Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
    Pointer<Pointer<SAFEARRAY>> ppsaVarProgIDs,
    Pointer<Pointer<SAFEARRAY>> ppsaVarDescriptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrIID,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
            Pointer<Pointer<SAFEARRAY>> ppsaVarProgIDs,
            Pointer<Pointer<SAFEARRAY>> ppsaVarDescriptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrIID,
            Pointer<Pointer<SAFEARRAY>> ppsaVarCLSIDs,
            Pointer<Pointer<SAFEARRAY>> ppsaVarProgIDs,
            Pointer<Pointer<SAFEARRAY>> ppsaVarDescriptions,
          )>()(
        ptr.ref.lpVtbl,
        bstrIID,
        ppsaVarCLSIDs,
        ppsaVarProgIDs,
        ppsaVarDescriptions,
      );
}

/// @nodoc
const CLSID_COMAdminCatalog = '{F618C514-DFB8-11D1-A2CF-00805FC79235}';

/// {@category com}
class COMAdminCatalog extends ICOMAdminCatalog {
  COMAdminCatalog(Pointer<COMObject> ptr) : super(ptr);

  factory COMAdminCatalog.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_COMAdminCatalog);
    final iid = calloc<GUID>()..ref.setGUID(IID_ICOMAdminCatalog);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return COMAdminCatalog(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
