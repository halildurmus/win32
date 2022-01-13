// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/imaging/IWICBitmap.dart';
import '../../graphics/imaging/structs.g.dart';
import '../../graphics/imaging/IWICMetadataWriter.dart';
import '../../system/com/IStream.dart'; // -----------------------------------------------------------------------

// windowscodecs.dll
// -----------------------------------------------------------------------
final _windowscodecs = DynamicLibrary.open('windowscodecs.dll');

int WICConvertBitmapSource(
  Pointer<GUID> dstFormat,
  Pointer<COMObject> pISrc,
  Pointer<Pointer<COMObject>> ppIDst,
) =>
    _WICConvertBitmapSource(
      dstFormat,
      pISrc,
      ppIDst,
    );

late final _WICConvertBitmapSource = _windowscodecs.lookupFunction<
    Int32 Function(
  Pointer<GUID> dstFormat,
  Pointer<COMObject> pISrc,
  Pointer<Pointer<COMObject>> ppIDst,
),
    int Function(
  Pointer<GUID> dstFormat,
  Pointer<COMObject> pISrc,
  Pointer<Pointer<COMObject>> ppIDst,
)>('WICConvertBitmapSource');

int WICCreateBitmapFromSection(
  int width,
  int height,
  Pointer<GUID> pixelFormat,
  int hSection,
  int stride,
  int offset,
  Pointer<Pointer<COMObject>> ppIBitmap,
) =>
    _WICCreateBitmapFromSection(
      width,
      height,
      pixelFormat,
      hSection,
      stride,
      offset,
      ppIBitmap,
    );

late final _WICCreateBitmapFromSection = _windowscodecs.lookupFunction<
    Int32 Function(
  Uint32 width,
  Uint32 height,
  Pointer<GUID> pixelFormat,
  IntPtr hSection,
  Uint32 stride,
  Uint32 offset,
  Pointer<Pointer<COMObject>> ppIBitmap,
),
    int Function(
  int width,
  int height,
  Pointer<GUID> pixelFormat,
  int hSection,
  int stride,
  int offset,
  Pointer<Pointer<COMObject>> ppIBitmap,
)>('WICCreateBitmapFromSection');

int WICCreateBitmapFromSectionEx(
  int width,
  int height,
  Pointer<GUID> pixelFormat,
  int hSection,
  int stride,
  int offset,
  int desiredAccessLevel,
  Pointer<Pointer<COMObject>> ppIBitmap,
) =>
    _WICCreateBitmapFromSectionEx(
      width,
      height,
      pixelFormat,
      hSection,
      stride,
      offset,
      desiredAccessLevel,
      ppIBitmap,
    );

late final _WICCreateBitmapFromSectionEx = _windowscodecs.lookupFunction<
    Int32 Function(
  Uint32 width,
  Uint32 height,
  Pointer<GUID> pixelFormat,
  IntPtr hSection,
  Uint32 stride,
  Uint32 offset,
  Uint32 desiredAccessLevel,
  Pointer<Pointer<COMObject>> ppIBitmap,
),
    int Function(
  int width,
  int height,
  Pointer<GUID> pixelFormat,
  int hSection,
  int stride,
  int offset,
  int desiredAccessLevel,
  Pointer<Pointer<COMObject>> ppIBitmap,
)>('WICCreateBitmapFromSectionEx');

int WICGetMetadataContentSize(
  Pointer<GUID> guidContainerFormat,
  Pointer<COMObject> pIWriter,
  Pointer<Uint64> pcbSize,
) =>
    _WICGetMetadataContentSize(
      guidContainerFormat,
      pIWriter,
      pcbSize,
    );

late final _WICGetMetadataContentSize = _windowscodecs.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidContainerFormat,
  Pointer<COMObject> pIWriter,
  Pointer<Uint64> pcbSize,
),
    int Function(
  Pointer<GUID> guidContainerFormat,
  Pointer<COMObject> pIWriter,
  Pointer<Uint64> pcbSize,
)>('WICGetMetadataContentSize');

