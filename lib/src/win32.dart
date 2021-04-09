import 'dart:ffi';

import 'package:ffi/ffi.dart';

// Helper for allocating memory for Unicode strings.
Pointer<Utf16> stralloc(int wChars) => calloc<Uint16>(wChars).cast();

// Type aliases for Win32 integer types that are frequently used.
typedef ULONG = Uint32;
typedef DWORD = Uint32;
typedef BYTE = Uint8;

// Type aliases for metadata objects
typedef HCORENUM = IntPtr;
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
