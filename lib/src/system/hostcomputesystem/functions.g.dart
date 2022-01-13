// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../system/hostcomputesystem/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/hostcomputesystem/callbacks.g.dart'; // -----------------------------------------------------------------------

// computecore.dll
// -----------------------------------------------------------------------
final _computecore = DynamicLibrary.open('computecore.dll');

int HcsCancelOperation(
  int operation,
) =>
    _HcsCancelOperation(
      operation,
    );

late final _HcsCancelOperation = _computecore.lookupFunction<
    Int32 Function(
  IntPtr operation,
),
    int Function(
  int operation,
)>('HcsCancelOperation');

void HcsCloseComputeSystem(
  int computeSystem,
) =>
    _HcsCloseComputeSystem(
      computeSystem,
    );

late final _HcsCloseComputeSystem = _computecore.lookupFunction<
    Void Function(
  IntPtr computeSystem,
),
    void Function(
  int computeSystem,
)>('HcsCloseComputeSystem');

void HcsCloseOperation(
  int operation,
) =>
    _HcsCloseOperation(
      operation,
    );

late final _HcsCloseOperation = _computecore.lookupFunction<
    Void Function(
  IntPtr operation,
),
    void Function(
  int operation,
)>('HcsCloseOperation');

void HcsCloseProcess(
  int process,
) =>
    _HcsCloseProcess(
      process,
    );

late final _HcsCloseProcess = _computecore.lookupFunction<
    Void Function(
  IntPtr process,
),
    void Function(
  int process,
)>('HcsCloseProcess');

int HcsCrashComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsCrashComputeSystem(
      computeSystem,
      operation,
      options,
    );

late final _HcsCrashComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
)>('HcsCrashComputeSystem');

int HcsCreateComputeSystem(
  Pointer<Utf16> id,
  Pointer<Utf16> configuration,
  int operation,
  Pointer<SECURITY_DESCRIPTOR> securityDescriptor,
  Pointer<IntPtr> computeSystem,
) =>
    _HcsCreateComputeSystem(
      id,
      configuration,
      operation,
      securityDescriptor,
      computeSystem,
    );

late final _HcsCreateComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> id,
  Pointer<Utf16> configuration,
  IntPtr operation,
  Pointer<SECURITY_DESCRIPTOR> securityDescriptor,
  Pointer<IntPtr> computeSystem,
),
    int Function(
  Pointer<Utf16> id,
  Pointer<Utf16> configuration,
  int operation,
  Pointer<SECURITY_DESCRIPTOR> securityDescriptor,
  Pointer<IntPtr> computeSystem,
)>('HcsCreateComputeSystem');

int HcsCreateComputeSystemInNamespace(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> id,
  Pointer<Utf16> configuration,
  int operation,
  Pointer<Int32> options,
  Pointer<IntPtr> computeSystem,
) =>
    _HcsCreateComputeSystemInNamespace(
      idNamespace,
      id,
      configuration,
      operation,
      options,
      computeSystem,
    );

late final _HcsCreateComputeSystemInNamespace = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> id,
  Pointer<Utf16> configuration,
  IntPtr operation,
  Pointer<Int32> options,
  Pointer<IntPtr> computeSystem,
),
    int Function(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> id,
  Pointer<Utf16> configuration,
  int operation,
  Pointer<Int32> options,
  Pointer<IntPtr> computeSystem,
)>('HcsCreateComputeSystemInNamespace');

int HcsCreateEmptyGuestStateFile(
  Pointer<Utf16> guestStateFilePath,
) =>
    _HcsCreateEmptyGuestStateFile(
      guestStateFilePath,
    );

late final _HcsCreateEmptyGuestStateFile = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> guestStateFilePath,
),
    int Function(
  Pointer<Utf16> guestStateFilePath,
)>('HcsCreateEmptyGuestStateFile');

int HcsCreateEmptyRuntimeStateFile(
  Pointer<Utf16> runtimeStateFilePath,
) =>
    _HcsCreateEmptyRuntimeStateFile(
      runtimeStateFilePath,
    );

late final _HcsCreateEmptyRuntimeStateFile = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> runtimeStateFilePath,
),
    int Function(
  Pointer<Utf16> runtimeStateFilePath,
)>('HcsCreateEmptyRuntimeStateFile');

