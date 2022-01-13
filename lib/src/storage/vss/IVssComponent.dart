// IVssComponent.dart

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
import '../../storage/vss/structs.g.dart';
import '../../storage/vss/IVssWMFiledesc.dart';

/// @nodoc
const IID_IVssComponent = '{D2C72C96-C121-4518-B627-E5A93D010EAD}';

/// {@category Interface}
/// {@category com}
class IVssComponent extends IUnknown {
  // vtable begins at 3, is 38 entries long.
  IVssComponent(Pointer<COMObject> ptr) : super(ptr);

  int GetLogicalPath(
    Pointer<Pointer<Utf16>> pbstrPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPath,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPath,
      );

  int GetComponentType(
    Pointer<Int32> pct,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pct,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pct,
          )>()(
        ptr.ref.lpVtbl,
        pct,
      );

  int GetComponentName(
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrName,
      );

  int GetBackupSucceeded(
    Pointer<Bool> pbSucceeded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> pbSucceeded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> pbSucceeded,
          )>()(
        ptr.ref.lpVtbl,
        pbSucceeded,
      );

  int GetAlternateLocationMappingCount(
    Pointer<Uint32> pcMappings,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcMappings,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcMappings,
          )>()(
        ptr.ref.lpVtbl,
        pcMappings,
      );

  int GetAlternateLocationMapping(
    int iMapping,
    Pointer<Pointer<COMObject>> ppFiledesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iMapping,
            Pointer<Pointer<COMObject>> ppFiledesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iMapping,
            Pointer<Pointer<COMObject>> ppFiledesc,
          )>()(
        ptr.ref.lpVtbl,
        iMapping,
        ppFiledesc,
      );

  int SetBackupMetadata(
    Pointer<Utf16> wszData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszData,
          )>()(
        ptr.ref.lpVtbl,
        wszData,
      );

  int GetBackupMetadata(
    Pointer<Pointer<Utf16>> pbstrData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrData,
          )>()(
        ptr.ref.lpVtbl,
        pbstrData,
      );

  int AddPartialFile(
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilename,
    Pointer<Utf16> wszRanges,
    Pointer<Utf16> wszMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilename,
            Pointer<Utf16> wszRanges,
            Pointer<Utf16> wszMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilename,
            Pointer<Utf16> wszRanges,
            Pointer<Utf16> wszMetadata,
          )>()(
        ptr.ref.lpVtbl,
        wszPath,
        wszFilename,
        wszRanges,
        wszMetadata,
      );

  int GetPartialFileCount(
    Pointer<Uint32> pcPartialFiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcPartialFiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcPartialFiles,
          )>()(
        ptr.ref.lpVtbl,
        pcPartialFiles,
      );

  int GetPartialFile(
    int iPartialFile,
    Pointer<Pointer<Utf16>> pbstrPath,
    Pointer<Pointer<Utf16>> pbstrFilename,
    Pointer<Pointer<Utf16>> pbstrRange,
    Pointer<Pointer<Utf16>> pbstrMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iPartialFile,
            Pointer<Pointer<Utf16>> pbstrPath,
            Pointer<Pointer<Utf16>> pbstrFilename,
            Pointer<Pointer<Utf16>> pbstrRange,
            Pointer<Pointer<Utf16>> pbstrMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iPartialFile,
            Pointer<Pointer<Utf16>> pbstrPath,
            Pointer<Pointer<Utf16>> pbstrFilename,
            Pointer<Pointer<Utf16>> pbstrRange,
            Pointer<Pointer<Utf16>> pbstrMetadata,
          )>()(
        ptr.ref.lpVtbl,
        iPartialFile,
        pbstrPath,
        pbstrFilename,
        pbstrRange,
        pbstrMetadata,
      );

  int IsSelectedForRestore(
    Pointer<Bool> pbSelectedForRestore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> pbSelectedForRestore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> pbSelectedForRestore,
          )>()(
        ptr.ref.lpVtbl,
        pbSelectedForRestore,
      );

  int GetAdditionalRestores(
    Pointer<Bool> pbAdditionalRestores,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> pbAdditionalRestores,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> pbAdditionalRestores,
          )>()(
        ptr.ref.lpVtbl,
        pbAdditionalRestores,
      );

  int GetNewTargetCount(
    Pointer<Uint32> pcNewTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcNewTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcNewTarget,
          )>()(
        ptr.ref.lpVtbl,
        pcNewTarget,
      );

  int GetNewTarget(
    int iNewTarget,
    Pointer<Pointer<COMObject>> ppFiledesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iNewTarget,
            Pointer<Pointer<COMObject>> ppFiledesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iNewTarget,
            Pointer<Pointer<COMObject>> ppFiledesc,
          )>()(
        ptr.ref.lpVtbl,
        iNewTarget,
        ppFiledesc,
      );

