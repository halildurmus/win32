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
import '../../foundation/structs.g.dart';
import '../../system/deploymentservices/structs.g.dart';
import '../../system/deploymentservices/callbacks.g.dart';
import '../../system/registry/structs.g.dart'; // -----------------------------------------------------------------------

// wdsclientapi.dll
// -----------------------------------------------------------------------
final _wdsclientapi = DynamicLibrary.open('wdsclientapi.dll');

int WdsCliAuthorizeSession(
  int hSession,
  Pointer<WDS_CLI_CRED> pCred,
) =>
    _WdsCliAuthorizeSession(
      hSession,
      pCred,
    );

late final _WdsCliAuthorizeSession = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<WDS_CLI_CRED> pCred,
),
    int Function(
  int hSession,
  Pointer<WDS_CLI_CRED> pCred,
)>('WdsCliAuthorizeSession');

int WdsCliCancelTransfer(
  int hTransfer,
) =>
    _WdsCliCancelTransfer(
      hTransfer,
    );

late final _WdsCliCancelTransfer = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hTransfer,
),
    int Function(
  int hTransfer,
)>('WdsCliCancelTransfer');

int WdsCliClose(
  int $Handle,
) =>
    _WdsCliClose(
      $Handle,
    );

late final _WdsCliClose = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
),
    int Function(
  int $Handle,
)>('WdsCliClose');

int WdsCliCreateSession(
  Pointer<Utf16> pwszServer,
  Pointer<WDS_CLI_CRED> pCred,
  Pointer<IntPtr> phSession,
) =>
    _WdsCliCreateSession(
      pwszServer,
      pCred,
      phSession,
    );

late final _WdsCliCreateSession = _wdsclientapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServer,
  Pointer<WDS_CLI_CRED> pCred,
  Pointer<IntPtr> phSession,
),
    int Function(
  Pointer<Utf16> pwszServer,
  Pointer<WDS_CLI_CRED> pCred,
  Pointer<IntPtr> phSession,
)>('WdsCliCreateSession');

int WdsCliFindFirstImage(
  int hSession,
  Pointer<IntPtr> phFindHandle,
) =>
    _WdsCliFindFirstImage(
      hSession,
      phFindHandle,
    );

late final _WdsCliFindFirstImage = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<IntPtr> phFindHandle,
),
    int Function(
  int hSession,
  Pointer<IntPtr> phFindHandle,
)>('WdsCliFindFirstImage');

int WdsCliFindNextImage(
  int $Handle,
) =>
    _WdsCliFindNextImage(
      $Handle,
    );

late final _WdsCliFindNextImage = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
),
    int Function(
  int $Handle,
)>('WdsCliFindNextImage');

int WdsCliFreeStringArray(
  Pointer<Pointer<Utf16>> ppwszArray,
  int ulCount,
) =>
    _WdsCliFreeStringArray(
      ppwszArray,
      ulCount,
    );

late final _WdsCliFreeStringArray = _wdsclientapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<Utf16>> ppwszArray,
  Uint32 ulCount,
),
    int Function(
  Pointer<Pointer<Utf16>> ppwszArray,
  int ulCount,
)>('WdsCliFreeStringArray');

int WdsCliGetDriverQueryXml(
  Pointer<Utf16> pwszWinDirPath,
  Pointer<Pointer<Utf16>> ppwszDriverQuery,
) =>
    _WdsCliGetDriverQueryXml(
      pwszWinDirPath,
      ppwszDriverQuery,
    );

late final _WdsCliGetDriverQueryXml = _wdsclientapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszWinDirPath,
  Pointer<Pointer<Utf16>> ppwszDriverQuery,
),
    int Function(
  Pointer<Utf16> pwszWinDirPath,
  Pointer<Pointer<Utf16>> ppwszDriverQuery,
)>('WdsCliGetDriverQueryXml');

int WdsCliGetEnumerationFlags(
  int $Handle,
  Pointer<Uint32> pdwFlags,
) =>
    _WdsCliGetEnumerationFlags(
      $Handle,
      pdwFlags,
    );

late final _WdsCliGetEnumerationFlags = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr $Handle,
  Pointer<Uint32> pdwFlags,
),
    int Function(
  int $Handle,
  Pointer<Uint32> pdwFlags,
)>('WdsCliGetEnumerationFlags');

int WdsCliGetImageArchitecture(
  int hIfh,
  Pointer<Uint32> pdwValue,
) =>
    _WdsCliGetImageArchitecture(
      hIfh,
      pdwValue,
    );

late final _WdsCliGetImageArchitecture = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Uint32> pdwValue,
),
    int Function(
  int hIfh,
  Pointer<Uint32> pdwValue,
)>('WdsCliGetImageArchitecture');

