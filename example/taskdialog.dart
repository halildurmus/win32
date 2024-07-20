// Demonstrates a task dialog from the console.

// Requires a reference to comctl32.dll v6 in the manifest to work. An example
// is included in taskdialog.exe.manifest, but this will only be loaded if
// you first compile this example with a command such as:
//   dart compile exe taskdialog.dart
//
// An example of the manifest is found in the bin\ subdirectory as
// taskdialog.exe.manifest. Place the compiled taskdialog.exe in the same folder
// as the manifest and then when you run this it should display two task dialog
// samples.
//
// If that doesn't work, make sure that external manifests are enabled in the
// registry. This can be done by running the following command in an elevated
// command prompt:
//   REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\SideBySide" /v PreferExternalManifest /t REG_DWORD /d 1 /f

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void showSimpleTaskDialog() {
  using((arena) {
    final windowTitle =
        'Dart TaskDialog Sample'.toNativeUtf16(allocator: arena);
    final mainInstruction =
        'Please read this important message'.toNativeUtf16(allocator: arena);
    final content = 'Task dialogs are great for sharing a longer string of '
            'explanatory content, where you need a user to read an instruction '
            'before making a decision. Of course, you cannot guarantee that '
            'the user will actually read the text, so it\'s important that you '
            'also provide an undo function for when the wrong choice is '
            'selected.'
        .toNativeUtf16(allocator: arena);
    final buttonSelected = arena<Int32>();

    try {
      final hr = TaskDialog(
        NULL,
        NULL,
        windowTitle,
        mainInstruction,
        content,
        TASKDIALOG_COMMON_BUTTON_FLAGS.TDCBF_OK_BUTTON |
            TASKDIALOG_COMMON_BUTTON_FLAGS.TDCBF_CANCEL_BUTTON,
        TD_INFORMATION_ICON,
        buttonSelected,
      );
      if (SUCCEEDED(hr)) {
        switch (buttonSelected.value) {
          case MESSAGEBOX_RESULT.IDOK:
            print('User clicked on the OK button.');
          default:
            print('User canceled the task dialog.');
        }
      }
    } on ArgumentError {
      print(
        'If you see an error "Failed to lookup symbol", it\'s likely because '
        'the app manifest declaring a dependency on comctl32.dll v6 is '
        'missing.\n\nSee the comment at the top of the sample source code.\n',
      );
      rethrow;
    }
  });
}

void showCustomTaskDialog() {
  using((arena) {
    final buttonSelected = arena<Int32>();

    const numberOfButtons = 2;
    final buttons = arena<TASKDIALOG_BUTTON>(numberOfButtons);
    buttons[0]
      ..nButtonID = 100
      ..pszButtonText =
          'Take the blue pill\nThe story ends, you wake up in your bed and '
                  'believe whatever you want to believe.'
              .toNativeUtf16(allocator: arena);
    buttons[1]
      ..nButtonID = 101
      ..pszButtonText =
          'Take the red pill\nYou stay in Wonderland, and I show you how deep '
                  'the rabbit hole goes.'
              .toNativeUtf16(allocator: arena);

    const matrixDescription =
        'In The Matrix, the main character Neo is offered the choice between a '
        'red pill and a blue pill by rebel leader Morpheus. The red pill '
        'represents an uncertain future: it would free him from the enslaving '
        'control of the machine-generated dream world and allow him to escape '
        'into the real world, but living the "truth of reality" is harsher and '
        'more difficult. On the other hand, the blue pill represents a '
        'beautiful prison: it would lead him back to ignorance, living in '
        'confined comfort without want or fear within the simulated reality of '
        'the Matrix.';

    final config = arena<TASKDIALOGCONFIG>();
    config.ref
      ..cbSize = sizeOf<TASKDIALOGCONFIG>()
      ..pszWindowTitle =
          'TaskDialogIndirect Sample'.toNativeUtf16(allocator: arena)
      ..pszMainInstruction =
          'Which pill will you take?'.toNativeUtf16(allocator: arena)
      ..pszContent = 'This is your last chance. There is no turning back.'
          .toNativeUtf16(allocator: arena)
      ..hMainIcon = TD_WARNING_ICON.address
      ..pszExpandedInformation =
          matrixDescription.toNativeUtf16(allocator: arena)
      ..dwFlags = TASKDIALOG_FLAGS.TDF_USE_COMMAND_LINKS |
          TASKDIALOG_FLAGS.TDF_EXPAND_FOOTER_AREA
      ..cButtons = numberOfButtons
      ..pButtons = buttons;

    final hr = TaskDialogIndirect(config, buttonSelected, nullptr, nullptr);
    if (SUCCEEDED(hr)) {
      if (buttonSelected.value == 100) {
        print('Ignorance is bliss.');
      } else {
        print("I've been expecting you, Mr. Anderson.");
      }
    }
  });
}

void main() {
  showSimpleTaskDialog();
  showCustomTaskDialog();
}