int WICMapGuidToShortName(
  Pointer<GUID> guid,
  int cchName,
  Pointer<Utf16> wzName,
  Pointer<Uint32> pcchActual,
) =>
    _WICMapGuidToShortName(
      guid,
      cchName,
      wzName,
      pcchActual,
    );

late final _WICMapGuidToShortName = _windowscodecs.lookupFunction<
    Int32 Function(
  Pointer<GUID> guid,
  Uint32 cchName,
  Pointer<Utf16> wzName,
  Pointer<Uint32> pcchActual,
),
    int Function(
  Pointer<GUID> guid,
  int cchName,
  Pointer<Utf16> wzName,
  Pointer<Uint32> pcchActual,
)>('WICMapGuidToShortName');

int WICMapSchemaToName(
  Pointer<GUID> guidMetadataFormat,
  Pointer<Utf16> pwzSchema,
  int cchName,
  Pointer<Utf16> wzName,
  Pointer<Uint32> pcchActual,
) =>
    _WICMapSchemaToName(
      guidMetadataFormat,
      pwzSchema,
      cchName,
      wzName,
      pcchActual,
    );

late final _WICMapSchemaToName = _windowscodecs.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidMetadataFormat,
  Pointer<Utf16> pwzSchema,
  Uint32 cchName,
  Pointer<Utf16> wzName,
  Pointer<Uint32> pcchActual,
),
    int Function(
  Pointer<GUID> guidMetadataFormat,
  Pointer<Utf16> pwzSchema,
  int cchName,
  Pointer<Utf16> wzName,
  Pointer<Uint32> pcchActual,
)>('WICMapSchemaToName');

int WICMapShortNameToGuid(
  Pointer<Utf16> wzName,
  Pointer<GUID> pguid,
) =>
    _WICMapShortNameToGuid(
      wzName,
      pguid,
    );

late final _WICMapShortNameToGuid = _windowscodecs.lookupFunction<
    Int32 Function(
  Pointer<Utf16> wzName,
  Pointer<GUID> pguid,
),
    int Function(
  Pointer<Utf16> wzName,
  Pointer<GUID> pguid,
)>('WICMapShortNameToGuid');

int WICMatchMetadataContent(
  Pointer<GUID> guidContainerFormat,
  Pointer<GUID> pguidVendor,
  Pointer<COMObject> pIStream,
  Pointer<GUID> pguidMetadataFormat,
) =>
    _WICMatchMetadataContent(
      guidContainerFormat,
      pguidVendor,
      pIStream,
      pguidMetadataFormat,
    );

late final _WICMatchMetadataContent = _windowscodecs.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidContainerFormat,
  Pointer<GUID> pguidVendor,
  Pointer<COMObject> pIStream,
  Pointer<GUID> pguidMetadataFormat,
),
    int Function(
  Pointer<GUID> guidContainerFormat,
  Pointer<GUID> pguidVendor,
  Pointer<COMObject> pIStream,
  Pointer<GUID> pguidMetadataFormat,
)>('WICMatchMetadataContent');

int WICSerializeMetadataContent(
  Pointer<GUID> guidContainerFormat,
  Pointer<COMObject> pIWriter,
  int dwPersistOptions,
  Pointer<COMObject> pIStream,
) =>
    _WICSerializeMetadataContent(
      guidContainerFormat,
      pIWriter,
      dwPersistOptions,
      pIStream,
    );

late final _WICSerializeMetadataContent = _windowscodecs.lookupFunction<
    Int32 Function(
  Pointer<GUID> guidContainerFormat,
  Pointer<COMObject> pIWriter,
  Uint32 dwPersistOptions,
  Pointer<COMObject> pIStream,
),
    int Function(
  Pointer<GUID> guidContainerFormat,
  Pointer<COMObject> pIWriter,
  int dwPersistOptions,
  Pointer<COMObject> pIStream,
)>('WICSerializeMetadataContent');