int HcsCreateOperation(
  Pointer context,
  Pointer<NativeFunction<HCS_OPERATION_COMPLETION>> callback,
) =>
    _HcsCreateOperation(
      context,
      callback,
    );

late final _HcsCreateOperation = _computecore.lookupFunction<
    IntPtr Function(
  Pointer context,
  Pointer<NativeFunction<HCS_OPERATION_COMPLETION>> callback,
),
    int Function(
  Pointer context,
  Pointer<NativeFunction<HCS_OPERATION_COMPLETION>> callback,
)>('HcsCreateOperation');

int HcsCreateProcess(
  int computeSystem,
  Pointer<Utf16> processParameters,
  int operation,
  Pointer<SECURITY_DESCRIPTOR> securityDescriptor,
  Pointer<IntPtr> process,
) =>
    _HcsCreateProcess(
      computeSystem,
      processParameters,
      operation,
      securityDescriptor,
      process,
    );

late final _HcsCreateProcess = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  Pointer<Utf16> processParameters,
  IntPtr operation,
  Pointer<SECURITY_DESCRIPTOR> securityDescriptor,
  Pointer<IntPtr> process,
),
    int Function(
  int computeSystem,
  Pointer<Utf16> processParameters,
  int operation,
  Pointer<SECURITY_DESCRIPTOR> securityDescriptor,
  Pointer<IntPtr> process,
)>('HcsCreateProcess');

int HcsEnumerateComputeSystems(
  Pointer<Utf16> query,
  int operation,
) =>
    _HcsEnumerateComputeSystems(
      query,
      operation,
    );

late final _HcsEnumerateComputeSystems = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> query,
  IntPtr operation,
),
    int Function(
  Pointer<Utf16> query,
  int operation,
)>('HcsEnumerateComputeSystems');

int HcsEnumerateComputeSystemsInNamespace(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> query,
  int operation,
) =>
    _HcsEnumerateComputeSystemsInNamespace(
      idNamespace,
      query,
      operation,
    );

late final _HcsEnumerateComputeSystemsInNamespace = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> query,
  IntPtr operation,
),
    int Function(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> query,
  int operation,
)>('HcsEnumerateComputeSystemsInNamespace');

int HcsGetComputeSystemFromOperation(
  int operation,
) =>
    _HcsGetComputeSystemFromOperation(
      operation,
    );

late final _HcsGetComputeSystemFromOperation = _computecore.lookupFunction<
    IntPtr Function(
  IntPtr operation,
),
    int Function(
  int operation,
)>('HcsGetComputeSystemFromOperation');

int HcsGetComputeSystemProperties(
  int computeSystem,
  int operation,
  Pointer<Utf16> propertyQuery,
) =>
    _HcsGetComputeSystemProperties(
      computeSystem,
      operation,
      propertyQuery,
    );

late final _HcsGetComputeSystemProperties = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> propertyQuery,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> propertyQuery,
)>('HcsGetComputeSystemProperties');

Pointer HcsGetOperationContext(
  int operation,
) =>
    _HcsGetOperationContext(
      operation,
    );

late final _HcsGetOperationContext = _computecore.lookupFunction<
    Pointer Function(
  IntPtr operation,
),
    Pointer Function(
  int operation,
)>('HcsGetOperationContext');

int HcsGetOperationId(
  int operation,
) =>
    _HcsGetOperationId(
      operation,
    );

late final _HcsGetOperationId = _computecore.lookupFunction<
    Uint64 Function(
  IntPtr operation,
),
    int Function(
  int operation,
)>('HcsGetOperationId');

int HcsGetOperationResult(
  int operation,
  Pointer<Pointer<Utf16>> resultDocument,
) =>
    _HcsGetOperationResult(
      operation,
      resultDocument,
    );

late final _HcsGetOperationResult = _computecore.lookupFunction<
    Int32 Function(
  IntPtr operation,
  Pointer<Pointer<Utf16>> resultDocument,
),
    int Function(
  int operation,
  Pointer<Pointer<Utf16>> resultDocument,
)>('HcsGetOperationResult');

int HcsGetOperationResultAndProcessInfo(
  int operation,
  Pointer<HCS_PROCESS_INFORMATION> processInformation,
  Pointer<Pointer<Utf16>> resultDocument,
) =>
    _HcsGetOperationResultAndProcessInfo(
      operation,
      processInformation,
      resultDocument,
    );

