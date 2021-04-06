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

class BackgroundCopyManager extends Struct {}

class BG_FILE_PROGRESS extends Struct {
  @Uint64()
  external int BytesTotal;
  @Uint64()
  external int BytesTransferred;
  @Int32()
  external int Completed;
}

class BG_FILE_INFO extends Struct {
  external Pointer<Utf16> RemoteName;
  external Pointer<Utf16> LocalName;
}

class BG_JOB_PROGRESS extends Struct {
  @Uint64()
  external int BytesTotal;
  @Uint64()
  external int BytesTransferred;
  @Uint32()
  external int FilesTotal;
  @Uint32()
  external int FilesTransferred;
}

class BG_JOB_TIMES extends Struct {
  external FILETIME CreationTime;
  external FILETIME ModificationTime;
  external FILETIME TransferCompletionTime;
}

class BackgroundCopyManager1_5 extends Struct {}

class BG_JOB_REPLY_PROGRESS extends Struct {
  @Uint64()
  external int BytesTotal;
  @Uint64()
  external int BytesTransferred;
}

class BG_BASIC_CREDENTIALS extends Struct {
  external Pointer<Utf16> UserName;
  external Pointer<Utf16> Password;
}

class BG_AUTH_CREDENTIALS_UNION extends Struct {
  external BG_BASIC_CREDENTIALS Basic;
}

class BG_AUTH_CREDENTIALS extends Struct {
  @Uint32()
  external int Target;
  @Uint32()
  external int Scheme;
  external BG_AUTH_CREDENTIALS_UNION Credentials;
}

class BackgroundCopyManager2_0 extends Struct {}

class BG_FILE_RANGE extends Struct {
  @Uint64()
  external int InitialOffset;
  @Uint64()
  external int Length;
}

class BackgroundCopyManager2_5 extends Struct {}

class BackgroundCopyManager3_0 extends Struct {}

class BackgroundCopyManager4_0 extends Struct {}

class BackgroundCopyManager5_0 extends Struct {}

class BITS_JOB_PROPERTY_VALUE extends Struct {
  @Uint32()
  external int Dword;
  external GUID ClsID;
  @Int32()
  external int Enable;
  @Uint64()
  external int Uint64;
  @Uint32()
  external int Target;
}

class BITS_FILE_PROPERTY_VALUE extends Struct {
  external Pointer<Utf16> String;
}

class BackgroundCopyManager10_1 extends Struct {}

class BackgroundCopyManager10_2 extends Struct {}

class BackgroundCopyManager10_3 extends Struct {}

class BITSExtensionSetupFactory extends Struct {}

class BackgroundCopyQMgr extends Struct {}

class FILESETINFO extends Struct {
  external Pointer<Utf16> bstrRemoteFile;
  external Pointer<Utf16> bstrLocalFile;
  @Uint32()
  external int dwSizeHint;
}
