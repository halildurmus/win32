// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class RPC_BINDING_VECTOR extends Struct {
  @Uint32()
  external int Count;
  @Array(1)
  external Array<Pointer> BindingH;
}

class UUID_VECTOR extends Struct {
  @Uint32()
  external int Count;
  @Array(1)
  external Array<Pointer<GUID>> Uuid;
}

class RPC_IF_ID extends Struct {
  external GUID Uuid;
  @Uint16()
  external int VersMajor;
  @Uint16()
  external int VersMinor;
}

class RPC_PROTSEQ_VECTORA extends Struct {
  @Uint32()
  external int Count;
  @Array(1)
  external Array<Pointer<Uint8>> Protseq;
}

class RPC_PROTSEQ_VECTORW extends Struct {
  @Uint32()
  external int Count;
  @Array(1)
  external Array<Pointer<Uint16>> Protseq;
}

class RPC_POLICY extends Struct {
  @Uint32()
  external int Length;
  @Uint32()
  external int EndpointFlags;
  @Uint32()
  external int NICFlags;
}

class RPC_STATS_VECTOR extends Struct {
  @Uint32()
  external int Count;
  @Array(1)
  external Array<Uint32> Stats;
}

class RPC_IF_ID_VECTOR extends Struct {
  @Uint32()
  external int Count;
  @Array(1)
  external Array<Pointer<RPC_IF_ID>> IfId;
}

class RPC_SECURITY_QOS extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
}

class RPC_HTTP_TRANSPORT_CREDENTIALS_W extends Struct {
  external Pointer<SEC_WINNT_AUTH_IDENTITY_> TransportCredentials;
  @Uint32()
  external int Flags;
  @Uint32()
  external int AuthenticationTarget;
  @Uint32()
  external int NumberOfAuthnSchemes;
  external Pointer<Uint32> AuthnSchemes;
  external Pointer<Uint16> ServerCertificateSubject;
}

class RPC_HTTP_TRANSPORT_CREDENTIALS_A extends Struct {
  external Pointer<SEC_WINNT_AUTH_IDENTITY_A> TransportCredentials;
  @Uint32()
  external int Flags;
  @Uint32()
  external int AuthenticationTarget;
  @Uint32()
  external int NumberOfAuthnSchemes;
  external Pointer<Uint32> AuthnSchemes;
  external Pointer<Uint8> ServerCertificateSubject;
}

class RPC_HTTP_TRANSPORT_CREDENTIALS_V2_W extends Struct {
  external Pointer<SEC_WINNT_AUTH_IDENTITY_> TransportCredentials;
  @Uint32()
  external int Flags;
  @Uint32()
  external int AuthenticationTarget;
  @Uint32()
  external int NumberOfAuthnSchemes;
  external Pointer<Uint32> AuthnSchemes;
  external Pointer<Uint16> ServerCertificateSubject;
  external Pointer<SEC_WINNT_AUTH_IDENTITY_> ProxyCredentials;
  @Uint32()
  external int NumberOfProxyAuthnSchemes;
  external Pointer<Uint32> ProxyAuthnSchemes;
}

class RPC_HTTP_TRANSPORT_CREDENTIALS_V2_A extends Struct {
  external Pointer<SEC_WINNT_AUTH_IDENTITY_A> TransportCredentials;
  @Uint32()
  external int Flags;
  @Uint32()
  external int AuthenticationTarget;
  @Uint32()
  external int NumberOfAuthnSchemes;
  external Pointer<Uint32> AuthnSchemes;
  external Pointer<Uint8> ServerCertificateSubject;
  external Pointer<SEC_WINNT_AUTH_IDENTITY_A> ProxyCredentials;
  @Uint32()
  external int NumberOfProxyAuthnSchemes;
  external Pointer<Uint32> ProxyAuthnSchemes;
}

class RPC_HTTP_TRANSPORT_CREDENTIALS_V3_W extends Struct {
  external Pointer TransportCredentials;
  @Uint32()
  external int Flags;
  @Uint32()
  external int AuthenticationTarget;
  @Uint32()
  external int NumberOfAuthnSchemes;
  external Pointer<Uint32> AuthnSchemes;
  external Pointer<Uint16> ServerCertificateSubject;
  external Pointer ProxyCredentials;
  @Uint32()
  external int NumberOfProxyAuthnSchemes;
  external Pointer<Uint32> ProxyAuthnSchemes;
}

