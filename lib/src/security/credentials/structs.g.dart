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
import '../../security/credentials/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../security/credentials/callbacks.g.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// {@category Struct}
class BINARY_BLOB_CREDENTIAL_INFO extends Struct {
  @Uint32()
  external int cbBlob;

  external Pointer<Uint8> pbBlob;
}

/// {@category Struct}
class CERT_CREDENTIAL_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @Array(20)
  external Array<Uint8> rgbHashOfCert;
}

/// {@category Struct}
class CREDENTIAL extends Struct {
  @Uint32()
  external int Flags;

  @Uint32()
  external int Type;

  external Pointer<Utf16> TargetName;

  external Pointer<Utf16> Comment;

  external FILETIME LastWritten;

  @Uint32()
  external int CredentialBlobSize;

  external Pointer<Uint8> CredentialBlob;

  @Uint32()
  external int Persist;

  @Uint32()
  external int AttributeCount;

  external Pointer<CREDENTIAL_ATTRIBUTE> Attributes;

  external Pointer<Utf16> TargetAlias;

  external Pointer<Utf16> UserName;
}

/// {@category Struct}
class CREDENTIAL_ATTRIBUTE extends Struct {
  external Pointer<Utf16> Keyword;

  @Uint32()
  external int Flags;

  @Uint32()
  external int ValueSize;

  external Pointer<Uint8> Value;
}

/// {@category Struct}
class CREDENTIAL_TARGET_INFORMATION extends Struct {
  external Pointer<Utf16> TargetName;

  external Pointer<Utf16> NetbiosServerName;

  external Pointer<Utf16> DnsServerName;

  external Pointer<Utf16> NetbiosDomainName;

  external Pointer<Utf16> DnsDomainName;

  external Pointer<Utf16> DnsTreeName;

  external Pointer<Utf16> PackageName;

  @Uint32()
  external int Flags;

  @Uint32()
  external int CredTypeCount;

  external Pointer<Uint32> CredTypes;
}

/// {@category Struct}
class CREDSSP_CRED extends Struct {
  @Int32()
  external int Type;

  external Pointer pSchannelCred;

  external Pointer pSpnegoCred;
}

/// {@category Struct}
class CREDSSP_CRED_EX extends Struct {
  @Int32()
  external int Type;

  @Uint32()
  external int Version;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Reserved;

  external CREDSSP_CRED Cred;
}

/// {@category Struct}
class CREDUI_INFO extends Struct {
  @Uint32()
  external int cbSize;

  @IntPtr()
  external int hwndParent;

  external Pointer<Utf16> pszMessageText;

  external Pointer<Utf16> pszCaptionText;

  @IntPtr()
  external int hbmBanner;
}

/// {@category Struct}
class KeyCredentialManagerInfo extends Struct {
  external GUID containerId;
}

/// {@category Struct}
class OPENCARDNAME extends Struct {
  @Uint32()
  external int dwStructSize;

  @IntPtr()
  external int hwndOwner;

  @IntPtr()
  external int hSCardContext;

  external Pointer<Utf16> lpstrGroupNames;

  @Uint32()
  external int nMaxGroupNames;

  external Pointer<Utf16> lpstrCardNames;

  @Uint32()
  external int nMaxCardNames;

  external Pointer<GUID> rgguidInterfaces;

  @Uint32()
  external int cguidInterfaces;

  external Pointer<Utf16> lpstrRdr;

  @Uint32()
  external int nMaxRdr;

  external Pointer<Utf16> lpstrCard;

  @Uint32()
  external int nMaxCard;

  external Pointer<Utf16> lpstrTitle;

  @Uint32()
  external int dwFlags;

  external Pointer pvUserData;

  @Uint32()
  external int dwShareMode;

  @Uint32()
  external int dwPreferredProtocols;

  @Uint32()
  external int dwActiveProtocol;

  external Pointer<NativeFunction<LPOCNCONNPROCW>> lpfnConnect;

  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  @IntPtr()
  external int hCardHandle;
}

/// {@category Struct}
class OPENCARDNAME_EX extends Struct {
  @Uint32()
  external int dwStructSize;

  @IntPtr()
  external int hSCardContext;

  @IntPtr()
  external int hwndOwner;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> lpstrTitle;

  external Pointer<Utf16> lpstrSearchDesc;

  @IntPtr()
  external int hIcon;

  external Pointer<OPENCARD_SEARCH_CRITERIA> pOpenCardSearchCriteria;

  external Pointer<NativeFunction<LPOCNCONNPROCW>> lpfnConnect;

  external Pointer pvUserData;

  @Uint32()
  external int dwShareMode;

