// IFsrmClassificationManager.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';
import '../../storage/fileserverresourcemanager/IFsrmPropertyDefinition.dart';
import '../../storage/fileserverresourcemanager/IFsrmRule.dart';
import '../../storage/fileserverresourcemanager/IFsrmPipelineModuleDefinition.dart';
import '../../storage/fileserverresourcemanager/IFsrmProperty.dart';

/// @nodoc
const IID_IFsrmClassificationManager = '{D2DC89DA-EE91-48A0-85D8-CC72A56F7D04}';

/// {@category Interface}
/// {@category com}
class IFsrmClassificationManager extends IDispatch {
  // vtable begins at 7, is 27 entries long.
  IFsrmClassificationManager(Pointer<COMObject> ptr) : super(ptr);

  Pointer<SAFEARRAY> get ClassificationReportFormats {
    final retValuePtr = calloc<Pointer<SAFEARRAY>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> formats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> formats,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ClassificationReportFormats(Pointer<SAFEARRAY> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<SAFEARRAY> formats,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<SAFEARRAY> formats,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get Logging {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> logging,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> logging,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Logging(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 logging,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int logging,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get ClassificationReportMailTo {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> mailTo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> mailTo,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ClassificationReportMailTo(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> mailTo,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> mailTo,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ClassificationReportEnabled {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> reportEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> reportEnabled,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ClassificationReportEnabled(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(14)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 reportEnabled,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int reportEnabled,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get ClassificationLastReportPathWithoutExtension {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lastReportPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lastReportPath,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get ClassificationLastError {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> lastError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> lastError,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get ClassificationRunningStatus {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> runningStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> runningStatus,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumPropertyDefinitions(
    int options,
    Pointer<Pointer<COMObject>> propertyDefinitions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 options,
            Pointer<Pointer<COMObject>> propertyDefinitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int options,
            Pointer<Pointer<COMObject>> propertyDefinitions,
          )>()(
        ptr.ref.lpVtbl,
        options,
        propertyDefinitions,
      );

  int CreatePropertyDefinition(
    Pointer<Pointer<COMObject>> propertyDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> propertyDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> propertyDefinition,
          )>()(
        ptr.ref.lpVtbl,
        propertyDefinition,
      );

  int GetPropertyDefinition(
    Pointer<Utf16> propertyName,
    Pointer<Pointer<COMObject>> propertyDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> propertyName,
            Pointer<Pointer<COMObject>> propertyDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> propertyName,
            Pointer<Pointer<COMObject>> propertyDefinition,
          )>()(
        ptr.ref.lpVtbl,
        propertyName,
        propertyDefinition,
      );

  int EnumRules(
    int ruleType,
    int options,
    Pointer<Pointer<COMObject>> Rules,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ruleType,
            Int32 options,
            Pointer<Pointer<COMObject>> Rules,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ruleType,
            int options,
            Pointer<Pointer<COMObject>> Rules,
          )>()(
        ptr.ref.lpVtbl,
        ruleType,
        options,
        Rules,
      );

  int CreateRule(
    int ruleType,
    Pointer<Pointer<COMObject>> Rule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ruleType,
            Pointer<Pointer<COMObject>> Rule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ruleType,
            Pointer<Pointer<COMObject>> Rule,
          )>()(
        ptr.ref.lpVtbl,
        ruleType,
        Rule,
      );

  int GetRule(
    Pointer<Utf16> ruleName,
    int ruleType,
    Pointer<Pointer<COMObject>> Rule,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ruleName,
            Int32 ruleType,
            Pointer<Pointer<COMObject>> Rule,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ruleName,
            int ruleType,
            Pointer<Pointer<COMObject>> Rule,
          )>()(
        ptr.ref.lpVtbl,
        ruleName,
        ruleType,
        Rule,
      );

  int EnumModuleDefinitions(
    int moduleType,
    int options,
    Pointer<Pointer<COMObject>> moduleDefinitions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 moduleType,
            Int32 options,
            Pointer<Pointer<COMObject>> moduleDefinitions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int moduleType,
            int options,
            Pointer<Pointer<COMObject>> moduleDefinitions,
          )>()(
        ptr.ref.lpVtbl,
        moduleType,
        options,
        moduleDefinitions,
      );

  int CreateModuleDefinition(
    int moduleType,
    Pointer<Pointer<COMObject>> moduleDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 moduleType,
            Pointer<Pointer<COMObject>> moduleDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int moduleType,
            Pointer<Pointer<COMObject>> moduleDefinition,
          )>()(
        ptr.ref.lpVtbl,
        moduleType,
        moduleDefinition,
      );

  int GetModuleDefinition(
    Pointer<Utf16> moduleName,
    int moduleType,
    Pointer<Pointer<COMObject>> moduleDefinition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> moduleName,
            Int32 moduleType,
            Pointer<Pointer<COMObject>> moduleDefinition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> moduleName,
            int moduleType,
            Pointer<Pointer<COMObject>> moduleDefinition,
          )>()(
        ptr.ref.lpVtbl,
        moduleName,
        moduleType,
        moduleDefinition,
      );

  int RunClassification(
    int context,
    Pointer<Utf16> reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 context,
            Pointer<Utf16> reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int context,
            Pointer<Utf16> reserved,
          )>()(
        ptr.ref.lpVtbl,
        context,
        reserved,
      );

  int WaitForClassificationCompletion(
    int waitSeconds,
    Pointer<Int16> completed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 waitSeconds,
            Pointer<Int16> completed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int waitSeconds,
            Pointer<Int16> completed,
          )>()(
        ptr.ref.lpVtbl,
        waitSeconds,
        completed,
      );

  int CancelClassification() => ptr.ref.lpVtbl.value
          .elementAt(29)
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

  int EnumFileProperties(
    Pointer<Utf16> filePath,
    int options,
    Pointer<Pointer<COMObject>> fileProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Int32 options,
            Pointer<Pointer<COMObject>> fileProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            int options,
            Pointer<Pointer<COMObject>> fileProperties,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        options,
        fileProperties,
      );

  int GetFileProperty(
    Pointer<Utf16> filePath,
    Pointer<Utf16> propertyName,
    int options,
    Pointer<Pointer<COMObject>> property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<Utf16> propertyName,
            Int32 options,
            Pointer<Pointer<COMObject>> property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<Utf16> propertyName,
            int options,
            Pointer<Pointer<COMObject>> property,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        propertyName,
        options,
        property,
      );

  int SetFileProperty(
    Pointer<Utf16> filePath,
    Pointer<Utf16> propertyName,
    Pointer<Utf16> propertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<Utf16> propertyName,
            Pointer<Utf16> propertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<Utf16> propertyName,
            Pointer<Utf16> propertyValue,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        propertyName,
        propertyValue,
      );

  int ClearFileProperty(
    Pointer<Utf16> filePath,
    Pointer<Utf16> property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<Utf16> property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filePath,
            Pointer<Utf16> property,
          )>()(
        ptr.ref.lpVtbl,
        filePath,
        property,
      );
}

/// @nodoc
const CLSID_FsrmClassificationManager =
    '{B15C0E47-C391-45B9-95C8-EB596C853F3A}';

/// {@category com}
class FsrmClassificationManager extends IFsrmClassificationManager {
  FsrmClassificationManager(Pointer<COMObject> ptr) : super(ptr);

  factory FsrmClassificationManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_FsrmClassificationManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IFsrmClassificationManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return FsrmClassificationManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
