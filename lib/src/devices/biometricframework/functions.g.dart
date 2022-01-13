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
import '../../devices/biometricframework/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/biometricframework/callbacks.g.dart'; // -----------------------------------------------------------------------

// winbio.dll
// -----------------------------------------------------------------------
final _winbio = DynamicLibrary.open('winbio.dll');

int WinBioAcquireFocus() => _WinBioAcquireFocus();

late final _WinBioAcquireFocus = _winbio
    .lookupFunction<Int32 Function(), int Function()>('WinBioAcquireFocus');

int WinBioAsyncEnumBiometricUnits(
  int FrameworkHandle,
  int Factor,
) =>
    _WinBioAsyncEnumBiometricUnits(
      FrameworkHandle,
      Factor,
    );

late final _WinBioAsyncEnumBiometricUnits = _winbio.lookupFunction<
    Int32 Function(
  Uint32 FrameworkHandle,
  Uint32 Factor,
),
    int Function(
  int FrameworkHandle,
  int Factor,
)>('WinBioAsyncEnumBiometricUnits');

int WinBioAsyncEnumDatabases(
  int FrameworkHandle,
  int Factor,
) =>
    _WinBioAsyncEnumDatabases(
      FrameworkHandle,
      Factor,
    );

late final _WinBioAsyncEnumDatabases = _winbio.lookupFunction<
    Int32 Function(
  Uint32 FrameworkHandle,
  Uint32 Factor,
),
    int Function(
  int FrameworkHandle,
  int Factor,
)>('WinBioAsyncEnumDatabases');

int WinBioAsyncEnumServiceProviders(
  int FrameworkHandle,
  int Factor,
) =>
    _WinBioAsyncEnumServiceProviders(
      FrameworkHandle,
      Factor,
    );

late final _WinBioAsyncEnumServiceProviders = _winbio.lookupFunction<
    Int32 Function(
  Uint32 FrameworkHandle,
  Uint32 Factor,
),
    int Function(
  int FrameworkHandle,
  int Factor,
)>('WinBioAsyncEnumServiceProviders');

int WinBioAsyncMonitorFrameworkChanges(
  int FrameworkHandle,
  int ChangeTypes,
) =>
    _WinBioAsyncMonitorFrameworkChanges(
      FrameworkHandle,
      ChangeTypes,
    );

late final _WinBioAsyncMonitorFrameworkChanges = _winbio.lookupFunction<
    Int32 Function(
  Uint32 FrameworkHandle,
  Uint32 ChangeTypes,
),
    int Function(
  int FrameworkHandle,
  int ChangeTypes,
)>('WinBioAsyncMonitorFrameworkChanges');

int WinBioAsyncOpenFramework(
  int NotificationMethod,
  int TargetWindow,
  int MessageCode,
  Pointer<NativeFunction<PWINBIO_ASYNC_COMPLETION_CALLBACK>> CallbackRoutine,
  Pointer UserData,
  int AsynchronousOpen,
  Pointer<Uint32> FrameworkHandle,
) =>
    _WinBioAsyncOpenFramework(
      NotificationMethod,
      TargetWindow,
      MessageCode,
      CallbackRoutine,
      UserData,
      AsynchronousOpen,
      FrameworkHandle,
    );

late final _WinBioAsyncOpenFramework = _winbio.lookupFunction<
    Int32 Function(
  Int32 NotificationMethod,
  IntPtr TargetWindow,
  Uint32 MessageCode,
  Pointer<NativeFunction<PWINBIO_ASYNC_COMPLETION_CALLBACK>> CallbackRoutine,
  Pointer UserData,
  Int32 AsynchronousOpen,
  Pointer<Uint32> FrameworkHandle,
),
    int Function(
  int NotificationMethod,
  int TargetWindow,
  int MessageCode,
  Pointer<NativeFunction<PWINBIO_ASYNC_COMPLETION_CALLBACK>> CallbackRoutine,
  Pointer UserData,
  int AsynchronousOpen,
  Pointer<Uint32> FrameworkHandle,
)>('WinBioAsyncOpenFramework');