  @Uint32()
  external int dwPreferredProtocols;

  external Pointer<Utf16> lpstrRdr;

  @Uint32()
  external int nMaxRdr;

  external Pointer<Utf16> lpstrCard;

  @Uint32()
  external int nMaxCard;

  @Uint32()
  external int dwActiveProtocol;

  @IntPtr()
  external int hCardHandle;
}

/// {@category Struct}
class OPENCARD_SEARCH_CRITERIA extends Struct {
  @Uint32()
  external int dwStructSize;

  external Pointer<Utf16> lpstrGroupNames;

  @Uint32()
  external int nMaxGroupNames;

  external Pointer<GUID> rgguidInterfaces;

  @Uint32()
  external int cguidInterfaces;

  external Pointer<Utf16> lpstrCardNames;

  @Uint32()
  external int nMaxCardNames;

  external Pointer<NativeFunction<LPOCNCHKPROC>> lpfnCheck;

  external Pointer<NativeFunction<LPOCNCONNPROCW>> lpfnConnect;

  external Pointer<NativeFunction<LPOCNDSCPROC>> lpfnDisconnect;

  external Pointer pvUserData;

  @Uint32()
  external int dwShareMode;

  @Uint32()
  external int dwPreferredProtocols;
}

/// {@category Struct}
class READER_SEL_REQUEST extends Struct {
  @Uint32()
  external int dwShareMode;

  @Uint32()
  external int dwPreferredProtocols;

  @Int32()
  external int MatchType;

  external _READER_SEL_REQUEST__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _READER_SEL_REQUEST__Anonymous_e__Union extends Union {
  external _READER_SEL_REQUEST__Anonymous_e__Union__ReaderAndContainerParameter_e__Struct
      ReaderAndContainerParameter;

  external _READER_SEL_REQUEST__Anonymous_e__Union__SerialNumberParameter_e__Struct
      SerialNumberParameter;
}

/// {@category Struct}
class _READER_SEL_REQUEST__Anonymous_e__Union__ReaderAndContainerParameter_e__Struct
    extends Struct {
  @Uint32()
  external int cbReaderNameOffset;

  @Uint32()
  external int cchReaderNameLength;

  @Uint32()
  external int cbContainerNameOffset;

  @Uint32()
  external int cchContainerNameLength;

  @Uint32()
  external int dwDesiredCardModuleVersion;

  @Uint32()
  external int dwCspFlags;
}

extension READER_SEL_REQUEST__Anonymous_e__Union_Extension
    on READER_SEL_REQUEST {
  int get cbReaderNameOffset =>
      this.Anonymous.ReaderAndContainerParameter.cbReaderNameOffset;
  set cbReaderNameOffset(int value) =>
      this.Anonymous.ReaderAndContainerParameter.cbReaderNameOffset = value;

  int get cchReaderNameLength =>
      this.Anonymous.ReaderAndContainerParameter.cchReaderNameLength;
  set cchReaderNameLength(int value) =>
      this.Anonymous.ReaderAndContainerParameter.cchReaderNameLength = value;

  int get cbContainerNameOffset =>
      this.Anonymous.ReaderAndContainerParameter.cbContainerNameOffset;
  set cbContainerNameOffset(int value) =>
      this.Anonymous.ReaderAndContainerParameter.cbContainerNameOffset = value;

  int get cchContainerNameLength =>
      this.Anonymous.ReaderAndContainerParameter.cchContainerNameLength;
  set cchContainerNameLength(int value) =>
      this.Anonymous.ReaderAndContainerParameter.cchContainerNameLength = value;

  int get dwDesiredCardModuleVersion =>
      this.Anonymous.ReaderAndContainerParameter.dwDesiredCardModuleVersion;
  set dwDesiredCardModuleVersion(int value) =>
      this.Anonymous.ReaderAndContainerParameter.dwDesiredCardModuleVersion =
          value;

  int get dwCspFlags => this.Anonymous.ReaderAndContainerParameter.dwCspFlags;
  set dwCspFlags(int value) =>
      this.Anonymous.ReaderAndContainerParameter.dwCspFlags = value;
}

/// {@category Struct}
class _READER_SEL_REQUEST__Anonymous_e__Union__SerialNumberParameter_e__Struct
    extends Struct {
  @Uint32()
  external int cbSerialNumberOffset;

  @Uint32()
  external int cbSerialNumberLength;

  @Uint32()
  external int dwDesiredCardModuleVersion;
}

extension READER_SEL_REQUEST__Anonymous_e__Union_Extension_1
    on READER_SEL_REQUEST {
  int get cbSerialNumberOffset =>
      this.Anonymous.SerialNumberParameter.cbSerialNumberOffset;
  set cbSerialNumberOffset(int value) =>
      this.Anonymous.SerialNumberParameter.cbSerialNumberOffset = value;

  int get cbSerialNumberLength =>
      this.Anonymous.SerialNumberParameter.cbSerialNumberLength;
  set cbSerialNumberLength(int value) =>
      this.Anonymous.SerialNumberParameter.cbSerialNumberLength = value;

  int get dwDesiredCardModuleVersion =>
      this.Anonymous.SerialNumberParameter.dwDesiredCardModuleVersion;
  set dwDesiredCardModuleVersion(int value) =>
      this.Anonymous.SerialNumberParameter.dwDesiredCardModuleVersion = value;
}

extension READER_SEL_REQUEST_Extension on READER_SEL_REQUEST {
  _READER_SEL_REQUEST__Anonymous_e__Union__ReaderAndContainerParameter_e__Struct
      get ReaderAndContainerParameter =>
          this.Anonymous.ReaderAndContainerParameter;
  set ReaderAndContainerParameter(
          _READER_SEL_REQUEST__Anonymous_e__Union__ReaderAndContainerParameter_e__Struct
              value) =>
      this.Anonymous.ReaderAndContainerParameter = value;

