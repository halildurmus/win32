import 'dart:ffi';

import 'package:ffi/ffi.dart';

typedef HCORENUM = IntPtr;
typedef ULONG = Uint32;
typedef DWORD = Uint32;
typedef mdToken = Uint32;
typedef mdTypeDef = mdToken;
typedef mdMethodDef = mdToken;
typedef mdModuleRef = mdToken;
typedef mdParamDef = mdToken;
typedef mdString = mdToken;
typedef mdInterfaceImpl = mdToken;
typedef mdFieldDef = mdToken;
typedef mdProperty = mdToken;
typedef mdEvent = mdToken;
typedef PCCOR_SIGNATURE = Pointer<Uint8>;
typedef UVCP_CONSTANT = Pointer<Uint8>;

Pointer<Utf16> stralloc(int wChars) => calloc<Uint16>(wChars).cast();