int WinBioAsyncOpenSession(
  int Factor,
  int PoolType,
  int Flags,
  Pointer<Uint32> UnitArray,
  int UnitCount,
  Pointer<GUID> DatabaseId,
  int NotificationMethod,
  int TargetWindow,
  int MessageCode,
  Pointer<NativeFunction<PWINBIO_ASYNC_COMPLETION_CALLBACK>> CallbackRoutine,
  Pointer UserData,
  int AsynchronousOpen,
  Pointer<Uint32> SessionHandle,
) =>
    _WinBioAsyncOpenSession(
      Factor,
      PoolType,
      Flags,
      UnitArray,
      UnitCount,
      DatabaseId,
      NotificationMethod,
      TargetWindow,
      MessageCode,
      CallbackRoutine,
      UserData,
      AsynchronousOpen,
      SessionHandle,
    );

late final _WinBioAsyncOpenSession = _winbio.lookupFunction<
    Int32 Function(
  Uint32 Factor,
  Uint32 PoolType,
  Uint32 Flags,
  Pointer<Uint32> UnitArray,
  IntPtr UnitCount,
  Pointer<GUID> DatabaseId,
  Int32 NotificationMethod,
  IntPtr TargetWindow,
  Uint32 MessageCode,
  Pointer<NativeFunction<PWINBIO_ASYNC_COMPLETION_CALLBACK>> CallbackRoutine,
  Pointer UserData,
  Int32 AsynchronousOpen,
  Pointer<Uint32> SessionHandle,
),
    int Function(
  int Factor,
  int PoolType,
  int Flags,
  Pointer<Uint32> UnitArray,
  int UnitCount,
  Pointer<GUID> DatabaseId,
  int NotificationMethod,
  int TargetWindow,
  int MessageCode,
  Pointer<NativeFunction<PWINBIO_ASYNC_COMPLETION_CALLBACK>> CallbackRoutine,
  Pointer UserData,
  int AsynchronousOpen,
  Pointer<Uint32> SessionHandle,
)>('WinBioAsyncOpenSession');

int WinBioCancel(
  int SessionHandle,
) =>
    _WinBioCancel(
      SessionHandle,
    );

late final _WinBioCancel = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
),
    int Function(
  int SessionHandle,
)>('WinBioCancel');

int WinBioCaptureSample(
  int SessionHandle,
  int Purpose,
  int Flags,
  Pointer<Uint32> UnitId,
  Pointer<Pointer<WINBIO_BIR>> Sample,
  Pointer<IntPtr> SampleSize,
  Pointer<Uint32> RejectDetail,
) =>
    _WinBioCaptureSample(
      SessionHandle,
      Purpose,
      Flags,
      UnitId,
      Sample,
      SampleSize,
      RejectDetail,
    );

late final _WinBioCaptureSample = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint8 Purpose,
  Uint8 Flags,
  Pointer<Uint32> UnitId,
  Pointer<Pointer<WINBIO_BIR>> Sample,
  Pointer<IntPtr> SampleSize,
  Pointer<Uint32> RejectDetail,
),
    int Function(
  int SessionHandle,
  int Purpose,
  int Flags,
  Pointer<Uint32> UnitId,
  Pointer<Pointer<WINBIO_BIR>> Sample,
  Pointer<IntPtr> SampleSize,
  Pointer<Uint32> RejectDetail,
)>('WinBioCaptureSample');

int WinBioCaptureSampleWithCallback(
  int SessionHandle,
  int Purpose,
  int Flags,
  Pointer<NativeFunction<PWINBIO_CAPTURE_CALLBACK>> CaptureCallback,
  Pointer CaptureCallbackContext,
) =>
    _WinBioCaptureSampleWithCallback(
      SessionHandle,
      Purpose,
      Flags,
      CaptureCallback,
      CaptureCallbackContext,
    );

