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
import '../../foundation/structs.g.dart';
import '../../system/windowsprogramming/structs.g.dart';
import '../../system/applicationinstallationandservicing/structs.g.dart';
import '../../system/applicationinstallationandservicing/callbacks.g.dart';

/// {@category Struct}
class ACTCTX extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external Pointer<Utf16> lpSource;

  @Uint16()
  external int wProcessorArchitecture;

  @Uint16()
  external int wLangId;

  external Pointer<Utf16> lpAssemblyDirectory;

  external Pointer<Utf16> lpResourceName;

  external Pointer<Utf16> lpApplicationName;

  @IntPtr()
  external int hModule;
}

/// {@category Struct}
class ACTCTX_SECTION_KEYED_DATA extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int ulDataFormatVersion;

  external Pointer lpData;

  @Uint32()
  external int ulLength;

  external Pointer lpSectionGlobalData;

  @Uint32()
  external int ulSectionGlobalDataLength;

  external Pointer lpSectionBase;

  @Uint32()
  external int ulSectionTotalLength;

  @IntPtr()
  external int hActCtx;

  @Uint32()
  external int ulAssemblyRosterIndex;

  @Uint32()
  external int ulFlags;

  external ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA AssemblyMetadata;
}

/// {@category Struct}
class ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION extends Struct {
  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulEncodedAssemblyIdentityLength;

  @Uint32()
  external int ulManifestPathType;

  @Uint32()
  external int ulManifestPathLength;

  @Int64()
  external int liManifestLastWriteTime;

  @Uint32()
  external int ulPolicyPathType;

  @Uint32()
  external int ulPolicyPathLength;

  @Int64()
  external int liPolicyLastWriteTime;

  @Uint32()
  external int ulMetadataSatelliteRosterIndex;

  @Uint32()
  external int ulManifestVersionMajor;

  @Uint32()
  external int ulManifestVersionMinor;

  @Uint32()
  external int ulPolicyVersionMajor;

  @Uint32()
  external int ulPolicyVersionMinor;

  @Uint32()
  external int ulAssemblyDirectoryNameLength;

  external Pointer<Utf16> lpAssemblyEncodedAssemblyIdentity;

  external Pointer<Utf16> lpAssemblyManifestPath;

  external Pointer<Utf16> lpAssemblyPolicyPath;

  external Pointer<Utf16> lpAssemblyDirectoryName;

  @Uint32()
  external int ulFileCount;
}

/// {@category Struct}
class ACTIVATION_CONTEXT_COMPATIBILITY_INFORMATION extends Struct {
  @Uint32()
  external int ElementCount;

  @Array(1)
  external Array<COMPATIBILITY_CONTEXT_ELEMENT> Elements;
}

/// {@category Struct}
class ACTIVATION_CONTEXT_DETAILED_INFORMATION extends Struct {
  @Uint32()
  external int dwFlags;

  @Uint32()
  external int ulFormatVersion;

  @Uint32()
  external int ulAssemblyCount;

  @Uint32()
  external int ulRootManifestPathType;

  @Uint32()
  external int ulRootManifestPathChars;

  @Uint32()
  external int ulRootConfigurationPathType;

  @Uint32()
  external int ulRootConfigurationPathChars;

  @Uint32()
  external int ulAppDirPathType;

  @Uint32()
  external int ulAppDirPathChars;

  external Pointer<Utf16> lpRootManifestPath;

  external Pointer<Utf16> lpRootConfigurationPath;

  external Pointer<Utf16> lpAppDirPath;
}

/// {@category Struct}
class ACTIVATION_CONTEXT_QUERY_INDEX extends Struct {
  @Uint32()
  external int ulAssemblyIndex;

  @Uint32()
  external int ulFileIndexInAssembly;
}

/// {@category Struct}
class ACTIVATION_CONTEXT_RUN_LEVEL_INFORMATION extends Struct {
  @Uint32()
  external int ulFlags;

  @Int32()
  external int RunLevel;

  @Uint32()
  external int UiAccess;
}

/// {@category Struct}
class ASSEMBLY_FILE_DETAILED_INFORMATION extends Struct {
  @Uint32()
  external int ulFlags;

  @Uint32()
  external int ulFilenameLength;

  @Uint32()
  external int ulPathLength;

  external Pointer<Utf16> lpFileName;

  external Pointer<Utf16> lpFilePath;
}

/// {@category Struct}
class ASSEMBLY_INFO extends Struct {
  @Uint32()
  external int cbAssemblyInfo;

  @Uint32()
  external int dwAssemblyFlags;

  @Uint64()
  external int uliAssemblySizeInKB;

  external Pointer<Utf16> pszCurrentAssemblyPathBuf;