class RPC_HTTP_TRANSPORT_CREDENTIALS_V3_A extends Struct {
  external Pointer TransportCredentials;
  @Uint32()
  external int Flags;
  @Uint32()
  external int AuthenticationTarget;
  @Uint32()
  external int NumberOfAuthnSchemes;
  external Pointer<Uint32> AuthnSchemes;
  external Pointer<Uint8> ServerCertificateSubject;
  external Pointer ProxyCredentials;
  @Uint32()
  external int NumberOfProxyAuthnSchemes;
  external Pointer<Uint32> ProxyAuthnSchemes;
}

class RPC_SECURITY_QOS_V2_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
}

class RPC_SECURITY_QOS_V2_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
}

class RPC_SECURITY_QOS_V3_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
  external Pointer Sid;
}

class RPC_SECURITY_QOS_V3_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
  external Pointer Sid;
}

class RPC_SECURITY_QOS_V4_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
  external Pointer Sid;
  @Uint32()
  external int EffectiveOnly;
}

class RPC_SECURITY_QOS_V4_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
  external Pointer Sid;
  @Uint32()
  external int EffectiveOnly;
}

class RPC_SECURITY_QOS_V5_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
  external Pointer Sid;
  @Uint32()
  external int EffectiveOnly;
  external Pointer ServerSecurityDescriptor;
}

class RPC_SECURITY_QOS_V5_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Capabilities;
  @Uint32()
  external int IdentityTracking;
  @Uint32()
  external int ImpersonationType;
  @Uint32()
  external int AdditionalSecurityInfoType;
  @Uint32()
  external int u;
  external Pointer Sid;
  @Uint32()
  external int EffectiveOnly;
  external Pointer ServerSecurityDescriptor;
}

class RPC_BINDING_HANDLE_TEMPLATE_V1_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ProtocolSequence;
  external Pointer<Uint16> NetworkAddress;
  external Pointer<Uint16> StringEndpoint;
  @Uint32()
  external int u1;
  external GUID ObjectUuid;
}

class RPC_BINDING_HANDLE_TEMPLATE_V1_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ProtocolSequence;
  external Pointer<Uint8> NetworkAddress;
  external Pointer<Uint8> StringEndpoint;
  @Uint32()
  external int u1;
  external GUID ObjectUuid;
}

class RPC_BINDING_HANDLE_SECURITY_V1_W extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Uint16> ServerPrincName;
  @Uint32()
  external int AuthnLevel;
  @Uint32()
  external int AuthnSvc;
  external Pointer<SEC_WINNT_AUTH_IDENTITY_> AuthIdentity;
  external Pointer<RPC_SECURITY_QOS> SecurityQos;
}

class RPC_BINDING_HANDLE_SECURITY_V1_A extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Uint8> ServerPrincName;
  @Uint32()
  external int AuthnLevel;
  @Uint32()
  external int AuthnSvc;
  external Pointer<SEC_WINNT_AUTH_IDENTITY_A> AuthIdentity;
  external Pointer<RPC_SECURITY_QOS> SecurityQos;
}

class RPC_BINDING_HANDLE_OPTIONS_V1 extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ComTimeout;
  @Uint32()
  external int CallTimeout;
}

class RPC_CLIENT_INFORMATION1 extends Struct {
  external Pointer<Uint8> UserName;
  external Pointer<Uint8> ComputerName;
  @Uint16()
  external int Privilege;
  @Uint32()
  external int AuthFlags;
}

class RPC_ENDPOINT_TEMPLATEW extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Uint16> ProtSeq;
  external Pointer<Uint16> Endpoint;
  external Pointer SecurityDescriptor;
  @Uint32()
  external int Backlog;
}

class RPC_ENDPOINT_TEMPLATEA extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Uint8> ProtSeq;
  external Pointer<Uint8> Endpoint;
  external Pointer SecurityDescriptor;
  @Uint32()
  external int Backlog;
}