late final _WinBioCaptureSampleWithCallback = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint8 Purpose,
  Uint8 Flags,
  Pointer<NativeFunction<PWINBIO_CAPTURE_CALLBACK>> CaptureCallback,
  Pointer CaptureCallbackContext,
),
    int Function(
  int SessionHandle,
  int Purpose,
  int Flags,
  Pointer<NativeFunction<PWINBIO_CAPTURE_CALLBACK>> CaptureCallback,
  Pointer CaptureCallbackContext,
)>('WinBioCaptureSampleWithCallback');

int WinBioCloseFramework(
  int FrameworkHandle,
) =>
    _WinBioCloseFramework(
      FrameworkHandle,
    );

late final _WinBioCloseFramework = _winbio.lookupFunction<
    Int32 Function(
  Uint32 FrameworkHandle,
),
    int Function(
  int FrameworkHandle,
)>('WinBioCloseFramework');

int WinBioCloseSession(
  int SessionHandle,
) =>
    _WinBioCloseSession(
      SessionHandle,
    );

late final _WinBioCloseSession = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
),
    int Function(
  int SessionHandle,
)>('WinBioCloseSession');

int WinBioControlUnit(
  int SessionHandle,
  int UnitId,
  int Component,
  int ControlCode,
  Pointer<Uint8> SendBuffer,
  int SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  int ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
) =>
    _WinBioControlUnit(
      SessionHandle,
      UnitId,
      Component,
      ControlCode,
      SendBuffer,
      SendBufferSize,
      ReceiveBuffer,
      ReceiveBufferSize,
      ReceiveDataSize,
      OperationStatus,
    );

late final _WinBioControlUnit = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
  Uint32 Component,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
),
    int Function(
  int SessionHandle,
  int UnitId,
  int Component,
  int ControlCode,
  Pointer<Uint8> SendBuffer,
  int SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  int ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
)>('WinBioControlUnit');

int WinBioControlUnitPrivileged(
  int SessionHandle,
  int UnitId,
  int Component,
  int ControlCode,
  Pointer<Uint8> SendBuffer,
  int SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  int ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
) =>
    _WinBioControlUnitPrivileged(
      SessionHandle,
      UnitId,
      Component,
      ControlCode,
      SendBuffer,
      SendBufferSize,
      ReceiveBuffer,
      ReceiveBufferSize,
      ReceiveDataSize,
      OperationStatus,
    );

late final _WinBioControlUnitPrivileged = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
  Uint32 Component,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
),
    int Function(
  int SessionHandle,
  int UnitId,
  int Component,
  int ControlCode,
  Pointer<Uint8> SendBuffer,
  int SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  int ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
)>('WinBioControlUnitPrivileged');

int WinBioDeleteTemplate(
  int SessionHandle,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
) =>
    _WinBioDeleteTemplate(
      SessionHandle,
      UnitId,
      Identity,
      SubFactor,
    );

late final _WinBioDeleteTemplate = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
),
    int Function(
  int SessionHandle,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
)>('WinBioDeleteTemplate');

int WinBioEnrollBegin(
  int SessionHandle,
  int SubFactor,
  int UnitId,
) =>
    _WinBioEnrollBegin(
      SessionHandle,
      SubFactor,
      UnitId,
    );

late final _WinBioEnrollBegin = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint8 SubFactor,
  Uint32 UnitId,
),
    int Function(
  int SessionHandle,
  int SubFactor,
  int UnitId,
)>('WinBioEnrollBegin');

int WinBioEnrollCapture(
  int SessionHandle,
  Pointer<Uint32> RejectDetail,
) =>
    _WinBioEnrollCapture(
      SessionHandle,
      RejectDetail,
    );

late final _WinBioEnrollCapture = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<Uint32> RejectDetail,
),
    int Function(
  int SessionHandle,
  Pointer<Uint32> RejectDetail,
)>('WinBioEnrollCapture');