  @Uint32()
  external int cchBuf;
}

/// {@category Struct}
class COMPATIBILITY_CONTEXT_ELEMENT extends Struct {
  external GUID Id;

  @Int32()
  external int Type;

  @Uint64()
  external int MaxVersionTested;
}

/// {@category Struct}
class DELTA_HASH extends Struct {
  @Uint32()
  external int HashSize;

  @Array(32)
  external Array<Uint8> HashValue;
}

/// {@category Struct}
class DELTA_HEADER_INFO extends Struct {
  @Int64()
  external int FileTypeSet;

  @Int64()
  external int FileType;

  @Int64()
  external int Flags;

  @IntPtr()
  external int TargetSize;

  external FILETIME TargetFileTime;

  @Uint32()
  external int TargetHashAlgId;

  external DELTA_HASH TargetHash;
}

/// {@category Struct}
class DELTA_INPUT extends Struct {
  external _DELTA_INPUT__Anonymous_e__Union Anonymous;

  @IntPtr()
  external int uSize;

  @Int32()
  external int Editable;
}

/// {@category Struct}
class _DELTA_INPUT__Anonymous_e__Union extends Union {
  external Pointer lpcStart;

  external Pointer lpStart;
}

extension DELTA_INPUT_Extension on DELTA_INPUT {
  Pointer get lpcStart => this.Anonymous.lpcStart;
  set lpcStart(Pointer value) => this.Anonymous.lpcStart = value;

  Pointer get lpStart => this.Anonymous.lpStart;
  set lpStart(Pointer value) => this.Anonymous.lpStart = value;
}

/// {@category Struct}
class DELTA_OUTPUT extends Struct {
  external Pointer lpStart;

  @IntPtr()
  external int uSize;
}

/// {@category Struct}
class FUSION_INSTALL_REFERENCE extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwFlags;

  external GUID guidScheme;

  external Pointer<Utf16> szIdentifier;

  external Pointer<Utf16> szNonCannonicalData;
}

/// {@category Struct}
class MSIFILEHASHINFO extends Struct {
  @Uint32()
  external int dwFileHashInfoSize;

  @Array(4)
  external Array<Uint32> dwData;
}

/// {@category Struct}
class MSIPATCHSEQUENCEINFO extends Struct {
  external Pointer<Utf16> szPatchData;

  @Int32()
  external int ePatchDataType;

  @Uint32()
  external int dwOrder;

  @Uint32()
  external int uStatus;
}

/// {@category Struct}
class PATCH_IGNORE_RANGE extends Struct {
  @Uint32()
  external int OffsetInOldFile;

  @Uint32()
  external int LengthInBytes;
}

/// {@category Struct}
class PATCH_INTERLEAVE_MAP extends Struct {
  @Uint32()
  external int CountRanges;

  @Array(1)
  external Array<_PATCH_INTERLEAVE_MAP__Anonymous_e__Struct> Range;
}

/// {@category Struct}
class _PATCH_INTERLEAVE_MAP__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int OldOffset;

  @Uint32()
  external int OldLength;

  @Uint32()
  external int NewLength;
}

/// {@category Struct}
class PATCH_OLD_FILE_INFO extends Struct {
  @Uint32()
  external int SizeOfThisStruct;

  external _PATCH_OLD_FILE_INFO__Anonymous_e__Union Anonymous;

  @Uint32()
  external int IgnoreRangeCount;

  external Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray;

  @Uint32()
  external int RetainRangeCount;

  external Pointer<PATCH_RETAIN_RANGE> RetainRangeArray;
}

/// {@category Struct}
class _PATCH_OLD_FILE_INFO__Anonymous_e__Union extends Union {
  external Pointer<Utf8> OldFileNameA;

  external Pointer<Utf16> OldFileNameW;

  @IntPtr()
  external int OldFileHandle;
}

extension PATCH_OLD_FILE_INFO_Extension on PATCH_OLD_FILE_INFO {
  Pointer<Utf8> get OldFileNameA => this.Anonymous.OldFileNameA;
  set OldFileNameA(Pointer<Utf8> value) => this.Anonymous.OldFileNameA = value;

  Pointer<Utf16> get OldFileNameW => this.Anonymous.OldFileNameW;
  set OldFileNameW(Pointer<Utf16> value) => this.Anonymous.OldFileNameW = value;

  int get OldFileHandle => this.Anonymous.OldFileHandle;
  set OldFileHandle(int value) => this.Anonymous.OldFileHandle = value;
}

/// {@category Struct}
class PATCH_OLD_FILE_INFO_H extends Struct {
  @Uint32()
  external int SizeOfThisStruct;