class RPC_INTERFACE_TEMPLATEA extends Struct {
  @Uint32()
  external int Version;
  external Pointer IfSpec;
  external Pointer<GUID> MgrTypeUuid;
  external Pointer MgrEpv;
  @Uint32()
  external int Flags;
  @Uint32()
  external int MaxCalls;
  @Uint32()
  external int MaxRpcSize;
  external RPC_IF_CALLBACK_FN IfCallback;
  external Pointer<UUID_VECTOR> UuidVector;
  external Pointer<Uint8> Annotation;
  external Pointer SecurityDescriptor;
}

class RPC_INTERFACE_TEMPLATEW extends Struct {
  @Uint32()
  external int Version;
  external Pointer IfSpec;
  external Pointer<GUID> MgrTypeUuid;
  external Pointer MgrEpv;
  @Uint32()
  external int Flags;
  @Uint32()
  external int MaxCalls;
  @Uint32()
  external int MaxRpcSize;
  external RPC_IF_CALLBACK_FN IfCallback;
  external Pointer<UUID_VECTOR> UuidVector;
  external Pointer<Uint16> Annotation;
  external Pointer SecurityDescriptor;
}

class RPC_VERSION extends Struct {
  @Uint16()
  external int MajorVersion;
  @Uint16()
  external int MinorVersion;
}

class RPC_SYNTAX_IDENTIFIER extends Struct {
  external GUID SyntaxGUID;
  external RPC_VERSION SyntaxVersion;
}

class RPC_MESSAGE extends Struct {
  external Pointer Handle;
  @Uint32()
  external int DataRepresentation;
  external Pointer Buffer;
  @Uint32()
  external int BufferLength;
  @Uint32()
  external int ProcNum;
  external Pointer<RPC_SYNTAX_IDENTIFIER> TransferSyntax;
  external Pointer RpcInterfaceInformation;
  external Pointer ReservedForRuntime;
  external Pointer ManagerEpv;
  external Pointer ImportContext;
  @Uint32()
  external int RpcFlags;
}

class RPC_DISPATCH_TABLE extends Struct {
  @Uint32()
  external int DispatchTableCount;
  external RPC_DISPATCH_FUNCTION DispatchTable;
  @IntPtr()
  external int Reserved;
}

class RPC_PROTSEQ_ENDPOINT extends Struct {
  external Pointer<Uint8> RpcProtocolSequence;
  external Pointer<Uint8> Endpoint;
}

class RPC_SERVER_INTERFACE extends Struct {
  @Uint32()
  external int Length;
  external RPC_SYNTAX_IDENTIFIER InterfaceId;
  external RPC_SYNTAX_IDENTIFIER TransferSyntax;
  external Pointer<RPC_DISPATCH_TABLE> DispatchTable;
  @Uint32()
  external int RpcProtseqEndpointCount;
  external Pointer<RPC_PROTSEQ_ENDPOINT> RpcProtseqEndpoint;
  external Pointer DefaultManagerEpv;
  external Pointer InterpreterInfo;
  @Uint32()
  external int Flags;
}

class RPC_CLIENT_INTERFACE extends Struct {
  @Uint32()
  external int Length;
  external RPC_SYNTAX_IDENTIFIER InterfaceId;
  external RPC_SYNTAX_IDENTIFIER TransferSyntax;
  external Pointer<RPC_DISPATCH_TABLE> DispatchTable;
  @Uint32()
  external int RpcProtseqEndpointCount;
  external Pointer<RPC_PROTSEQ_ENDPOINT> RpcProtseqEndpoint;
  @IntPtr()
  external int Reserved;
  external Pointer InterpreterInfo;
  @Uint32()
  external int Flags;
}

class RPC_SEC_CONTEXT_KEY_INFO extends Struct {
  @Uint32()
  external int EncryptAlgorithm;
  @Uint32()
  external int KeySize;
  @Uint32()
  external int SignatureAlgorithm;
}

class RPC_TRANSFER_SYNTAX extends Struct {
  external GUID Uuid;
  @Uint16()
  external int VersMajor;
  @Uint16()
  external int VersMinor;
}

class RPC_C_OPT_COOKIE_AUTH_DESCRIPTOR extends Struct {
  @Uint32()
  external int BufferSize;
  external Pointer<Utf8> Buffer;
}

