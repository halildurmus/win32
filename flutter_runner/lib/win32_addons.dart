import 'dart:ffi';

const GWL_HWNDPARENT = -8;

final _gdi32 = DynamicLibrary.open('gdi32.dll');

final FillPath =
    _gdi32.lookupFunction<Int32 Function(Int32), int Function(int)>('FillPath');