int WinBioEnrollCaptureWithCallback(
  int SessionHandle,
  Pointer<NativeFunction<PWINBIO_ENROLL_CAPTURE_CALLBACK>> EnrollCallback,
  Pointer EnrollCallbackContext,
) =>
    _WinBioEnrollCaptureWithCallback(
      SessionHandle,
      EnrollCallback,
      EnrollCallbackContext,
    );

late final _WinBioEnrollCaptureWithCallback = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<NativeFunction<PWINBIO_ENROLL_CAPTURE_CALLBACK>> EnrollCallback,
  Pointer EnrollCallbackContext,
),
    int Function(
  int SessionHandle,
  Pointer<NativeFunction<PWINBIO_ENROLL_CAPTURE_CALLBACK>> EnrollCallback,
  Pointer EnrollCallbackContext,
)>('WinBioEnrollCaptureWithCallback');

int WinBioEnrollCommit(
  int SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> IsNewTemplate,
) =>
    _WinBioEnrollCommit(
      SessionHandle,
      Identity,
      IsNewTemplate,
    );

late final _WinBioEnrollCommit = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> IsNewTemplate,
),
    int Function(
  int SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> IsNewTemplate,
)>('WinBioEnrollCommit');

int WinBioEnrollDiscard(
  int SessionHandle,
) =>
    _WinBioEnrollDiscard(
      SessionHandle,
    );

late final _WinBioEnrollDiscard = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
),
    int Function(
  int SessionHandle,
)>('WinBioEnrollDiscard');

int WinBioEnrollSelect(
  int SessionHandle,
  int SelectorValue,
) =>
    _WinBioEnrollSelect(
      SessionHandle,
      SelectorValue,
    );

late final _WinBioEnrollSelect = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint64 SelectorValue,
),
    int Function(
  int SessionHandle,
  int SelectorValue,
)>('WinBioEnrollSelect');

int WinBioEnumBiometricUnits(
  int Factor,
  Pointer<Pointer<WINBIO_UNIT_SCHEMA>> UnitSchemaArray,
  Pointer<IntPtr> UnitCount,
) =>
    _WinBioEnumBiometricUnits(
      Factor,
      UnitSchemaArray,
      UnitCount,
    );

late final _WinBioEnumBiometricUnits = _winbio.lookupFunction<
    Int32 Function(
  Uint32 Factor,
  Pointer<Pointer<WINBIO_UNIT_SCHEMA>> UnitSchemaArray,
  Pointer<IntPtr> UnitCount,
),
    int Function(
  int Factor,
  Pointer<Pointer<WINBIO_UNIT_SCHEMA>> UnitSchemaArray,
  Pointer<IntPtr> UnitCount,
)>('WinBioEnumBiometricUnits');

int WinBioEnumDatabases(
  int Factor,
  Pointer<Pointer<WINBIO_STORAGE_SCHEMA>> StorageSchemaArray,
  Pointer<IntPtr> StorageCount,
) =>
    _WinBioEnumDatabases(
      Factor,
      StorageSchemaArray,
      StorageCount,
    );

late final _WinBioEnumDatabases = _winbio.lookupFunction<
    Int32 Function(
  Uint32 Factor,
  Pointer<Pointer<WINBIO_STORAGE_SCHEMA>> StorageSchemaArray,
  Pointer<IntPtr> StorageCount,
),
    int Function(
  int Factor,
  Pointer<Pointer<WINBIO_STORAGE_SCHEMA>> StorageSchemaArray,
  Pointer<IntPtr> StorageCount,
)>('WinBioEnumDatabases');

int WinBioEnumEnrollments(
  int SessionHandle,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Pointer<Uint8>> SubFactorArray,
  Pointer<IntPtr> SubFactorCount,
) =>
    _WinBioEnumEnrollments(
      SessionHandle,
      UnitId,
      Identity,
      SubFactorArray,
      SubFactorCount,
    );

