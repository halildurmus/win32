// IPMDeploymentManager.dart

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
import '../../foundation/structs.g.dart';
import '../../system/applicationinstallationandservicing/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IPMDeploymentManager = '{35F785FA-1979-4A8B-BC8F-FD70EB0D1544}';

/// {@category Interface}
/// {@category com}
class IPMDeploymentManager extends IUnknown {
  // vtable begins at 3, is 35 entries long.
  IPMDeploymentManager(Pointer<COMObject> ptr) : super(ptr);

  int ReportDownloadBegin(
    GUID productID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
          )>()(
        ptr.ref.lpVtbl,
        productID,
      );

  int ReportDownloadProgress(
    GUID productID,
    int usProgress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
            Uint16 usProgress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
            int usProgress,
          )>()(
        ptr.ref.lpVtbl,
        productID,
        usProgress,
      );

  int ReportDownloadComplete(
    GUID productID,
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        productID,
        hrResult,
      );

  int BeginInstall(
    Pointer<PM_INSTALLINFO> pInstallInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_INSTALLINFO> pInstallInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_INSTALLINFO> pInstallInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInstallInfo,
      );

  int BeginUpdate(
    Pointer<PM_UPDATEINFO> pUpdateInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_UPDATEINFO> pUpdateInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_UPDATEINFO> pUpdateInfo,
          )>()(
        ptr.ref.lpVtbl,
        pUpdateInfo,
      );

  int BeginDeployPackage(
    Pointer<PM_INSTALLINFO> pInstallInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_INSTALLINFO> pInstallInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_INSTALLINFO> pInstallInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInstallInfo,
      );

  int BeginUpdateDeployedPackageLegacy(
    Pointer<PM_UPDATEINFO_LEGACY> pUpdateInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_UPDATEINFO_LEGACY> pUpdateInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_UPDATEINFO_LEGACY> pUpdateInfo,
          )>()(
        ptr.ref.lpVtbl,
        pUpdateInfo,
      );

  int BeginUninstall(
    GUID productID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
          )>()(
        ptr.ref.lpVtbl,
        productID,
      );

  int BeginEnterpriseAppInstall(
    Pointer<PM_INSTALLINFO> pInstallInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_INSTALLINFO> pInstallInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_INSTALLINFO> pInstallInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInstallInfo,
      );

  int BeginEnterpriseAppUpdate(
    Pointer<PM_UPDATEINFO> pUpdateInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_UPDATEINFO> pUpdateInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_UPDATEINFO> pUpdateInfo,
          )>()(
        ptr.ref.lpVtbl,
        pUpdateInfo,
      );

  int BeginUpdateLicense(
    GUID productID,
    GUID offerID,
    Pointer<Uint8> pbLicense,
    int cbLicense,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
            GUID offerID,
            Pointer<Uint8> pbLicense,
            Uint32 cbLicense,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
            GUID offerID,
            Pointer<Uint8> pbLicense,
            int cbLicense,
          )>()(
        ptr.ref.lpVtbl,
        productID,
        offerID,
        pbLicense,
        cbLicense,
      );

