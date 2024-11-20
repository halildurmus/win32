// Example demonstrating Win32 common color dialog invocation.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Converts Win32 `COLORREF` (0x00BBGGRR) to a `0xRRGGBB` string.
String toHexColor(int color) =>
    '0x'
    '${GetRValue(color).toRadixString(16).padLeft(2, '0')}'
    '${GetGValue(color).toRadixString(16).padLeft(2, '0')}'
    '${GetBValue(color).toRadixString(16).padLeft(2, '0')}';

void main() {
  using((arena) {
    // Allocate memory on the native heap for a 16-element array of custom
    // colors.
    final customColors = arena<Uint32>(16);

    // Palette of blues and purples
    for (var i = 0; i < 16; i++) {
      customColors[i] = RGB(i * 16, 0x80, 0xFF);
    }

    // Configure dialog box struct
    final cc = arena<CHOOSECOLOR>();
    cc.ref
      ..lStructSize = sizeOf<CHOOSECOLOR>()
      // Default color is mid-gray
      ..rgbResult = RGB(0x80, 0x80, 0x80)
      // Use custom color palette defined above
      ..lpCustColors = customColors
      // Dialog flags:
      //   CC_RGBINIT: use rgbResult for the dialog default value
      //   CC_FULLOPEN: open custom colors section
      ..Flags = CC_RGBINIT | CC_FULLOPEN;

    // Show the dialog; on success, `rgbResult` contains the chosen color
    if (!ChooseColor(cc)) {
      print('Dialog cancelled.');
      return;
    }

    print('Color chosen was: ${toHexColor(cc.ref.rgbResult)}');
  });
}