int WdsCliGetImageDescription(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImageDescription(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImageDescription = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImageDescription');

int WdsCliGetImageFiles(
  int hIfh,
  Pointer<Pointer<Pointer<Utf16>>> pppwszFiles,
  Pointer<Uint32> pdwCount,
) =>
    _WdsCliGetImageFiles(
      hIfh,
      pppwszFiles,
      pdwCount,
    );

late final _WdsCliGetImageFiles = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Pointer<Utf16>>> pppwszFiles,
  Pointer<Uint32> pdwCount,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Pointer<Utf16>>> pppwszFiles,
  Pointer<Uint32> pdwCount,
)>('WdsCliGetImageFiles');

int WdsCliGetImageGroup(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImageGroup(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImageGroup = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImageGroup');

int WdsCliGetImageHalName(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImageHalName(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImageHalName = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImageHalName');

int WdsCliGetImageHandleFromFindHandle(
  int FindHandle,
  Pointer<IntPtr> phImageHandle,
) =>
    _WdsCliGetImageHandleFromFindHandle(
      FindHandle,
      phImageHandle,
    );

late final _WdsCliGetImageHandleFromFindHandle = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr FindHandle,
  Pointer<IntPtr> phImageHandle,
),
    int Function(
  int FindHandle,
  Pointer<IntPtr> phImageHandle,
)>('WdsCliGetImageHandleFromFindHandle');

int WdsCliGetImageHandleFromTransferHandle(
  int hTransfer,
  Pointer<IntPtr> phImageHandle,
) =>
    _WdsCliGetImageHandleFromTransferHandle(
      hTransfer,
      phImageHandle,
    );

late final _WdsCliGetImageHandleFromTransferHandle =
    _wdsclientapi.lookupFunction<
        Int32 Function(
  IntPtr hTransfer,
  Pointer<IntPtr> phImageHandle,
),
        int Function(
  int hTransfer,
  Pointer<IntPtr> phImageHandle,
)>('WdsCliGetImageHandleFromTransferHandle');

int WdsCliGetImageIndex(
  int hIfh,
  Pointer<Uint32> pdwValue,
) =>
    _WdsCliGetImageIndex(
      hIfh,
      pdwValue,
    );

late final _WdsCliGetImageIndex = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Uint32> pdwValue,
),
    int Function(
  int hIfh,
  Pointer<Uint32> pdwValue,
)>('WdsCliGetImageIndex');

int WdsCliGetImageLanguage(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImageLanguage(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImageLanguage = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImageLanguage');

int WdsCliGetImageLanguages(
  int hIfh,
  Pointer<Pointer<Pointer<Int8>>> pppszValues,
  Pointer<Uint32> pdwNumValues,
) =>
    _WdsCliGetImageLanguages(
      hIfh,
      pppszValues,
      pdwNumValues,
    );

late final _WdsCliGetImageLanguages = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Pointer<Int8>>> pppszValues,
  Pointer<Uint32> pdwNumValues,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Pointer<Int8>>> pppszValues,
  Pointer<Uint32> pdwNumValues,
)>('WdsCliGetImageLanguages');

int WdsCliGetImageLastModifiedTime(
  int hIfh,
  Pointer<Pointer<SYSTEMTIME>> ppSysTimeValue,
) =>
    _WdsCliGetImageLastModifiedTime(
      hIfh,
      ppSysTimeValue,
    );

late final _WdsCliGetImageLastModifiedTime = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<SYSTEMTIME>> ppSysTimeValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<SYSTEMTIME>> ppSysTimeValue,
)>('WdsCliGetImageLastModifiedTime');

int WdsCliGetImageName(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImageName(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImageName = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImageName');

int WdsCliGetImageNamespace(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImageNamespace(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImageNamespace = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImageNamespace');

int WdsCliGetImageParameter(
  int hIfh,
  int ParamType,
  Pointer pResponse,
  int uResponseLen,
) =>
    _WdsCliGetImageParameter(
      hIfh,
      ParamType,
      pResponse,
      uResponseLen,
    );

late final _WdsCliGetImageParameter = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Int32 ParamType,
  Pointer pResponse,
  Uint32 uResponseLen,
),
    int Function(
  int hIfh,
  int ParamType,
  Pointer pResponse,
  int uResponseLen,
)>('WdsCliGetImageParameter');

int WdsCliGetImagePath(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImagePath(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImagePath = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImagePath');

int WdsCliGetImageSize(
  int hIfh,
  Pointer<Uint64> pullValue,
) =>
    _WdsCliGetImageSize(
      hIfh,
      pullValue,
    );

late final _WdsCliGetImageSize = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Uint64> pullValue,
),
    int Function(
  int hIfh,
  Pointer<Uint64> pullValue,
)>('WdsCliGetImageSize');

int WdsCliGetImageType(
  int hIfh,
  Pointer<Int32> pImageType,
) =>
    _WdsCliGetImageType(
      hIfh,
      pImageType,
    );

late final _WdsCliGetImageType = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Int32> pImageType,
),
    int Function(
  int hIfh,
  Pointer<Int32> pImageType,
)>('WdsCliGetImageType');

int WdsCliGetImageVersion(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
) =>
    _WdsCliGetImageVersion(
      hIfh,
      ppwszValue,
    );

late final _WdsCliGetImageVersion = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
),
    int Function(
  int hIfh,
  Pointer<Pointer<Utf16>> ppwszValue,
)>('WdsCliGetImageVersion');

int WdsCliGetTransferSize(
  int hIfh,
  Pointer<Uint64> pullValue,
) =>
    _WdsCliGetTransferSize(
      hIfh,
      pullValue,
    );

late final _WdsCliGetTransferSize = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hIfh,
  Pointer<Uint64> pullValue,
),
    int Function(
  int hIfh,
  Pointer<Uint64> pullValue,
)>('WdsCliGetTransferSize');

int WdsCliInitializeLog(
  int hSession,
  int ulClientArchitecture,
  Pointer<Utf16> pwszClientId,
  Pointer<Utf16> pwszClientAddress,
) =>
    _WdsCliInitializeLog(
      hSession,
      ulClientArchitecture,
      pwszClientId,
      pwszClientAddress,
    );

late final _WdsCliInitializeLog = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Uint32 ulClientArchitecture,
  Pointer<Utf16> pwszClientId,
  Pointer<Utf16> pwszClientAddress,
),
    int Function(
  int hSession,
  int ulClientArchitecture,
  Pointer<Utf16> pwszClientId,
  Pointer<Utf16> pwszClientAddress,
)>('WdsCliInitializeLog');

int WdsCliLog(
  int hSession,
  int ulLogLevel,
  int ulMessageCode,
) =>
    _WdsCliLog(
      hSession,
      ulLogLevel,
      ulMessageCode,
    );

late final _WdsCliLog = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Uint32 ulLogLevel,
  Uint32 ulMessageCode,
),
    int Function(
  int hSession,
  int ulLogLevel,
  int ulMessageCode,
)>('WdsCliLog');

int WdsCliObtainDriverPackages(
  int hImage,
  Pointer<Pointer<Utf16>> ppwszServerName,
  Pointer<Pointer<Pointer<Utf16>>> pppwszDriverPackages,
  Pointer<Uint32> pulCount,
) =>
    _WdsCliObtainDriverPackages(
      hImage,
      ppwszServerName,
      pppwszDriverPackages,
      pulCount,
    );

late final _WdsCliObtainDriverPackages = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hImage,
  Pointer<Pointer<Utf16>> ppwszServerName,
  Pointer<Pointer<Pointer<Utf16>>> pppwszDriverPackages,
  Pointer<Uint32> pulCount,
),
    int Function(
  int hImage,
  Pointer<Pointer<Utf16>> ppwszServerName,
  Pointer<Pointer<Pointer<Utf16>>> pppwszDriverPackages,
  Pointer<Uint32> pulCount,
)>('WdsCliObtainDriverPackages');

int WdsCliObtainDriverPackagesEx(
  int hSession,
  Pointer<Utf16> pwszMachineInfo,
  Pointer<Pointer<Utf16>> ppwszServerName,
  Pointer<Pointer<Pointer<Utf16>>> pppwszDriverPackages,
  Pointer<Uint32> pulCount,
) =>
    _WdsCliObtainDriverPackagesEx(
      hSession,
      pwszMachineInfo,
      ppwszServerName,
      pppwszDriverPackages,
      pulCount,
    );

late final _WdsCliObtainDriverPackagesEx = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hSession,
  Pointer<Utf16> pwszMachineInfo,
  Pointer<Pointer<Utf16>> ppwszServerName,
  Pointer<Pointer<Pointer<Utf16>>> pppwszDriverPackages,
  Pointer<Uint32> pulCount,
),
    int Function(
  int hSession,
  Pointer<Utf16> pwszMachineInfo,
  Pointer<Pointer<Utf16>> ppwszServerName,
  Pointer<Pointer<Pointer<Utf16>>> pppwszDriverPackages,
  Pointer<Uint32> pulCount,
)>('WdsCliObtainDriverPackagesEx');

