// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// Get the root element of the given [uiAutomation].
IUIAutomationElement getRootElement(IUIAutomation uiAutomation) {
  final pElement = calloc<COMObject>();
  final hr = uiAutomation.getRootElement(pElement.cast());
  if (FAILED(hr)) {
    free(pElement);
    throw WindowsException(hr);
  }

  return IUIAutomationElement(pElement);
}

/// Get the top-level window element from the given [processId].
IUIAutomationElement getTopLevelWindowByProcessId(int processId) {
  // Create an instance of the CUIAutomation class
  final uiAutomation = CUIAutomation.createInstance();
  final root = getRootElement(uiAutomation);

  final valueParam = calloc<VARIANT>();
  VariantInit(valueParam);
  valueParam.ref.vt = VARENUM.VT_I4;
  valueParam.ref.intVal = processId;

  try {
    final pCondition = calloc<COMObject>();
    var hr = uiAutomation.createPropertyCondition(
        UIA_ProcessIdPropertyId, valueParam.ref, pCondition.cast());
    if (FAILED(hr)) {
      free(pCondition);
      throw WindowsException(hr);
    }
    final propertyCondition = IUIAutomationPropertyCondition(pCondition);

    final pElement = calloc<COMObject>();
    hr = root.findFirst(
        TreeScope.TreeScope_Children,
        propertyCondition.ptr.cast<Pointer<COMObject>>().value,
        pElement.cast());
    if (FAILED(hr)) {
      free(pElement);
      throw WindowsException(hr);
    }

    if (pElement.ref.isNull) {
      free(pElement);
      throw Exception('Could not find the window');
    }

    return IUIAutomationElement(pElement);
  } finally {
    VariantClear(valueParam);
    free(valueParam);
  }
}

/// Get the window pattern of the given [element].
IUIAutomationWindowPattern getWindowPattern(IUIAutomationElement element) {
  final pPattern = calloc<COMObject>();
  final hr = element.getCurrentPattern(UIA_WindowPatternId, pPattern.cast());
  if (FAILED(hr)) {
    free(pPattern);
    throw WindowsException(hr);
  }

  return IUIAutomationWindowPattern(pPattern);
}

void maximizeWindow(IUIAutomationWindowPattern window) {
  final hr = window
      .setWindowVisualState(WindowVisualState.WindowVisualState_Maximized);
  if (FAILED(hr)) throw WindowsException(hr);
}

void restoreWindow(IUIAutomationWindowPattern window) {
  final hr =
      window.setWindowVisualState(WindowVisualState.WindowVisualState_Normal);
  if (FAILED(hr)) throw WindowsException(hr);
}

void closeWindow(IUIAutomationWindowPattern window) {
  final hr = window.close();
  if (FAILED(hr)) throw WindowsException(hr);
}

void main() async {
  final process = await Process.start('notepad.exe', []); // Start notepad.exe
  Sleep(500); // Wait for the Notepad to start

  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED); // Initialize COM

  final notepad = getTopLevelWindowByProcessId(process.pid);
  final window = getWindowPattern(notepad);

  if (window.currentCanMaximize == TRUE) {
    maximizeWindow(window);
    Sleep(500);
    restoreWindow(window);
    Sleep(500);
  }

  closeWindow(window);
}