late final _WinBioEnumEnrollments = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Pointer<Uint8>> SubFactorArray,
  Pointer<IntPtr> SubFactorCount,
),
    int Function(
  int SessionHandle,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Pointer<Uint8>> SubFactorArray,
  Pointer<IntPtr> SubFactorCount,
)>('WinBioEnumEnrollments');

int WinBioEnumServiceProviders(
  int Factor,
  Pointer<Pointer<WINBIO_BSP_SCHEMA>> BspSchemaArray,
  Pointer<IntPtr> BspCount,
) =>
    _WinBioEnumServiceProviders(
      Factor,
      BspSchemaArray,
      BspCount,
    );

late final _WinBioEnumServiceProviders = _winbio.lookupFunction<
    Int32 Function(
  Uint32 Factor,
  Pointer<Pointer<WINBIO_BSP_SCHEMA>> BspSchemaArray,
  Pointer<IntPtr> BspCount,
),
    int Function(
  int Factor,
  Pointer<Pointer<WINBIO_BSP_SCHEMA>> BspSchemaArray,
  Pointer<IntPtr> BspCount,
)>('WinBioEnumServiceProviders');

int WinBioFree(
  Pointer Address,
) =>
    _WinBioFree(
      Address,
    );

late final _WinBioFree = _winbio.lookupFunction<
    Int32 Function(
  Pointer Address,
),
    int Function(
  Pointer Address,
)>('WinBioFree');

int WinBioGetCredentialState(
  WINBIO_IDENTITY Identity,
  int Type,
  Pointer<Int32> CredentialState,
) =>
    _WinBioGetCredentialState(
      Identity,
      Type,
      CredentialState,
    );

late final _WinBioGetCredentialState = _winbio.lookupFunction<
    Int32 Function(
  WINBIO_IDENTITY Identity,
  Int32 Type,
  Pointer<Int32> CredentialState,
),
    int Function(
  WINBIO_IDENTITY Identity,
  int Type,
  Pointer<Int32> CredentialState,
)>('WinBioGetCredentialState');

void WinBioGetDomainLogonSetting(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
) =>
    _WinBioGetDomainLogonSetting(
      Value,
      Source,
    );

late final _WinBioGetDomainLogonSetting = _winbio.lookupFunction<
    Void Function(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
),
    void Function(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
)>('WinBioGetDomainLogonSetting');

void WinBioGetEnabledSetting(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
) =>
    _WinBioGetEnabledSetting(
      Value,
      Source,
    );

late final _WinBioGetEnabledSetting = _winbio.lookupFunction<
    Void Function(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
),
    void Function(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
)>('WinBioGetEnabledSetting');

int WinBioGetEnrolledFactors(
  Pointer<WINBIO_IDENTITY> AccountOwner,
  Pointer<Uint32> EnrolledFactors,
) =>
    _WinBioGetEnrolledFactors(
      AccountOwner,
      EnrolledFactors,
    );

late final _WinBioGetEnrolledFactors = _winbio.lookupFunction<
    Int32 Function(
  Pointer<WINBIO_IDENTITY> AccountOwner,
  Pointer<Uint32> EnrolledFactors,
),
    int Function(
  Pointer<WINBIO_IDENTITY> AccountOwner,
  Pointer<Uint32> EnrolledFactors,
)>('WinBioGetEnrolledFactors');

void WinBioGetLogonSetting(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
) =>
    _WinBioGetLogonSetting(
      Value,
      Source,
    );

late final _WinBioGetLogonSetting = _winbio.lookupFunction<
    Void Function(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
),
    void Function(
  Pointer<Uint8> Value,
  Pointer<Uint32> Source,
)>('WinBioGetLogonSetting');

