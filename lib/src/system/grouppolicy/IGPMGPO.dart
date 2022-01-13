// IGPMGPO.dart

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
import '../../system/grouppolicy/IGPMWMIFilter.dart';
import '../../system/grouppolicy/IGPMSecurityInfo.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/IGPMResult.dart';
import '../../system/grouppolicy/IGPMBackup.dart';
import '../../system/grouppolicy/structs.g.dart';
import '../../system/grouppolicy/IGPMDomain.dart';

/// @nodoc
const IID_IGPMGPO = '{58CC4352-1CA3-48E5-9864-1DA4D6E0D60F}';

/// {@category Interface}
/// {@category com}
class IGPMGPO extends IDispatch {
  // vtable begins at 7, is 29 entries long.
  IGPMGPO(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get DisplayName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set DisplayName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> newVal,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> newVal,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Path {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get ID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get DomainName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get CreationTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pDate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  double get ModificationTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pDate,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get UserDSVersionNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get ComputerDSVersionNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get UserSysvolVersionNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get ComputerSysvolVersionNumber {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetWMIFilter(
    Pointer<Pointer<COMObject>> ppIGPMWMIFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMWMIFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIGPMWMIFilter,
          )>()(
        ptr.ref.lpVtbl,
        ppIGPMWMIFilter,
      );

  int SetWMIFilter(
    Pointer<COMObject> pIGPMWMIFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIGPMWMIFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIGPMWMIFilter,
          )>()(
        ptr.ref.lpVtbl,
        pIGPMWMIFilter,
      );

  int SetUserEnabled(
    int vbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 vbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        vbEnabled,
      );

  int SetComputerEnabled(
    int vbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 vbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int vbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        vbEnabled,
      );

  int IsUserEnabled(
    Pointer<Int16> pvbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pvbEnabled,
      );

  int IsComputerEnabled(
    Pointer<Int16> pvbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pvbEnabled,
      );

  int GetSecurityInfo(
    Pointer<Pointer<COMObject>> ppSecurityInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecurityInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSecurityInfo,
          )>()(
        ptr.ref.lpVtbl,
        ppSecurityInfo,
      );

  int SetSecurityInfo(
    Pointer<COMObject> pSecurityInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSecurityInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSecurityInfo,
          )>()(
        ptr.ref.lpVtbl,
        pSecurityInfo,
      );

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int Backup(
    Pointer<Utf16> bstrBackupDir,
    Pointer<Utf16> bstrComment,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrBackupDir,
            Pointer<Utf16> bstrComment,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrBackupDir,
            Pointer<Utf16> bstrComment,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        bstrBackupDir,
        bstrComment,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  int Import(
    int lFlags,
    Pointer<COMObject> pIGPMBackup,
    Pointer<VARIANT> pvarMigrationTable,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pIGPMBackup,
            Pointer<VARIANT> pvarMigrationTable,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pIGPMBackup,
            Pointer<VARIANT> pvarMigrationTable,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pIGPMBackup,
        pvarMigrationTable,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  int GenerateReport(
    int gpmReportType,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 gpmReportType,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int gpmReportType,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        gpmReportType,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  int GenerateReportToFile(
    int gpmReportType,
    Pointer<Utf16> bstrTargetFilePath,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 gpmReportType,
            Pointer<Utf16> bstrTargetFilePath,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int gpmReportType,
            Pointer<Utf16> bstrTargetFilePath,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        gpmReportType,
        bstrTargetFilePath,
        ppIGPMResult,
      );

  int CopyTo(
    int lFlags,
    Pointer<COMObject> pIGPMDomain,
    Pointer<VARIANT> pvarNewDisplayName,
    Pointer<VARIANT> pvarMigrationTable,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pIGPMDomain,
            Pointer<VARIANT> pvarNewDisplayName,
            Pointer<VARIANT> pvarMigrationTable,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pIGPMDomain,
            Pointer<VARIANT> pvarNewDisplayName,
            Pointer<VARIANT> pvarMigrationTable,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pIGPMDomain,
        pvarNewDisplayName,
        pvarMigrationTable,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  int SetSecurityDescriptor(
    int lFlags,
    Pointer<COMObject> pSD,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<COMObject> pSD,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<COMObject> pSD,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pSD,
      );

  int GetSecurityDescriptor(
    int lFlags,
    Pointer<Pointer<COMObject>> ppSD,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Pointer<COMObject>> ppSD,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Pointer<COMObject>> ppSD,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        ppSD,
      );

  int IsACLConsistent(
    Pointer<Int16> pvbConsistent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbConsistent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbConsistent,
          )>()(
        ptr.ref.lpVtbl,
        pvbConsistent,
      );

  int MakeACLConsistent() => ptr.ref.lpVtbl.value
          .elementAt(35)
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

/// @nodoc
const CLSID_GPMGPO = '{D2CE2994-59B5-4064-B581-4D68486A16C4}';

/// {@category com}
class GPMGPO extends IGPMGPO {
  GPMGPO(Pointer<COMObject> ptr) : super(ptr);

  factory GPMGPO.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_GPMGPO);
    final iid = calloc<GUID>()..ref.setGUID(IID_IGPMGPO);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return GPMGPO(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