  _READER_SEL_REQUEST__Anonymous_e__Union__SerialNumberParameter_e__Struct
      get SerialNumberParameter => this.Anonymous.SerialNumberParameter;
  set SerialNumberParameter(
          _READER_SEL_REQUEST__Anonymous_e__Union__SerialNumberParameter_e__Struct
              value) =>
      this.Anonymous.SerialNumberParameter = value;
}

/// {@category Struct}
class READER_SEL_RESPONSE extends Struct {
  @Uint32()
  external int cbReaderNameOffset;

  @Uint32()
  external int cchReaderNameLength;

  @Uint32()
  external int cbCardNameOffset;

  @Uint32()
  external int cchCardNameLength;
}

/// {@category Struct}
class SCARD_ATRMASK extends Struct {
  @Uint32()
  external int cbAtr;

  @Array(36)
  external Array<Uint8> rgbAtr;

  @Array(36)
  external Array<Uint8> rgbMask;
}

/// {@category Struct}
class SCARD_IO_REQUEST extends Struct {
  @Uint32()
  external int dwProtocol;

  @Uint32()
  external int cbPciLength;
}

/// {@category Struct}
class SCARD_READERSTATE extends Struct {
  external Pointer<Utf16> szReader;

  external Pointer pvUserData;

  @Uint32()
  external int dwCurrentState;

  @Uint32()
  external int dwEventState;

  @Uint32()
  external int cbAtr;

  @Array(36)
  external Array<Uint8> rgbAtr;
}

/// {@category Struct}
class SCARD_T0_COMMAND extends Struct {
  @Uint8()
  external int bCla;

  @Uint8()
  external int bIns;

  @Uint8()
  external int bP1;

  @Uint8()
  external int bP2;

  @Uint8()
  external int bP3;
}

/// {@category Struct}
class SCARD_T0_REQUEST extends Struct {
  external SCARD_IO_REQUEST ioRequest;

  @Uint8()
  external int bSw1;

  @Uint8()
  external int bSw2;

  external _SCARD_T0_REQUEST__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _SCARD_T0_REQUEST__Anonymous_e__Union extends Union {
  external SCARD_T0_COMMAND CmdBytes;

  @Array(5)
  external Array<Uint8> rgbHeader;
}

extension SCARD_T0_REQUEST_Extension on SCARD_T0_REQUEST {
  SCARD_T0_COMMAND get CmdBytes => this.Anonymous.CmdBytes;
  set CmdBytes(SCARD_T0_COMMAND value) => this.Anonymous.CmdBytes = value;

  Array<Uint8> get rgbHeader => this.Anonymous.rgbHeader;
  set rgbHeader(Array<Uint8> value) => this.Anonymous.rgbHeader = value;
}

/// {@category Struct}
class SCARD_T1_REQUEST extends Struct {
  external SCARD_IO_REQUEST ioRequest;
}

/// {@category Struct}
class SecHandle extends Struct {
  @IntPtr()
  external int dwLower;

  @IntPtr()
  external int dwUpper;
}

/// {@category Struct}
class SecPkgContext_ClientCreds extends Struct {
  @Uint32()
  external int AuthBufferLen;

  external Pointer<Uint8> AuthBuffer;
}

/// {@category Struct}
class USERNAME_TARGET_CREDENTIAL_INFO extends Struct {
  external Pointer<Utf16> UserName;
}