  @IntPtr()
  external int OldFileHandle;

  @Uint32()
  external int IgnoreRangeCount;

  external Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray;

  @Uint32()
  external int RetainRangeCount;

  external Pointer<PATCH_RETAIN_RANGE> RetainRangeArray;
}

/// {@category Struct}
class PATCH_OLD_FILE_INFO_ extends Struct {
  @Uint32()
  external int SizeOfThisStruct;

  external Pointer<Utf16> OldFileName;

  @Uint32()
  external int IgnoreRangeCount;

  external Pointer<PATCH_IGNORE_RANGE> IgnoreRangeArray;

  @Uint32()
  external int RetainRangeCount;

  external Pointer<PATCH_RETAIN_RANGE> RetainRangeArray;
}

/// {@category Struct}
class PATCH_OPTION_DATA extends Struct {
  @Uint32()
  external int SizeOfThisStruct;

  @Uint32()
  external int SymbolOptionFlags;

  external Pointer<Utf8> NewFileSymbolPath;

  external Pointer<Pointer<Utf8>> OldFileSymbolPathArray;

  @Uint32()
  external int ExtendedOptionFlags;

  external Pointer<NativeFunction<PPATCH_SYMLOAD_CALLBACK>> SymLoadCallback;

  external Pointer SymLoadContext;

  external Pointer<Pointer<PATCH_INTERLEAVE_MAP>> InterleaveMapArray;

  @Uint32()
  external int MaxLzxWindowSize;
}

/// {@category Struct}
class PATCH_RETAIN_RANGE extends Struct {
  @Uint32()
  external int OffsetInOldFile;

  @Uint32()
  external int LengthInBytes;

  @Uint32()
  external int OffsetInNewFile;
}

/// {@category Struct}
class PMSIHANDLE extends Struct {
  @Uint32()
  external int m_h;
}

/// {@category Struct}
class PM_BSATASKID extends Struct {
  external GUID ProductID;

  external Pointer<Utf16> TaskID;
}

/// {@category Struct}
class PM_BWTASKID extends Struct {
  external GUID ProductID;

  external Pointer<Utf16> TaskID;
}

/// {@category Struct}
class PM_ENUM_FILTER extends Struct {
  @Int32()
  external int FilterType;

  external _PM_ENUM_FILTER__FilterParameter_e__Union FilterParameter;
}

/// {@category Struct}
class _PM_ENUM_FILTER__FilterParameter_e__Union extends Union {
  @Int32()
  external int Dummy;

  @Int32()
  external int Genre;

  @Int32()
  external int AppHubType;

  @Int32()
  external int HubType;

  @Int32()
  external int Tasktype;

  external GUID TaskProductID;

  external GUID TileProductID;

  external tagAPPTASKTYPE AppTaskType;

  external PM_EXTENSIONCONSUMER Consumer;

  external PM_BSATASKID BSATask;

  external GUID BSAProductID;

  external PM_BWTASKID BWTask;

  external Pointer<Utf16> ProtocolName;

  external Pointer<Utf16> FileType;

  external Pointer<Utf16> ContentType;

  external GUID AppSupportedFileExtPID;

  external Pointer<Utf16> ShareTargetFileType;
}

extension PM_ENUM_FILTER_Extension on PM_ENUM_FILTER {
  int get Dummy => this.FilterParameter.Dummy;
  set Dummy(int value) => this.FilterParameter.Dummy = value;

  int get Genre => this.FilterParameter.Genre;
  set Genre(int value) => this.FilterParameter.Genre = value;

  int get AppHubType => this.FilterParameter.AppHubType;
  set AppHubType(int value) => this.FilterParameter.AppHubType = value;

  int get HubType => this.FilterParameter.HubType;
  set HubType(int value) => this.FilterParameter.HubType = value;

  int get Tasktype => this.FilterParameter.Tasktype;
  set Tasktype(int value) => this.FilterParameter.Tasktype = value;

  GUID get TaskProductID => this.FilterParameter.TaskProductID;
  set TaskProductID(GUID value) => this.FilterParameter.TaskProductID = value;

  GUID get TileProductID => this.FilterParameter.TileProductID;
  set TileProductID(GUID value) => this.FilterParameter.TileProductID = value;

  tagAPPTASKTYPE get AppTaskType => this.FilterParameter.AppTaskType;
  set AppTaskType(tagAPPTASKTYPE value) =>
      this.FilterParameter.AppTaskType = value;

  PM_EXTENSIONCONSUMER get Consumer => this.FilterParameter.Consumer;
  set Consumer(PM_EXTENSIONCONSUMER value) =>
      this.FilterParameter.Consumer = value;