  int GetLicenseChallenge(
    Pointer<Utf16> PackagePath,
    Pointer<Pointer<Uint8>> ppbChallenge,
    Pointer<Uint32> pcbChallenge,
    Pointer<Pointer<Uint8>> ppbKID,
    Pointer<Uint32> pcbKID,
    Pointer<Pointer<Uint8>> ppbDeviceID,
    Pointer<Uint32> pcbDeviceID,
    Pointer<Pointer<Uint8>> ppbSaltValue,
    Pointer<Uint32> pcbSaltValue,
    Pointer<Pointer<Uint8>> ppbKGVValue,
    Pointer<Uint32> pcbKGVValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PackagePath,
            Pointer<Pointer<Uint8>> ppbChallenge,
            Pointer<Uint32> pcbChallenge,
            Pointer<Pointer<Uint8>> ppbKID,
            Pointer<Uint32> pcbKID,
            Pointer<Pointer<Uint8>> ppbDeviceID,
            Pointer<Uint32> pcbDeviceID,
            Pointer<Pointer<Uint8>> ppbSaltValue,
            Pointer<Uint32> pcbSaltValue,
            Pointer<Pointer<Uint8>> ppbKGVValue,
            Pointer<Uint32> pcbKGVValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PackagePath,
            Pointer<Pointer<Uint8>> ppbChallenge,
            Pointer<Uint32> pcbChallenge,
            Pointer<Pointer<Uint8>> ppbKID,
            Pointer<Uint32> pcbKID,
            Pointer<Pointer<Uint8>> ppbDeviceID,
            Pointer<Uint32> pcbDeviceID,
            Pointer<Pointer<Uint8>> ppbSaltValue,
            Pointer<Uint32> pcbSaltValue,
            Pointer<Pointer<Uint8>> ppbKGVValue,
            Pointer<Uint32> pcbKGVValue,
          )>()(
        ptr.ref.lpVtbl,
        PackagePath,
        ppbChallenge,
        pcbChallenge,
        ppbKID,
        pcbKID,
        ppbDeviceID,
        pcbDeviceID,
        ppbSaltValue,
        pcbSaltValue,
        ppbKGVValue,
        pcbKGVValue,
      );

  int GetLicenseChallengeByProductID(
    GUID ProductID,
    Pointer<Pointer<Uint8>> ppbChallenge,
    Pointer<Uint32> pcbLicense,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<Uint8>> ppbChallenge,
            Pointer<Uint32> pcbLicense,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<Uint8>> ppbChallenge,
            Pointer<Uint32> pcbLicense,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        ppbChallenge,
        pcbLicense,
      );

  int GetLicenseChallengeByProductID2(
    GUID ProductID,
    Pointer<Pointer<Uint8>> ppbChallenge,
    Pointer<Uint32> pcbLicense,
    Pointer<Pointer<Uint8>> ppbKID,
    Pointer<Uint32> pcbKID,
    Pointer<Pointer<Uint8>> ppbDeviceID,
    Pointer<Uint32> pcbDeviceID,
    Pointer<Pointer<Uint8>> ppbSaltValue,
    Pointer<Uint32> pcbSaltValue,
    Pointer<Pointer<Uint8>> ppbKGVValue,
    Pointer<Uint32> pcbKGVValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<Uint8>> ppbChallenge,
            Pointer<Uint32> pcbLicense,
            Pointer<Pointer<Uint8>> ppbKID,
            Pointer<Uint32> pcbKID,
            Pointer<Pointer<Uint8>> ppbDeviceID,
            Pointer<Uint32> pcbDeviceID,
            Pointer<Pointer<Uint8>> ppbSaltValue,
            Pointer<Uint32> pcbSaltValue,
            Pointer<Pointer<Uint8>> ppbKGVValue,
            Pointer<Uint32> pcbKGVValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Pointer<Uint8>> ppbChallenge,
            Pointer<Uint32> pcbLicense,
            Pointer<Pointer<Uint8>> ppbKID,
            Pointer<Uint32> pcbKID,
            Pointer<Pointer<Uint8>> ppbDeviceID,
            Pointer<Uint32> pcbDeviceID,
            Pointer<Pointer<Uint8>> ppbSaltValue,
            Pointer<Uint32> pcbSaltValue,
            Pointer<Pointer<Uint8>> ppbKGVValue,
            Pointer<Uint32> pcbKGVValue,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        ppbChallenge,
        pcbLicense,
        ppbKID,
        pcbKID,
        ppbDeviceID,
        pcbDeviceID,
        ppbSaltValue,
        pcbSaltValue,
        ppbKGVValue,
        pcbKGVValue,
      );

  int RevokeLicense(
    GUID productID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
          )>()(
        ptr.ref.lpVtbl,
        productID,
      );

  int RebindMdilBinaries(
    GUID ProductID,
    Pointer<SAFEARRAY> FileNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<SAFEARRAY> FileNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<SAFEARRAY> FileNames,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        FileNames,
      );

  int RebindAllMdilBinaries(
    GUID ProductID,
    GUID InstanceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            GUID InstanceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            GUID InstanceID,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        InstanceID,
      );

  int RegenerateXbf(
    GUID ProductID,
    Pointer<SAFEARRAY> AssemblyPaths,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<SAFEARRAY> AssemblyPaths,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<SAFEARRAY> AssemblyPaths,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        AssemblyPaths,
      );

