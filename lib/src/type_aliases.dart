// Copyright (c) 2023, Halil Durmus. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// These type aliases are named to match the case of their Win32 signatures.
//
// ignore_for_file: camel_case_types

import 'dart:ffi';

// Type aliases for metadata objects
typedef HCORENUM = Pointer;
typedef PCCOR_SIGNATURE = Pointer<Uint8>;
typedef PCOR_SIGNATURE = Pointer<Uint8>;
typedef UVCP_CONSTANT = Pointer<Uint8>;
typedef MDUTF8CSTR = Pointer<Uint8>;

// Type aliases for metadata tokens
typedef mdToken = Uint32;
typedef mdModule = mdToken;
typedef mdTypeRef = mdToken;
typedef mdTypeDef = mdToken;
typedef mdFieldDef = mdToken;
typedef mdMethodDef = mdToken;
typedef mdParamDef = mdToken;
typedef mdInterfaceImpl = mdToken;
typedef mdMemberRef = mdToken;
typedef mdCustomAttribute = mdToken;
typedef mdPermission = mdToken;
typedef mdSignature = mdToken;
typedef mdEvent = mdToken;
typedef mdProperty = mdToken;
typedef mdModuleRef = mdToken;
typedef mdAssembly = mdToken;
typedef mdAssemblyRef = mdToken;
typedef mdFile = mdToken;
typedef mdExportedType = mdToken;
typedef mdManifestResource = mdToken;
typedef mdTypeSpec = mdToken;
typedef mdGenericParam = mdToken;
typedef mdMethodSpec = mdToken;
typedef mdGenericParamConstraint = mdToken;
typedef mdString = mdToken;
