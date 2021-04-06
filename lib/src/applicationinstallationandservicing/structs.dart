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

class MSIHANDLE extends Struct {
  @Uint32() external int Value;
}

class INFCONTEXT extends Struct {
  external Pointer Inf;
  external Pointer CurrentInf;
  @Uint32() external int Section;
  @Uint32() external int Line;
}

class SP_INF_INFORMATION extends Struct {
  @Uint32() external int InfStyle;
  @Uint32() external int InfCount;
  @Array(1)
  external Array<Uint8> VersionData;
}

class SP_ALTPLATFORM_INFO_V2 extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Platform;
  @Uint32() external int MajorVersion;
  @Uint32() external int MinorVersion;
  @Uint16() external int ProcessorArchitecture;
  @Uint32() external int Anonymous;
  @Uint32() external int FirstValidatedMajorVersion;
  @Uint32() external int FirstValidatedMinorVersion;
}

class SP_ALTPLATFORM_INFO_V1 extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int Platform;
  @Uint32() external int MajorVersion;
  @Uint32() external int MinorVersion;
  @Uint16() external int ProcessorArchitecture;
  @Uint16() external int Reserved;
}

class SP_ORIGINAL_FILE_INFO_A extends Struct {
  @Uint32() external int cbSize;
  @Array(129)
  external Array<Int8> OriginalInfName;
  @Array(129)
  external Array<Int8> OriginalCatalogName;
}

class SP_ORIGINAL_FILE_INFO_W extends Struct {
  @Uint32() external int cbSize;
  @Array(129)
  external Array<Uint16> OriginalInfName;
  @Array(129)
  external Array<Uint16> OriginalCatalogName;
}

class FILEPATHS_A extends Struct {
  external Pointer<Utf8> Target;
  external Pointer<Utf8> Source;
  @Uint32() external int Win32Error;
  @Uint32() external int Flags;
}

class FILEPATHS_W extends Struct {
  external Pointer<Utf16> Target;
  external Pointer<Utf16> Source;
  @Uint32() external int Win32Error;
  @Uint32() external int Flags;
}

class FILEPATHS_SIGNERINFO_A extends Struct {
  external Pointer<Utf8> Target;
  external Pointer<Utf8> Source;
  @Uint32() external int Win32Error;
  @Uint32() external int Flags;
  external Pointer<Utf8> DigitalSigner;
  external Pointer<Utf8> Version;
  external Pointer<Utf8> CatalogFile;
}

class FILEPATHS_SIGNERINFO_W extends Struct {
  external Pointer<Utf16> Target;
  external Pointer<Utf16> Source;
  @Uint32() external int Win32Error;
  @Uint32() external int Flags;
  external Pointer<Utf16> DigitalSigner;
  external Pointer<Utf16> Version;
  external Pointer<Utf16> CatalogFile;
}

class SOURCE_MEDIA_A extends Struct {
  external Pointer<Utf8> Reserved;
  external Pointer<Utf8> Tagfile;
  external Pointer<Utf8> Description;
  external Pointer<Utf8> SourcePath;
  external Pointer<Utf8> SourceFile;
  @Uint32() external int Flags;
}

class SOURCE_MEDIA_W extends Struct {
  external Pointer<Utf16> Reserved;
  external Pointer<Utf16> Tagfile;
  external Pointer<Utf16> Description;
  external Pointer<Utf16> SourcePath;
  external Pointer<Utf16> SourceFile;
  @Uint32() external int Flags;
}

class CABINET_INFO_A extends Struct {
  external Pointer<Utf8> CabinetPath;
  external Pointer<Utf8> CabinetFile;
  external Pointer<Utf8> DiskName;
  @Uint16() external int SetId;
  @Uint16() external int CabinetNumber;
}

class CABINET_INFO_W extends Struct {
  external Pointer<Utf16> CabinetPath;
  external Pointer<Utf16> CabinetFile;
  external Pointer<Utf16> DiskName;
  @Uint16() external int SetId;
  @Uint16() external int CabinetNumber;
}

class FILE_IN_CABINET_INFO_A extends Struct {
  external Pointer<Utf8> NameInCabinet;
  @Uint32() external int FileSize;
  @Uint32() external int Win32Error;
  @Uint16() external int DosDate;
  @Uint16() external int DosTime;
  @Uint16() external int DosAttribs;
  @Array(129)
  external Array<Int8> FullTargetName;
}

class FILE_IN_CABINET_INFO_W extends Struct {
  external Pointer<Utf16> NameInCabinet;
  @Uint32() external int FileSize;
  @Uint32() external int Win32Error;
  @Uint16() external int DosDate;
  @Uint16() external int DosTime;
  @Uint16() external int DosAttribs;
  @Array(129)
  external Array<Uint16> FullTargetName;
}