  int AddDirectedTarget(
    Pointer<Utf16> wszSourcePath,
    Pointer<Utf16> wszSourceFilename,
    Pointer<Utf16> wszSourceRangeList,
    Pointer<Utf16> wszDestinationPath,
    Pointer<Utf16> wszDestinationFilename,
    Pointer<Utf16> wszDestinationRangeList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszSourcePath,
            Pointer<Utf16> wszSourceFilename,
            Pointer<Utf16> wszSourceRangeList,
            Pointer<Utf16> wszDestinationPath,
            Pointer<Utf16> wszDestinationFilename,
            Pointer<Utf16> wszDestinationRangeList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszSourcePath,
            Pointer<Utf16> wszSourceFilename,
            Pointer<Utf16> wszSourceRangeList,
            Pointer<Utf16> wszDestinationPath,
            Pointer<Utf16> wszDestinationFilename,
            Pointer<Utf16> wszDestinationRangeList,
          )>()(
        ptr.ref.lpVtbl,
        wszSourcePath,
        wszSourceFilename,
        wszSourceRangeList,
        wszDestinationPath,
        wszDestinationFilename,
        wszDestinationRangeList,
      );

  int GetDirectedTargetCount(
    Pointer<Uint32> pcDirectedTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcDirectedTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcDirectedTarget,
          )>()(
        ptr.ref.lpVtbl,
        pcDirectedTarget,
      );

  int GetDirectedTarget(
    int iDirectedTarget,
    Pointer<Pointer<Utf16>> pbstrSourcePath,
    Pointer<Pointer<Utf16>> pbstrSourceFileName,
    Pointer<Pointer<Utf16>> pbstrSourceRangeList,
    Pointer<Pointer<Utf16>> pbstrDestinationPath,
    Pointer<Pointer<Utf16>> pbstrDestinationFilename,
    Pointer<Pointer<Utf16>> pbstrDestinationRangeList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iDirectedTarget,
            Pointer<Pointer<Utf16>> pbstrSourcePath,
            Pointer<Pointer<Utf16>> pbstrSourceFileName,
            Pointer<Pointer<Utf16>> pbstrSourceRangeList,
            Pointer<Pointer<Utf16>> pbstrDestinationPath,
            Pointer<Pointer<Utf16>> pbstrDestinationFilename,
            Pointer<Pointer<Utf16>> pbstrDestinationRangeList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iDirectedTarget,
            Pointer<Pointer<Utf16>> pbstrSourcePath,
            Pointer<Pointer<Utf16>> pbstrSourceFileName,
            Pointer<Pointer<Utf16>> pbstrSourceRangeList,
            Pointer<Pointer<Utf16>> pbstrDestinationPath,
            Pointer<Pointer<Utf16>> pbstrDestinationFilename,
            Pointer<Pointer<Utf16>> pbstrDestinationRangeList,
          )>()(
        ptr.ref.lpVtbl,
        iDirectedTarget,
        pbstrSourcePath,
        pbstrSourceFileName,
        pbstrSourceRangeList,
        pbstrDestinationPath,
        pbstrDestinationFilename,
        pbstrDestinationRangeList,
      );

  int SetRestoreMetadata(
    Pointer<Utf16> wszRestoreMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszRestoreMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszRestoreMetadata,
          )>()(
        ptr.ref.lpVtbl,
        wszRestoreMetadata,
      );

  int GetRestoreMetadata(
    Pointer<Pointer<Utf16>> pbstrRestoreMetadata,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrRestoreMetadata,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrRestoreMetadata,
          )>()(
        ptr.ref.lpVtbl,
        pbstrRestoreMetadata,
      );

  int SetRestoreTarget(
    int target,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 target,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int target,
          )>()(
        ptr.ref.lpVtbl,
        target,
      );

  int GetRestoreTarget(
    Pointer<Int32> pTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pTarget,
          )>()(
        ptr.ref.lpVtbl,
        pTarget,
      );

  int SetPreRestoreFailureMsg(
    Pointer<Utf16> wszPreRestoreFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPreRestoreFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPreRestoreFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        wszPreRestoreFailureMsg,
      );

  int GetPreRestoreFailureMsg(
    Pointer<Pointer<Utf16>> pbstrPreRestoreFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPreRestoreFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPreRestoreFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPreRestoreFailureMsg,
      );

  int SetPostRestoreFailureMsg(
    Pointer<Utf16> wszPostRestoreFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPostRestoreFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPostRestoreFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        wszPostRestoreFailureMsg,
      );

  int GetPostRestoreFailureMsg(
    Pointer<Pointer<Utf16>> pbstrPostRestoreFailureMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPostRestoreFailureMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrPostRestoreFailureMsg,
          )>()(
        ptr.ref.lpVtbl,
        pbstrPostRestoreFailureMsg,
      );

