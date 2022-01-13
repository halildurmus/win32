// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../devices/biometricframework/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

typedef PIBIO_ENGINE_ACCEPT_PRIVATE_SENSOR_TYPE_INFO_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> TypeInfoBufferAddress,
  IntPtr TypeInfoBufferSize,
);
typedef PIBIO_ENGINE_ACCEPT_SAMPLE_DATA_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_BIR> SampleBuffer,
  IntPtr SampleSize,
  Uint8 Purpose,
  Pointer<Uint32> RejectDetail,
);
typedef PIBIO_ENGINE_ACTIVATE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_ATTACH_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_CHECK_FOR_DUPLICATE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> SubFactor,
  Pointer<Uint8> Duplicate,
);
typedef PIBIO_ENGINE_CLEAR_CONTEXT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_COMMIT_ENROLLMENT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer<Uint8> PayloadBlob,
  IntPtr PayloadBlobSize,
);
typedef PIBIO_ENGINE_CONTROL_UNIT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
);
typedef PIBIO_ENGINE_CONTROL_UNIT_PRIVILEGED_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
);
typedef PIBIO_ENGINE_CREATE_ENROLLMENT_AUTHENTICATED_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Pointer<Uint8>> Nonce,
  Pointer<IntPtr> NonceSize,
);
typedef PIBIO_ENGINE_CREATE_ENROLLMENT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_CREATE_KEY_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> Key,
  IntPtr KeySize,
  Pointer<Uint8> KeyIdentifier,
  IntPtr KeyIdentifierSize,
  Pointer<IntPtr> ResultSize,
);
typedef PIBIO_ENGINE_DEACTIVATE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_DETACH_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_DISCARD_ENROLLMENT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_EXPORT_ENGINE_DATA_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint8 Flags,
  Pointer<Pointer<WINBIO_BIR>> SampleBuffer,
  Pointer<IntPtr> SampleSize,
);
typedef PIBIO_ENGINE_GET_ENROLLMENT_HASH_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Pointer<Uint8>> HashValue,
  Pointer<IntPtr> HashSize,
);
typedef PIBIO_ENGINE_GET_ENROLLMENT_STATUS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint32> RejectDetail,
);
typedef PIBIO_ENGINE_IDENTIFY_ALL_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<IntPtr> PresenceCount,
  Pointer<Pointer<WINBIO_PRESENCE>> PresenceArray,
);
typedef PIBIO_ENGINE_IDENTIFY_FEATURE_SET_AUTHENTICATED_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> Nonce,
  IntPtr NonceSize,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> SubFactor,
  Pointer<Uint32> RejectDetail,
  Pointer<Pointer<Uint8>> Authentication,
  Pointer<IntPtr> AuthenticationSize,
);
typedef PIBIO_ENGINE_IDENTIFY_FEATURE_SET_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> SubFactor,
  Pointer<Pointer<Uint8>> PayloadBlob,
  Pointer<IntPtr> PayloadBlobSize,
  Pointer<Pointer<Uint8>> HashValue,
  Pointer<IntPtr> HashSize,
  Pointer<Uint32> RejectDetail,
);
typedef PIBIO_ENGINE_IDENTIFY_FEATURE_SET_SECURE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> Nonce,
  IntPtr NonceSize,
  Pointer<Uint8> KeyIdentifier,
  IntPtr KeyIdentifierSize,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint8> SubFactor,
  Pointer<Uint32> RejectDetail,
  Pointer<Pointer<Uint8>> Authorization,
  Pointer<IntPtr> AuthorizationSize,
);
typedef PIBIO_ENGINE_NOTIFY_POWER_CHANGE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 PowerEventType,
);
typedef PIBIO_ENGINE_PIPELINE_CLEANUP_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_PIPELINE_INIT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_QUERY_CALIBRATION_DATA_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> DiscardAndRepeatCapture,
  Pointer<Uint8> CalibrationBuffer,
  Pointer<IntPtr> CalibrationBufferSize,
  IntPtr MaxBufferSize,
);
typedef PIBIO_ENGINE_QUERY_EXTENDED_ENROLLMENT_STATUS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_EXTENDED_ENROLLMENT_STATUS> EnrollmentStatus,
  IntPtr EnrollmentStatusSize,
);
typedef PIBIO_ENGINE_QUERY_EXTENDED_INFO_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_EXTENDED_ENGINE_INFO> EngineInfo,
  IntPtr EngineInfoSize,
);
typedef PIBIO_ENGINE_QUERY_HASH_ALGORITHMS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<IntPtr> AlgorithmCount,
  Pointer<IntPtr> AlgorithmBufferSize,
  Pointer<Pointer<Uint8>> AlgorithmBuffer,
);
typedef PIBIO_ENGINE_QUERY_INDEX_VECTOR_SIZE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<IntPtr> IndexElementCount,
);
typedef PIBIO_ENGINE_QUERY_PREFERRED_FORMAT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_REGISTERED_FORMAT> StandardFormat,
  Pointer<GUID> VendorFormat,
);
typedef PIBIO_ENGINE_QUERY_SAMPLE_HINT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<IntPtr> SampleHint,
);
typedef PIBIO_ENGINE_REFRESH_CACHE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_ENGINE_RESERVED_1_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
);
typedef PIBIO_ENGINE_SELECT_CALIBRATION_FORMAT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<GUID> FormatArray,
  IntPtr FormatCount,
  Pointer<GUID> SelectedFormat,
  Pointer<IntPtr> MaxBufferSize,
);
typedef PIBIO_ENGINE_SET_ACCOUNT_POLICY_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_ACCOUNT_POLICY> PolicyItemArray,
  IntPtr PolicyItemCount,
);
typedef PIBIO_ENGINE_SET_ENROLLMENT_PARAMETERS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_EXTENDED_ENROLLMENT_PARAMETERS> Parameters,
);
typedef PIBIO_ENGINE_SET_ENROLLMENT_SELECTOR_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint64 SelectorValue,
);
typedef PIBIO_ENGINE_SET_HASH_ALGORITHM_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  IntPtr AlgorithmBufferSize,
  Pointer<Uint8> AlgorithmBuffer,
);
typedef PIBIO_ENGINE_UPDATE_ENROLLMENT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint32> RejectDetail,
);
typedef PIBIO_ENGINE_VERIFY_FEATURE_SET_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer<Uint8> Match,
  Pointer<Pointer<Uint8>> PayloadBlob,
  Pointer<IntPtr> PayloadBlobSize,
  Pointer<Pointer<Uint8>> HashValue,
  Pointer<IntPtr> HashSize,
  Pointer<Uint32> RejectDetail,
);
typedef PIBIO_FRAMEWORK_ALLOCATE_MEMORY_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  IntPtr AllocationSize,
  Pointer<Pointer> Address,
);
typedef PIBIO_FRAMEWORK_FREE_MEMORY_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer Address,
);
typedef PIBIO_FRAMEWORK_GET_PROPERTY_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 PropertyType,
  Uint32 PropertyId,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer<Pointer> PropertyBuffer,
  Pointer<IntPtr> PropertyBufferSize,
);
typedef PIBIO_FRAMEWORK_LOCK_AND_VALIDATE_SECURE_BUFFER_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  GUID SecureBufferIdentifier,
  Pointer<Pointer> SecureBufferAddress,
  Pointer<IntPtr> SecureBufferSize,
);
typedef PIBIO_FRAMEWORK_RELEASE_SECURE_BUFFER_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  GUID SecureBufferIdentifier,
);
typedef PIBIO_FRAMEWORK_SET_UNIT_STATUS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_EXTENDED_UNIT_STATUS> ExtendedStatus,
  IntPtr ExtendedStatusSize,
);
typedef PIBIO_FRAMEWORK_VSM_CACHE_CLEAR_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_FRAMEWORK_VSM_CACHE_EXPORT_BEGIN_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<IntPtr> RequiredCapacity,
  Pointer<IntPtr> MaxBufferSize,
);
typedef PIBIO_FRAMEWORK_VSM_CACHE_EXPORT_END_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_FRAMEWORK_VSM_CACHE_EXPORT_NEXT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> BufferAddress,
  IntPtr BufferSize,
  Pointer<IntPtr> ReturnedDataSize,
);
typedef PIBIO_FRAMEWORK_VSM_CACHE_IMPORT_BEGIN_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  IntPtr RequiredCapacity,
  Pointer<IntPtr> MaxBufferSize,
);
typedef PIBIO_FRAMEWORK_VSM_CACHE_IMPORT_END_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_FRAMEWORK_VSM_CACHE_IMPORT_NEXT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> BufferAddress,
  IntPtr BufferSize,
);
typedef PIBIO_FRAMEWORK_VSM_DECRYPT_SAMPLE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> Authentication,
  IntPtr AuthenticationSize,
  Pointer<Uint8> Iv,
  IntPtr IvSize,
  Pointer<Uint8> EncryptedData,
  IntPtr EncryptedDataSize,
);
typedef PIBIO_FRAMEWORK_VSM_QUERY_AUTHORIZED_ENROLLMENTS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<IntPtr> SecureIdentityCount,
  Pointer<Pointer<WINBIO_IDENTITY>> SecureIdentities,
);
typedef PIBIO_FRAMEWORK_VSM_STORAGE_RESERVED_1_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  IntPtr Reserved1,
  Pointer<IntPtr> Reserved2,
);
typedef PIBIO_FRAMEWORK_VSM_STORAGE_RESERVED_2_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> Reserved1,
  IntPtr Reserved2,
);
typedef PIBIO_FRAMEWORK_VSM_STORAGE_RESERVED_3_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_ACCEPT_CALIBRATION_DATA_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> CalibrationBuffer,
  IntPtr CalibrationBufferSize,
);
typedef PIBIO_SENSOR_ACTIVATE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_ASYNC_IMPORT_RAW_BUFFER_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> RawBufferAddress,
  IntPtr RawBufferSize,
  Pointer<Pointer<Uint8>> ResultBufferAddress,
  Pointer<IntPtr> ResultBufferSize,
);
typedef PIBIO_SENSOR_ASYNC_IMPORT_SECURE_BUFFER_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  GUID SecureBufferIdentifier,
  Pointer<Uint8> MetadataBufferAddress,
  IntPtr MetadataBufferSize,
  Pointer<Pointer<Uint8>> ResultBufferAddress,
  Pointer<IntPtr> ResultBufferSize,
);
typedef PIBIO_SENSOR_ATTACH_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_CANCEL_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_CLEAR_CONTEXT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_CONNECT_SECURE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_SECURE_CONNECTION_PARAMS> ConnectionParams,
  Pointer<Pointer<WINBIO_SECURE_CONNECTION_DATA>> ConnectionData,
);
typedef PIBIO_SENSOR_CONTROL_UNIT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
);
typedef PIBIO_SENSOR_CONTROL_UNIT_PRIVILEGED_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
);
typedef PIBIO_SENSOR_DEACTIVATE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_DETACH_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_EXPORT_SENSOR_DATA_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Pointer<WINBIO_BIR>> SampleBuffer,
  Pointer<IntPtr> SampleSize,
);
typedef PIBIO_SENSOR_FINISH_CAPTURE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint32> RejectDetail,
);
typedef PIBIO_SENSOR_FINISH_NOTIFY_WAKE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint32> Reason,
);
typedef PIBIO_SENSOR_GET_INDICATOR_STATUS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint32> IndicatorStatus,
);
typedef PIBIO_SENSOR_NOTIFY_POWER_CHANGE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 PowerEventType,
);
typedef PIBIO_SENSOR_PIPELINE_CLEANUP_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_PIPELINE_INIT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_PUSH_DATA_TO_ENGINE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint8 Purpose,
  Uint8 Flags,
  Pointer<Uint32> RejectDetail,
);
typedef PIBIO_SENSOR_QUERY_CALIBRATION_FORMATS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<GUID> FormatArray,
  IntPtr FormatArraySize,
  Pointer<IntPtr> FormatCount,
);
typedef PIBIO_SENSOR_QUERY_EXTENDED_INFO_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_EXTENDED_SENSOR_INFO> SensorInfo,
  IntPtr SensorInfoSize,
);
typedef PIBIO_SENSOR_QUERY_PRIVATE_SENSOR_TYPE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint8> TypeInfoBufferAddress,
  IntPtr TypeInfoBufferSize,
  Pointer<IntPtr> TypeInfoDataSize,
);
typedef PIBIO_SENSOR_QUERY_STATUS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Uint32> Status,
);
typedef PIBIO_SENSOR_RESET_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_SENSOR_SET_CALIBRATION_FORMAT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<GUID> Format,
);
typedef PIBIO_SENSOR_SET_INDICATOR_STATUS_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 IndicatorStatus,
);
typedef PIBIO_SENSOR_SET_MODE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 Mode,
);
typedef PIBIO_SENSOR_START_CAPTURE_EX_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint8 Purpose,
  Pointer<Uint8> Nonce,
  IntPtr NonceSize,
  Uint8 Flags,
  Pointer<Pointer<OVERLAPPED>> Overlapped,
);
typedef PIBIO_SENSOR_START_CAPTURE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint8 Purpose,
  Pointer<Pointer<OVERLAPPED>> Overlapped,
);
typedef PIBIO_SENSOR_START_NOTIFY_WAKE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<Pointer<OVERLAPPED>> Overlapped,
);
typedef PIBIO_STORAGE_ACTIVATE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_ADD_RECORD_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_STORAGE_RECORD> RecordContents,
);
typedef PIBIO_STORAGE_ATTACH_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_CLEAR_CONTEXT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_CLOSE_DATABASE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_CONTROL_UNIT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
);
typedef PIBIO_STORAGE_CONTROL_UNIT_PRIVILEGED_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 ControlCode,
  Pointer<Uint8> SendBuffer,
  IntPtr SendBufferSize,
  Pointer<Uint8> ReceiveBuffer,
  IntPtr ReceiveBufferSize,
  Pointer<IntPtr> ReceiveDataSize,
  Pointer<Uint32> OperationStatus,
);
typedef PIBIO_STORAGE_CREATE_DATABASE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<GUID> DatabaseId,
  Uint32 Factor,
  Pointer<GUID> Format,
  Pointer<Utf16> FilePath,
  Pointer<Utf16> ConnectString,
  IntPtr IndexElementCount,
  IntPtr InitialSize,
);
typedef PIBIO_STORAGE_DEACTIVATE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_DELETE_RECORD_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
);
typedef PIBIO_STORAGE_DETACH_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_ERASE_DATABASE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<GUID> DatabaseId,
  Pointer<Utf16> FilePath,
  Pointer<Utf16> ConnectString,
);
typedef PIBIO_STORAGE_FIRST_RECORD_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_GET_CURRENT_RECORD_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_STORAGE_RECORD> RecordContents,
);
typedef PIBIO_STORAGE_GET_DATABASE_SIZE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<IntPtr> AvailableRecordCount,
  Pointer<IntPtr> TotalRecordCount,
);
typedef PIBIO_STORAGE_GET_DATA_FORMAT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<GUID> Format,
  Pointer<WINBIO_VERSION> Version,
);
typedef PIBIO_STORAGE_GET_RECORD_COUNT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<IntPtr> RecordCount,
);
typedef PIBIO_STORAGE_NEXT_RECORD_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_NOTIFY_DATABASE_CHANGE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint8 RecordsAdded,
);
typedef PIBIO_STORAGE_NOTIFY_POWER_CHANGE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint32 PowerEventType,
);
typedef PIBIO_STORAGE_OPEN_DATABASE_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<GUID> DatabaseId,
  Pointer<Utf16> FilePath,
  Pointer<Utf16> ConnectString,
);
typedef PIBIO_STORAGE_PIPELINE_CLEANUP_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_PIPELINE_INIT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
);
typedef PIBIO_STORAGE_QUERY_BY_CONTENT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Uint8 SubFactor,
  Pointer<Uint32> IndexVector,
  IntPtr IndexElementCount,
);
typedef PIBIO_STORAGE_QUERY_BY_SUBJECT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
);
typedef PIBIO_STORAGE_QUERY_EXTENDED_INFO_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_EXTENDED_STORAGE_INFO> StorageInfo,
  IntPtr StorageInfoSize,
);
typedef PIBIO_STORAGE_RESERVED_1_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Pointer<Uint64> Reserved1,
  Pointer<Uint64> Reserved2,
);
typedef PIBIO_STORAGE_RESERVED_2_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
);
typedef PIBIO_STORAGE_UPDATE_RECORD_BEGIN_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Pointer<WINBIO_STORAGE_RECORD> RecordContents,
);
typedef PIBIO_STORAGE_UPDATE_RECORD_COMMIT_FN = Int32 Function(
  Pointer<WINBIO_PIPELINE> Pipeline,
  Pointer<WINBIO_STORAGE_RECORD> RecordContents,
);
typedef PWINBIO_ASYNC_COMPLETION_CALLBACK = Void Function(
  Pointer<WINBIO_ASYNC_RESULT> AsyncResult,
);
typedef PWINBIO_CAPTURE_CALLBACK = Void Function(
  Pointer CaptureCallbackContext,
  Int32 OperationStatus,
  Uint32 UnitId,
  Pointer<WINBIO_BIR> Sample,
  IntPtr SampleSize,
  Uint32 RejectDetail,
);
typedef PWINBIO_ENROLL_CAPTURE_CALLBACK = Void Function(
  Pointer EnrollCallbackContext,
  Int32 OperationStatus,
  Uint32 RejectDetail,
);
typedef PWINBIO_EVENT_CALLBACK = Void Function(
  Pointer EventCallbackContext,
  Int32 OperationStatus,
  Pointer<WINBIO_EVENT> Event,
);
typedef PWINBIO_IDENTIFY_CALLBACK = Void Function(
  Pointer IdentifyCallbackContext,
  Int32 OperationStatus,
  Uint32 UnitId,
  Pointer<WINBIO_IDENTITY> Identity,
  Uint8 SubFactor,
  Uint32 RejectDetail,
);
typedef PWINBIO_LOCATE_SENSOR_CALLBACK = Void Function(
  Pointer LocateCallbackContext,
  Int32 OperationStatus,
  Uint32 UnitId,
);
typedef PWINBIO_QUERY_ENGINE_INTERFACE_FN = Int32 Function(
  Pointer<Pointer<WINBIO_ENGINE_INTERFACE>> EngineInterface,
);
typedef PWINBIO_QUERY_SENSOR_INTERFACE_FN = Int32 Function(
  Pointer<Pointer<WINBIO_SENSOR_INTERFACE>> SensorInterface,
);
typedef PWINBIO_QUERY_STORAGE_INTERFACE_FN = Int32 Function(
  Pointer<Pointer<WINBIO_STORAGE_INTERFACE>> StorageInterface,
);
typedef PWINBIO_VERIFY_CALLBACK = Void Function(
  Pointer VerifyCallbackContext,
  Int32 OperationStatus,
  Uint32 UnitId,
  Uint8 Match,
  Uint32 RejectDetail,
);