late final _HcsGetOperationResultAndProcessInfo = _computecore.lookupFunction<
    Int32 Function(
  IntPtr operation,
  Pointer<HCS_PROCESS_INFORMATION> processInformation,
  Pointer<Pointer<Utf16>> resultDocument,
),
    int Function(
  int operation,
  Pointer<HCS_PROCESS_INFORMATION> processInformation,
  Pointer<Pointer<Utf16>> resultDocument,
)>('HcsGetOperationResultAndProcessInfo');

int HcsGetOperationType(
  int operation,
) =>
    _HcsGetOperationType(
      operation,
    );

late final _HcsGetOperationType = _computecore.lookupFunction<
    Int32 Function(
  IntPtr operation,
),
    int Function(
  int operation,
)>('HcsGetOperationType');

int HcsGetProcessFromOperation(
  int operation,
) =>
    _HcsGetProcessFromOperation(
      operation,
    );

late final _HcsGetProcessFromOperation = _computecore.lookupFunction<
    IntPtr Function(
  IntPtr operation,
),
    int Function(
  int operation,
)>('HcsGetProcessFromOperation');

int HcsGetProcessInfo(
  int process,
  int operation,
) =>
    _HcsGetProcessInfo(
      process,
      operation,
    );

late final _HcsGetProcessInfo = _computecore.lookupFunction<
    Int32 Function(
  IntPtr process,
  IntPtr operation,
),
    int Function(
  int process,
  int operation,
)>('HcsGetProcessInfo');

int HcsGetProcessProperties(
  int process,
  int operation,
  Pointer<Utf16> propertyQuery,
) =>
    _HcsGetProcessProperties(
      process,
      operation,
      propertyQuery,
    );

late final _HcsGetProcessProperties = _computecore.lookupFunction<
    Int32 Function(
  IntPtr process,
  IntPtr operation,
  Pointer<Utf16> propertyQuery,
),
    int Function(
  int process,
  int operation,
  Pointer<Utf16> propertyQuery,
)>('HcsGetProcessProperties');

int HcsGetProcessorCompatibilityFromSavedState(
  Pointer<Utf16> RuntimeFileName,
  Pointer<Pointer<Utf16>> ProcessorFeaturesString,
) =>
    _HcsGetProcessorCompatibilityFromSavedState(
      RuntimeFileName,
      ProcessorFeaturesString,
    );

late final _HcsGetProcessorCompatibilityFromSavedState =
    _computecore.lookupFunction<
        Int32 Function(
  Pointer<Utf16> RuntimeFileName,
  Pointer<Pointer<Utf16>> ProcessorFeaturesString,
),
        int Function(
  Pointer<Utf16> RuntimeFileName,
  Pointer<Pointer<Utf16>> ProcessorFeaturesString,
)>('HcsGetProcessorCompatibilityFromSavedState');

int HcsGetServiceProperties(
  Pointer<Utf16> propertyQuery,
  Pointer<Pointer<Utf16>> result,
) =>
    _HcsGetServiceProperties(
      propertyQuery,
      result,
    );

late final _HcsGetServiceProperties = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> propertyQuery,
  Pointer<Pointer<Utf16>> result,
),
    int Function(
  Pointer<Utf16> propertyQuery,
  Pointer<Pointer<Utf16>> result,
)>('HcsGetServiceProperties');

int HcsGrantVmAccess(
  Pointer<Utf16> vmId,
  Pointer<Utf16> filePath,
) =>
    _HcsGrantVmAccess(
      vmId,
      filePath,
    );

late final _HcsGrantVmAccess = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> vmId,
  Pointer<Utf16> filePath,
),
    int Function(
  Pointer<Utf16> vmId,
  Pointer<Utf16> filePath,
)>('HcsGrantVmAccess');

int HcsGrantVmGroupAccess(
  Pointer<Utf16> filePath,
) =>
    _HcsGrantVmGroupAccess(
      filePath,
    );

late final _HcsGrantVmGroupAccess = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> filePath,
),
    int Function(
  Pointer<Utf16> filePath,
)>('HcsGrantVmGroupAccess');

int HcsModifyComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> configuration,
  int identity,
) =>
    _HcsModifyComputeSystem(
      computeSystem,
      operation,
      configuration,
      identity,
    );