  int SetBackupStamp(
    Pointer<Utf16> wszBackupStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszBackupStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszBackupStamp,
          )>()(
        ptr.ref.lpVtbl,
        wszBackupStamp,
      );

  int GetBackupStamp(
    Pointer<Pointer<Utf16>> pbstrBackupStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupStamp,
          )>()(
        ptr.ref.lpVtbl,
        pbstrBackupStamp,
      );

  int GetPreviousBackupStamp(
    Pointer<Pointer<Utf16>> pbstrBackupStamp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupStamp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupStamp,
          )>()(
        ptr.ref.lpVtbl,
        pbstrBackupStamp,
      );

  int GetBackupOptions(
    Pointer<Pointer<Utf16>> pbstrBackupOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrBackupOptions,
          )>()(
        ptr.ref.lpVtbl,
        pbstrBackupOptions,
      );

  int GetRestoreOptions(
    Pointer<Pointer<Utf16>> pbstrRestoreOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrRestoreOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrRestoreOptions,
          )>()(
        ptr.ref.lpVtbl,
        pbstrRestoreOptions,
      );

  int GetRestoreSubcomponentCount(
    Pointer<Uint32> pcRestoreSubcomponent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcRestoreSubcomponent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcRestoreSubcomponent,
          )>()(
        ptr.ref.lpVtbl,
        pcRestoreSubcomponent,
      );

  int GetRestoreSubcomponent(
    int iComponent,
    Pointer<Pointer<Utf16>> pbstrLogicalPath,
    Pointer<Pointer<Utf16>> pbstrComponentName,
    Pointer<Bool> pbRepair,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iComponent,
            Pointer<Pointer<Utf16>> pbstrLogicalPath,
            Pointer<Pointer<Utf16>> pbstrComponentName,
            Pointer<Bool> pbRepair,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iComponent,
            Pointer<Pointer<Utf16>> pbstrLogicalPath,
            Pointer<Pointer<Utf16>> pbstrComponentName,
            Pointer<Bool> pbRepair,
          )>()(
        ptr.ref.lpVtbl,
        iComponent,
        pbstrLogicalPath,
        pbstrComponentName,
        pbRepair,
      );

  int GetFileRestoreStatus(
    Pointer<Int32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pStatus,
      );

  int AddDifferencedFilesByLastModifyTime(
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilespec,
    int bRecursive,
    FILETIME ftLastModifyTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            Int32 bRecursive,
            FILETIME ftLastModifyTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            int bRecursive,
            FILETIME ftLastModifyTime,
          )>()(
        ptr.ref.lpVtbl,
        wszPath,
        wszFilespec,
        bRecursive,
        ftLastModifyTime,
      );

  int AddDifferencedFilesByLastModifyLSN(
    Pointer<Utf16> wszPath,
    Pointer<Utf16> wszFilespec,
    int bRecursive,
    Pointer<Utf16> bstrLsnString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            Int32 bRecursive,
            Pointer<Utf16> bstrLsnString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszPath,
            Pointer<Utf16> wszFilespec,
            int bRecursive,
            Pointer<Utf16> bstrLsnString,
          )>()(
        ptr.ref.lpVtbl,
        wszPath,
        wszFilespec,
        bRecursive,
        bstrLsnString,
      );

  int GetDifferencedFilesCount(
    Pointer<Uint32> pcDifferencedFiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcDifferencedFiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcDifferencedFiles,
          )>()(
        ptr.ref.lpVtbl,
        pcDifferencedFiles,
      );

  int GetDifferencedFile(
    int iDifferencedFile,
    Pointer<Pointer<Utf16>> pbstrPath,
    Pointer<Pointer<Utf16>> pbstrFilespec,
    Pointer<Int32> pbRecursive,
    Pointer<Pointer<Utf16>> pbstrLsnString,
    Pointer<FILETIME> pftLastModifyTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iDifferencedFile,
            Pointer<Pointer<Utf16>> pbstrPath,
            Pointer<Pointer<Utf16>> pbstrFilespec,
            Pointer<Int32> pbRecursive,
            Pointer<Pointer<Utf16>> pbstrLsnString,
            Pointer<FILETIME> pftLastModifyTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iDifferencedFile,
            Pointer<Pointer<Utf16>> pbstrPath,
            Pointer<Pointer<Utf16>> pbstrFilespec,
            Pointer<Int32> pbRecursive,
            Pointer<Pointer<Utf16>> pbstrLsnString,
            Pointer<FILETIME> pftLastModifyTime,
          )>()(
        ptr.ref.lpVtbl,
        iDifferencedFile,
        pbstrPath,
        pbstrFilespec,
        pbRecursive,
        pbstrLsnString,
        pftLastModifyTime,
      );
}