  int GenerateXbfForCurrentLocale(
    GUID ProductID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
      );

  int BeginProvision(
    GUID ProductID,
    Pointer<Utf16> XMLpath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> XMLpath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
            Pointer<Utf16> XMLpath,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
        XMLpath,
      );

  int BeginDeprovision(
    GUID ProductID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
      );

  int ReindexSQLCEDatabases(
    GUID ProductID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
      );

  int SetApplicationsNeedMaintenance(
    int RequiredMaintenanceOperations,
    Pointer<Uint32> pcApplications,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 RequiredMaintenanceOperations,
            Pointer<Uint32> pcApplications,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RequiredMaintenanceOperations,
            Pointer<Uint32> pcApplications,
          )>()(
        ptr.ref.lpVtbl,
        RequiredMaintenanceOperations,
        pcApplications,
      );

  int UpdateChamberProfile(
    GUID ProductID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID ProductID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID ProductID,
          )>()(
        ptr.ref.lpVtbl,
        ProductID,
      );

  int EnterprisePolicyIsApplicationAllowed(
    GUID productId,
    Pointer<Utf16> publisherName,
    Pointer<Int32> pIsAllowed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productId,
            Pointer<Utf16> publisherName,
            Pointer<Int32> pIsAllowed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productId,
            Pointer<Utf16> publisherName,
            Pointer<Int32> pIsAllowed,
          )>()(
        ptr.ref.lpVtbl,
        productId,
        publisherName,
        pIsAllowed,
      );

  int BeginUpdateDeployedPackage(
    Pointer<PM_UPDATEINFO> pUpdateInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PM_UPDATEINFO> pUpdateInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PM_UPDATEINFO> pUpdateInfo,
          )>()(
        ptr.ref.lpVtbl,
        pUpdateInfo,
      );

  int ReportRestoreCancelled(
    GUID productID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
          )>()(
        ptr.ref.lpVtbl,
        productID,
      );

  int ResolveResourceString(
    Pointer<Utf16> resourceString,
    Pointer<Pointer<Utf16>> pResolvedResourceString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> resourceString,
            Pointer<Pointer<Utf16>> pResolvedResourceString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> resourceString,
            Pointer<Pointer<Utf16>> pResolvedResourceString,
          )>()(
        ptr.ref.lpVtbl,
        resourceString,
        pResolvedResourceString,
      );

  int UpdateCapabilitiesForModernApps() => ptr.ref.lpVtbl.value
          .elementAt(31)
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

  int ReportDownloadStatusUpdate(
    GUID productId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productId,
          )>()(
        ptr.ref.lpVtbl,
        productId,
      );

  int BeginUninstallWithOptions(
    GUID productID,
    int removalOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
            Uint32 removalOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
            int removalOptions,
          )>()(
        ptr.ref.lpVtbl,
        productID,
        removalOptions,
      );

  int BindDeferredMdilBinaries() => ptr.ref.lpVtbl.value
          .elementAt(34)
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

  int GenerateXamlLightupXbfForCurrentLocale(
    Pointer<Utf16> PackageFamilyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PackageFamilyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PackageFamilyName,
          )>()(
        ptr.ref.lpVtbl,
        PackageFamilyName,
      );

  int AddLicenseForAppx(
    GUID productID,
    Pointer<Uint8> pbLicense,
    int cbLicense,
    Pointer<Uint8> pbPlayReadyHeader,
    int cbPlayReadyHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID productID,
            Pointer<Uint8> pbLicense,
            Uint32 cbLicense,
            Pointer<Uint8> pbPlayReadyHeader,
            Uint32 cbPlayReadyHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID productID,
            Pointer<Uint8> pbLicense,
            int cbLicense,
            Pointer<Uint8> pbPlayReadyHeader,
            int cbPlayReadyHeader,
          )>()(
        ptr.ref.lpVtbl,
        productID,
        pbLicense,
        cbLicense,
        pbPlayReadyHeader,
        cbPlayReadyHeader,
      );

  int FixJunctionsForAppsOnSDCard() => ptr.ref.lpVtbl.value
          .elementAt(37)
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
}
