// gdi32.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _gdi32 = DynamicLibrary.open('gdi32.dll');
final CreateFontIndirect =
    _gdi32.lookupFunction<createFontIndirectNative, createFontIndirectDart>(
        'CreateFontIndirectW');
final CreateSolidBrush =
    _gdi32.lookupFunction<createSolidBrushNative, createSolidBrushDart>(
        'CreateSolidBrush');
final DeleteObject =
    _gdi32.lookupFunction<deleteObjectNative, deleteObjectDart>('DeleteObject');
final GetObject =
    _gdi32.lookupFunction<getObjectNative, getObjectDart>('GetObjectW');
final GetStockObject = _gdi32
    .lookupFunction<getStockObjectNative, getStockObjectDart>('GetStockObject');
final GetTextMetrics =
    _gdi32.lookupFunction<getTextMetricsNative, getTextMetricsDart>(
        'GetTextMetricsW');
final LineTo = _gdi32.lookupFunction<lineToNative, lineToDart>('LineTo');
final MoveToEx =
    _gdi32.lookupFunction<moveToExNative, moveToExDart>('MoveToEx');
final SaveDC = _gdi32.lookupFunction<saveDCNative, saveDCDart>('SaveDC');
final SetBkColor =
    _gdi32.lookupFunction<setBkColorNative, setBkColorDart>('SetBkColor');
final SetBkMode =
    _gdi32.lookupFunction<setBkModeNative, setBkModeDart>('SetBkMode');
final SetMapMode =
    _gdi32.lookupFunction<setMapModeNative, setMapModeDart>('SetMapMode');
final SetTextColor =
    _gdi32.lookupFunction<setTextColorNative, setTextColorDart>('SetTextColor');
final SetViewportExtEx =
    _gdi32.lookupFunction<setViewportExtExNative, setViewportExtExDart>(
        'SetViewportExtEx');
final SetViewportOrgEx =
    _gdi32.lookupFunction<setViewportOrgExNative, setViewportOrgExDart>(
        'SetViewportOrgEx');
final SetWindowExtEx = _gdi32
    .lookupFunction<setWindowExtExNative, setWindowExtExDart>('SetWindowExtEx');
final StretchDIBits = _gdi32
    .lookupFunction<stretchDIBitsNative, stretchDIBitsDart>('StretchDIBits');
final TextOut = _gdi32.lookupFunction<textOutNative, textOutDart>('TextOutW');
