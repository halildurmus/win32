// ICOMAdminCatalog2.dart

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

import '../../system/componentservices/ICOMAdminCatalog.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/com/IDispatch.dart';
import '../../system/componentservices/structs.g.dart';

/// @nodoc
const IID_ICOMAdminCatalog2 = '{790C6E0B-9194-4CC9-9426-A48A63185696}';

/// {@category Interface}
/// {@category com}
class ICOMAdminCatalog2 extends ICOMAdminCatalog {
  // vtable begins at 33, is 31 entries long.
  ICOMAdminCatalog2(Pointer<COMObject> ptr) : super(ptr);

  int GetCollectionByQuery2(
    Pointer<Utf16> bstrCollectionName,
    Pointer<VARIANT> pVarQueryStrings,
    Pointer<Pointer<COMObject>> ppCatalogCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCollectionName,
            Pointer<VARIANT> pVarQueryStrings,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCollectionName,
            Pointer<VARIANT> pVarQueryStrings,
            Pointer<Pointer<COMObject>> ppCatalogCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrCollectionName,
        pVarQueryStrings,
        ppCatalogCollection,
      );

  int GetApplicationInstanceIDFromProcessID(
    int lProcessID,
    Pointer<Pointer<Utf16>> pbstrApplicationInstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lProcessID,
            Pointer<Pointer<Utf16>> pbstrApplicationInstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lProcessID,
            Pointer<Pointer<Utf16>> pbstrApplicationInstanceID,
          )>()(
        ptr.ref.lpVtbl,
        lProcessID,
        pbstrApplicationInstanceID,
      );

  int ShutdownApplicationInstances(
    Pointer<VARIANT> pVarApplicationInstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
          )>()(
        ptr.ref.lpVtbl,
        pVarApplicationInstanceID,
      );

  int PauseApplicationInstances(
    Pointer<VARIANT> pVarApplicationInstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
          )>()(
        ptr.ref.lpVtbl,
        pVarApplicationInstanceID,
      );

  int ResumeApplicationInstances(
    Pointer<VARIANT> pVarApplicationInstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
          )>()(
        ptr.ref.lpVtbl,
        pVarApplicationInstanceID,
      );

  int RecycleApplicationInstances(
    Pointer<VARIANT> pVarApplicationInstanceID,
    int lReasonCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
            Int32 lReasonCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
            int lReasonCode,
          )>()(
        ptr.ref.lpVtbl,
        pVarApplicationInstanceID,
        lReasonCode,
      );

  int AreApplicationInstancesPaused(
    Pointer<VARIANT> pVarApplicationInstanceID,
    Pointer<Int16> pVarBoolPaused,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
            Pointer<Int16> pVarBoolPaused,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVarApplicationInstanceID,
            Pointer<Int16> pVarBoolPaused,
          )>()(
        ptr.ref.lpVtbl,
        pVarApplicationInstanceID,
        pVarBoolPaused,
      );

  int DumpApplicationInstance(
    Pointer<Utf16> bstrApplicationInstanceID,
    Pointer<Utf16> bstrDirectory,
    int lMaxImages,
    Pointer<Pointer<Utf16>> pbstrDumpFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationInstanceID,
            Pointer<Utf16> bstrDirectory,
            Int32 lMaxImages,
            Pointer<Pointer<Utf16>> pbstrDumpFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationInstanceID,
            Pointer<Utf16> bstrDirectory,
            int lMaxImages,
            Pointer<Pointer<Utf16>> pbstrDumpFile,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationInstanceID,
        bstrDirectory,
        lMaxImages,
        pbstrDumpFile,
      );