int WdsCliRegisterTrace(
  Pointer<NativeFunction<PFN_WdsCliTraceFunction>> pfn,
) =>
    _WdsCliRegisterTrace(
      pfn,
    );

late final _WdsCliRegisterTrace = _wdsclientapi.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PFN_WdsCliTraceFunction>> pfn,
),
    int Function(
  Pointer<NativeFunction<PFN_WdsCliTraceFunction>> pfn,
)>('WdsCliRegisterTrace');

void WdsCliSetTransferBufferSize(
  int ulSizeInBytes,
) =>
    _WdsCliSetTransferBufferSize(
      ulSizeInBytes,
    );

late final _WdsCliSetTransferBufferSize = _wdsclientapi.lookupFunction<
    Void Function(
  Uint32 ulSizeInBytes,
),
    void Function(
  int ulSizeInBytes,
)>('WdsCliSetTransferBufferSize');

int WdsCliTransferFile(
  Pointer<Utf16> pwszServer,
  Pointer<Utf16> pwszNamespace,
  Pointer<Utf16> pwszRemoteFilePath,
  Pointer<Utf16> pwszLocalFilePath,
  int dwFlags,
  int dwReserved,
  Pointer<NativeFunction<PFN_WdsCliCallback>> pfnWdsCliCallback,
  Pointer pvUserData,
  Pointer<IntPtr> phTransfer,
) =>
    _WdsCliTransferFile(
      pwszServer,
      pwszNamespace,
      pwszRemoteFilePath,
      pwszLocalFilePath,
      dwFlags,
      dwReserved,
      pfnWdsCliCallback,
      pvUserData,
      phTransfer,
    );

late final _WdsCliTransferFile = _wdsclientapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pwszServer,
  Pointer<Utf16> pwszNamespace,
  Pointer<Utf16> pwszRemoteFilePath,
  Pointer<Utf16> pwszLocalFilePath,
  Uint32 dwFlags,
  Uint32 dwReserved,
  Pointer<NativeFunction<PFN_WdsCliCallback>> pfnWdsCliCallback,
  Pointer pvUserData,
  Pointer<IntPtr> phTransfer,
),
    int Function(
  Pointer<Utf16> pwszServer,
  Pointer<Utf16> pwszNamespace,
  Pointer<Utf16> pwszRemoteFilePath,
  Pointer<Utf16> pwszLocalFilePath,
  int dwFlags,
  int dwReserved,
  Pointer<NativeFunction<PFN_WdsCliCallback>> pfnWdsCliCallback,
  Pointer pvUserData,
  Pointer<IntPtr> phTransfer,
)>('WdsCliTransferFile');

int WdsCliTransferImage(
  int hImage,
  Pointer<Utf16> pwszLocalPath,
  int dwFlags,
  int dwReserved,
  Pointer<NativeFunction<PFN_WdsCliCallback>> pfnWdsCliCallback,
  Pointer pvUserData,
  Pointer<IntPtr> phTransfer,
) =>
    _WdsCliTransferImage(
      hImage,
      pwszLocalPath,
      dwFlags,
      dwReserved,
      pfnWdsCliCallback,
      pvUserData,
      phTransfer,
    );

late final _WdsCliTransferImage = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hImage,
  Pointer<Utf16> pwszLocalPath,
  Uint32 dwFlags,
  Uint32 dwReserved,
  Pointer<NativeFunction<PFN_WdsCliCallback>> pfnWdsCliCallback,
  Pointer pvUserData,
  Pointer<IntPtr> phTransfer,
),
    int Function(
  int hImage,
  Pointer<Utf16> pwszLocalPath,
  int dwFlags,
  int dwReserved,
  Pointer<NativeFunction<PFN_WdsCliCallback>> pfnWdsCliCallback,
  Pointer pvUserData,
  Pointer<IntPtr> phTransfer,
)>('WdsCliTransferImage');

int WdsCliWaitForTransfer(
  int hTransfer,
) =>
    _WdsCliWaitForTransfer(
      hTransfer,
    );

late final _WdsCliWaitForTransfer = _wdsclientapi.lookupFunction<
    Int32 Function(
  IntPtr hTransfer,
),
    int Function(
  int hTransfer,
)>('WdsCliWaitForTransfer');

// -----------------------------------------------------------------------
// wdspxe.dll
// -----------------------------------------------------------------------
final _wdspxe = DynamicLibrary.open('wdspxe.dll');

int PxeAsyncRecvDone(
  int hClientRequest,
  int Action,
) =>
    _PxeAsyncRecvDone(
      hClientRequest,
      Action,
    );

late final _PxeAsyncRecvDone = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hClientRequest,
  Uint32 Action,
),
    int Function(
  int hClientRequest,
  int Action,
)>('PxeAsyncRecvDone');

int PxeDhcpAppendOption(
  Pointer pReplyPacket,
  int uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
  int bOption,
  int bOptionLen,
  Pointer pValue,
) =>
    _PxeDhcpAppendOption(
      pReplyPacket,
      uMaxReplyPacketLen,
      puReplyPacketLen,
      bOption,
      bOptionLen,
      pValue,
    );

late final _PxeDhcpAppendOption = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pReplyPacket,
  Uint32 uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
  Uint8 bOption,
  Uint8 bOptionLen,
  Pointer pValue,
),
    int Function(
  Pointer pReplyPacket,
  int uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
  int bOption,
  int bOptionLen,
  Pointer pValue,
)>('PxeDhcpAppendOption');

int PxeDhcpAppendOptionRaw(
  Pointer pReplyPacket,
  int uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
  int uBufferLen,
  Pointer pBuffer,
) =>
    _PxeDhcpAppendOptionRaw(
      pReplyPacket,
      uMaxReplyPacketLen,
      puReplyPacketLen,
      uBufferLen,
      pBuffer,
    );

late final _PxeDhcpAppendOptionRaw = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pReplyPacket,
  Uint32 uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
  Uint16 uBufferLen,
  Pointer pBuffer,
),
    int Function(
  Pointer pReplyPacket,
  int uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
  int uBufferLen,
  Pointer pBuffer,
)>('PxeDhcpAppendOptionRaw');

