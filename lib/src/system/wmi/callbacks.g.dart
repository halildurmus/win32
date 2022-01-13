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
import '../../system/wmi/structs.g.dart';

typedef MI_CancelCallback = Void Function(
  Int32 reason,
  Pointer callbackData,
);
typedef MI_Deserializer_ClassObjectNeeded = Int32 Function(
  Pointer context,
  Pointer<Uint16> serverName,
  Pointer<Uint16> namespaceName,
  Pointer<Uint16> className,
  Pointer<Pointer<MI_Class>> requestedClassObject,
);
typedef MI_MainFunction = Pointer<MI_Module> Function(
  Pointer<MI_Server> server,
);
typedef MI_MethodDecl_Invoke = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<Uint16> methodName,
  Pointer<MI_Instance> instanceName,
  Pointer<MI_Instance> parameters,
);
typedef MI_Module_Load = Void Function(
  Pointer<Pointer<MI_Module_Self>> self,
  Pointer<MI_Context> context,
);
typedef MI_Module_Unload = Void Function(
  Pointer<MI_Module_Self> self,
  Pointer<MI_Context> context,
);
typedef MI_OperationCallback_Class = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Pointer<MI_Class> classResult,
  Uint8 moreResults,
  Int32 resultCode,
  Pointer<Uint16> errorString,
  Pointer<MI_Instance> errorDetails,
  IntPtr resultAcknowledgement,
);
typedef MI_OperationCallback_Indication = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Pointer<MI_Instance> instance,
  Pointer<Uint16> bookmark,
  Pointer<Uint16> machineID,
  Uint8 moreResults,
  Int32 resultCode,
  Pointer<Uint16> errorString,
  Pointer<MI_Instance> errorDetails,
  IntPtr resultAcknowledgement,
);
typedef MI_OperationCallback_Instance = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Pointer<MI_Instance> instance,
  Uint8 moreResults,
  Int32 resultCode,
  Pointer<Uint16> errorString,
  Pointer<MI_Instance> errorDetails,
  IntPtr resultAcknowledgement,
);
typedef MI_OperationCallback_PromptUser = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Pointer<Uint16> message,
  Int32 promptType,
  IntPtr promptUserResult,
);
typedef MI_OperationCallback_StreamedParameter = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Pointer<Uint16> parameterName,
  Int32 resultType,
  Pointer<MI_Value> result,
  IntPtr resultAcknowledgement,
);
typedef MI_OperationCallback_WriteError = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Pointer<MI_Instance> instance,
  IntPtr writeErrorResult,
);
typedef MI_OperationCallback_WriteMessage = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Uint32 channel,
  Pointer<Uint16> message,
);
typedef MI_OperationCallback_WriteProgress = Void Function(
  Pointer<MI_Operation> operation,
  Pointer callbackContext,
  Pointer<Uint16> activity,
  Pointer<Uint16> currentOperation,
  Pointer<Uint16> statusDescription,
  Uint32 percentageComplete,
  Uint32 secondsRemaining,
);
typedef MI_ProviderFT_AssociatorInstances = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_Instance> instanceName,
  Pointer<Uint16> resultClass,
  Pointer<Uint16> role,
  Pointer<Uint16> resultRole,
  Pointer<MI_PropertySet> propertySet,
  Uint8 keysOnly,
  Pointer<MI_Filter> filter,
);
typedef MI_ProviderFT_CreateInstance = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_Instance> newInstance,
);
typedef MI_ProviderFT_DeleteInstance = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_Instance> instanceName,
);
typedef MI_ProviderFT_DisableIndications = Void Function(
  Pointer self,
  Pointer<MI_Context> indicationsContext,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
);
typedef MI_ProviderFT_EnableIndications = Void Function(
  Pointer self,
  Pointer<MI_Context> indicationsContext,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
);
typedef MI_ProviderFT_EnumerateInstances = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_PropertySet> propertySet,
  Uint8 keysOnly,
  Pointer<MI_Filter> filter,
);
typedef MI_ProviderFT_GetInstance = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_Instance> instanceName,
  Pointer<MI_PropertySet> propertySet,
);
typedef MI_ProviderFT_Invoke = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<Uint16> methodName,
  Pointer<MI_Instance> instanceName,
  Pointer<MI_Instance> inputParameters,
);
typedef MI_ProviderFT_Load = Void Function(
  Pointer<Pointer> self,
  Pointer<MI_Module_Self> selfModule,
  Pointer<MI_Context> context,
);
typedef MI_ProviderFT_ModifyInstance = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_Instance> modifiedInstance,
  Pointer<MI_PropertySet> propertySet,
);
typedef MI_ProviderFT_ReferenceInstances = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_Instance> instanceName,
  Pointer<Uint16> role,
  Pointer<MI_PropertySet> propertySet,
  Uint8 keysOnly,
  Pointer<MI_Filter> filter,
);
typedef MI_ProviderFT_Subscribe = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Pointer<MI_Filter> filter,
  Pointer<Uint16> bookmark,
  Uint64 subscriptionID,
  Pointer<Pointer> subscriptionSelf,
);
typedef MI_ProviderFT_Unload = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
);
typedef MI_ProviderFT_Unsubscribe = Void Function(
  Pointer self,
  Pointer<MI_Context> context,
  Pointer<Uint16> nameSpace,
  Pointer<Uint16> className,
  Uint64 subscriptionID,
  Pointer subscriptionSelf,
);