class RDR_CALLOUT_STATE extends Struct {
  @Uint32()
  external int LastError;
  external Pointer LastEEInfo;
  @Uint32()
  external int LastCalledStage;
  external Pointer<Uint16> ServerName;
  external Pointer<Uint16> ServerPort;
  external Pointer<Uint16> RemoteUser;
  external Pointer<Uint16> AuthType;
  @Uint8()
  external int ResourceTypePresent;
  @Uint8()
  external int SessionIdPresent;
  @Uint8()
  external int InterfacePresent;
  external GUID ResourceType;
  external GUID SessionId;
  external RPC_SYNTAX_IDENTIFIER Interface;
  external Pointer CertContext;
}

class I_RpcProxyCallbackInterface extends Struct {
  external I_RpcProxyIsValidMachineFn IsValidMachineFn;
  external I_RpcProxyGetClientAddressFn GetClientAddressFn;
  external I_RpcProxyGetConnectionTimeoutFn GetConnectionTimeoutFn;
  external I_RpcPerformCalloutFn PerformCalloutFn;
  external I_RpcFreeCalloutStateFn FreeCalloutStateFn;
  external I_RpcProxyGetClientSessionAndResourceUUID
      GetClientSessionAndResourceUUIDFn;
  external I_RpcProxyFilterIfFn ProxyFilterIfFn;
  external I_RpcProxyUpdatePerfCounterFn RpcProxyUpdatePerfCounterFn;
  external I_RpcProxyUpdatePerfCounterBackendServerFn
      RpcProxyUpdatePerfCounterBackendServerFn;
}

class RPC_ASYNC_NOTIFICATION_INFO extends Struct {
  @Uint32()
  external int APC;
  @Uint32()
  external int IOC;
  @Uint32()
  external int IntPtr;
  @IntPtr()
  external int hEvent;
  external PFN_RPCNOTIFICATION_ROUTINE NotificationRoutine;
}

class RPC_ASYNC_STATE extends Struct {
  @Uint32()
  external int Size;
  @Uint32()
  external int Signature;
  @Int32()
  external int Lock;
  @Uint32()
  external int Flags;
  external Pointer StubInfo;
  external Pointer UserInfo;
  external Pointer RuntimeInfo;
  @Uint32()
  external int Event;
  @Uint32()
  external int NotificationType;
  external RPC_ASYNC_NOTIFICATION_INFO u;
  @Array(4)
  external Array<IntPtr> Reserved;
}

class BinaryParam extends Struct {
  external Pointer Buffer;
  @Int16()
  external int Size;
}

class RPC_EE_INFO_PARAM extends Struct {
  @Uint32()
  external int ParameterType;
  @Uint32()
  external int u;
}

class RPC_EXTENDED_ERROR_INFO extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Utf16> ComputerName;
  @Uint32()
  external int ProcessID;
  @Uint32()
  external int u;
  @Uint32()
  external int GeneratingComponent;
  @Uint32()
  external int Status;
  @Uint16()
  external int DetectionLocation;
  @Uint16()
  external int Flags;
  @Int32()
  external int NumberOfParameters;
  @Array(4)
  external Array<RPC_EE_INFO_PARAM> Parameters;
}

class RPC_ERROR_ENUM_HANDLE extends Struct {
  @Uint32()
  external int Signature;
  external Pointer CurrentPos;
  external Pointer Head;
}

class RPC_CALL_LOCAL_ADDRESS_V1 extends Struct {
  @Uint32()
  external int Version;
  external Pointer Buffer;
  @Uint32()
  external int BufferSize;
  @Uint32()
  external int AddressFormat;
}

class RPC_CALL_ATTRIBUTES_V1_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ServerPrincipalNameBufferLength;
  external Pointer<Uint16> ServerPrincipalName;
  @Uint32()
  external int ClientPrincipalNameBufferLength;
  external Pointer<Uint16> ClientPrincipalName;
  @Uint32()
  external int AuthenticationLevel;
  @Uint32()
  external int AuthenticationService;
  @Int32()
  external int NullSession;
}

class RPC_CALL_ATTRIBUTES_V1_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ServerPrincipalNameBufferLength;
  external Pointer<Uint8> ServerPrincipalName;
  @Uint32()
  external int ClientPrincipalNameBufferLength;
  external Pointer<Uint8> ClientPrincipalName;
  @Uint32()
  external int AuthenticationLevel;
  @Uint32()
  external int AuthenticationService;
  @Int32()
  external int NullSession;
}