int PxeDhcpGetOptionValue(
  Pointer pPacket,
  int uPacketLen,
  int uInstance,
  int bOption,
  Pointer<Uint8> pbOptionLen,
  Pointer<Pointer> ppOptionValue,
) =>
    _PxeDhcpGetOptionValue(
      pPacket,
      uPacketLen,
      uInstance,
      bOption,
      pbOptionLen,
      ppOptionValue,
    );

late final _PxeDhcpGetOptionValue = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Uint32 uInstance,
  Uint8 bOption,
  Pointer<Uint8> pbOptionLen,
  Pointer<Pointer> ppOptionValue,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  int uInstance,
  int bOption,
  Pointer<Uint8> pbOptionLen,
  Pointer<Pointer> ppOptionValue,
)>('PxeDhcpGetOptionValue');

int PxeDhcpGetVendorOptionValue(
  Pointer pPacket,
  int uPacketLen,
  int bOption,
  int uInstance,
  Pointer<Uint8> pbOptionLen,
  Pointer<Pointer> ppOptionValue,
) =>
    _PxeDhcpGetVendorOptionValue(
      pPacket,
      uPacketLen,
      bOption,
      uInstance,
      pbOptionLen,
      ppOptionValue,
    );

late final _PxeDhcpGetVendorOptionValue = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Uint8 bOption,
  Uint32 uInstance,
  Pointer<Uint8> pbOptionLen,
  Pointer<Pointer> ppOptionValue,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  int bOption,
  int uInstance,
  Pointer<Uint8> pbOptionLen,
  Pointer<Pointer> ppOptionValue,
)>('PxeDhcpGetVendorOptionValue');

int PxeDhcpInitialize(
  Pointer pRecvPacket,
  int uRecvPacketLen,
  Pointer pReplyPacket,
  int uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
) =>
    _PxeDhcpInitialize(
      pRecvPacket,
      uRecvPacketLen,
      pReplyPacket,
      uMaxReplyPacketLen,
      puReplyPacketLen,
    );

late final _PxeDhcpInitialize = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pRecvPacket,
  Uint32 uRecvPacketLen,
  Pointer pReplyPacket,
  Uint32 uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
),
    int Function(
  Pointer pRecvPacket,
  int uRecvPacketLen,
  Pointer pReplyPacket,
  int uMaxReplyPacketLen,
  Pointer<Uint32> puReplyPacketLen,
)>('PxeDhcpInitialize');

int PxeDhcpIsValid(
  Pointer pPacket,
  int uPacketLen,
  int bRequestPacket,
  Pointer<Int32> pbPxeOptionPresent,
) =>
    _PxeDhcpIsValid(
      pPacket,
      uPacketLen,
      bRequestPacket,
      pbPxeOptionPresent,
    );

late final _PxeDhcpIsValid = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Int32 bRequestPacket,
  Pointer<Int32> pbPxeOptionPresent,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  int bRequestPacket,
  Pointer<Int32> pbPxeOptionPresent,
)>('PxeDhcpIsValid');

int PxeDhcpv6AppendOption(
  Pointer pReply,
  int cbReply,
  Pointer<Uint32> pcbReplyUsed,
  int wOptionType,
  int cbOption,
  Pointer pOption,
) =>
    _PxeDhcpv6AppendOption(
      pReply,
      cbReply,
      pcbReplyUsed,
      wOptionType,
      cbOption,
      pOption,
    );

late final _PxeDhcpv6AppendOption = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pReply,
  Uint32 cbReply,
  Pointer<Uint32> pcbReplyUsed,
  Uint16 wOptionType,
  Uint16 cbOption,
  Pointer pOption,
),
    int Function(
  Pointer pReply,
  int cbReply,
  Pointer<Uint32> pcbReplyUsed,
  int wOptionType,
  int cbOption,
  Pointer pOption,
)>('PxeDhcpv6AppendOption');

int PxeDhcpv6AppendOptionRaw(
  Pointer pReply,
  int cbReply,
  Pointer<Uint32> pcbReplyUsed,
  int cbBuffer,
  Pointer pBuffer,
) =>
    _PxeDhcpv6AppendOptionRaw(
      pReply,
      cbReply,
      pcbReplyUsed,
      cbBuffer,
      pBuffer,
    );

late final _PxeDhcpv6AppendOptionRaw = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pReply,
  Uint32 cbReply,
  Pointer<Uint32> pcbReplyUsed,
  Uint16 cbBuffer,
  Pointer pBuffer,
),
    int Function(
  Pointer pReply,
  int cbReply,
  Pointer<Uint32> pcbReplyUsed,
  int cbBuffer,
  Pointer pBuffer,
)>('PxeDhcpv6AppendOptionRaw');

int PxeDhcpv6CreateRelayRepl(
  Pointer<PXE_DHCPV6_NESTED_RELAY_MESSAGE> pRelayMessages,
  int nRelayMessages,
  Pointer<Uint8> pInnerPacket,
  int cbInnerPacket,
  Pointer pReplyBuffer,
  int cbReplyBuffer,
  Pointer<Uint32> pcbReplyBuffer,
) =>
    _PxeDhcpv6CreateRelayRepl(
      pRelayMessages,
      nRelayMessages,
      pInnerPacket,
      cbInnerPacket,
      pReplyBuffer,
      cbReplyBuffer,
      pcbReplyBuffer,
    );

late final _PxeDhcpv6CreateRelayRepl = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer<PXE_DHCPV6_NESTED_RELAY_MESSAGE> pRelayMessages,
  Uint32 nRelayMessages,
  Pointer<Uint8> pInnerPacket,
  Uint32 cbInnerPacket,
  Pointer pReplyBuffer,
  Uint32 cbReplyBuffer,
  Pointer<Uint32> pcbReplyBuffer,
),
    int Function(
  Pointer<PXE_DHCPV6_NESTED_RELAY_MESSAGE> pRelayMessages,
  int nRelayMessages,
  Pointer<Uint8> pInnerPacket,
  int cbInnerPacket,
  Pointer pReplyBuffer,
  int cbReplyBuffer,
  Pointer<Uint32> pcbReplyBuffer,
)>('PxeDhcpv6CreateRelayRepl');

int PxeDhcpv6GetOptionValue(
  Pointer pPacket,
  int uPacketLen,
  int uInstance,
  int wOption,
  Pointer<Uint16> pwOptionLen,
  Pointer<Pointer> ppOptionValue,
) =>
    _PxeDhcpv6GetOptionValue(
      pPacket,
      uPacketLen,
      uInstance,
      wOption,
      pwOptionLen,
      ppOptionValue,
    );