int WinBioGetProperty(
  int SessionHandle,
  int PropertyType,
  int PropertyId,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer<Pointer> PropertyBuffer,
  Pointer<IntPtr> PropertyBufferSize,
) =>
    _WinBioGetProperty(
      SessionHandle,
      PropertyType,
      PropertyId,
      UnitId,
      Identity,
      SubFactor,
      PropertyBuffer,
      PropertyBufferSize,
    );

late final _WinBioGetProperty = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 PropertyType,
  Uint32 PropertyId,
  Uint32 UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer<Pointer> PropertyBuffer,
  Pointer<IntPtr> PropertyBufferSize,
),
    int Function(
  int SessionHandle,
  int PropertyType,
  int PropertyId,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer<Pointer> PropertyBuffer,
  Pointer<IntPtr> PropertyBufferSize,
)>('WinBioGetProperty');

int WinBioIdentify(
  int SessionHandle,
  Pointer<Uint32> UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> SubFactor,
  Pointer<Uint32> RejectDetail,
) =>
    _WinBioIdentify(
      SessionHandle,
      UnitId,
      Identity,
      SubFactor,
      RejectDetail,
    );

late final _WinBioIdentify = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<Uint32> UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> SubFactor,
  Pointer<Uint32> RejectDetail,
),
    int Function(
  int SessionHandle,
  Pointer<Uint32> UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> SubFactor,
  Pointer<Uint32> RejectDetail,
)>('WinBioIdentify');

int WinBioIdentifyWithCallback(
  int SessionHandle,
  Pointer<NativeFunction<PWINBIO_IDENTIFY_CALLBACK>> IdentifyCallback,
  Pointer IdentifyCallbackContext,
) =>
    _WinBioIdentifyWithCallback(
      SessionHandle,
      IdentifyCallback,
      IdentifyCallbackContext,
    );

late final _WinBioIdentifyWithCallback = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<NativeFunction<PWINBIO_IDENTIFY_CALLBACK>> IdentifyCallback,
  Pointer IdentifyCallbackContext,
),
    int Function(
  int SessionHandle,
  Pointer<NativeFunction<PWINBIO_IDENTIFY_CALLBACK>> IdentifyCallback,
  Pointer IdentifyCallbackContext,
)>('WinBioIdentifyWithCallback');

int WinBioImproveBegin(
  int SessionHandle,
  int UnitId,
) =>
    _WinBioImproveBegin(
      SessionHandle,
      UnitId,
    );

late final _WinBioImproveBegin = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
),
    int Function(
  int SessionHandle,
  int UnitId,
)>('WinBioImproveBegin');

int WinBioImproveEnd(
  int SessionHandle,
) =>
    _WinBioImproveEnd(
      SessionHandle,
    );

late final _WinBioImproveEnd = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
),
    int Function(
  int SessionHandle,
)>('WinBioImproveEnd');

int WinBioLocateSensor(
  int SessionHandle,
  Pointer<Uint32> UnitId,
) =>
    _WinBioLocateSensor(
      SessionHandle,
      UnitId,
    );

late final _WinBioLocateSensor = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<Uint32> UnitId,
),
    int Function(
  int SessionHandle,
  Pointer<Uint32> UnitId,
)>('WinBioLocateSensor');

int WinBioLocateSensorWithCallback(
  int SessionHandle,
  Pointer<NativeFunction<PWINBIO_LOCATE_SENSOR_CALLBACK>> LocateCallback,
  Pointer LocateCallbackContext,
) =>
    _WinBioLocateSensorWithCallback(
      SessionHandle,
      LocateCallback,
      LocateCallbackContext,
    );

late final _WinBioLocateSensorWithCallback = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<NativeFunction<PWINBIO_LOCATE_SENSOR_CALLBACK>> LocateCallback,
  Pointer LocateCallbackContext,
),
    int Function(
  int SessionHandle,
  Pointer<NativeFunction<PWINBIO_LOCATE_SENSOR_CALLBACK>> LocateCallback,
  Pointer LocateCallbackContext,
)>('WinBioLocateSensorWithCallback');

