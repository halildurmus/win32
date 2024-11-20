import 'dart:ffi';
import 'dart:io';

import 'package:win32/win32.dart';

/// Get the top-level window element from the given [processId].
IUIAutomationElement getTopLevelWindowByProcessId(int processId) {
  // Create an instance of the CUIAutomation class
  final uiAutomation = createInstance<IUIAutomation>(CUIAutomation);
  final root = uiAutomation.getRootElement()!;
  final valueParam = Variant.int32(processId);
  final condition = uiAutomation.createPropertyCondition(
    UIA_ProcessIdPropertyId,
    valueParam.ref,
  );
  final element = root.findFirst(TreeScope_Descendants, condition);
  if (element == null) {
    throw StateError('No top-level window found for PID $processId');
  }
  return element;
}

/// Get the window pattern of the given [element].
IUIAutomationWindowPattern getWindowPattern(IUIAutomationElement element) {
  // Check if the window pattern is available for the element.
  if (!element
      .getCurrentPropertyValue(UIA_IsWindowPatternAvailablePropertyId)
      .ref
      .boolVal) {
    throw StateError('Window pattern is not available for this element');
  }

  return IUIAutomationWindowPattern(
    element.getCurrentPattern(UIA_WindowPatternId)!.ptr,
  );
}

void main() {
  // Start notepad.exe.
  final process = Process.runSync('notepad.exe', const []);
  Sleep(500); // Wait for the Notepad to start.

  CoInitializeEx(COINIT_MULTITHREADED);

  final notepad = getTopLevelWindowByProcessId(process.pid);
  final window = getWindowPattern(notepad);

  if (window.currentCanMaximize) {
    window.setWindowVisualState(WindowVisualState_Maximized);
    Sleep(500);
    window.setWindowVisualState(WindowVisualState_Normal);
    Sleep(500);
  }

  window.close();
}