class RPC_CALL_ATTRIBUTES_V2_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ServerPrincipalNameBufferLength;
  external Pointer<Uint16> ServerPrincipalName;
  @Uint32()
  external int ClientPrincipalNameBufferLength;
  external Pointer<Uint16> ClientPrincipalName;
  @Uint32()
  external int AuthenticationLevel;
  @Uint32()
  external int AuthenticationService;
  @Int32()
  external int NullSession;
  @Int32()
  external int KernelModeCaller;
  @Uint32()
  external int ProtocolSequence;
  @Uint32()
  external int IsClientLocal;
  @IntPtr()
  external int ClientPID;
  @Uint32()
  external int CallStatus;
  @Uint32()
  external int CallType;
  external Pointer<RPC_CALL_LOCAL_ADDRESS_V1> CallLocalAddress;
  @Uint16()
  external int OpNum;
  external GUID InterfaceUuid;
}

class RPC_CALL_ATTRIBUTES_V2_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ServerPrincipalNameBufferLength;
  external Pointer<Uint8> ServerPrincipalName;
  @Uint32()
  external int ClientPrincipalNameBufferLength;
  external Pointer<Uint8> ClientPrincipalName;
  @Uint32()
  external int AuthenticationLevel;
  @Uint32()
  external int AuthenticationService;
  @Int32()
  external int NullSession;
  @Int32()
  external int KernelModeCaller;
  @Uint32()
  external int ProtocolSequence;
  @Uint32()
  external int IsClientLocal;
  @IntPtr()
  external int ClientPID;
  @Uint32()
  external int CallStatus;
  @Uint32()
  external int CallType;
  external Pointer<RPC_CALL_LOCAL_ADDRESS_V1> CallLocalAddress;
  @Uint16()
  external int OpNum;
  external GUID InterfaceUuid;
}

class RPC_CALL_ATTRIBUTES_V3_W extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ServerPrincipalNameBufferLength;
  external Pointer<Uint16> ServerPrincipalName;
  @Uint32()
  external int ClientPrincipalNameBufferLength;
  external Pointer<Uint16> ClientPrincipalName;
  @Uint32()
  external int AuthenticationLevel;
  @Uint32()
  external int AuthenticationService;
  @Int32()
  external int NullSession;
  @Int32()
  external int KernelModeCaller;
  @Uint32()
  external int ProtocolSequence;
  @Uint32()
  external int IsClientLocal;
  @IntPtr()
  external int ClientPID;
  @Uint32()
  external int CallStatus;
  @Uint32()
  external int CallType;
  external Pointer<RPC_CALL_LOCAL_ADDRESS_V1> CallLocalAddress;
  @Uint16()
  external int OpNum;
  external GUID InterfaceUuid;
  @Uint32()
  external int ClientIdentifierBufferLength;
  external Pointer<Uint8> ClientIdentifier;
}

class RPC_CALL_ATTRIBUTES_V3_A extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Uint32()
  external int ServerPrincipalNameBufferLength;
  external Pointer<Uint8> ServerPrincipalName;
  @Uint32()
  external int ClientPrincipalNameBufferLength;
  external Pointer<Uint8> ClientPrincipalName;
  @Uint32()
  external int AuthenticationLevel;
  @Uint32()
  external int AuthenticationService;
  @Int32()
  external int NullSession;
  @Int32()
  external int KernelModeCaller;
  @Uint32()
  external int ProtocolSequence;
  @Uint32()
  external int IsClientLocal;
  @IntPtr()
  external int ClientPID;
  @Uint32()
  external int CallStatus;
  @Uint32()
  external int CallType;
  external Pointer<RPC_CALL_LOCAL_ADDRESS_V1> CallLocalAddress;
  @Uint16()
  external int OpNum;
  external GUID InterfaceUuid;
  @Uint32()
  external int ClientIdentifierBufferLength;
  external Pointer<Uint8> ClientIdentifier;
}

class __AnonymousRecord_rpcndr_L275_C9 extends Struct {
  @Array(2)
  external Array<Pointer> pad;
  external Pointer userContext;
}