late final _PxeDhcpv6GetOptionValue = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Uint32 uInstance,
  Uint16 wOption,
  Pointer<Uint16> pwOptionLen,
  Pointer<Pointer> ppOptionValue,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  int uInstance,
  int wOption,
  Pointer<Uint16> pwOptionLen,
  Pointer<Pointer> ppOptionValue,
)>('PxeDhcpv6GetOptionValue');

int PxeDhcpv6GetVendorOptionValue(
  Pointer pPacket,
  int uPacketLen,
  int dwEnterpriseNumber,
  int wOption,
  int uInstance,
  Pointer<Uint16> pwOptionLen,
  Pointer<Pointer> ppOptionValue,
) =>
    _PxeDhcpv6GetVendorOptionValue(
      pPacket,
      uPacketLen,
      dwEnterpriseNumber,
      wOption,
      uInstance,
      pwOptionLen,
      ppOptionValue,
    );

late final _PxeDhcpv6GetVendorOptionValue = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Uint32 dwEnterpriseNumber,
  Uint16 wOption,
  Uint32 uInstance,
  Pointer<Uint16> pwOptionLen,
  Pointer<Pointer> ppOptionValue,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  int dwEnterpriseNumber,
  int wOption,
  int uInstance,
  Pointer<Uint16> pwOptionLen,
  Pointer<Pointer> ppOptionValue,
)>('PxeDhcpv6GetVendorOptionValue');

int PxeDhcpv6Initialize(
  Pointer pRequest,
  int cbRequest,
  Pointer pReply,
  int cbReply,
  Pointer<Uint32> pcbReplyUsed,
) =>
    _PxeDhcpv6Initialize(
      pRequest,
      cbRequest,
      pReply,
      cbReply,
      pcbReplyUsed,
    );

late final _PxeDhcpv6Initialize = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pRequest,
  Uint32 cbRequest,
  Pointer pReply,
  Uint32 cbReply,
  Pointer<Uint32> pcbReplyUsed,
),
    int Function(
  Pointer pRequest,
  int cbRequest,
  Pointer pReply,
  int cbReply,
  Pointer<Uint32> pcbReplyUsed,
)>('PxeDhcpv6Initialize');

int PxeDhcpv6IsValid(
  Pointer pPacket,
  int uPacketLen,
  int bRequestPacket,
  Pointer<Int32> pbPxeOptionPresent,
) =>
    _PxeDhcpv6IsValid(
      pPacket,
      uPacketLen,
      bRequestPacket,
      pbPxeOptionPresent,
    );

late final _PxeDhcpv6IsValid = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Int32 bRequestPacket,
  Pointer<Int32> pbPxeOptionPresent,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  int bRequestPacket,
  Pointer<Int32> pbPxeOptionPresent,
)>('PxeDhcpv6IsValid');

int PxeDhcpv6ParseRelayForw(
  Pointer pRelayForwPacket,
  int uRelayForwPacketLen,
  Pointer<PXE_DHCPV6_NESTED_RELAY_MESSAGE> pRelayMessages,
  int nRelayMessages,
  Pointer<Uint32> pnRelayMessages,
  Pointer<Pointer<Uint8>> ppInnerPacket,
  Pointer<Uint32> pcbInnerPacket,
) =>
    _PxeDhcpv6ParseRelayForw(
      pRelayForwPacket,
      uRelayForwPacketLen,
      pRelayMessages,
      nRelayMessages,
      pnRelayMessages,
      ppInnerPacket,
      pcbInnerPacket,
    );

late final _PxeDhcpv6ParseRelayForw = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer pRelayForwPacket,
  Uint32 uRelayForwPacketLen,
  Pointer<PXE_DHCPV6_NESTED_RELAY_MESSAGE> pRelayMessages,
  Uint32 nRelayMessages,
  Pointer<Uint32> pnRelayMessages,
  Pointer<Pointer<Uint8>> ppInnerPacket,
  Pointer<Uint32> pcbInnerPacket,
),
    int Function(
  Pointer pRelayForwPacket,
  int uRelayForwPacketLen,
  Pointer<PXE_DHCPV6_NESTED_RELAY_MESSAGE> pRelayMessages,
  int nRelayMessages,
  Pointer<Uint32> pnRelayMessages,
  Pointer<Pointer<Uint8>> ppInnerPacket,
  Pointer<Uint32> pcbInnerPacket,
)>('PxeDhcpv6ParseRelayForw');

int PxeGetServerInfo(
  int uInfoType,
  Pointer pBuffer,
  int uBufferLen,
) =>
    _PxeGetServerInfo(
      uInfoType,
      pBuffer,
      uBufferLen,
    );

late final _PxeGetServerInfo = _wdspxe.lookupFunction<
    Uint32 Function(
  Uint32 uInfoType,
  Pointer pBuffer,
  Uint32 uBufferLen,
),
    int Function(
  int uInfoType,
  Pointer pBuffer,
  int uBufferLen,
)>('PxeGetServerInfo');

int PxeGetServerInfoEx(
  int uInfoType,
  Pointer pBuffer,
  int uBufferLen,
  Pointer<Uint32> puBufferUsed,
) =>
    _PxeGetServerInfoEx(
      uInfoType,
      pBuffer,
      uBufferLen,
      puBufferUsed,
    );

late final _PxeGetServerInfoEx = _wdspxe.lookupFunction<
    Uint32 Function(
  Uint32 uInfoType,
  Pointer pBuffer,
  Uint32 uBufferLen,
  Pointer<Uint32> puBufferUsed,
),
    int Function(
  int uInfoType,
  Pointer pBuffer,
  int uBufferLen,
  Pointer<Uint32> puBufferUsed,
)>('PxeGetServerInfoEx');

Pointer PxePacketAllocate(
  int hProvider,
  int hClientRequest,
  int uSize,
) =>
    _PxePacketAllocate(
      hProvider,
      hClientRequest,
      uSize,
    );

late final _PxePacketAllocate = _wdspxe.lookupFunction<
    Pointer Function(
  IntPtr hProvider,
  IntPtr hClientRequest,
  Uint32 uSize,
),
    Pointer Function(
  int hProvider,
  int hClientRequest,
  int uSize,
)>('PxePacketAllocate');

int PxePacketFree(
  int hProvider,
  int hClientRequest,
  Pointer pPacket,
) =>
    _PxePacketFree(
      hProvider,
      hClientRequest,
      pPacket,
    );

