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
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IUri.dart';
import '../../../system/com/IStream.dart';
import '../../../storage/packaging/appx/structs.g.dart';

/// {@category Struct}
class APPX_ENCRYPTED_EXEMPTIONS extends Struct {
  @Uint32()
  external int count;

  external Pointer<Pointer<Utf16>> plainTextFiles;
}

/// {@category Struct}
class APPX_ENCRYPTED_PACKAGE_SETTINGS extends Struct {
  @Uint32()
  external int keyLength;

  external Pointer<Utf16> encryptionAlgorithm;

  @Int32()
  external int useDiffusion;

  external Pointer<COMObject> blockMapHashAlgorithm;
}

/// {@category Struct}
class APPX_ENCRYPTED_PACKAGE_SETTINGS2 extends Struct {
  @Uint32()
  external int keyLength;

  external Pointer<Utf16> encryptionAlgorithm;

  external Pointer<COMObject> blockMapHashAlgorithm;

  @Uint32()
  external int options;
}

/// {@category Struct}
class APPX_KEY_INFO extends Struct {
  @Uint32()
  external int keyLength;

  @Uint32()
  external int keyIdLength;

  external Pointer<Uint8> key;

  external Pointer<Uint8> keyId;
}

/// {@category Struct}
class APPX_PACKAGE_SETTINGS extends Struct {
  @Int32()
  external int forceZip32;

  external Pointer<COMObject> hashMethod;
}

/// {@category Struct}
class APPX_PACKAGE_WRITER_PAYLOAD_STREAM extends Struct {
  external Pointer<COMObject> inputStream;

  external Pointer<Utf16> fileName;

  external Pointer<Utf16> contentType;

  @Int32()
  external int compressionOption;
}

/// {@category Struct}
class PACKAGEDEPENDENCY_CONTEXT__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class PACKAGE_ID extends Struct {
  @Uint32()
  external int reserved;

  @Uint32()
  external int processorArchitecture;

  external PACKAGE_VERSION version;

  external Pointer<Utf16> name;

  external Pointer<Utf16> publisher;

  external Pointer<Utf16> resourceId;

  external Pointer<Utf16> publisherId;
}

/// {@category Struct}
class PACKAGE_INFO extends Struct {
  @Uint32()
  external int reserved;

  @Uint32()
  external int flags;

  external Pointer<Utf16> path;

  external Pointer<Utf16> packageFullName;

  external Pointer<Utf16> packageFamilyName;

  external PACKAGE_ID packageId;
}

/// {@category Struct}
class PACKAGE_VERSION extends Struct {
  external _PACKAGE_VERSION__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _PACKAGE_VERSION__Anonymous_e__Union extends Union {
  @Uint64()
  external int Version;

  external _PACKAGE_VERSION__Anonymous_e__Union__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _PACKAGE_VERSION__Anonymous_e__Union__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int Revision;

  @Uint16()
  external int Build;

  @Uint16()
  external int Minor;

  @Uint16()
  external int Major;
}

extension PACKAGE_VERSION__Anonymous_e__Union_Extension on PACKAGE_VERSION {
  int get Revision => this.Anonymous.Anonymous.Revision;
  set Revision(int value) => this.Anonymous.Anonymous.Revision = value;

  int get Build => this.Anonymous.Anonymous.Build;
  set Build(int value) => this.Anonymous.Anonymous.Build = value;

  int get Minor => this.Anonymous.Anonymous.Minor;
  set Minor(int value) => this.Anonymous.Anonymous.Minor = value;

  int get Major => this.Anonymous.Anonymous.Major;
  set Major(int value) => this.Anonymous.Anonymous.Major = value;
}

extension PACKAGE_VERSION_Extension on PACKAGE_VERSION {
  int get Version => this.Anonymous.Version;
  set Version(int value) => this.Anonymous.Version = value;

  _PACKAGE_VERSION__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _PACKAGE_VERSION__Anonymous_e__Union__Anonymous_e__Struct value) =>
      this.Anonymous.Anonymous = value;
}

/// {@category Struct}
class PACKAGE_VIRTUALIZATION_CONTEXT_HANDLE__ extends Struct {
  @Int32()
  external int unused;
}

/// {@category Struct}
class PACKAGE_INFO_REFERENCE extends Struct {
  external Pointer reserved;
}