int WinBioLockUnit(
  int SessionHandle,
  int UnitId,
) =>
    _WinBioLockUnit(
      SessionHandle,
      UnitId,
    );

late final _WinBioLockUnit = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
),
    int Function(
  int SessionHandle,
  int UnitId,
)>('WinBioLockUnit');

int WinBioLogonIdentifiedUser(
  int SessionHandle,
) =>
    _WinBioLogonIdentifiedUser(
      SessionHandle,
    );

late final _WinBioLogonIdentifiedUser = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
),
    int Function(
  int SessionHandle,
)>('WinBioLogonIdentifiedUser');

int WinBioMonitorPresence(
  int SessionHandle,
  int UnitId,
) =>
    _WinBioMonitorPresence(
      SessionHandle,
      UnitId,
    );

late final _WinBioMonitorPresence = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
),
    int Function(
  int SessionHandle,
  int UnitId,
)>('WinBioMonitorPresence');

int WinBioOpenSession(
  int Factor,
  int PoolType,
  int Flags,
  Pointer<Uint32> UnitArray,
  int UnitCount,
  Pointer<GUID> DatabaseId,
  Pointer<Uint32> SessionHandle,
) =>
    _WinBioOpenSession(
      Factor,
      PoolType,
      Flags,
      UnitArray,
      UnitCount,
      DatabaseId,
      SessionHandle,
    );

late final _WinBioOpenSession = _winbio.lookupFunction<
    Int32 Function(
  Uint32 Factor,
  Uint32 PoolType,
  Uint32 Flags,
  Pointer<Uint32> UnitArray,
  IntPtr UnitCount,
  Pointer<GUID> DatabaseId,
  Pointer<Uint32> SessionHandle,
),
    int Function(
  int Factor,
  int PoolType,
  int Flags,
  Pointer<Uint32> UnitArray,
  int UnitCount,
  Pointer<GUID> DatabaseId,
  Pointer<Uint32> SessionHandle,
)>('WinBioOpenSession');

int WinBioRegisterEventMonitor(
  int SessionHandle,
  int EventMask,
  Pointer<NativeFunction<PWINBIO_EVENT_CALLBACK>> EventCallback,
  Pointer EventCallbackContext,
) =>
    _WinBioRegisterEventMonitor(
      SessionHandle,
      EventMask,
      EventCallback,
      EventCallbackContext,
    );

late final _WinBioRegisterEventMonitor = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 EventMask,
  Pointer<NativeFunction<PWINBIO_EVENT_CALLBACK>> EventCallback,
  Pointer EventCallbackContext,
),
    int Function(
  int SessionHandle,
  int EventMask,
  Pointer<NativeFunction<PWINBIO_EVENT_CALLBACK>> EventCallback,
  Pointer EventCallbackContext,
)>('WinBioRegisterEventMonitor');

int WinBioReleaseFocus() => _WinBioReleaseFocus();

late final _WinBioReleaseFocus = _winbio
    .lookupFunction<Int32 Function(), int Function()>('WinBioReleaseFocus');

int WinBioRemoveAllCredentials() => _WinBioRemoveAllCredentials();

late final _WinBioRemoveAllCredentials =
    _winbio.lookupFunction<Int32 Function(), int Function()>(
        'WinBioRemoveAllCredentials');

int WinBioRemoveAllDomainCredentials() => _WinBioRemoveAllDomainCredentials();

late final _WinBioRemoveAllDomainCredentials =
    _winbio.lookupFunction<Int32 Function(), int Function()>(
        'WinBioRemoveAllDomainCredentials');

int WinBioRemoveCredential(
  WINBIO_IDENTITY Identity,
  int Type,
) =>
    _WinBioRemoveCredential(
      Identity,
      Type,
    );

late final _WinBioRemoveCredential = _winbio.lookupFunction<
    Int32 Function(
  WINBIO_IDENTITY Identity,
  Int32 Type,
),
    int Function(
  WINBIO_IDENTITY Identity,
  int Type,
)>('WinBioRemoveCredential');