class SP_REGISTER_CONTROL_STATUSA extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf8> FileName;
  @Uint32() external int Win32Error;
  @Uint32() external int FailureCode;
}

class SP_REGISTER_CONTROL_STATUSW extends Struct {
  @Uint32() external int cbSize;
  external Pointer<Utf16> FileName;
  @Uint32() external int Win32Error;
  @Uint32() external int FailureCode;
}

class SP_FILE_COPY_PARAMS_A extends Struct {
  @Uint32() external int cbSize;
  external Pointer QueueHandle;
  external Pointer<Utf8> SourceRootPath;
  external Pointer<Utf8> SourcePath;
  external Pointer<Utf8> SourceFilename;
  external Pointer<Utf8> SourceDescription;
  external Pointer<Utf8> SourceTagfile;
  external Pointer<Utf8> TargetDirectory;
  external Pointer<Utf8> TargetFilename;
  @Uint32() external int CopyStyle;
  external Pointer LayoutInf;
  external Pointer<Utf8> SecurityDescriptor;
}

class SP_FILE_COPY_PARAMS_W extends Struct {
  @Uint32() external int cbSize;
  external Pointer QueueHandle;
  external Pointer<Utf16> SourceRootPath;
  external Pointer<Utf16> SourcePath;
  external Pointer<Utf16> SourceFilename;
  external Pointer<Utf16> SourceDescription;
  external Pointer<Utf16> SourceTagfile;
  external Pointer<Utf16> TargetDirectory;
  external Pointer<Utf16> TargetFilename;
  @Uint32() external int CopyStyle;
  external Pointer LayoutInf;
  external Pointer<Utf16> SecurityDescriptor;
}

class SP_INF_SIGNER_INFO_V1_A extends Struct {
  @Uint32() external int cbSize;
  @Array(129)
  external Array<Int8> CatalogFile;
  @Array(129)
  external Array<Int8> DigitalSigner;
  @Array(129)
  external Array<Int8> DigitalSignerVersion;
}

class SP_INF_SIGNER_INFO_V1_W extends Struct {
  @Uint32() external int cbSize;
  @Array(129)
  external Array<Uint16> CatalogFile;
  @Array(129)
  external Array<Uint16> DigitalSigner;
  @Array(129)
  external Array<Uint16> DigitalSignerVersion;
}

class SP_INF_SIGNER_INFO_V2_A extends Struct {
  @Uint32() external int cbSize;
  @Array(129)
  external Array<Int8> CatalogFile;
  @Array(129)
  external Array<Int8> DigitalSigner;
  @Array(129)
  external Array<Int8> DigitalSignerVersion;
  @Uint32() external int SignerScore;
}

class SP_INF_SIGNER_INFO_V2_W extends Struct {
  @Uint32() external int cbSize;
  @Array(129)
  external Array<Uint16> CatalogFile;
  @Array(129)
  external Array<Uint16> DigitalSigner;
  @Array(129)
  external Array<Uint16> DigitalSignerVersion;
  @Uint32() external int SignerScore;
}

class ACTIVATION_CONTEXT_QUERY_INDEX extends Struct {
  @Uint32() external int ulAssemblyIndex;
  @Uint32() external int ulFileIndexInAssembly;
}

class ASSEMBLY_FILE_DETAILED_INFORMATION extends Struct {
  @Uint32() external int ulFlags;
  @Uint32() external int ulFilenameLength;
  @Uint32() external int ulPathLength;
  external Pointer<Utf16> lpFileName;
  external Pointer<Utf16> lpFilePath;
}

class ACTIVATION_CONTEXT_ASSEMBLY_DETAILED_INFORMATION extends Struct {
  @Uint32() external int ulFlags;
  @Uint32() external int ulEncodedAssemblyIdentityLength;
  @Uint32() external int ulManifestPathType;
  @Uint32() external int ulManifestPathLength;
  @Int64() external int liManifestLastWriteTime;
  @Uint32() external int ulPolicyPathType;
  @Uint32() external int ulPolicyPathLength;
  @Int64() external int liPolicyLastWriteTime;
  @Uint32() external int ulMetadataSatelliteRosterIndex;
  @Uint32() external int ulManifestVersionMajor;
  @Uint32() external int ulManifestVersionMinor;
  @Uint32() external int ulPolicyVersionMajor;
  @Uint32() external int ulPolicyVersionMinor;
  @Uint32() external int ulAssemblyDirectoryNameLength;
  external Pointer<Utf16> lpAssemblyEncodedAssemblyIdentity;
  external Pointer<Utf16> lpAssemblyManifestPath;
  external Pointer<Utf16> lpAssemblyPolicyPath;
  external Pointer<Utf16> lpAssemblyDirectoryName;
  @Uint32() external int ulFileCount;
}