late final _HcsModifyComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> configuration,
  IntPtr identity,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> configuration,
  int identity,
)>('HcsModifyComputeSystem');

int HcsModifyProcess(
  int process,
  int operation,
  Pointer<Utf16> settings,
) =>
    _HcsModifyProcess(
      process,
      operation,
      settings,
    );

late final _HcsModifyProcess = _computecore.lookupFunction<
    Int32 Function(
  IntPtr process,
  IntPtr operation,
  Pointer<Utf16> settings,
),
    int Function(
  int process,
  int operation,
  Pointer<Utf16> settings,
)>('HcsModifyProcess');

int HcsModifyServiceSettings(
  Pointer<Utf16> settings,
  Pointer<Pointer<Utf16>> result,
) =>
    _HcsModifyServiceSettings(
      settings,
      result,
    );

late final _HcsModifyServiceSettings = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> settings,
  Pointer<Pointer<Utf16>> result,
),
    int Function(
  Pointer<Utf16> settings,
  Pointer<Pointer<Utf16>> result,
)>('HcsModifyServiceSettings');

int HcsOpenComputeSystem(
  Pointer<Utf16> id,
  int requestedAccess,
  Pointer<IntPtr> computeSystem,
) =>
    _HcsOpenComputeSystem(
      id,
      requestedAccess,
      computeSystem,
    );

late final _HcsOpenComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> id,
  Uint32 requestedAccess,
  Pointer<IntPtr> computeSystem,
),
    int Function(
  Pointer<Utf16> id,
  int requestedAccess,
  Pointer<IntPtr> computeSystem,
)>('HcsOpenComputeSystem');

int HcsOpenComputeSystemInNamespace(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> id,
  int requestedAccess,
  Pointer<IntPtr> computeSystem,
) =>
    _HcsOpenComputeSystemInNamespace(
      idNamespace,
      id,
      requestedAccess,
      computeSystem,
    );

late final _HcsOpenComputeSystemInNamespace = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> id,
  Uint32 requestedAccess,
  Pointer<IntPtr> computeSystem,
),
    int Function(
  Pointer<Utf16> idNamespace,
  Pointer<Utf16> id,
  int requestedAccess,
  Pointer<IntPtr> computeSystem,
)>('HcsOpenComputeSystemInNamespace');

int HcsOpenProcess(
  int computeSystem,
  int processId,
  int requestedAccess,
  Pointer<IntPtr> process,
) =>
    _HcsOpenProcess(
      computeSystem,
      processId,
      requestedAccess,
      process,
    );

late final _HcsOpenProcess = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  Uint32 processId,
  Uint32 requestedAccess,
  Pointer<IntPtr> process,
),
    int Function(
  int computeSystem,
  int processId,
  int requestedAccess,
  Pointer<IntPtr> process,
)>('HcsOpenProcess');

int HcsPauseComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsPauseComputeSystem(
      computeSystem,
      operation,
      options,
    );

late final _HcsPauseComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
)>('HcsPauseComputeSystem');

int HcsResumeComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsResumeComputeSystem(
      computeSystem,
      operation,
      options,
    );

late final _HcsResumeComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
)>('HcsResumeComputeSystem');

int HcsRevokeVmAccess(
  Pointer<Utf16> vmId,
  Pointer<Utf16> filePath,
) =>
    _HcsRevokeVmAccess(
      vmId,
      filePath,
    );

late final _HcsRevokeVmAccess = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> vmId,
  Pointer<Utf16> filePath,
),
    int Function(
  Pointer<Utf16> vmId,
  Pointer<Utf16> filePath,
)>('HcsRevokeVmAccess');

int HcsRevokeVmGroupAccess(
  Pointer<Utf16> filePath,
) =>
    _HcsRevokeVmGroupAccess(
      filePath,
    );

late final _HcsRevokeVmGroupAccess = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> filePath,
),
    int Function(
  Pointer<Utf16> filePath,
)>('HcsRevokeVmGroupAccess');

int HcsSaveComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsSaveComputeSystem(
      computeSystem,
      operation,
      options,
    );

late final _HcsSaveComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
)>('HcsSaveComputeSystem');

