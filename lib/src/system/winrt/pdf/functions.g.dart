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
import '../../../graphics/dxgi/IDXGIDevice.dart';
import '../../../system/winrt/pdf/IPdfRendererNative.dart'; // -----------------------------------------------------------------------

// windows.data.pdf.dll
// -----------------------------------------------------------------------
final _windows_data_pdf = DynamicLibrary.open('windows.data.pdf.dll');

int PdfCreateRenderer(
  Pointer<COMObject> pDevice,
  Pointer<Pointer<COMObject>> ppRenderer,
) =>
    _PdfCreateRenderer(
      pDevice,
      ppRenderer,
    );

late final _PdfCreateRenderer = _windows_data_pdf.lookupFunction<
    Int32 Function(
  Pointer<COMObject> pDevice,
  Pointer<Pointer<COMObject>> ppRenderer,
),
    int Function(
  Pointer<COMObject> pDevice,
  Pointer<Pointer<COMObject>> ppRenderer,
)>('PdfCreateRenderer');