class ACTIVATION_CONTEXT_RUN_LEVEL_INFORMATION extends Struct {
  @Uint32() external int ulFlags;
  @Uint32() external int RunLevel;
  @Uint32() external int UiAccess;
}

class COMPATIBILITY_CONTEXT_ELEMENT extends Struct {
  external GUID Id;
  @Uint32() external int Type;
  @Uint64() external int MaxVersionTested;
}

class ACTIVATION_CONTEXT_COMPATIBILITY_INFORMATION extends Struct {
  @Uint32() external int ElementCount;
  external COMPATIBILITY_CONTEXT_ELEMENT Elements;
}

class ACTIVATION_CONTEXT_DETAILED_INFORMATION extends Struct {
  @Uint32() external int dwFlags;
  @Uint32() external int ulFormatVersion;
  @Uint32() external int ulAssemblyCount;
  @Uint32() external int ulRootManifestPathType;
  @Uint32() external int ulRootManifestPathChars;
  @Uint32() external int ulRootConfigurationPathType;
  @Uint32() external int ulRootConfigurationPathChars;
  @Uint32() external int ulAppDirPathType;
  @Uint32() external int ulAppDirPathChars;
  external Pointer<Utf16> lpRootManifestPath;
  external Pointer<Utf16> lpRootConfigurationPath;
  external Pointer<Utf16> lpAppDirPath;
}

class MsmMerge extends Struct {
}

class PMSIHANDLE extends Struct {
  @Uint32() external int m_h;
}

class MSIPATCHSEQUENCEINFOA extends Struct {
  external Pointer<Utf8> szPatchData;
  @Uint32() external int ePatchDataType;
  @Uint32() external int dwOrder;
  @Uint32() external int uStatus;
}

class MSIPATCHSEQUENCEINFOW extends Struct {
  external Pointer<Utf16> szPatchData;
  @Uint32() external int ePatchDataType;
  @Uint32() external int dwOrder;
  @Uint32() external int uStatus;
}

class MSIFILEHASHINFO extends Struct {
  @Uint32() external int dwFileHashInfoSize;
  @Array(4)
  external Array<Uint32> dwData;
}

class ASSEMBLY_INFO extends Struct {
  @Uint32() external int cbAssemblyInfo;
  @Uint32() external int dwAssemblyFlags;
  @Uint64() external int uliAssemblySizeInKB;
  external Pointer<Utf16> pszCurrentAssemblyPathBuf;
  @Uint32() external int cchBuf;
}

class FUSION_INSTALL_REFERENCE extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external GUID guidScheme;
  external Pointer<Utf16> szIdentifier;
  external Pointer<Utf16> szNonCannonicalData;
}

class PROTECTED_FILE_DATA extends Struct {
  @Array(129)
  external Array<Uint16> FileName;
  @Uint32() external int FileNumber;
}

class ACTCTXA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Utf8> lpSource;
  @Uint16() external int wProcessorArchitecture;
  @Uint16() external int wLangId;
  external Pointer<Utf8> lpAssemblyDirectory;
  external Pointer<Utf8> lpResourceName;
  external Pointer<Utf8> lpApplicationName;
  @IntPtr() external int hModule;
}

class ACTCTXW extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int dwFlags;
  external Pointer<Utf16> lpSource;
  @Uint16() external int wProcessorArchitecture;
  @Uint16() external int wLangId;
  external Pointer<Utf16> lpAssemblyDirectory;
  external Pointer<Utf16> lpResourceName;
  external Pointer<Utf16> lpApplicationName;
  @IntPtr() external int hModule;
}

class ACTCTX_SECTION_KEYED_DATA extends Struct {
  @Uint32() external int cbSize;
  @Uint32() external int ulDataFormatVersion;
  external Pointer lpData;
  @Uint32() external int ulLength;
  external Pointer lpSectionGlobalData;
  @Uint32() external int ulSectionGlobalDataLength;
  external Pointer lpSectionBase;
  @Uint32() external int ulSectionTotalLength;
  @IntPtr() external int hActCtx;
  @Uint32() external int ulAssemblyRosterIndex;
  @Uint32() external int ulFlags;
  external ACTCTX_SECTION_KEYED_DATA_ASSEMBLY_METADATA AssemblyMetadata;
}