int HcsSetComputeSystemCallback(
  int computeSystem,
  int callbackOptions,
  Pointer context,
  Pointer<NativeFunction<HCS_EVENT_CALLBACK>> callback,
) =>
    _HcsSetComputeSystemCallback(
      computeSystem,
      callbackOptions,
      context,
      callback,
    );

late final _HcsSetComputeSystemCallback = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  Uint32 callbackOptions,
  Pointer context,
  Pointer<NativeFunction<HCS_EVENT_CALLBACK>> callback,
),
    int Function(
  int computeSystem,
  int callbackOptions,
  Pointer context,
  Pointer<NativeFunction<HCS_EVENT_CALLBACK>> callback,
)>('HcsSetComputeSystemCallback');

int HcsSetOperationCallback(
  int operation,
  Pointer context,
  Pointer<NativeFunction<HCS_OPERATION_COMPLETION>> callback,
) =>
    _HcsSetOperationCallback(
      operation,
      context,
      callback,
    );

late final _HcsSetOperationCallback = _computecore.lookupFunction<
    Int32 Function(
  IntPtr operation,
  Pointer context,
  Pointer<NativeFunction<HCS_OPERATION_COMPLETION>> callback,
),
    int Function(
  int operation,
  Pointer context,
  Pointer<NativeFunction<HCS_OPERATION_COMPLETION>> callback,
)>('HcsSetOperationCallback');

int HcsSetOperationContext(
  int operation,
  Pointer context,
) =>
    _HcsSetOperationContext(
      operation,
      context,
    );

late final _HcsSetOperationContext = _computecore.lookupFunction<
    Int32 Function(
  IntPtr operation,
  Pointer context,
),
    int Function(
  int operation,
  Pointer context,
)>('HcsSetOperationContext');

int HcsSetProcessCallback(
  int process,
  int callbackOptions,
  Pointer context,
  Pointer<NativeFunction<HCS_EVENT_CALLBACK>> callback,
) =>
    _HcsSetProcessCallback(
      process,
      callbackOptions,
      context,
      callback,
    );

late final _HcsSetProcessCallback = _computecore.lookupFunction<
    Int32 Function(
  IntPtr process,
  Uint32 callbackOptions,
  Pointer context,
  Pointer<NativeFunction<HCS_EVENT_CALLBACK>> callback,
),
    int Function(
  int process,
  int callbackOptions,
  Pointer context,
  Pointer<NativeFunction<HCS_EVENT_CALLBACK>> callback,
)>('HcsSetProcessCallback');

int HcsShutDownComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsShutDownComputeSystem(
      computeSystem,
      operation,
      options,
    );

late final _HcsShutDownComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
)>('HcsShutDownComputeSystem');

int HcsSignalProcess(
  int process,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsSignalProcess(
      process,
      operation,
      options,
    );

late final _HcsSignalProcess = _computecore.lookupFunction<
    Int32 Function(
  IntPtr process,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int process,
  int operation,
  Pointer<Utf16> options,
)>('HcsSignalProcess');

int HcsStartComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsStartComputeSystem(
      computeSystem,
      operation,
      options,
    );

late final _HcsStartComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
)>('HcsStartComputeSystem');

int HcsSubmitWerReport(
  Pointer<Utf16> settings,
) =>
    _HcsSubmitWerReport(
      settings,
    );

late final _HcsSubmitWerReport = _computecore.lookupFunction<
    Int32 Function(
  Pointer<Utf16> settings,
),
    int Function(
  Pointer<Utf16> settings,
)>('HcsSubmitWerReport');

int HcsTerminateComputeSystem(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsTerminateComputeSystem(
      computeSystem,
      operation,
      options,
    );

late final _HcsTerminateComputeSystem = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int computeSystem,
  int operation,
  Pointer<Utf16> options,
)>('HcsTerminateComputeSystem');

int HcsTerminateProcess(
  int process,
  int operation,
  Pointer<Utf16> options,
) =>
    _HcsTerminateProcess(
      process,
      operation,
      options,
    );

late final _HcsTerminateProcess = _computecore.lookupFunction<
    Int32 Function(
  IntPtr process,
  IntPtr operation,
  Pointer<Utf16> options,
),
    int Function(
  int process,
  int operation,
  Pointer<Utf16> options,
)>('HcsTerminateProcess');