late final _PxePacketFree = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hProvider,
  IntPtr hClientRequest,
  Pointer pPacket,
),
    int Function(
  int hProvider,
  int hClientRequest,
  Pointer pPacket,
)>('PxePacketFree');

int PxeProviderEnumClose(
  int hEnum,
) =>
    _PxeProviderEnumClose(
      hEnum,
    );

late final _PxeProviderEnumClose = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hEnum,
),
    int Function(
  int hEnum,
)>('PxeProviderEnumClose');

int PxeProviderEnumFirst(
  Pointer<IntPtr> phEnum,
) =>
    _PxeProviderEnumFirst(
      phEnum,
    );

late final _PxeProviderEnumFirst = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> phEnum,
),
    int Function(
  Pointer<IntPtr> phEnum,
)>('PxeProviderEnumFirst');

int PxeProviderEnumNext(
  int hEnum,
  Pointer<Pointer<PXE_PROVIDER>> ppProvider,
) =>
    _PxeProviderEnumNext(
      hEnum,
      ppProvider,
    );

late final _PxeProviderEnumNext = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hEnum,
  Pointer<Pointer<PXE_PROVIDER>> ppProvider,
),
    int Function(
  int hEnum,
  Pointer<Pointer<PXE_PROVIDER>> ppProvider,
)>('PxeProviderEnumNext');

int PxeProviderFreeInfo(
  Pointer<PXE_PROVIDER> pProvider,
) =>
    _PxeProviderFreeInfo(
      pProvider,
    );

late final _PxeProviderFreeInfo = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer<PXE_PROVIDER> pProvider,
),
    int Function(
  Pointer<PXE_PROVIDER> pProvider,
)>('PxeProviderFreeInfo');

int PxeProviderQueryIndex(
  Pointer<Utf16> pszProviderName,
  Pointer<Uint32> puIndex,
) =>
    _PxeProviderQueryIndex(
      pszProviderName,
      puIndex,
    );

late final _PxeProviderQueryIndex = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszProviderName,
  Pointer<Uint32> puIndex,
),
    int Function(
  Pointer<Utf16> pszProviderName,
  Pointer<Uint32> puIndex,
)>('PxeProviderQueryIndex');

int PxeProviderRegister(
  Pointer<Utf16> pszProviderName,
  Pointer<Utf16> pszModulePath,
  int Index,
  int bIsCritical,
  Pointer<IntPtr> phProviderKey,
) =>
    _PxeProviderRegister(
      pszProviderName,
      pszModulePath,
      Index,
      bIsCritical,
      phProviderKey,
    );

late final _PxeProviderRegister = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszProviderName,
  Pointer<Utf16> pszModulePath,
  Uint32 Index,
  Int32 bIsCritical,
  Pointer<IntPtr> phProviderKey,
),
    int Function(
  Pointer<Utf16> pszProviderName,
  Pointer<Utf16> pszModulePath,
  int Index,
  int bIsCritical,
  Pointer<IntPtr> phProviderKey,
)>('PxeProviderRegister');

int PxeProviderSetAttribute(
  int hProvider,
  int Attribute,
  Pointer pParameterBuffer,
  int uParamLen,
) =>
    _PxeProviderSetAttribute(
      hProvider,
      Attribute,
      pParameterBuffer,
      uParamLen,
    );

late final _PxeProviderSetAttribute = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hProvider,
  Uint32 Attribute,
  Pointer pParameterBuffer,
  Uint32 uParamLen,
),
    int Function(
  int hProvider,
  int Attribute,
  Pointer pParameterBuffer,
  int uParamLen,
)>('PxeProviderSetAttribute');

int PxeProviderUnRegister(
  Pointer<Utf16> pszProviderName,
) =>
    _PxeProviderUnRegister(
      pszProviderName,
    );

late final _PxeProviderUnRegister = _wdspxe.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> pszProviderName,
),
    int Function(
  Pointer<Utf16> pszProviderName,
)>('PxeProviderUnRegister');

int PxeRegisterCallback(
  int hProvider,
  int CallbackType,
  Pointer pCallbackFunction,
  Pointer pContext,
) =>
    _PxeRegisterCallback(
      hProvider,
      CallbackType,
      pCallbackFunction,
      pContext,
    );

late final _PxeRegisterCallback = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hProvider,
  Uint32 CallbackType,
  Pointer pCallbackFunction,
  Pointer pContext,
),
    int Function(
  int hProvider,
  int CallbackType,
  Pointer pCallbackFunction,
  Pointer pContext,
)>('PxeRegisterCallback');

int PxeSendReply(
  int hClientRequest,
  Pointer pPacket,
  int uPacketLen,
  Pointer<PXE_ADDRESS> pAddress,
) =>
    _PxeSendReply(
      hClientRequest,
      pPacket,
      uPacketLen,
      pAddress,
    );

late final _PxeSendReply = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hClientRequest,
  Pointer pPacket,
  Uint32 uPacketLen,
  Pointer<PXE_ADDRESS> pAddress,
),
    int Function(
  int hClientRequest,
  Pointer pPacket,
  int uPacketLen,
  Pointer<PXE_ADDRESS> pAddress,
)>('PxeSendReply');

int PxeTrace(
  int hProvider,
  int Severity,
  Pointer<Utf16> pszFormat,
) =>
    _PxeTrace(
      hProvider,
      Severity,
      pszFormat,
    );

late final _PxeTrace = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hProvider,
  Uint32 Severity,
  Pointer<Utf16> pszFormat,
),
    int Function(
  int hProvider,
  int Severity,
  Pointer<Utf16> pszFormat,
)>('PxeTrace');

int PxeTraceV(
  int hProvider,
  int Severity,
  Pointer<Utf16> pszFormat,
  Pointer<Int8> Params,
) =>
    _PxeTraceV(
      hProvider,
      Severity,
      pszFormat,
      Params,
    );

late final _PxeTraceV = _wdspxe.lookupFunction<
    Uint32 Function(
  IntPtr hProvider,
  Uint32 Severity,
  Pointer<Utf16> pszFormat,
  Pointer<Int8> Params,
),
    int Function(
  int hProvider,
  int Severity,
  Pointer<Utf16> pszFormat,
  Pointer<Int8> Params,
)>('PxeTraceV');

// -----------------------------------------------------------------------
// wdsmc.dll
// -----------------------------------------------------------------------
final _wdsmc = DynamicLibrary.open('wdsmc.dll');

Pointer WdsTransportServerAllocateBuffer(
  int hProvider,
  int ulBufferSize,
) =>
    _WdsTransportServerAllocateBuffer(
      hProvider,
      ulBufferSize,
    );

