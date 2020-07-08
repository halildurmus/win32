// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _gdi32 = DynamicLibrary.open('gdi32.dll');

/// {@category gdi32}
final CreateFontIndirect =
    _gdi32.lookupFunction<createFontIndirectNative, createFontIndirectDart>(
        'CreateFontIndirectW');

/// {@category gdi32}
final CreateSolidBrush =
    _gdi32.lookupFunction<createSolidBrushNative, createSolidBrushDart>(
        'CreateSolidBrush');

/// {@category gdi32}
final DeleteObject =
    _gdi32.lookupFunction<deleteObjectNative, deleteObjectDart>('DeleteObject');

/// {@category gdi32}
final EnumFontFamiliesEx =
    _gdi32.lookupFunction<enumFontFamiliesExNative, enumFontFamiliesExDart>(
        'EnumFontFamiliesExW');

/// {@category gdi32}
final GetObject =
    _gdi32.lookupFunction<getObjectNative, getObjectDart>('GetObjectW');

/// {@category gdi32}
final GetStockObject = _gdi32
    .lookupFunction<getStockObjectNative, getStockObjectDart>('GetStockObject');

/// {@category gdi32}
final GetTextMetrics =
    _gdi32.lookupFunction<getTextMetricsNative, getTextMetricsDart>(
        'GetTextMetricsW');

/// {@category gdi32}
final LineTo = _gdi32.lookupFunction<lineToNative, lineToDart>('LineTo');

/// {@category gdi32}
final MoveToEx =
    _gdi32.lookupFunction<moveToExNative, moveToExDart>('MoveToEx');

/// {@category gdi32}
final SaveDC = _gdi32.lookupFunction<saveDCNative, saveDCDart>('SaveDC');

/// {@category gdi32}
final SetBkColor =
    _gdi32.lookupFunction<setBkColorNative, setBkColorDart>('SetBkColor');

/// {@category gdi32}
final SetBkMode =
    _gdi32.lookupFunction<setBkModeNative, setBkModeDart>('SetBkMode');

/// {@category gdi32}
final SetMapMode =
    _gdi32.lookupFunction<setMapModeNative, setMapModeDart>('SetMapMode');

/// {@category gdi32}
final SetTextColor =
    _gdi32.lookupFunction<setTextColorNative, setTextColorDart>('SetTextColor');

/// {@category gdi32}
final SetViewportExtEx =
    _gdi32.lookupFunction<setViewportExtExNative, setViewportExtExDart>(
        'SetViewportExtEx');

/// {@category gdi32}
final SetViewportOrgEx =
    _gdi32.lookupFunction<setViewportOrgExNative, setViewportOrgExDart>(
        'SetViewportOrgEx');

/// {@category gdi32}
final SetWindowExtEx = _gdi32
    .lookupFunction<setWindowExtExNative, setWindowExtExDart>('SetWindowExtEx');

/// {@category gdi32}
final StretchDIBits = _gdi32
    .lookupFunction<stretchDIBitsNative, stretchDIBitsDart>('StretchDIBits');

/// {@category gdi32}
final TextOut = _gdi32.lookupFunction<textOutNative, textOutDart>('TextOutW');