  PM_BSATASKID get BSATask => this.FilterParameter.BSATask;
  set BSATask(PM_BSATASKID value) => this.FilterParameter.BSATask = value;

  GUID get BSAProductID => this.FilterParameter.BSAProductID;
  set BSAProductID(GUID value) => this.FilterParameter.BSAProductID = value;

  PM_BWTASKID get BWTask => this.FilterParameter.BWTask;
  set BWTask(PM_BWTASKID value) => this.FilterParameter.BWTask = value;

  Pointer<Utf16> get ProtocolName => this.FilterParameter.ProtocolName;
  set ProtocolName(Pointer<Utf16> value) =>
      this.FilterParameter.ProtocolName = value;

  Pointer<Utf16> get FileType => this.FilterParameter.FileType;
  set FileType(Pointer<Utf16> value) => this.FilterParameter.FileType = value;

  Pointer<Utf16> get ContentType => this.FilterParameter.ContentType;
  set ContentType(Pointer<Utf16> value) =>
      this.FilterParameter.ContentType = value;

  GUID get AppSupportedFileExtPID =>
      this.FilterParameter.AppSupportedFileExtPID;
  set AppSupportedFileExtPID(GUID value) =>
      this.FilterParameter.AppSupportedFileExtPID = value;

  Pointer<Utf16> get ShareTargetFileType =>
      this.FilterParameter.ShareTargetFileType;
  set ShareTargetFileType(Pointer<Utf16> value) =>
      this.FilterParameter.ShareTargetFileType = value;
}

/// {@category Struct}
class PM_EXTENSIONCONSUMER extends Struct {
  external GUID ConsumerPID;

  external Pointer<Utf16> ExtensionID;
}

/// {@category Struct}
class PM_INSTALLINFO extends Struct {
  external GUID ProductID;

  external Pointer<Utf16> PackagePath;

  external GUID InstanceID;

  external Pointer<Uint8> pbLicense;

  @Uint32()
  external int cbLicense;

  @Int32()
  external int IsUninstallDisabled;

  @Uint32()
  external int DeploymentOptions;

  external GUID OfferID;

  external Pointer<Utf16> MarketplaceAppVersion;
}

/// {@category Struct}
class PM_INVOCATIONINFO extends Struct {
  external Pointer<Utf16> URIBaseOrAUMID;

  external Pointer<Utf16> URIFragmentOrArgs;
}

/// {@category Struct}
class PM_STARTAPPBLOB extends Struct {
  @Uint32()
  external int cbSize;

  external GUID ProductID;

  external Pointer<Utf16> AppTitle;

  external Pointer<Utf16> IconPath;

  @Int32()
  external int IsUninstallable;

  @Int32()
  external int AppInstallType;

  external GUID InstanceID;

  @Int32()
  external int State;

  @Int32()
  external int IsModern;

  @Int32()
  external int IsModernLightUp;

  @Uint16()
  external int LightUpSupportMask;
}

/// {@category Struct}
class PM_STARTTILEBLOB extends Struct {
  @Uint32()
  external int cbSize;

  external GUID ProductID;

  external Pointer<Utf16> TileID;

  @Int32()
  external int TemplateType;

  @Array(32)
  external Array<Uint32> HubPosition;

  @Uint32()
  external int HubVisibilityBitmask;

  @Int32()
  external int IsDefault;

  @Int32()
  external int TileType;

  external Pointer<Uint8> pbPropBlob;

  @Uint32()
  external int cbPropBlob;

  @Int32()
  external int IsRestoring;

  @Int32()
  external int IsModern;

  external PM_INVOCATIONINFO InvocationInfo;
}

/// {@category Struct}
class PM_UPDATEINFO extends Struct {
  external GUID ProductID;

  external Pointer<Utf16> PackagePath;

  external GUID InstanceID;

  external Pointer<Uint8> pbLicense;

  @Uint32()
  external int cbLicense;

  external Pointer<Utf16> MarketplaceAppVersion;

  @Uint32()
  external int DeploymentOptions;
}

/// {@category Struct}
class PM_UPDATEINFO_LEGACY extends Struct {
  external GUID ProductID;

  external Pointer<Utf16> PackagePath;

  external GUID InstanceID;

  external Pointer<Uint8> pbLicense;

  @Uint32()
  external int cbLicense;

  external Pointer<Utf16> MarketplaceAppVersion;
}

/// {@category Struct}
class PROTECTED_FILE_DATA extends Struct {
  @Array(260)
  external Array<Uint16> _FileName;

  String get FileName {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_FileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set FileName(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _FileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int FileNumber;
}

/// {@category Struct}
class tagAPPTASKTYPE extends Struct {
  external GUID ProductID;

  @Int32()
  external int TaskType;
}
