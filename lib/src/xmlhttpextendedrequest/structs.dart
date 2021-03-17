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

class DOMDocument60 extends Struct {
}

class FreeThreadedDOMDocument60 extends Struct {
}

class XMLSchemaCache60 extends Struct {
}

class XSLTemplate60 extends Struct {
}

class XMLHTTP60 extends Struct {
}

class FreeThreadedXMLHTTP60 extends Struct {
}

class ServerXMLHTTP60 extends Struct {
}

class SAXXMLReader60 extends Struct {
}

class MXXMLWriter60 extends Struct {
}

class MXHTMLWriter60 extends Struct {
}

class SAXAttributes60 extends Struct {
}

class MXNamespaceManager60 extends Struct {
}

class __msxml6_ReferenceRemainingTypes__ extends Struct {
  @Uint32() external int __tagDomNodeType__;
  @Uint32() external int __domNodeType__;
  @Uint32() external int __serverXmlHttpOptionEnum__;
  @Uint32() external int __serverXmlHttpOption__;
  @Uint32() external int __serverCertOptionEnum__;
  @Uint32() external int __serverCertOption__;
  @Uint32() external int __proxySettingEnum__;
  @Uint32() external int __proxySetting__;
  @Uint32() external int __somItemTypeEnum__;
  @Uint32() external int __somItemType__;
  @Uint32() external int __schemaUseEnum__;
  @Uint32() external int __schemaUse__;
  @Uint32() external int __schemaDerivationMethodEnum__;
  @Uint32() external int __schemaDerivationMethod__;
  @Uint32() external int __schemaContentTypeEnum__;
  @Uint32() external int __schemaContentType__;
  @Uint32() external int __schemaProcessContentsEnum__;
  @Uint32() external int __schemaProcessContents__;
  @Uint32() external int __schemaWhitespaceEnum__;
  @Uint32() external int __schemaWhitespace__;
  @Uint32() external int __schemaTypeVarietyEnum__;
  @Uint32() external int __schemaTypeVariety__;
}

class XHR_COOKIE extends Struct {
  external Pointer<Utf16> pwszUrl;
  external Pointer<Utf16> pwszName;
  external Pointer<Utf16> pwszValue;
  external Pointer<Utf16> pwszP3PPolicy;
  external FILETIME ftExpires;
  @Uint32() external int dwFlags;
}

class XHR_CERT extends Struct {
  @Uint32() external int cbCert;
  external Pointer<Uint8> pbCert;
}

