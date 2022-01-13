// IGPM.dart

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
import '../../system/grouppolicy/IGPMDomain.dart';
import '../../system/grouppolicy/IGPMBackupDir.dart';
import '../../system/grouppolicy/IGPMSitesContainer.dart';
import '../../system/grouppolicy/structs.g.dart';
import '../../system/grouppolicy/IGPMRSOP.dart';
import '../../system/grouppolicy/IGPMPermission.dart';
import '../../system/grouppolicy/IGPMSearchCriteria.dart';
import '../../system/grouppolicy/IGPMTrustee.dart';
import '../../system/grouppolicy/IGPMCSECollection.dart';
import '../../system/grouppolicy/IGPMConstants.dart';
import '../../system/grouppolicy/IGPMMigrationTable.dart';

/// @nodoc
const IID_IGPM = '{F5FAE809-3BD6-4DA9-A65E-17665B41D763}';

/// {@category Interface}
/// {@category com}
class IGPM extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  IGPM(Pointer<COMObject> ptr) : super(ptr);

  int GetDomain(
    Pointer<Utf16> bstrDomain,
    Pointer<Utf16> bstrDomainController,
    int lDCFlags,
    Pointer<Pointer<COMObject>> pIGPMDomain,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrDomain,
            Pointer<Utf16> bstrDomainController,
            Int32 lDCFlags,
            Pointer<Pointer<COMObject>> pIGPMDomain,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrDomain,
            Pointer<Utf16> bstrDomainController,
            int lDCFlags,
            Pointer<Pointer<COMObject>> pIGPMDomain,
          )>()(
        ptr.ref.lpVtbl,
        bstrDomain,
        bstrDomainController,
        lDCFlags,
        pIGPMDomain,
      );

  int GetBackupDir(
    Pointer<Utf16> bstrBackupDir,
    Pointer<Pointer<COMObject>> pIGPMBackupDir,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrBackupDir,
            Pointer<Pointer<COMObject>> pIGPMBackupDir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrBackupDir,
            Pointer<Pointer<COMObject>> pIGPMBackupDir,
          )>()(
        ptr.ref.lpVtbl,
        bstrBackupDir,
        pIGPMBackupDir,
      );

  int GetSitesContainer(
    Pointer<Utf16> bstrForest,
    Pointer<Utf16> bstrDomain,
    Pointer<Utf16> bstrDomainController,
    int lDCFlags,
    Pointer<Pointer<COMObject>> ppIGPMSitesContainer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrForest,
            Pointer<Utf16> bstrDomain,
            Pointer<Utf16> bstrDomainController,
            Int32 lDCFlags,
            Pointer<Pointer<COMObject>> ppIGPMSitesContainer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrForest,
            Pointer<Utf16> bstrDomain,
            Pointer<Utf16> bstrDomainController,
            int lDCFlags,
            Pointer<Pointer<COMObject>> ppIGPMSitesContainer,
          )>()(
        ptr.ref.lpVtbl,
        bstrForest,
        bstrDomain,
        bstrDomainController,
        lDCFlags,
        ppIGPMSitesContainer,
      );

  int GetRSOP(
    int gpmRSoPMode,
    Pointer<Utf16> bstrNamespace,
    int lFlags,
    Pointer<Pointer<COMObject>> ppIGPMRSOP,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 gpmRSoPMode,
            Pointer<Utf16> bstrNamespace,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppIGPMRSOP,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int gpmRSoPMode,
            Pointer<Utf16> bstrNamespace,
            int lFlags,
            Pointer<Pointer<COMObject>> ppIGPMRSOP,
          )>()(
        ptr.ref.lpVtbl,
        gpmRSoPMode,
        bstrNamespace,
        lFlags,
        ppIGPMRSOP,
      );

  int CreatePermission(
    Pointer<Utf16> bstrTrustee,
    int perm,
    int bInheritable,
    Pointer<Pointer<COMObject>> ppPerm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTrustee,
            Int32 perm,
            Int16 bInheritable,
            Pointer<Pointer<COMObject>> ppPerm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTrustee,
            int perm,
            int bInheritable,
            Pointer<Pointer<COMObject>> ppPerm,
          )>()(
        ptr.ref.lpVtbl,
        bstrTrustee,
        perm,
        bInheritable,
        ppPerm,
      );

  int CreateSearchCriteria(
    Pointer<Pointer<COMObject>> ppIGPMSearchCriteria,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMSearchCriteria,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMSearchCriteria,
          )>()(
        ptr.ref.lpVtbl,
        ppIGPMSearchCriteria,
      );

  int CreateTrustee(
    Pointer<Utf16> bstrTrustee,
    Pointer<Pointer<COMObject>> ppIGPMTrustee,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrTrustee,
            Pointer<Pointer<COMObject>> ppIGPMTrustee,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrTrustee,
            Pointer<Pointer<COMObject>> ppIGPMTrustee,
          )>()(
        ptr.ref.lpVtbl,
        bstrTrustee,
        ppIGPMTrustee,
      );

  int GetClientSideExtensions(
    Pointer<Pointer<COMObject>> ppIGPMCSECollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMCSECollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMCSECollection,
          )>()(
        ptr.ref.lpVtbl,
        ppIGPMCSECollection,
      );

  int GetConstants(
    Pointer<Pointer<COMObject>> ppIGPMConstants,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMConstants,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMConstants,
          )>()(
        ptr.ref.lpVtbl,
        ppIGPMConstants,
      );

  int GetMigrationTable(
    Pointer<Utf16> bstrMigrationTablePath,
    Pointer<Pointer<COMObject>> ppMigrationTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrMigrationTablePath,
            Pointer<Pointer<COMObject>> ppMigrationTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrMigrationTablePath,
            Pointer<Pointer<COMObject>> ppMigrationTable,
          )>()(
        ptr.ref.lpVtbl,
        bstrMigrationTablePath,
        ppMigrationTable,
      );

  int CreateMigrationTable(
    Pointer<Pointer<COMObject>> ppMigrationTable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMigrationTable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMigrationTable,
          )>()(
        ptr.ref.lpVtbl,
        ppMigrationTable,
      );

  int InitializeReporting(
    Pointer<Utf16> bstrAdmPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAdmPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAdmPath,
          )>()(
        ptr.ref.lpVtbl,
        bstrAdmPath,
      );
}

/// @nodoc
const CLSID_GPM = '{F5694708-88FE-4B35-BABF-E56162D5FBC8}';

/// {@category com}
class GPM extends IGPM {
  GPM(Pointer<COMObject> ptr) : super(ptr);

  factory GPM.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPM);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPM);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPM(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