late final _WdsTransportServerAllocateBuffer = _wdsmc.lookupFunction<
    Pointer Function(
  IntPtr hProvider,
  Uint32 ulBufferSize,
),
    Pointer Function(
  int hProvider,
  int ulBufferSize,
)>('WdsTransportServerAllocateBuffer');

int WdsTransportServerCompleteRead(
  int hProvider,
  int ulBytesRead,
  Pointer pvUserData,
  int hReadResult,
) =>
    _WdsTransportServerCompleteRead(
      hProvider,
      ulBytesRead,
      pvUserData,
      hReadResult,
    );

late final _WdsTransportServerCompleteRead = _wdsmc.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Uint32 ulBytesRead,
  Pointer pvUserData,
  Int32 hReadResult,
),
    int Function(
  int hProvider,
  int ulBytesRead,
  Pointer pvUserData,
  int hReadResult,
)>('WdsTransportServerCompleteRead');

int WdsTransportServerFreeBuffer(
  int hProvider,
  Pointer pvBuffer,
) =>
    _WdsTransportServerFreeBuffer(
      hProvider,
      pvBuffer,
    );

late final _WdsTransportServerFreeBuffer = _wdsmc.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Pointer pvBuffer,
),
    int Function(
  int hProvider,
  Pointer pvBuffer,
)>('WdsTransportServerFreeBuffer');

int WdsTransportServerRegisterCallback(
  int hProvider,
  int CallbackId,
  Pointer pfnCallback,
) =>
    _WdsTransportServerRegisterCallback(
      hProvider,
      CallbackId,
      pfnCallback,
    );

late final _WdsTransportServerRegisterCallback = _wdsmc.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Int32 CallbackId,
  Pointer pfnCallback,
),
    int Function(
  int hProvider,
  int CallbackId,
  Pointer pfnCallback,
)>('WdsTransportServerRegisterCallback');

int WdsTransportServerTrace(
  int hProvider,
  int Severity,
  Pointer<Utf16> pwszFormat,
) =>
    _WdsTransportServerTrace(
      hProvider,
      Severity,
      pwszFormat,
    );

late final _WdsTransportServerTrace = _wdsmc.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Uint32 Severity,
  Pointer<Utf16> pwszFormat,
),
    int Function(
  int hProvider,
  int Severity,
  Pointer<Utf16> pwszFormat,
)>('WdsTransportServerTrace');

int WdsTransportServerTraceV(
  int hProvider,
  int Severity,
  Pointer<Utf16> pwszFormat,
  Pointer<Int8> Params,
) =>
    _WdsTransportServerTraceV(
      hProvider,
      Severity,
      pwszFormat,
      Params,
    );

late final _WdsTransportServerTraceV = _wdsmc.lookupFunction<
    Int32 Function(
  IntPtr hProvider,
  Uint32 Severity,
  Pointer<Utf16> pwszFormat,
  Pointer<Int8> Params,
),
    int Function(
  int hProvider,
  int Severity,
  Pointer<Utf16> pwszFormat,
  Pointer<Int8> Params,
)>('WdsTransportServerTraceV');

// -----------------------------------------------------------------------
// wdstptc.dll
// -----------------------------------------------------------------------
final _wdstptc = DynamicLibrary.open('wdstptc.dll');

int WdsTransportClientAddRefBuffer(
  Pointer pvBuffer,
) =>
    _WdsTransportClientAddRefBuffer(
      pvBuffer,
    );

late final _WdsTransportClientAddRefBuffer = _wdstptc.lookupFunction<
    Uint32 Function(
  Pointer pvBuffer,
),
    int Function(
  Pointer pvBuffer,
)>('WdsTransportClientAddRefBuffer');

int WdsTransportClientCancelSession(
  int hSessionKey,
) =>
    _WdsTransportClientCancelSession(
      hSessionKey,
    );

late final _WdsTransportClientCancelSession = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
),
    int Function(
  int hSessionKey,
)>('WdsTransportClientCancelSession');

int WdsTransportClientCancelSessionEx(
  int hSessionKey,
  int dwErrorCode,
) =>
    _WdsTransportClientCancelSessionEx(
      hSessionKey,
      dwErrorCode,
    );

late final _WdsTransportClientCancelSessionEx = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
  Uint32 dwErrorCode,
),
    int Function(
  int hSessionKey,
  int dwErrorCode,
)>('WdsTransportClientCancelSessionEx');

int WdsTransportClientCloseSession(
  int hSessionKey,
) =>
    _WdsTransportClientCloseSession(
      hSessionKey,
    );

late final _WdsTransportClientCloseSession = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
),
    int Function(
  int hSessionKey,
)>('WdsTransportClientCloseSession');

int WdsTransportClientCompleteReceive(
  int hSessionKey,
  int ulSize,
  Pointer<Uint64> pullOffset,
) =>
    _WdsTransportClientCompleteReceive(
      hSessionKey,
      ulSize,
      pullOffset,
    );

late final _WdsTransportClientCompleteReceive = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
  Uint32 ulSize,
  Pointer<Uint64> pullOffset,
),
    int Function(
  int hSessionKey,
  int ulSize,
  Pointer<Uint64> pullOffset,
)>('WdsTransportClientCompleteReceive');

int WdsTransportClientInitialize() => _WdsTransportClientInitialize();

late final _WdsTransportClientInitialize =
    _wdstptc.lookupFunction<Uint32 Function(), int Function()>(
        'WdsTransportClientInitialize');

int WdsTransportClientInitializeSession(
  Pointer<WDS_TRANSPORTCLIENT_REQUEST> pSessionRequest,
  Pointer pCallerData,
  Pointer<IntPtr> hSessionKey,
) =>
    _WdsTransportClientInitializeSession(
      pSessionRequest,
      pCallerData,
      hSessionKey,
    );

late final _WdsTransportClientInitializeSession = _wdstptc.lookupFunction<
    Uint32 Function(
  Pointer<WDS_TRANSPORTCLIENT_REQUEST> pSessionRequest,
  Pointer pCallerData,
  Pointer<IntPtr> hSessionKey,
),
    int Function(
  Pointer<WDS_TRANSPORTCLIENT_REQUEST> pSessionRequest,
  Pointer pCallerData,
  Pointer<IntPtr> hSessionKey,
)>('WdsTransportClientInitializeSession');

int WdsTransportClientQueryStatus(
  int hSessionKey,
  Pointer<Uint32> puStatus,
  Pointer<Uint32> puErrorCode,
) =>
    _WdsTransportClientQueryStatus(
      hSessionKey,
      puStatus,
      puErrorCode,
    );