int HcsWaitForComputeSystemExit(
  int computeSystem,
  int timeoutMs,
  Pointer<Pointer<Utf16>> result,
) =>
    _HcsWaitForComputeSystemExit(
      computeSystem,
      timeoutMs,
      result,
    );

late final _HcsWaitForComputeSystemExit = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  Uint32 timeoutMs,
  Pointer<Pointer<Utf16>> result,
),
    int Function(
  int computeSystem,
  int timeoutMs,
  Pointer<Pointer<Utf16>> result,
)>('HcsWaitForComputeSystemExit');

int HcsWaitForOperationResult(
  int operation,
  int timeoutMs,
  Pointer<Pointer<Utf16>> resultDocument,
) =>
    _HcsWaitForOperationResult(
      operation,
      timeoutMs,
      resultDocument,
    );

late final _HcsWaitForOperationResult = _computecore.lookupFunction<
    Int32 Function(
  IntPtr operation,
  Uint32 timeoutMs,
  Pointer<Pointer<Utf16>> resultDocument,
),
    int Function(
  int operation,
  int timeoutMs,
  Pointer<Pointer<Utf16>> resultDocument,
)>('HcsWaitForOperationResult');

int HcsWaitForOperationResultAndProcessInfo(
  int operation,
  int timeoutMs,
  Pointer<HCS_PROCESS_INFORMATION> processInformation,
  Pointer<Pointer<Utf16>> resultDocument,
) =>
    _HcsWaitForOperationResultAndProcessInfo(
      operation,
      timeoutMs,
      processInformation,
      resultDocument,
    );

late final _HcsWaitForOperationResultAndProcessInfo =
    _computecore.lookupFunction<
        Int32 Function(
  IntPtr operation,
  Uint32 timeoutMs,
  Pointer<HCS_PROCESS_INFORMATION> processInformation,
  Pointer<Pointer<Utf16>> resultDocument,
),
        int Function(
  int operation,
  int timeoutMs,
  Pointer<HCS_PROCESS_INFORMATION> processInformation,
  Pointer<Pointer<Utf16>> resultDocument,
)>('HcsWaitForOperationResultAndProcessInfo');

int HcsWaitForProcessExit(
  int computeSystem,
  int timeoutMs,
  Pointer<Pointer<Utf16>> result,
) =>
    _HcsWaitForProcessExit(
      computeSystem,
      timeoutMs,
      result,
    );

late final _HcsWaitForProcessExit = _computecore.lookupFunction<
    Int32 Function(
  IntPtr computeSystem,
  Uint32 timeoutMs,
  Pointer<Pointer<Utf16>> result,
),
    int Function(
  int computeSystem,
  int timeoutMs,
  Pointer<Pointer<Utf16>> result,
)>('HcsWaitForProcessExit');

// -----------------------------------------------------------------------
// computestorage.dll
// -----------------------------------------------------------------------
final _computestorage = DynamicLibrary.open('computestorage.dll');

int HcsAttachLayerStorageFilter(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> layerData,
) =>
    _HcsAttachLayerStorageFilter(
      layerPath,
      layerData,
    );

late final _HcsAttachLayerStorageFilter = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> layerData,
),
    int Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> layerData,
)>('HcsAttachLayerStorageFilter');

int HcsDestroyLayer(
  Pointer<Utf16> layerPath,
) =>
    _HcsDestroyLayer(
      layerPath,
    );

late final _HcsDestroyLayer = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> layerPath,
),
    int Function(
  Pointer<Utf16> layerPath,
)>('HcsDestroyLayer');

int HcsDetachLayerStorageFilter(
  Pointer<Utf16> layerPath,
) =>
    _HcsDetachLayerStorageFilter(
      layerPath,
    );

late final _HcsDetachLayerStorageFilter = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> layerPath,
),
    int Function(
  Pointer<Utf16> layerPath,
)>('HcsDetachLayerStorageFilter');

int HcsExportLayer(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> exportFolderPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
) =>
    _HcsExportLayer(
      layerPath,
      exportFolderPath,
      layerData,
      options,
    );

late final _HcsExportLayer = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> exportFolderPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
),
    int Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> exportFolderPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
)>('HcsExportLayer');

int HcsExportLegacyWritableLayer(
  Pointer<Utf16> writableLayerMountPath,
  Pointer<Utf16> writableLayerFolderPath,
  Pointer<Utf16> exportFolderPath,
  Pointer<Utf16> layerData,
) =>
    _HcsExportLegacyWritableLayer(
      writableLayerMountPath,
      writableLayerFolderPath,
      exportFolderPath,
      layerData,
    );

