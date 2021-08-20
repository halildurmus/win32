import 'dart:ffi';

const GWL_HWNDPARENT = -8;

// #if(WINVER >= 0x0601)
const WM_DPICHANGED = 0x02E0;
// #endif /* WINVER >= 0x0601 */

final _gdi32 = DynamicLibrary.open('gdi32.dll');

final FillPath =
    _gdi32.lookupFunction<Int32 Function(Int32), int Function(int)>('FillPath');