  int get IsApplicationInstanceDumpSupported {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pVarBoolDumpSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pVarBoolDumpSupported,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int CreateServiceForApplication(
    Pointer<Utf16> bstrApplicationIDOrName,
    Pointer<Utf16> bstrServiceName,
    Pointer<Utf16> bstrStartType,
    Pointer<Utf16> bstrErrorControl,
    Pointer<Utf16> bstrDependencies,
    Pointer<Utf16> bstrRunAs,
    Pointer<Utf16> bstrPassword,
    int bDesktopOk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<Utf16> bstrServiceName,
            Pointer<Utf16> bstrStartType,
            Pointer<Utf16> bstrErrorControl,
            Pointer<Utf16> bstrDependencies,
            Pointer<Utf16> bstrRunAs,
            Pointer<Utf16> bstrPassword,
            Int16 bDesktopOk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<Utf16> bstrServiceName,
            Pointer<Utf16> bstrStartType,
            Pointer<Utf16> bstrErrorControl,
            Pointer<Utf16> bstrDependencies,
            Pointer<Utf16> bstrRunAs,
            Pointer<Utf16> bstrPassword,
            int bDesktopOk,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationIDOrName,
        bstrServiceName,
        bstrStartType,
        bstrErrorControl,
        bstrDependencies,
        bstrRunAs,
        bstrPassword,
        bDesktopOk,
      );

  int DeleteServiceForApplication(
    Pointer<Utf16> bstrApplicationIDOrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationIDOrName,
      );

  int GetPartitionID(
    Pointer<Utf16> bstrApplicationIDOrName,
    Pointer<Pointer<Utf16>> pbstrPartitionID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<Pointer<Utf16>> pbstrPartitionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<Pointer<Utf16>> pbstrPartitionID,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationIDOrName,
        pbstrPartitionID,
      );

  int GetPartitionName(
    Pointer<Utf16> bstrApplicationIDOrName,
    Pointer<Pointer<Utf16>> pbstrPartitionName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<Pointer<Utf16>> pbstrPartitionName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<Pointer<Utf16>> pbstrPartitionName,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationIDOrName,
        pbstrPartitionName,
      );

  set CurrentPartition(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(46)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> bstrPartitionIDOrName,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> bstrPartitionIDOrName,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get CurrentPartitionID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPartitionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPartitionID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get CurrentPartitionName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPartitionName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPartitionName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get GlobalPartitionID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrGlobalPartitionID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrGlobalPartitionID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int FlushPartitionCache() => ptr.ref.lpVtbl.value
          .elementAt(50)
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

  int CopyApplications(
    Pointer<Utf16> bstrSourcePartitionIDOrName,
    Pointer<VARIANT> pVarApplicationID,
    Pointer<Utf16> bstrDestinationPartitionIDOrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSourcePartitionIDOrName,
            Pointer<VARIANT> pVarApplicationID,
            Pointer<Utf16> bstrDestinationPartitionIDOrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSourcePartitionIDOrName,
            Pointer<VARIANT> pVarApplicationID,
            Pointer<Utf16> bstrDestinationPartitionIDOrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrSourcePartitionIDOrName,
        pVarApplicationID,
        bstrDestinationPartitionIDOrName,
      );

  int CopyComponents(
    Pointer<Utf16> bstrSourceApplicationIDOrName,
    Pointer<VARIANT> pVarCLSIDOrProgID,
    Pointer<Utf16> bstrDestinationApplicationIDOrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSourceApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<Utf16> bstrDestinationApplicationIDOrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSourceApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<Utf16> bstrDestinationApplicationIDOrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrSourceApplicationIDOrName,
        pVarCLSIDOrProgID,
        bstrDestinationApplicationIDOrName,
      );

  int MoveComponents(
    Pointer<Utf16> bstrSourceApplicationIDOrName,
    Pointer<VARIANT> pVarCLSIDOrProgID,
    Pointer<Utf16> bstrDestinationApplicationIDOrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSourceApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<Utf16> bstrDestinationApplicationIDOrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSourceApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<Utf16> bstrDestinationApplicationIDOrName,
          )>()(
        ptr.ref.lpVtbl,
        bstrSourceApplicationIDOrName,
        pVarCLSIDOrProgID,
        bstrDestinationApplicationIDOrName,
      );

  int AliasComponent(
    Pointer<Utf16> bstrSrcApplicationIDOrName,
    Pointer<Utf16> bstrCLSIDOrProgID,
    Pointer<Utf16> bstrDestApplicationIDOrName,
    Pointer<Utf16> bstrNewProgId,
    Pointer<Utf16> bstrNewClsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSrcApplicationIDOrName,
            Pointer<Utf16> bstrCLSIDOrProgID,
            Pointer<Utf16> bstrDestApplicationIDOrName,
            Pointer<Utf16> bstrNewProgId,
            Pointer<Utf16> bstrNewClsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSrcApplicationIDOrName,
            Pointer<Utf16> bstrCLSIDOrProgID,
            Pointer<Utf16> bstrDestApplicationIDOrName,
            Pointer<Utf16> bstrNewProgId,
            Pointer<Utf16> bstrNewClsid,
          )>()(
        ptr.ref.lpVtbl,
        bstrSrcApplicationIDOrName,
        bstrCLSIDOrProgID,
        bstrDestApplicationIDOrName,
        bstrNewProgId,
        bstrNewClsid,
      );

  int IsSafeToDelete(
    Pointer<Utf16> bstrDllName,
    Pointer<Int32> pCOMAdminInUse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDllName,
            Pointer<Int32> pCOMAdminInUse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDllName,
            Pointer<Int32> pCOMAdminInUse,
          )>()(
        ptr.ref.lpVtbl,
        bstrDllName,
        pCOMAdminInUse,
      );

  int ImportUnconfiguredComponents(
    Pointer<Utf16> bstrApplicationIDOrName,
    Pointer<VARIANT> pVarCLSIDOrProgID,
    Pointer<VARIANT> pVarComponentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<VARIANT> pVarComponentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<VARIANT> pVarComponentType,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationIDOrName,
        pVarCLSIDOrProgID,
        pVarComponentType,
      );

  int PromoteUnconfiguredComponents(
    Pointer<Utf16> bstrApplicationIDOrName,
    Pointer<VARIANT> pVarCLSIDOrProgID,
    Pointer<VARIANT> pVarComponentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<VARIANT> pVarComponentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<VARIANT> pVarComponentType,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationIDOrName,
        pVarCLSIDOrProgID,
        pVarComponentType,
      );

  int ImportComponents(
    Pointer<Utf16> bstrApplicationIDOrName,
    Pointer<VARIANT> pVarCLSIDOrProgID,
    Pointer<VARIANT> pVarComponentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<VARIANT> pVarComponentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationIDOrName,
            Pointer<VARIANT> pVarCLSIDOrProgID,
            Pointer<VARIANT> pVarComponentType,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationIDOrName,
        pVarCLSIDOrProgID,
        pVarComponentType,
      );

  int get Is64BitCatalogServer {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbIs64Bit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbIs64Bit,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ExportPartition(
    Pointer<Utf16> bstrPartitionIDOrName,
    Pointer<Utf16> bstrPartitionFileName,
    int lOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPartitionIDOrName,
            Pointer<Utf16> bstrPartitionFileName,
            Int32 lOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPartitionIDOrName,
            Pointer<Utf16> bstrPartitionFileName,
            int lOptions,
          )>()(
        ptr.ref.lpVtbl,
        bstrPartitionIDOrName,
        bstrPartitionFileName,
        lOptions,
      );

  int InstallPartition(
    Pointer<Utf16> bstrFileName,
    Pointer<Utf16> bstrDestDirectory,
    int lOptions,
    Pointer<Utf16> bstrUserID,
    Pointer<Utf16> bstrPassword,
    Pointer<Utf16> bstrRSN,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Pointer<Utf16> bstrDestDirectory,
            Int32 lOptions,
            Pointer<Utf16> bstrUserID,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrRSN,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrFileName,
            Pointer<Utf16> bstrDestDirectory,
            int lOptions,
            Pointer<Utf16> bstrUserID,
            Pointer<Utf16> bstrPassword,
            Pointer<Utf16> bstrRSN,
          )>()(
        ptr.ref.lpVtbl,
        bstrFileName,
        bstrDestDirectory,
        lOptions,
        bstrUserID,
        bstrPassword,
        bstrRSN,
      );

  int QueryApplicationFile2(
    Pointer<Utf16> bstrApplicationFile,
    Pointer<Pointer<COMObject>> ppFilesForImport,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrApplicationFile,
            Pointer<Pointer<COMObject>> ppFilesForImport,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrApplicationFile,
            Pointer<Pointer<COMObject>> ppFilesForImport,
          )>()(
        ptr.ref.lpVtbl,
        bstrApplicationFile,
        ppFilesForImport,
      );

  int GetComponentVersionCount(
    Pointer<Utf16> bstrCLSIDOrProgID,
    Pointer<Int32> plVersionCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrCLSIDOrProgID,
            Pointer<Int32> plVersionCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrCLSIDOrProgID,
            Pointer<Int32> plVersionCount,
          )>()(
        ptr.ref.lpVtbl,
        bstrCLSIDOrProgID,
        plVersionCount,
      );
}