class SCONTEXT_QUEUE extends Struct {
  @Uint32()
  external int NumberOfObjects;
  external Pointer<Pointer<NDR_SCONTEXT_1>> ArrayOfObjects;
}

class ARRAY_INFO extends Struct {
  @Int32()
  external int Dimension;
  external Pointer<Uint32> BufferConformanceMark;
  external Pointer<Uint32> BufferVarianceMark;
  external Pointer<Uint32> MaxCountArray;
  external Pointer<Uint32> OffsetArray;
  external Pointer<Uint32> ActualCountArray;
}

class _NDR_ASYNC_MESSAGE extends Struct {}

class _NDR_CORRELATION_INFO extends Struct {}

class NDR_ALLOC_ALL_NODES_CONTEXT extends Struct {}

class NDR_POINTER_QUEUE_STATE extends Struct {}

class _NDR_PROC_CONTEXT extends Struct {}

class MIDL_STUB_MESSAGE extends Struct {
  external Pointer<RPC_MESSAGE> RpcMsg;
  external Pointer<Uint8> Buffer;
  external Pointer<Uint8> BufferStart;
  external Pointer<Uint8> BufferEnd;
  external Pointer<Uint8> BufferMark;
  @Uint32()
  external int BufferLength;
  @Uint32()
  external int MemorySize;
  external Pointer<Uint8> Memory;
  @Uint8()
  external int IsClient;
  @Uint8()
  external int Pad;
  @Uint16()
  external int uFlags2;
  @Int32()
  external int ReuseBuffer;
  external Pointer<NDR_ALLOC_ALL_NODES_CONTEXT> pAllocAllNodesContext;
  external Pointer<NDR_POINTER_QUEUE_STATE> pPointerQueueState;
  @Int32()
  external int IgnoreEmbeddedPointers;
  external Pointer<Uint8> PointerBufferMark;
  @Uint8()
  external int CorrDespIncrement;
  @Uint8()
  external int uFlags;
  @Uint16()
  external int UniquePtrCount;
  @IntPtr()
  external int MaxCount;
  @Uint32()
  external int Offset;
  @Uint32()
  external int ActualCount;
  @IntPtr()
  external int pfnAllocate;
  @IntPtr()
  external int pfnFree;
  external Pointer<Uint8> StackTop;
  external Pointer<Uint8> pPresentedType;
  external Pointer<Uint8> pTransmitType;
  external Pointer SavedHandle;
  external Pointer<MIDL_STUB_DESC> StubDesc;
  external Pointer<FULL_PTR_XLAT_TABLES> FullPtrXlatTables;
  @Uint32()
  external int FullPtrRefId;
  @Uint32()
  external int PointerLength;
  @Int32()
  external int _bitfield;
  @Uint32()
  external int dwDestContext;
  external Pointer pvDestContext;
  external Pointer<Pointer<NDR_SCONTEXT_1>> SavedContextHandles;
  @Int32()
  external int ParamNumber;
  external Pointer pRpcChannelBuffer;
  external Pointer<ARRAY_INFO> pArrayInfo;
  external Pointer<Uint32> SizePtrCountArray;
  external Pointer<Uint32> SizePtrOffsetArray;
  external Pointer<Uint32> SizePtrLengthArray;
  external Pointer pArgQueue;
  @Uint32()
  external int dwStubPhase;
  external Pointer LowStackMark;
  external Pointer<_NDR_ASYNC_MESSAGE> pAsyncMsg;
  external Pointer<_NDR_CORRELATION_INFO> pCorrInfo;
  external Pointer<Uint8> pCorrMemory;
  external Pointer pMemoryList;
  @IntPtr()
  external int pCSInfo;
  external Pointer<Uint8> ConformanceMark;
  external Pointer<Uint8> VarianceMark;
  @IntPtr()
  external int Unused;
  external Pointer<_NDR_PROC_CONTEXT> pContext;
  external Pointer ContextHandleHash;
  external Pointer pUserMarshalList;
  @IntPtr()
  external int Reserved51_3;
  @IntPtr()
  external int Reserved51_4;
  @IntPtr()
  external int Reserved51_5;
}

