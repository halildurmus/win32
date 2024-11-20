// Demonstrates using UI Automation to control a top-level window.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

IUIAutomationElement findTopLevelWindowByName(String windowName, Arena arena) {
  final automation = arena.com<IUIAutomation>(CUIAutomation);
  final root = arena.adopt(automation.getRootElement()!);
  final nameVariant = arena.using(Variant.bstr(windowName), (v) => v.free());
  final nameCondition = arena.adopt(
    automation.createPropertyCondition(UIA_NamePropertyId, nameVariant.ref)!,
  );

  final element = root.findFirst(TreeScope_Children, nameCondition);
  if (element == null) {
    throw StateError('No top-level window found for window name "$windowName"');
  }

  return arena.adopt(element);
}

IUIAutomationWindowPattern getWindowPattern(
  IUIAutomationElement element,
  Arena arena,
) {
  final propVal = arena.using(
    element.getCurrentPropertyValue(UIA_IsWindowPatternAvailablePropertyId),
    free,
  );
  if (!propVal.ref.boolVal) {
    throw StateError('WindowPattern is not available for this element');
  }

  final rawPattern = arena.adopt(
    element.getCurrentPattern(UIA_WindowPatternId)!,
  );
  return arena.adopt(rawPattern.queryInterface<IUIAutomationWindowPattern>());
}

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  // Change this to the name of a window you have open.
  const windowName = 'GitKraken Desktop';

  using((arena) {
    print('Searching for window "$windowName"...');
    final windowElement = findTopLevelWindowByName(windowName, arena);
    final windowPattern = getWindowPattern(windowElement, arena);
    print('Found window "$windowName".');

    print(
      windowPattern.currentIsTopmost
          ? 'The window is currently topmost.'
          : 'The window is not topmost.',
    );

    if (windowPattern.currentCanMinimize) {
      print('Minimizing the window...');
      windowPattern.setWindowVisualState(WindowVisualState_Minimized);
      Sleep(1000);

      print('Restoring the window...');
      windowPattern.setWindowVisualState(WindowVisualState_Normal);
      Sleep(1000);
    }

    if (windowPattern.currentCanMaximize) {
      print('Maximizing the window...');
      windowPattern.setWindowVisualState(WindowVisualState_Maximized);
      Sleep(1000);

      print('Restoring the window...');
      windowPattern.setWindowVisualState(WindowVisualState_Normal);
      Sleep(1000);
    }
  });
}