late final _WdsTransportClientQueryStatus = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
  Pointer<Uint32> puStatus,
  Pointer<Uint32> puErrorCode,
),
    int Function(
  int hSessionKey,
  Pointer<Uint32> puStatus,
  Pointer<Uint32> puErrorCode,
)>('WdsTransportClientQueryStatus');

int WdsTransportClientRegisterCallback(
  int hSessionKey,
  int CallbackId,
  Pointer pfnCallback,
) =>
    _WdsTransportClientRegisterCallback(
      hSessionKey,
      CallbackId,
      pfnCallback,
    );

late final _WdsTransportClientRegisterCallback = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
  Int32 CallbackId,
  Pointer pfnCallback,
),
    int Function(
  int hSessionKey,
  int CallbackId,
  Pointer pfnCallback,
)>('WdsTransportClientRegisterCallback');

int WdsTransportClientReleaseBuffer(
  Pointer pvBuffer,
) =>
    _WdsTransportClientReleaseBuffer(
      pvBuffer,
    );

late final _WdsTransportClientReleaseBuffer = _wdstptc.lookupFunction<
    Uint32 Function(
  Pointer pvBuffer,
),
    int Function(
  Pointer pvBuffer,
)>('WdsTransportClientReleaseBuffer');

int WdsTransportClientShutdown() => _WdsTransportClientShutdown();

late final _WdsTransportClientShutdown =
    _wdstptc.lookupFunction<Uint32 Function(), int Function()>(
        'WdsTransportClientShutdown');

int WdsTransportClientStartSession(
  int hSessionKey,
) =>
    _WdsTransportClientStartSession(
      hSessionKey,
    );

late final _WdsTransportClientStartSession = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
),
    int Function(
  int hSessionKey,
)>('WdsTransportClientStartSession');

int WdsTransportClientWaitForCompletion(
  int hSessionKey,
  int uTimeout,
) =>
    _WdsTransportClientWaitForCompletion(
      hSessionKey,
      uTimeout,
    );

late final _WdsTransportClientWaitForCompletion = _wdstptc.lookupFunction<
    Uint32 Function(
  IntPtr hSessionKey,
  Uint32 uTimeout,
),
    int Function(
  int hSessionKey,
  int uTimeout,
)>('WdsTransportClientWaitForCompletion');

// -----------------------------------------------------------------------
// wdsbp.dll
// -----------------------------------------------------------------------
final _wdsbp = DynamicLibrary.open('wdsbp.dll');

int WdsBpAddOption(
  int hHandle,
  int uOption,
  int uValueLen,
  Pointer pValue,
) =>
    _WdsBpAddOption(
      hHandle,
      uOption,
      uValueLen,
      pValue,
    );

late final _WdsBpAddOption = _wdsbp.lookupFunction<
    Uint32 Function(
  IntPtr hHandle,
  Uint32 uOption,
  Uint32 uValueLen,
  Pointer pValue,
),
    int Function(
  int hHandle,
  int uOption,
  int uValueLen,
  Pointer pValue,
)>('WdsBpAddOption');

int WdsBpCloseHandle(
  int hHandle,
) =>
    _WdsBpCloseHandle(
      hHandle,
    );

late final _WdsBpCloseHandle = _wdsbp.lookupFunction<
    Uint32 Function(
  IntPtr hHandle,
),
    int Function(
  int hHandle,
)>('WdsBpCloseHandle');

int WdsBpGetOptionBuffer(
  int hHandle,
  int uBufferLen,
  Pointer pBuffer,
  Pointer<Uint32> puBytes,
) =>
    _WdsBpGetOptionBuffer(
      hHandle,
      uBufferLen,
      pBuffer,
      puBytes,
    );

late final _WdsBpGetOptionBuffer = _wdsbp.lookupFunction<
    Uint32 Function(
  IntPtr hHandle,
  Uint32 uBufferLen,
  Pointer pBuffer,
  Pointer<Uint32> puBytes,
),
    int Function(
  int hHandle,
  int uBufferLen,
  Pointer pBuffer,
  Pointer<Uint32> puBytes,
)>('WdsBpGetOptionBuffer');

int WdsBpInitialize(
  int bPacketType,
  Pointer<IntPtr> phHandle,
) =>
    _WdsBpInitialize(
      bPacketType,
      phHandle,
    );

late final _WdsBpInitialize = _wdsbp.lookupFunction<
    Uint32 Function(
  Uint8 bPacketType,
  Pointer<IntPtr> phHandle,
),
    int Function(
  int bPacketType,
  Pointer<IntPtr> phHandle,
)>('WdsBpInitialize');

int WdsBpParseInitialize(
  Pointer pPacket,
  int uPacketLen,
  Pointer<Uint8> pbPacketType,
  Pointer<IntPtr> phHandle,
) =>
    _WdsBpParseInitialize(
      pPacket,
      uPacketLen,
      pbPacketType,
      phHandle,
    );

late final _WdsBpParseInitialize = _wdsbp.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Pointer<Uint8> pbPacketType,
  Pointer<IntPtr> phHandle,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  Pointer<Uint8> pbPacketType,
  Pointer<IntPtr> phHandle,
)>('WdsBpParseInitialize');

int WdsBpParseInitializev6(
  Pointer pPacket,
  int uPacketLen,
  Pointer<Uint8> pbPacketType,
  Pointer<IntPtr> phHandle,
) =>
    _WdsBpParseInitializev6(
      pPacket,
      uPacketLen,
      pbPacketType,
      phHandle,
    );

late final _WdsBpParseInitializev6 = _wdsbp.lookupFunction<
    Uint32 Function(
  Pointer pPacket,
  Uint32 uPacketLen,
  Pointer<Uint8> pbPacketType,
  Pointer<IntPtr> phHandle,
),
    int Function(
  Pointer pPacket,
  int uPacketLen,
  Pointer<Uint8> pbPacketType,
  Pointer<IntPtr> phHandle,
)>('WdsBpParseInitializev6');

int WdsBpQueryOption(
  int hHandle,
  int uOption,
  int uValueLen,
  Pointer pValue,
  Pointer<Uint32> puBytes,
) =>
    _WdsBpQueryOption(
      hHandle,
      uOption,
      uValueLen,
      pValue,
      puBytes,
    );

late final _WdsBpQueryOption = _wdsbp.lookupFunction<
    Uint32 Function(
  IntPtr hHandle,
  Uint32 uOption,
  Uint32 uValueLen,
  Pointer pValue,
  Pointer<Uint32> puBytes,
),
    int Function(
  int hHandle,
  int uOption,
  int uValueLen,
  Pointer pValue,
  Pointer<Uint32> puBytes,
)>('WdsBpQueryOption');