class GENERIC_BINDING_ROUTINE_PAIR extends Struct {
  external GENERIC_BINDING_ROUTINE pfnBind;
  external GENERIC_UNBIND_ROUTINE pfnUnbind;
}

class GENERIC_BINDING_INFO extends Struct {
  external Pointer pObj;
  @Uint32()
  external int Size;
  external GENERIC_BINDING_ROUTINE pfnBind;
  external GENERIC_UNBIND_ROUTINE pfnUnbind;
}

class XMIT_ROUTINE_QUINTUPLE extends Struct {
  external XMIT_HELPER_ROUTINE pfnTranslateToXmit;
  external XMIT_HELPER_ROUTINE pfnTranslateFromXmit;
  external XMIT_HELPER_ROUTINE pfnFreeXmit;
  external XMIT_HELPER_ROUTINE pfnFreeInst;
}

class USER_MARSHAL_ROUTINE_QUADRUPLE extends Struct {
  external USER_MARSHAL_SIZING_ROUTINE pfnBufferSize;
  external USER_MARSHAL_MARSHALLING_ROUTINE pfnMarshall;
  external USER_MARSHAL_UNMARSHALLING_ROUTINE pfnUnmarshall;
  external USER_MARSHAL_FREEING_ROUTINE pfnFree;
}

class USER_MARSHAL_CB extends Struct {
  @Uint32()
  external int Flags;
  external Pointer<MIDL_STUB_MESSAGE> pStubMsg;
  external Pointer<Uint8> pReserve;
  @Uint32()
  external int Signature;
  @Uint32()
  external int CBType;
  external Pointer<Uint8> pFormat;
  external Pointer<Uint8> pTypeFormat;
}

class MALLOC_FREE_STRUCT extends Struct {
  @IntPtr()
  external int pfnAllocate;
  @IntPtr()
  external int pfnFree;
}

class COMM_FAULT_OFFSETS extends Struct {
  @Int16()
  external int CommOffset;
  @Int16()
  external int FaultOffset;
}

class NDR_CS_SIZE_CONVERT_ROUTINES extends Struct {
  external CS_TYPE_NET_SIZE_ROUTINE pfnNetSize;
  external CS_TYPE_TO_NETCS_ROUTINE pfnToNetCs;
  external CS_TYPE_LOCAL_SIZE_ROUTINE pfnLocalSize;
  external CS_TYPE_FROM_NETCS_ROUTINE pfnFromNetCs;
}

class NDR_CS_ROUTINES extends Struct {
  external Pointer<NDR_CS_SIZE_CONVERT_ROUTINES> pSizeConvertRoutines;
  external Pointer<CS_TAG_GETTING_ROUTINE> pTagGettingRoutines;
}

class NDR_EXPR_DESC extends Struct {
  external Pointer<Uint16> pOffset;
  external Pointer<Uint8> pFormatExpr;
}

class MIDL_STUB_DESC extends Struct {
  external Pointer RpcInterfaceInformation;
  @IntPtr()
  external int pfnAllocate;
  @IntPtr()
  external int pfnFree;
  @Uint32()
  external int IMPLICIT_HANDLE_INFO;
  external Pointer<NDR_RUNDOWN> apfnNdrRundownRoutines;
  external Pointer<GENERIC_BINDING_ROUTINE_PAIR> aGenericBindingRoutinePairs;
  external Pointer<EXPR_EVAL> apfnExprEval;
  external Pointer<XMIT_ROUTINE_QUINTUPLE> aXmitQuintuple;
  external Pointer<Uint8> pFormatTypes;
  @Int32()
  external int fCheckBounds;
  @Uint32()
  external int Version;
  external Pointer<MALLOC_FREE_STRUCT> pMallocFreeStruct;
  @Int32()
  external int MIDLVersion;
  external Pointer<COMM_FAULT_OFFSETS> CommFaultOffsets;
  external Pointer<USER_MARSHAL_ROUTINE_QUADRUPLE> aUserMarshalQuadruple;
  external Pointer<NDR_NOTIFY_ROUTINE> NotifyRoutineTable;
  @IntPtr()
  external int mFlags;
  external Pointer<NDR_CS_ROUTINES> CsRoutineTables;
  external Pointer ProxyServerInfo;
  external Pointer<NDR_EXPR_DESC> pExprInfo;
}

