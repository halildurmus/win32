// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/wmi/structs.g.dart';
import '../../system/wmi/callbacks.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/wmi/IWbemPath.dart';

/// {@category Struct}
class MI_Application extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_ApplicationFT> ft;
}

/// {@category Struct}
class MI_ApplicationFT extends Struct {
  @IntPtr()
  external int Close;

  @IntPtr()
  external int NewSession;

  @IntPtr()
  external int NewHostedProvider;

  @IntPtr()
  external int NewInstance;

  @IntPtr()
  external int NewDestinationOptions;

  @IntPtr()
  external int NewOperationOptions;

  @IntPtr()
  external int NewSubscriptionDeliveryOptions;

  @IntPtr()
  external int NewSerializer;

  @IntPtr()
  external int NewDeserializer;

  @IntPtr()
  external int NewInstanceFromClass;

  @IntPtr()
  external int NewClass;
}

/// {@category Struct}
class MI_Array extends Struct {
  external Pointer data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ArrayField extends Struct {
  external MI_Array value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_BooleanA extends Struct {
  external Pointer<Uint8> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_BooleanAField extends Struct {
  external MI_BooleanA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_BooleanField extends Struct {
  @Uint8()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Char16A extends Struct {
  external Pointer<Uint16> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Char16AField extends Struct {
  external MI_Char16A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Char16Field extends Struct {
  @Uint16()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Class extends Struct {
  external Pointer<MI_ClassFT> ft;

  external Pointer<MI_ClassDecl> classDecl;

  external Pointer<Uint16> namespaceName;

  external Pointer<Uint16> serverName;

  @Array(4)
  external Array<IntPtr> reserved;
}

/// {@category Struct}
class MI_ClassDecl extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int code;

  external Pointer<Uint16> name;

  external Pointer<Pointer<MI_Qualifier>> qualifiers;

  @Uint32()
  external int numQualifiers;

  external Pointer<Pointer<MI_PropertyDecl>> properties;

  @Uint32()
  external int numProperties;

  @Uint32()
  external int size;

  external Pointer<Uint16> superClass;

  external Pointer<MI_ClassDecl> superClassDecl;

  external Pointer<Pointer<MI_MethodDecl>> methods;

  @Uint32()
  external int numMethods;

  external Pointer<MI_SchemaDecl> schema;

  external Pointer<MI_ProviderFT> providerFT;

  external Pointer<MI_Class> owningClass;
}

/// {@category Struct}
class MI_ClassFT extends Struct {
  @IntPtr()
  external int GetClassNameA;

  @IntPtr()
  external int GetNameSpace;

  @IntPtr()
  external int GetServerName;

  @IntPtr()
  external int GetElementCount;

  @IntPtr()
  external int GetElement;

  @IntPtr()
  external int GetElementAt;

  @IntPtr()
  external int GetClassQualifierSet;

  @IntPtr()
  external int GetMethodCount;

  @IntPtr()
  external int GetMethodAt;

  @IntPtr()
  external int GetMethod;

  @IntPtr()
  external int GetParentClassName;

  @IntPtr()
  external int GetParentClass;

  @IntPtr()
  external int Delete;

  @IntPtr()
  external int Clone;
}

/// {@category Struct}
class MI_ClientFT_V1 extends Struct {
  external Pointer<MI_ApplicationFT> applicationFT;

  external Pointer<MI_SessionFT> sessionFT;

  external Pointer<MI_OperationFT> operationFT;

  external Pointer<MI_HostedProviderFT> hostedProviderFT;

  external Pointer<MI_SerializerFT> serializerFT;

  external Pointer<MI_DeserializerFT> deserializerFT;

  external Pointer<MI_SubscriptionDeliveryOptionsFT> subscribeDeliveryOptionsFT;

  external Pointer<MI_DestinationOptionsFT> destinationOptionsFT;

  external Pointer<MI_OperationOptionsFT> operationOptionsFT;

  external Pointer<MI_UtilitiesFT> utilitiesFT;
}

/// {@category Struct}
class MI_ConstBooleanA extends Struct {
  external Pointer<Uint8> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstBooleanAField extends Struct {
  external MI_ConstBooleanA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstBooleanField extends Struct {
  @Uint8()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstChar16A extends Struct {
  external Pointer<Uint16> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstChar16AField extends Struct {
  external MI_ConstChar16A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstChar16Field extends Struct {
  @Uint16()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstDatetimeA extends Struct {
  external Pointer<MI_Datetime> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstDatetimeAField extends Struct {
  external MI_ConstDatetimeA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstDatetimeField extends Struct {
  external MI_Datetime value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstInstanceA extends Struct {
  external Pointer<Pointer<MI_Instance>> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstInstanceAField extends Struct {
  external MI_ConstInstanceA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstInstanceField extends Struct {
  external Pointer<MI_Instance> value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstReal32A extends Struct {
  external Pointer<Float> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstReal32AField extends Struct {
  external MI_ConstReal32A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstReal32Field extends Struct {
  @Float()
  external double value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstReal64A extends Struct {
  external Pointer<Double> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstReal64AField extends Struct {
  external MI_ConstReal64A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstReal64Field extends Struct {
  @Double()
  external double value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstReferenceA extends Struct {
  external Pointer<Pointer<MI_Instance>> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstReferenceAField extends Struct {
  external MI_ConstReferenceA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstReferenceField extends Struct {
  external Pointer<MI_Instance> value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint16A extends Struct {
  external Pointer<Int16> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstSint16AField extends Struct {
  external MI_ConstSint16A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint16Field extends Struct {
  @Int16()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint32A extends Struct {
  external Pointer<Int32> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstSint32AField extends Struct {
  external MI_ConstSint32A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint32Field extends Struct {
  @Int32()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint64A extends Struct {
  external Pointer<Int64> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstSint64AField extends Struct {
  external MI_ConstSint64A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint64Field extends Struct {
  @Int64()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint8A extends Struct {
  external Pointer<Int8> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstSint8AField extends Struct {
  external MI_ConstSint8A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstSint8Field extends Struct {
  @Int8()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstStringA extends Struct {
  external Pointer<Pointer<Uint16>> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstStringAField extends Struct {
  external MI_ConstStringA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstStringField extends Struct {
  external Pointer<Uint16> value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint16A extends Struct {
  external Pointer<Uint16> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstUint16AField extends Struct {
  external MI_ConstUint16A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint16Field extends Struct {
  @Uint16()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint32A extends Struct {
  external Pointer<Uint32> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstUint32AField extends Struct {
  external MI_ConstUint32A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint32Field extends Struct {
  @Uint32()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint64A extends Struct {
  external Pointer<Uint64> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstUint64AField extends Struct {
  external MI_ConstUint64A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint64Field extends Struct {
  @Uint64()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint8A extends Struct {
  external Pointer<Uint8> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ConstUint8AField extends Struct {
  external MI_ConstUint8A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ConstUint8Field extends Struct {
  @Uint8()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Context extends Struct {
  external Pointer<MI_ContextFT> ft;

  @Array(3)
  external Array<IntPtr> reserved;
}

/// {@category Struct}
class MI_ContextFT extends Struct {
  @IntPtr()
  external int PostResult;

  @IntPtr()
  external int PostInstance;

  @IntPtr()
  external int PostIndication;

  @IntPtr()
  external int ConstructInstance;

  @IntPtr()
  external int ConstructParameters;

  @IntPtr()
  external int NewInstance;

  @IntPtr()
  external int NewDynamicInstance;

  @IntPtr()
  external int NewParameters;

  @IntPtr()
  external int Canceled;

  @IntPtr()
  external int GetLocale;

  @IntPtr()
  external int RegisterCancel;

  @IntPtr()
  external int RequestUnload;

  @IntPtr()
  external int RefuseUnload;

  @IntPtr()
  external int GetLocalSession;

  @IntPtr()
  external int SetStringOption;

  @IntPtr()
  external int GetStringOption;

  @IntPtr()
  external int GetNumberOption;

  @IntPtr()
  external int GetCustomOption;

  @IntPtr()
  external int GetCustomOptionCount;

  @IntPtr()
  external int GetCustomOptionAt;

  @IntPtr()
  external int WriteMessage;

  @IntPtr()
  external int WriteProgress;

  @IntPtr()
  external int WriteStreamParameter;

  @IntPtr()
  external int WriteCimError;

  @IntPtr()
  external int PromptUser;

  @IntPtr()
  external int ShouldProcess;

  @IntPtr()
  external int ShouldContinue;

  @IntPtr()
  external int PostError;

  @IntPtr()
  external int PostCimError;

  @IntPtr()
  external int WriteError;
}

/// {@category Struct}
class MI_Datetime extends Struct {
  @Uint32()
  external int isTimestamp;

  external _MI_Datetime__u_e__Union u;
}

/// {@category Struct}
class _MI_Datetime__u_e__Union extends Union {
  external MI_Timestamp timestamp;

  external MI_Interval interval;
}

extension MI_Datetime_Extension on MI_Datetime {
  MI_Timestamp get timestamp => this.u.timestamp;
  set timestamp(MI_Timestamp value) => this.u.timestamp = value;

  MI_Interval get interval => this.u.interval;
  set interval(MI_Interval value) => this.u.interval = value;
}

/// {@category Struct}
class MI_DatetimeA extends Struct {
  external Pointer<MI_Datetime> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_DatetimeAField extends Struct {
  external MI_DatetimeA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_DatetimeField extends Struct {
  external MI_Datetime value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Deserializer extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;
}

/// {@category Struct}
class MI_DeserializerFT extends Struct {
  @IntPtr()
  external int Close;

  @IntPtr()
  external int DeserializeClass;

  @IntPtr()
  external int Class_GetClassName;

  @IntPtr()
  external int Class_GetParentClassName;

  @IntPtr()
  external int DeserializeInstance;

  @IntPtr()
  external int Instance_GetClassName;
}

/// {@category Struct}
class MI_DestinationOptions extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_DestinationOptionsFT> ft;
}

/// {@category Struct}
class MI_DestinationOptionsFT extends Struct {
  @IntPtr()
  external int Delete;

  @IntPtr()
  external int SetString;

  @IntPtr()
  external int SetNumber;

  @IntPtr()
  external int AddCredentials;

  @IntPtr()
  external int GetString;

  @IntPtr()
  external int GetNumber;

  @IntPtr()
  external int GetOptionCount;

  @IntPtr()
  external int GetOptionAt;

  @IntPtr()
  external int GetOption;

  @IntPtr()
  external int GetCredentialsCount;

  @IntPtr()
  external int GetCredentialsAt;

  @IntPtr()
  external int GetCredentialsPasswordAt;

  @IntPtr()
  external int Clone;

  @IntPtr()
  external int SetInterval;

  @IntPtr()
  external int GetInterval;
}

/// {@category Struct}
class MI_FeatureDecl extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int code;

  external Pointer<Uint16> name;

  external Pointer<Pointer<MI_Qualifier>> qualifiers;

  @Uint32()
  external int numQualifiers;
}

/// {@category Struct}
class MI_Filter extends Struct {
  external Pointer<MI_FilterFT> ft;

  @Array(3)
  external Array<IntPtr> reserved;
}

/// {@category Struct}
class MI_FilterFT extends Struct {
  @IntPtr()
  external int Evaluate;

  @IntPtr()
  external int GetExpression;
}

/// {@category Struct}
class MI_HostedProvider extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_HostedProviderFT> ft;
}

/// {@category Struct}
class MI_HostedProviderFT extends Struct {
  @IntPtr()
  external int Close;

  @IntPtr()
  external int GetApplication;
}

/// {@category Struct}
class MI_Instance extends Struct {
  external Pointer<MI_InstanceFT> ft;

  external Pointer<MI_ClassDecl> classDecl;

  external Pointer<Uint16> serverName;

  external Pointer<Uint16> nameSpace;

  @Array(4)
  external Array<IntPtr> reserved;
}

/// {@category Struct}
class MI_InstanceA extends Struct {
  external Pointer<Pointer<MI_Instance>> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_InstanceAField extends Struct {
  external MI_InstanceA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_InstanceExFT extends Struct {
  external MI_InstanceFT parent;

  @IntPtr()
  external int Normalize;
}

/// {@category Struct}
class MI_InstanceFT extends Struct {
  @IntPtr()
  external int Clone;

  @IntPtr()
  external int Destruct;

  @IntPtr()
  external int Delete;

  @IntPtr()
  external int IsA;

  @IntPtr()
  external int GetClassNameA;

  @IntPtr()
  external int SetNameSpace;

  @IntPtr()
  external int GetNameSpace;

  @IntPtr()
  external int GetElementCount;

  @IntPtr()
  external int AddElement;

  @IntPtr()
  external int SetElement;

  @IntPtr()
  external int SetElementAt;

  @IntPtr()
  external int GetElement;

  @IntPtr()
  external int GetElementAt;

  @IntPtr()
  external int ClearElement;

  @IntPtr()
  external int ClearElementAt;

  @IntPtr()
  external int GetServerName;

  @IntPtr()
  external int SetServerName;

  @IntPtr()
  external int GetClass;
}

/// {@category Struct}
class MI_InstanceField extends Struct {
  external Pointer<MI_Instance> value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Interval extends Struct {
  @Uint32()
  external int days;

  @Uint32()
  external int hours;

  @Uint32()
  external int minutes;

  @Uint32()
  external int seconds;

  @Uint32()
  external int microseconds;

  @Uint32()
  external int padding1;

  @Uint32()
  external int padding2;

  @Uint32()
  external int padding3;
}

/// {@category Struct}
class MI_MethodDecl extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int code;

  external Pointer<Uint16> name;

  external Pointer<Pointer<MI_Qualifier>> qualifiers;

  @Uint32()
  external int numQualifiers;

  external Pointer<Pointer<MI_ParameterDecl>> parameters;

  @Uint32()
  external int numParameters;

  @Uint32()
  external int size;

  @Uint32()
  external int returnType;

  external Pointer<Uint16> origin;

  external Pointer<Uint16> propagator;

  external Pointer<MI_SchemaDecl> schema;

  external Pointer<NativeFunction<MI_MethodDecl_Invoke>> function;
}

/// {@category Struct}
class MI_Module extends Struct {
  @Uint32()
  external int version;

  @Uint32()
  external int generatorVersion;

  @Uint32()
  external int flags;

  @Uint32()
  external int charSize;

  external Pointer<MI_SchemaDecl> schemaDecl;

  external Pointer<NativeFunction<MI_Module_Load>> Load;

  external Pointer<NativeFunction<MI_Module_Unload>> Unload;

  external Pointer<MI_ProviderFT> dynamicProviderFT;
}

/// {@category Struct}
class MI_Module_Self extends Opaque {}

/// {@category Struct}
class MI_ObjectDecl extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int code;

  external Pointer<Uint16> name;

  external Pointer<Pointer<MI_Qualifier>> qualifiers;

  @Uint32()
  external int numQualifiers;

  external Pointer<Pointer<MI_PropertyDecl>> properties;

  @Uint32()
  external int numProperties;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Operation extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_OperationFT> ft;
}

/// {@category Struct}
class MI_OperationCallbacks extends Struct {
  external Pointer callbackContext;

  external Pointer<NativeFunction<MI_OperationCallback_PromptUser>> promptUser;

  external Pointer<NativeFunction<MI_OperationCallback_WriteError>> writeError;

  external Pointer<NativeFunction<MI_OperationCallback_WriteMessage>>
      writeMessage;

  external Pointer<NativeFunction<MI_OperationCallback_WriteProgress>>
      writeProgress;

  external Pointer<NativeFunction<MI_OperationCallback_Instance>>
      instanceResult;

  external Pointer<NativeFunction<MI_OperationCallback_Indication>>
      indicationResult;

  external Pointer<NativeFunction<MI_OperationCallback_Class>> classResult;

  external Pointer<NativeFunction<MI_OperationCallback_StreamedParameter>>
      streamedParameterResult;
}

/// {@category Struct}
class MI_OperationFT extends Struct {
  @IntPtr()
  external int Close;

  @IntPtr()
  external int Cancel;

  @IntPtr()
  external int GetSession;

  @IntPtr()
  external int GetInstance;

  @IntPtr()
  external int GetIndication;

  @IntPtr()
  external int GetClass;
}

/// {@category Struct}
class MI_OperationOptions extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_OperationOptionsFT> ft;
}

/// {@category Struct}
class MI_OperationOptionsFT extends Struct {
  @IntPtr()
  external int Delete;

  @IntPtr()
  external int SetString;

  @IntPtr()
  external int SetNumber;

  @IntPtr()
  external int SetCustomOption;

  @IntPtr()
  external int GetString;

  @IntPtr()
  external int GetNumber;

  @IntPtr()
  external int GetOptionCount;

  @IntPtr()
  external int GetOptionAt;

  @IntPtr()
  external int GetOption;

  @IntPtr()
  external int GetEnabledChannels;

  @IntPtr()
  external int Clone;

  @IntPtr()
  external int SetInterval;

  @IntPtr()
  external int GetInterval;
}

/// {@category Struct}
class MI_ParameterDecl extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int code;

  external Pointer<Uint16> name;

  external Pointer<Pointer<MI_Qualifier>> qualifiers;

  @Uint32()
  external int numQualifiers;

  @Uint32()
  external int type;

  external Pointer<Uint16> className;

  @Uint32()
  external int subscript;

  @Uint32()
  external int offset;
}

/// {@category Struct}
class MI_ParameterSet extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_ParameterSetFT> ft;
}

/// {@category Struct}
class MI_ParameterSetFT extends Struct {
  @IntPtr()
  external int GetMethodReturnType;

  @IntPtr()
  external int GetParameterCount;

  @IntPtr()
  external int GetParameterAt;

  @IntPtr()
  external int GetParameter;
}

/// {@category Struct}
class MI_PropertyDecl extends Struct {
  @Uint32()
  external int flags;

  @Uint32()
  external int code;

  external Pointer<Uint16> name;

  external Pointer<Pointer<MI_Qualifier>> qualifiers;

  @Uint32()
  external int numQualifiers;

  @Uint32()
  external int type;

  external Pointer<Uint16> className;

  @Uint32()
  external int subscript;

  @Uint32()
  external int offset;

  external Pointer<Uint16> origin;

  external Pointer<Uint16> propagator;

  external Pointer value;
}

/// {@category Struct}
class MI_PropertySet extends Struct {
  external Pointer<MI_PropertySetFT> ft;

  @Array(3)
  external Array<IntPtr> reserved;
}

/// {@category Struct}
class MI_PropertySetFT extends Struct {
  @IntPtr()
  external int GetElementCount;

  @IntPtr()
  external int ContainsElement;

  @IntPtr()
  external int AddElement;

  @IntPtr()
  external int GetElementAt;

  @IntPtr()
  external int Clear;

  @IntPtr()
  external int Destruct;

  @IntPtr()
  external int Delete;

  @IntPtr()
  external int Clone;
}

/// {@category Struct}
class MI_ProviderFT extends Struct {
  external Pointer<NativeFunction<MI_ProviderFT_Load>> Load;

  external Pointer<NativeFunction<MI_ProviderFT_Unload>> Unload;

  external Pointer<NativeFunction<MI_ProviderFT_GetInstance>> GetInstance;

  external Pointer<NativeFunction<MI_ProviderFT_EnumerateInstances>>
      EnumerateInstances;

  external Pointer<NativeFunction<MI_ProviderFT_CreateInstance>> CreateInstance;

  external Pointer<NativeFunction<MI_ProviderFT_ModifyInstance>> ModifyInstance;

  external Pointer<NativeFunction<MI_ProviderFT_DeleteInstance>> DeleteInstance;

  external Pointer<NativeFunction<MI_ProviderFT_AssociatorInstances>>
      AssociatorInstances;

  external Pointer<NativeFunction<MI_ProviderFT_ReferenceInstances>>
      ReferenceInstances;

  external Pointer<NativeFunction<MI_ProviderFT_EnableIndications>>
      EnableIndications;

  external Pointer<NativeFunction<MI_ProviderFT_DisableIndications>>
      DisableIndications;

  external Pointer<NativeFunction<MI_ProviderFT_Subscribe>> Subscribe;

  external Pointer<NativeFunction<MI_ProviderFT_Unsubscribe>> Unsubscribe;

  external Pointer<NativeFunction<MI_ProviderFT_Invoke>> Invoke;
}

/// {@category Struct}
class MI_Qualifier extends Struct {
  external Pointer<Uint16> name;

  @Uint32()
  external int type;

  @Uint32()
  external int flavor;

  external Pointer value;
}

/// {@category Struct}
class MI_QualifierDecl extends Struct {
  external Pointer<Uint16> name;

  @Uint32()
  external int type;

  @Uint32()
  external int scope;

  @Uint32()
  external int flavor;

  @Uint32()
  external int subscript;

  external Pointer value;
}

/// {@category Struct}
class MI_QualifierSet extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_QualifierSetFT> ft;
}

/// {@category Struct}
class MI_QualifierSetFT extends Struct {
  @IntPtr()
  external int GetQualifierCount;

  @IntPtr()
  external int GetQualifierAt;

  @IntPtr()
  external int GetQualifier;
}

/// {@category Struct}
class MI_Real32A extends Struct {
  external Pointer<Float> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Real32AField extends Struct {
  external MI_Real32A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Real32Field extends Struct {
  @Float()
  external double value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Real64A extends Struct {
  external Pointer<Double> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Real64AField extends Struct {
  external MI_Real64A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Real64Field extends Struct {
  @Double()
  external double value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ReferenceA extends Struct {
  external Pointer<Pointer<MI_Instance>> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_ReferenceAField extends Struct {
  external MI_ReferenceA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_ReferenceField extends Struct {
  external Pointer<MI_Instance> value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_SchemaDecl extends Struct {
  external Pointer<Pointer<MI_QualifierDecl>> qualifierDecls;

  @Uint32()
  external int numQualifierDecls;

  external Pointer<Pointer<MI_ClassDecl>> classDecls;

  @Uint32()
  external int numClassDecls;
}

/// {@category Struct}
class MI_Serializer extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;
}

/// {@category Struct}
class MI_SerializerFT extends Struct {
  @IntPtr()
  external int Close;

  @IntPtr()
  external int SerializeClass;

  @IntPtr()
  external int SerializeInstance;
}

/// {@category Struct}
class MI_Server extends Struct {
  external Pointer<MI_ServerFT> serverFT;

  external Pointer<MI_ContextFT> contextFT;

  external Pointer<MI_InstanceFT> instanceFT;

  external Pointer<MI_PropertySetFT> propertySetFT;

  external Pointer<MI_FilterFT> filterFT;
}

/// {@category Struct}
class MI_ServerFT extends Struct {
  @IntPtr()
  external int GetVersion;

  @IntPtr()
  external int GetSystemName;
}

/// {@category Struct}
class MI_Session extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_SessionFT> ft;
}

/// {@category Struct}
class MI_SessionCallbacks extends Struct {
  external Pointer callbackContext;

  @IntPtr()
  external int writeMessage;

  @IntPtr()
  external int writeError;
}

/// {@category Struct}
class MI_SessionFT extends Struct {
  @IntPtr()
  external int Close;

  @IntPtr()
  external int GetApplication;

  @IntPtr()
  external int GetInstance;

  @IntPtr()
  external int ModifyInstance;

  @IntPtr()
  external int CreateInstance;

  @IntPtr()
  external int DeleteInstance;

  @IntPtr()
  external int Invoke;

  @IntPtr()
  external int EnumerateInstances;

  @IntPtr()
  external int QueryInstances;

  @IntPtr()
  external int AssociatorInstances;

  @IntPtr()
  external int ReferenceInstances;

  @IntPtr()
  external int Subscribe;

  @IntPtr()
  external int GetClass;

  @IntPtr()
  external int EnumerateClasses;

  @IntPtr()
  external int TestConnection;
}

/// {@category Struct}
class MI_Sint16A extends Struct {
  external Pointer<Int16> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Sint16AField extends Struct {
  external MI_Sint16A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Sint16Field extends Struct {
  @Int16()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Sint32A extends Struct {
  external Pointer<Int32> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Sint32AField extends Struct {
  external MI_Sint32A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Sint32Field extends Struct {
  @Int32()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Sint64A extends Struct {
  external Pointer<Int64> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Sint64AField extends Struct {
  external MI_Sint64A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Sint64Field extends Struct {
  @Int64()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Sint8A extends Struct {
  external Pointer<Int8> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Sint8AField extends Struct {
  external MI_Sint8A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Sint8Field extends Struct {
  @Int8()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_StringA extends Struct {
  external Pointer<Pointer<Uint16>> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_StringAField extends Struct {
  external MI_StringA value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_StringField extends Struct {
  external Pointer<Uint16> value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_SubscriptionDeliveryOptions extends Struct {
  @Uint64()
  external int reserved1;

  @IntPtr()
  external int reserved2;

  external Pointer<MI_SubscriptionDeliveryOptionsFT> ft;
}

/// {@category Struct}
class MI_SubscriptionDeliveryOptionsFT extends Struct {
  @IntPtr()
  external int SetString;

  @IntPtr()
  external int SetNumber;

  @IntPtr()
  external int SetDateTime;

  @IntPtr()
  external int SetInterval;

  @IntPtr()
  external int AddCredentials;

  @IntPtr()
  external int Delete;

  @IntPtr()
  external int GetString;

  @IntPtr()
  external int GetNumber;

  @IntPtr()
  external int GetDateTime;

  @IntPtr()
  external int GetInterval;

  @IntPtr()
  external int GetOptionCount;

  @IntPtr()
  external int GetOptionAt;

  @IntPtr()
  external int GetOption;

  @IntPtr()
  external int GetCredentialsCount;

  @IntPtr()
  external int GetCredentialsAt;

  @IntPtr()
  external int GetCredentialsPasswordAt;

  @IntPtr()
  external int Clone;
}

/// {@category Struct}
class MI_Timestamp extends Struct {
  @Uint32()
  external int year;

  @Uint32()
  external int month;

  @Uint32()
  external int day;

  @Uint32()
  external int hour;

  @Uint32()
  external int minute;

  @Uint32()
  external int second;

  @Uint32()
  external int microseconds;

  @Int32()
  external int utc;
}

/// {@category Struct}
class MI_Uint16A extends Struct {
  external Pointer<Uint16> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Uint16AField extends Struct {
  external MI_Uint16A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Uint16Field extends Struct {
  @Uint16()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Uint32A extends Struct {
  external Pointer<Uint32> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Uint32AField extends Struct {
  external MI_Uint32A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Uint32Field extends Struct {
  @Uint32()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Uint64A extends Struct {
  external Pointer<Uint64> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Uint64AField extends Struct {
  external MI_Uint64A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Uint64Field extends Struct {
  @Uint64()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Uint8A extends Struct {
  external Pointer<Uint8> data;

  @Uint32()
  external int size;
}

/// {@category Struct}
class MI_Uint8AField extends Struct {
  external MI_Uint8A value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_Uint8Field extends Struct {
  @Uint8()
  external int value;

  @Uint8()
  external int exists;

  @Uint8()
  external int flags;
}

/// {@category Struct}
class MI_UserCredentials extends Struct {
  external Pointer<Uint16> authenticationType;

  external _MI_UserCredentials__credentials_e__Union credentials;
}

/// {@category Struct}
class _MI_UserCredentials__credentials_e__Union extends Union {
  external MI_UsernamePasswordCreds usernamePassword;

  external Pointer<Uint16> certificateThumbprint;
}

extension MI_UserCredentials_Extension on MI_UserCredentials {
  MI_UsernamePasswordCreds get usernamePassword =>
      this.credentials.usernamePassword;
  set usernamePassword(MI_UsernamePasswordCreds value) =>
      this.credentials.usernamePassword = value;

  Pointer<Uint16> get certificateThumbprint =>
      this.credentials.certificateThumbprint;
  set certificateThumbprint(Pointer<Uint16> value) =>
      this.credentials.certificateThumbprint = value;
}

/// {@category Struct}
class MI_UsernamePasswordCreds extends Struct {
  external Pointer<Uint16> domain;

  external Pointer<Uint16> username;

  external Pointer<Uint16> password;
}

/// {@category Struct}
class MI_UtilitiesFT extends Struct {
  @IntPtr()
  external int MapErrorToMiErrorCategory;

  @IntPtr()
  external int CimErrorFromErrorCode;
}

/// {@category Struct}
class MI_Value extends Union {
  @Uint8()
  external int boolean;

  @Uint8()
  external int uint8;

  @Int8()
  external int sint8;

  @Uint16()
  external int uint16;

  @Int16()
  external int sint16;

  @Uint32()
  external int uint32;

  @Int32()
  external int sint32;

  @Uint64()
  external int uint64;

  @Int64()
  external int sint64;

  @Float()
  external double real32;

  @Double()
  external double real64;

  @Uint16()
  external int char16;

  external MI_Datetime datetime;

  external Pointer<Uint16> string;

  external Pointer<MI_Instance> instance;

  external Pointer<MI_Instance> reference;

  external MI_BooleanA booleana;

  external MI_Uint8A uint8a;

  external MI_Sint8A sint8a;

  external MI_Uint16A uint16a;

  external MI_Sint16A sint16a;

  external MI_Uint32A uint32a;

  external MI_Sint32A sint32a;

  external MI_Uint64A uint64a;

  external MI_Sint64A sint64a;

  external MI_Real32A real32a;

  external MI_Real64A real64a;

  external MI_Char16A char16a;

  external MI_DatetimeA datetimea;

  external MI_StringA stringa;

  external MI_ReferenceA referencea;

  external MI_InstanceA instancea;

  external MI_Array array;
}

/// {@category Struct}
class SWbemAnalysisMatrix extends Struct {
  @Uint32()
  external int m_uVersion;

  @Uint32()
  external int m_uMatrixType;

  external Pointer<Utf16> m_pszProperty;

  @Uint32()
  external int m_uPropertyType;

  @Uint32()
  external int m_uEntries;

  external Pointer<Pointer> m_pValues;

  external Pointer<Int32> m_pbTruthTable;
}

/// {@category Struct}
class SWbemAnalysisMatrixList extends Struct {
  @Uint32()
  external int m_uVersion;

  @Uint32()
  external int m_uMatrixType;

  @Uint32()
  external int m_uNumMatrices;

  external Pointer<SWbemAnalysisMatrix> m_pMatrices;
}

/// {@category Struct}
class SWbemAssocQueryInf extends Struct {
  @Uint32()
  external int m_uVersion;

  @Uint32()
  external int m_uAnalysisType;

  @Uint32()
  external int m_uFeatureMask;

  external Pointer<COMObject> m_pPath;

  external Pointer<Utf16> m_pszPath;

  external Pointer<Utf16> m_pszQueryText;

  external Pointer<Utf16> m_pszResultClass;

  external Pointer<Utf16> m_pszAssocClass;

  external Pointer<Utf16> m_pszRole;

  external Pointer<Utf16> m_pszResultRole;

  external Pointer<Utf16> m_pszRequiredQualifier;

  external Pointer<Utf16> m_pszRequiredAssocQualifier;
}

/// {@category Struct}
class SWbemQueryQualifiedName extends Struct {
  @Uint32()
  external int m_uVersion;

  @Uint32()
  external int m_uTokenType;

  @Uint32()
  external int m_uNameListSize;

  external Pointer<Pointer<Utf16>> m_ppszNameList;

  @Int32()
  external int m_bArraysUsed;

  external Pointer<Int32> m_pbArrayElUsed;

  external Pointer<Uint32> m_puArrayIndex;
}

/// {@category Struct}
class SWbemRpnConst extends Union {
  external Pointer<Utf16> m_pszStrVal;

  @Int32()
  external int m_bBoolVal;

  @Int32()
  external int m_lLongVal;

  @Uint32()
  external int m_uLongVal;

  @Double()
  external double m_dblVal;

  @Int64()
  external int m_lVal64;

  @Int64()
  external int m_uVal64;
}

/// {@category Struct}
class SWbemRpnEncodedQuery extends Struct {
  @Uint32()
  external int m_uVersion;

  @Uint32()
  external int m_uTokenType;

  @Uint64()
  external int m_uParsedFeatureMask;

  @Uint32()
  external int m_uDetectedArraySize;

  external Pointer<Uint32> m_puDetectedFeatures;

  @Uint32()
  external int m_uSelectListSize;

  external Pointer<Pointer<SWbemQueryQualifiedName>> m_ppSelectList;

  @Uint32()
  external int m_uFromTargetType;

  external Pointer<Utf16> m_pszOptionalFromPath;

  @Uint32()
  external int m_uFromListSize;

  external Pointer<Pointer<Utf16>> m_ppszFromList;

  @Uint32()
  external int m_uWhereClauseSize;

  external Pointer<Pointer<SWbemRpnQueryToken>> m_ppRpnWhereClause;

  @Double()
  external double m_dblWithinPolling;

  @Double()
  external double m_dblWithinWindow;

  @Uint32()
  external int m_uOrderByListSize;

  external Pointer<Pointer<Utf16>> m_ppszOrderByList;

  external Pointer<Uint32> m_uOrderDirectionEl;
}

/// {@category Struct}
class SWbemRpnQueryToken extends Struct {
  @Uint32()
  external int m_uVersion;

  @Uint32()
  external int m_uTokenType;

  @Uint32()
  external int m_uSubexpressionShape;

  @Uint32()
  external int m_uOperator;

  external Pointer<SWbemQueryQualifiedName> m_pRightIdent;

  external Pointer<SWbemQueryQualifiedName> m_pLeftIdent;

  @Uint32()
  external int m_uConstApparentType;

  external SWbemRpnConst m_Const;

  @Uint32()
  external int m_uConst2ApparentType;

  external SWbemRpnConst m_Const2;

  external Pointer<Utf16> m_pszRightFunc;

  external Pointer<Utf16> m_pszLeftFunc;
}

/// {@category Struct}
class SWbemRpnTokenList extends Struct {
  @Uint32()
  external int m_uVersion;

  @Uint32()
  external int m_uTokenType;

  @Uint32()
  external int m_uNumTokens;
}

/// {@category Struct}
class WBEM_COMPILE_STATUS_INFO extends Struct {
  @Int32()
  external int lPhaseError;

  @Int32()
  external int hRes;

  @Int32()
  external int ObjectNum;

  @Int32()
  external int FirstLine;

  @Int32()
  external int LastLine;

  @Uint32()
  external int dwOutFlags;
}
