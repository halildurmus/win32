// IGPMStarterGPO.dart

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
import '../../system/grouppolicy/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/grouppolicy/IGPMResult.dart';
import '../../system/grouppolicy/IGPMSecurityInfo.dart';

/// @nodoc
const IID_IGPMStarterGPO = '{DFC3F61B-8880-4490-9337-D29C7BA8C2F0}';

/// {@category Interface}
/// {@category com}
class IGPMStarterGPO extends IDispatch {
  // vtable begins at 7, is 21 entries long.
  IGPMStarterGPO(Pointer<COMObject> ptr) : super(ptr);

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

  Pointer<Utf16> get Description {
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

  set Description(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
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

  Pointer<Utf16> get Author {
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

  Pointer<Utf16> get Product {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
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
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pVal,
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
          .elementAt(14)
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

  double get ModifiedTime {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get Type {
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

  int get ComputerVersion {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get UserVersion {
    final retValuePtr = calloc<Uint16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get StarterGPOVersion {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(19)
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

  int Delete() => ptr.ref.lpVtbl.value
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

  int Save(
    Pointer<Utf16> bstrSaveFile,
    int bOverwrite,
    int bSaveAsSystem,
    Pointer<VARIANT> bstrLanguage,
    Pointer<VARIANT> bstrAuthor,
    Pointer<VARIANT> bstrProduct,
    Pointer<VARIANT> bstrUniqueID,
    Pointer<VARIANT> bstrVersion,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSaveFile,
            Int16 bOverwrite,
            Int16 bSaveAsSystem,
            Pointer<VARIANT> bstrLanguage,
            Pointer<VARIANT> bstrAuthor,
            Pointer<VARIANT> bstrProduct,
            Pointer<VARIANT> bstrUniqueID,
            Pointer<VARIANT> bstrVersion,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSaveFile,
            int bOverwrite,
            int bSaveAsSystem,
            Pointer<VARIANT> bstrLanguage,
            Pointer<VARIANT> bstrAuthor,
            Pointer<VARIANT> bstrProduct,
            Pointer<VARIANT> bstrUniqueID,
            Pointer<VARIANT> bstrVersion,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        bstrSaveFile,
        bOverwrite,
        bSaveAsSystem,
        bstrLanguage,
        bstrAuthor,
        bstrProduct,
        bstrUniqueID,
        bstrVersion,
        pvarGPMProgress,
        pvarGPMCancel,
        ppIGPMResult,
      );

  int Backup(
    Pointer<Utf16> bstrBackupDir,
    Pointer<Utf16> bstrComment,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int CopyTo(
    Pointer<VARIANT> pvarNewDisplayName,
    Pointer<VARIANT> pvarGPMProgress,
    Pointer<VARIANT> pvarGPMCancel,
    Pointer<Pointer<COMObject>> ppIGPMResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarNewDisplayName,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarNewDisplayName,
            Pointer<VARIANT> pvarGPMProgress,
            Pointer<VARIANT> pvarGPMCancel,
            Pointer<Pointer<COMObject>> ppIGPMResult,
          )>()(
        ptr.ref.lpVtbl,
        pvarNewDisplayName,
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
          .elementAt(24)
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
          .elementAt(25)
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

  int GetSecurityInfo(
    Pointer<Pointer<COMObject>> ppSecurityInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
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
          .elementAt(27)
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
}