class MIDL_FORMAT_STRING extends Struct {
  @Int16()
  external int Pad;
  @Uint8()
  external int Format;
}

class MIDL_METHOD_PROPERTY extends Struct {
  @Uint32()
  external int Id;
  @IntPtr()
  external int Value;
}

class MIDL_METHOD_PROPERTY_MAP extends Struct {
  @Uint32()
  external int Count;
  external Pointer<MIDL_METHOD_PROPERTY> Properties;
}

class MIDL_INTERFACE_METHOD_PROPERTIES extends Struct {
  @Uint16()
  external int MethodCount;
  external Pointer<Pointer<MIDL_METHOD_PROPERTY_MAP>> MethodProperties;
}

class MIDL_SERVER_INFO extends Struct {
  external Pointer<MIDL_STUB_DESC> pStubDesc;
  external Pointer<SERVER_ROUTINE> DispatchTable;
  external Pointer<Uint8> ProcString;
  external Pointer<Uint16> FmtStringOffset;
  external Pointer<STUB_THUNK> ThunkTable;
  external Pointer<RPC_SYNTAX_IDENTIFIER> pTransferSyntax;
  @IntPtr()
  external int nCount;
  external Pointer<MIDL_SYNTAX_INFO> pSyntaxInfo;
}

class MIDL_STUBLESS_PROXY_INFO extends Struct {
  external Pointer<MIDL_STUB_DESC> pStubDesc;
  external Pointer<Uint8> ProcFormatString;
  external Pointer<Uint16> FormatStringOffset;
  external Pointer<RPC_SYNTAX_IDENTIFIER> pTransferSyntax;
  @IntPtr()
  external int nCount;
  external Pointer<MIDL_SYNTAX_INFO> pSyntaxInfo;
}

class MIDL_SYNTAX_INFO extends Struct {
  external RPC_SYNTAX_IDENTIFIER TransferSyntax;
  external Pointer<RPC_DISPATCH_TABLE> DispatchTable;
  external Pointer<Uint8> ProcString;
  external Pointer<Uint16> FmtStringOffset;
  external Pointer<Uint8> TypeString;
  external Pointer aUserMarshalQuadruple;
  external Pointer<MIDL_INTERFACE_METHOD_PROPERTIES> pMethodProperties;
  @IntPtr()
  external int pReserved2;
}

class CLIENT_CALL_RETURN extends Struct {
  external Pointer Pointer;
  @IntPtr()
  external int Simple;
}

class FULL_PTR_XLAT_TABLES extends Struct {
  external Pointer RefIdToPointer;
  external Pointer PointerToRefId;
  @Uint32()
  external int NextRefId;
  @Uint32()
  external int XlatSide;
}

class MIDL_INTERCEPTION_INFO extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Uint8> ProcString;
  external Pointer<Uint16> ProcFormatOffsetTable;
  @Uint32()
  external int ProcCount;
  external Pointer<Uint8> TypeString;
}

class MIDL_WINRT_TYPE_SERIALIZATION_INFO extends Struct {
  @Uint32()
  external int Version;
  external Pointer<Uint8> TypeFormatString;
  @Uint16()
  external int FormatStringSize;
  @Uint16()
  external int TypeOffset;
  external Pointer<MIDL_STUB_DESC> StubDesc;
}

class NDR_USER_MARSHAL_INFO_LEVEL1 extends Struct {
  external Pointer Buffer;
  @Uint32()
  external int BufferSize;
  @IntPtr()
  external int pfnAllocate;
  @IntPtr()
  external int pfnFree;
  external Pointer pRpcChannelBuffer;
  @Array(5)
  external Array<IntPtr> Reserved;
}

class NDR_USER_MARSHAL_INFO extends Struct {
  @Uint32()
  external int InformationLevel;
  @Uint32()
  external int Anonymous;
}

class MIDL_TYPE_PICKLING_INFO extends Struct {
  @Uint32()
  external int Version;
  @Uint32()
  external int Flags;
  @Array(3)
  external Array<IntPtr> Reserved;
}

class NDR_SCONTEXT_1 extends Struct {
  @Array(2)
  external Array<Pointer> pad;
  external Pointer userContext;
}