late final _HcsExportLegacyWritableLayer = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> writableLayerMountPath,
  Pointer<Utf16> writableLayerFolderPath,
  Pointer<Utf16> exportFolderPath,
  Pointer<Utf16> layerData,
),
    int Function(
  Pointer<Utf16> writableLayerMountPath,
  Pointer<Utf16> writableLayerFolderPath,
  Pointer<Utf16> exportFolderPath,
  Pointer<Utf16> layerData,
)>('HcsExportLegacyWritableLayer');

int HcsFormatWritableLayerVhd(
  int vhdHandle,
) =>
    _HcsFormatWritableLayerVhd(
      vhdHandle,
    );

late final _HcsFormatWritableLayerVhd = _computestorage.lookupFunction<
    Int32 Function(
  IntPtr vhdHandle,
),
    int Function(
  int vhdHandle,
)>('HcsFormatWritableLayerVhd');

int HcsGetLayerVhdMountPath(
  int vhdHandle,
  Pointer<Pointer<Utf16>> mountPath,
) =>
    _HcsGetLayerVhdMountPath(
      vhdHandle,
      mountPath,
    );

late final _HcsGetLayerVhdMountPath = _computestorage.lookupFunction<
    Int32 Function(
  IntPtr vhdHandle,
  Pointer<Pointer<Utf16>> mountPath,
),
    int Function(
  int vhdHandle,
  Pointer<Pointer<Utf16>> mountPath,
)>('HcsGetLayerVhdMountPath');

int HcsImportLayer(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> sourceFolderPath,
  Pointer<Utf16> layerData,
) =>
    _HcsImportLayer(
      layerPath,
      sourceFolderPath,
      layerData,
    );

late final _HcsImportLayer = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> sourceFolderPath,
  Pointer<Utf16> layerData,
),
    int Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> sourceFolderPath,
  Pointer<Utf16> layerData,
)>('HcsImportLayer');

int HcsInitializeLegacyWritableLayer(
  Pointer<Utf16> writableLayerMountPath,
  Pointer<Utf16> writableLayerFolderPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
) =>
    _HcsInitializeLegacyWritableLayer(
      writableLayerMountPath,
      writableLayerFolderPath,
      layerData,
      options,
    );

late final _HcsInitializeLegacyWritableLayer = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> writableLayerMountPath,
  Pointer<Utf16> writableLayerFolderPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
),
    int Function(
  Pointer<Utf16> writableLayerMountPath,
  Pointer<Utf16> writableLayerFolderPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
)>('HcsInitializeLegacyWritableLayer');

int HcsInitializeWritableLayer(
  Pointer<Utf16> writableLayerPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
) =>
    _HcsInitializeWritableLayer(
      writableLayerPath,
      layerData,
      options,
    );

late final _HcsInitializeWritableLayer = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> writableLayerPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
),
    int Function(
  Pointer<Utf16> writableLayerPath,
  Pointer<Utf16> layerData,
  Pointer<Utf16> options,
)>('HcsInitializeWritableLayer');

int HcsSetupBaseOSLayer(
  Pointer<Utf16> layerPath,
  int vhdHandle,
  Pointer<Utf16> options,
) =>
    _HcsSetupBaseOSLayer(
      layerPath,
      vhdHandle,
      options,
    );

late final _HcsSetupBaseOSLayer = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> layerPath,
  IntPtr vhdHandle,
  Pointer<Utf16> options,
),
    int Function(
  Pointer<Utf16> layerPath,
  int vhdHandle,
  Pointer<Utf16> options,
)>('HcsSetupBaseOSLayer');

int HcsSetupBaseOSVolume(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> volumePath,
  Pointer<Utf16> options,
) =>
    _HcsSetupBaseOSVolume(
      layerPath,
      volumePath,
      options,
    );

late final _HcsSetupBaseOSVolume = _computestorage.lookupFunction<
    Int32 Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> volumePath,
  Pointer<Utf16> options,
),
    int Function(
  Pointer<Utf16> layerPath,
  Pointer<Utf16> volumePath,
  Pointer<Utf16> options,
)>('HcsSetupBaseOSVolume');
