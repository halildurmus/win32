// Test to validate VTable size calculations for various COM interfaces.
//
// COM interfaces follow an inheritance hierarchy where each interface builds
// upon its parent, resulting in a specific number of methods and a
// corresponding VTable size. This test ensures the VTable sizes for common
// COM interfaces are calculated correctly based on the number of methods and
// the size of pointers (IntPtr).

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  test('Validate VTable sizes for COM interfaces', () {
    // The VTable size is calculated as: number of methods * sizeOf<IntPtr>().
    check(sizeOf<IAgileObjectVtbl>()).equals(3 * sizeOf<IntPtr>());
    check(sizeOf<IDispatchVtbl>()).equals(7 * sizeOf<IntPtr>());
    check(sizeOf<IFileDialogVtbl>()).equals(27 * sizeOf<IntPtr>());
    check(sizeOf<IFileOpenDialogVtbl>()).equals(29 * sizeOf<IntPtr>());
    check(sizeOf<IFileSaveDialogVtbl>()).equals(32 * sizeOf<IntPtr>());
    check(sizeOf<IInspectableVtbl>()).equals(6 * sizeOf<IntPtr>());
    check(sizeOf<IModalWindowVtbl>()).equals(4 * sizeOf<IntPtr>());
    check(sizeOf<ISpellChecker2Vtbl>()).equals(18 * sizeOf<IntPtr>());
    check(sizeOf<ISpVoiceVtbl>()).equals(38 * sizeOf<IntPtr>());
    check(sizeOf<IUnknownVtbl>()).equals(3 * sizeOf<IntPtr>());
    check(sizeOf<IUriVtbl>()).equals(28 * sizeOf<IntPtr>());
    check(sizeOf<IWinHttpRequestVtbl>()).equals(26 * sizeOf<IntPtr>());
  });
}
