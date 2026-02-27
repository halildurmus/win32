import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

/// High-level wrapper around TaskDialog / TaskDialogIndirect.
final class WindowsTaskDialog {
  const WindowsTaskDialog();

  MESSAGEBOX_RESULT showMessage({
    required String title,
    required String instruction,
    required String content,
    TASKDIALOG_COMMON_BUTTON_FLAGS? buttons,
    PCWSTR? icon,
  }) => using((arena) {
    buttons ??= TDCBF_OK_BUTTON | TDCBF_CANCEL_BUTTON;
    icon ??= TD_INFORMATION_ICON;
    final selected = arena<Int32>();
    TaskDialog(
      null,
      null,
      arena.pcwstr(title),
      arena.pcwstr(instruction),
      arena.pcwstr(content),
      buttons!,
      icon,
      selected,
    );
    if (selected.value == 0) {
      throw StateError('TaskDialog failed to return a valid result.');
    }
    return MESSAGEBOX_RESULT(selected.value);
  });

  MESSAGEBOX_RESULT showChoice({
    required String title,
    required String instruction,
    required String content,
    required List<TaskDialogButton> choices,
    String? expandedInfo,
    PCWSTR? icon,
  }) => using((arena) {
    icon ??= TD_WARNING_ICON;
    final buttons = arena<TASKDIALOG_BUTTON>(choices.length);
    for (var i = 0; i < choices.length; i++) {
      buttons[i]
        ..nButtonID = choices[i].id
        ..pszButtonText = arena.pwstr(choices[i].label);
    }
    final config = arena<TASKDIALOGCONFIG>();
    config.ref
      ..cbSize = sizeOf<TASKDIALOGCONFIG>()
      ..pszWindowTitle = arena.pwstr(title)
      ..pszMainInstruction = arena.pwstr(instruction)
      ..pszContent = arena.pwstr(content)
      ..pszExpandedInformation = .new(
        expandedInfo != null ? arena.pwstr(expandedInfo) : nullptr,
      )
      ..dwFlags = TDF_USE_COMMAND_LINKS | TDF_EXPAND_FOOTER_AREA
      ..hMainIcon = .new(icon!)
      ..cButtons = choices.length
      ..pButtons = buttons;
    final selected = arena<Int32>();
    TaskDialogIndirect(config, selected, nullptr, nullptr);
    return MESSAGEBOX_RESULT(selected.value);
  });
}

/// Represents a custom command-link button.
final class TaskDialogButton {
  const TaskDialogButton(this.id, this.label);

  final int id;
  final String label;
}