int WinBioSetCredential(
  int Type,
  Pointer<Uint8> Credential,
  int CredentialSize,
  int Format,
) =>
    _WinBioSetCredential(
      Type,
      Credential,
      CredentialSize,
      Format,
    );

late final _WinBioSetCredential = _winbio.lookupFunction<
    Int32 Function(
  Int32 Type,
  Pointer<Uint8> Credential,
  IntPtr CredentialSize,
  Int32 Format,
),
    int Function(
  int Type,
  Pointer<Uint8> Credential,
  int CredentialSize,
  int Format,
)>('WinBioSetCredential');

int WinBioSetProperty(
  int SessionHandle,
  int PropertyType,
  int PropertyId,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer PropertyBuffer,
  int PropertyBufferSize,
) =>
    _WinBioSetProperty(
      SessionHandle,
      PropertyType,
      PropertyId,
      UnitId,
      Identity,
      SubFactor,
      PropertyBuffer,
      PropertyBufferSize,
    );

late final _WinBioSetProperty = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 PropertyType,
  Uint32 PropertyId,
  Uint32 UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer PropertyBuffer,
  IntPtr PropertyBufferSize,
),
    int Function(
  int SessionHandle,
  int PropertyType,
  int PropertyId,
  int UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer PropertyBuffer,
  int PropertyBufferSize,
)>('WinBioSetProperty');

int WinBioUnlockUnit(
  int SessionHandle,
  int UnitId,
) =>
    _WinBioUnlockUnit(
      SessionHandle,
      UnitId,
    );

late final _WinBioUnlockUnit = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Uint32 UnitId,
),
    int Function(
  int SessionHandle,
  int UnitId,
)>('WinBioUnlockUnit');

int WinBioUnregisterEventMonitor(
  int SessionHandle,
) =>
    _WinBioUnregisterEventMonitor(
      SessionHandle,
    );

late final _WinBioUnregisterEventMonitor = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
),
    int Function(
  int SessionHandle,
)>('WinBioUnregisterEventMonitor');

int WinBioVerify(
  int SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer<Uint32> UnitId,
  Pointer<Uint8> Match,
  Pointer<Uint32> RejectDetail,
) =>
    _WinBioVerify(
      SessionHandle,
      Identity,
      SubFactor,
      UnitId,
      Match,
      RejectDetail,
    );

late final _WinBioVerify = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer<Uint32> UnitId,
  Pointer<Uint8> Match,
  Pointer<Uint32> RejectDetail,
),
    int Function(
  int SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer<Uint32> UnitId,
  Pointer<Uint8> Match,
  Pointer<Uint32> RejectDetail,
)>('WinBioVerify');

int WinBioVerifyWithCallback(
  int SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer<NativeFunction<PWINBIO_VERIFY_CALLBACK>> VerifyCallback,
  Pointer VerifyCallbackContext,
) =>
    _WinBioVerifyWithCallback(
      SessionHandle,
      Identity,
      SubFactor,
      VerifyCallback,
      VerifyCallbackContext,
    );

late final _WinBioVerifyWithCallback = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer<NativeFunction<PWINBIO_VERIFY_CALLBACK>> VerifyCallback,
  Pointer VerifyCallbackContext,
),
    int Function(
  int SessionHandle,
  Pointer<WINBIO_IDENTITY> Identity,
  int SubFactor,
  Pointer<NativeFunction<PWINBIO_VERIFY_CALLBACK>> VerifyCallback,
  Pointer VerifyCallbackContext,
)>('WinBioVerifyWithCallback');

int WinBioWait(
  int SessionHandle,
) =>
    _WinBioWait(
      SessionHandle,
    );

late final _WinBioWait = _winbio.lookupFunction<
    Int32 Function(
  Uint32 SessionHandle,
),
    int Function(
  int SessionHandle,
)>('WinBioWait');
