// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../system/com/IMalloc.dart';
import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// xmllite.dll
// -----------------------------------------------------------------------
final _xmllite = DynamicLibrary.open('xmllite.dll');

int CreateXmlReader(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
  Pointer<COMObject> pMalloc,
) =>
    _CreateXmlReader(
      riid,
      ppvObject,
      pMalloc,
    );

late final _CreateXmlReader = _xmllite.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
  Pointer<COMObject> pMalloc,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
  Pointer<COMObject> pMalloc,
)>('CreateXmlReader');

int CreateXmlReaderInputWithEncodingCodePage(
  Pointer<COMObject> pInputStream,
  Pointer<COMObject> pMalloc,
  int nEncodingCodePage,
  int fEncodingHint,
  Pointer<Utf16> pwszBaseUri,
  Pointer<Pointer<COMObject>> ppInput,
) =>
    _CreateXmlReaderInputWithEncodingCodePage(
      pInputStream,
      pMalloc,
      nEncodingCodePage,
      fEncodingHint,
      pwszBaseUri,
      ppInput,
    );

late final _CreateXmlReaderInputWithEncodingCodePage = _xmllite.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pInputStream,
  Pointer<COMObject> pMalloc,
  Uint32 nEncodingCodePage,
  Int32 fEncodingHint,
  Pointer<Utf16> pwszBaseUri,
  Pointer<Pointer<COMObject>> ppInput,
),
    int Function(
  Pointer<COMObject> pInputStream,
  Pointer<COMObject> pMalloc,
  int nEncodingCodePage,
  int fEncodingHint,
  Pointer<Utf16> pwszBaseUri,
  Pointer<Pointer<COMObject>> ppInput,
)>('CreateXmlReaderInputWithEncodingCodePage');

int CreateXmlReaderInputWithEncodingName(
  Pointer<COMObject> pInputStream,
  Pointer<COMObject> pMalloc,
  Pointer<Utf16> pwszEncodingName,
  int fEncodingHint,
  Pointer<Utf16> pwszBaseUri,
  Pointer<Pointer<COMObject>> ppInput,
) =>
    _CreateXmlReaderInputWithEncodingName(
      pInputStream,
      pMalloc,
      pwszEncodingName,
      fEncodingHint,
      pwszBaseUri,
      ppInput,
    );

late final _CreateXmlReaderInputWithEncodingName = _xmllite.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pInputStream,
  Pointer<COMObject> pMalloc,
  Pointer<Utf16> pwszEncodingName,
  Int32 fEncodingHint,
  Pointer<Utf16> pwszBaseUri,
  Pointer<Pointer<COMObject>> ppInput,
),
    int Function(
  Pointer<COMObject> pInputStream,
  Pointer<COMObject> pMalloc,
  Pointer<Utf16> pwszEncodingName,
  int fEncodingHint,
  Pointer<Utf16> pwszBaseUri,
  Pointer<Pointer<COMObject>> ppInput,
)>('CreateXmlReaderInputWithEncodingName');

int CreateXmlWriter(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
  Pointer<COMObject> pMalloc,
) =>
    _CreateXmlWriter(
      riid,
      ppvObject,
      pMalloc,
    );

late final _CreateXmlWriter = _xmllite.lookupFunction<
    Int32 Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
  Pointer<COMObject> pMalloc,
),
    int Function(
  Pointer<GUID> riid,
  Pointer<Pointer> ppvObject,
  Pointer<COMObject> pMalloc,
)>('CreateXmlWriter');

int CreateXmlWriterOutputWithEncodingCodePage(
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pMalloc,
  int nEncodingCodePage,
  Pointer<Pointer<COMObject>> ppOutput,
) =>
    _CreateXmlWriterOutputWithEncodingCodePage(
      pOutputStream,
      pMalloc,
      nEncodingCodePage,
      ppOutput,
    );

late final _CreateXmlWriterOutputWithEncodingCodePage = _xmllite.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pMalloc,
  Uint32 nEncodingCodePage,
  Pointer<Pointer<COMObject>> ppOutput,
),
    int Function(
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pMalloc,
  int nEncodingCodePage,
  Pointer<Pointer<COMObject>> ppOutput,
)>('CreateXmlWriterOutputWithEncodingCodePage');

int CreateXmlWriterOutputWithEncodingName(
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pMalloc,
  Pointer<Utf16> pwszEncodingName,
  Pointer<Pointer<COMObject>> ppOutput,
) =>
    _CreateXmlWriterOutputWithEncodingName(
      pOutputStream,
      pMalloc,
      pwszEncodingName,
      ppOutput,
    );

late final _CreateXmlWriterOutputWithEncodingName = _xmllite.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pMalloc,
  Pointer<Utf16> pwszEncodingName,
  Pointer<Pointer<COMObject>> ppOutput,
),
    int Function(
  Pointer<COMObject> pOutputStream,
  Pointer<COMObject> pMalloc,
  Pointer<Utf16> pwszEncodingName,
  Pointer<Pointer<COMObject>> ppOutput,
)>('CreateXmlWriterOutputWithEncodingName');
