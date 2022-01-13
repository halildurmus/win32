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
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class BG_AUTH_CREDENTIALS extends Struct {
  @Int32()
  external int Target;

  @Int32()
  external int Scheme;

  external BG_AUTH_CREDENTIALS_UNION Credentials;
}

/// {@category Struct}
class BG_AUTH_CREDENTIALS_UNION extends Union {
  external BG_BASIC_CREDENTIALS Basic;
}

/// {@category Struct}
class BG_BASIC_CREDENTIALS extends Struct {
  external Pointer<Utf16> UserName;

  external Pointer<Utf16> Password;
}

/// {@category Struct}
class BG_FILE_INFO extends Struct {
  external Pointer<Utf16> RemoteName;

  external Pointer<Utf16> LocalName;
}

/// {@category Struct}
class BG_FILE_PROGRESS extends Struct {
  @Uint64()
  external int BytesTotal;

  @Uint64()
  external int BytesTransferred;

  @Int32()
  external int Completed;
}

/// {@category Struct}
class BG_FILE_RANGE extends Struct {
  @Uint64()
  external int InitialOffset;

  @Uint64()
  external int Length;
}

/// {@category Struct}
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

/// {@category Struct}
class BG_JOB_REPLY_PROGRESS extends Struct {
  @Uint64()
  external int BytesTotal;

  @Uint64()
  external int BytesTransferred;
}

/// {@category Struct}
class BG_JOB_TIMES extends Struct {
  external FILETIME CreationTime;

  external FILETIME ModificationTime;

  external FILETIME TransferCompletionTime;
}

/// {@category Struct}
class BITS_FILE_PROPERTY_VALUE extends Union {
  external Pointer<Utf16> $String;
}

/// {@category Struct}
class BITS_JOB_PROPERTY_VALUE extends Union {
  @Uint32()
  external int Dword;

  external GUID ClsID;

  @Int32()
  external int Enable;

  @Uint64()
  external int $Uint64;

  @Int32()
  external int Target;
}

/// {@category Struct}
class FILESETINFO extends Struct {
  external Pointer<Utf16> bstrRemoteFile;

  external Pointer<Utf16> bstrLocalFile;

  @Uint32()
  external int dwSizeHint;
}
