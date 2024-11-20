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
    final windowTitle = w('Dart TaskDialog Sample');
    final mainInstruction = w('Please read this important message');
    final content = w(
      'Task dialogs are great for sharing a longer string of '
      'explanatory content, where you need a user to read an instruction '
      'before making a decision. Of course, you cannot guarantee that '
      "the user will actually read the text, so it's important that you "
      'also provide an undo function for when the wrong choice is '
      'selected.',
    );
    final buttonSelected = arena<Int32>();

    try {
      TaskDialog(
        null,
        null,
        windowTitle.ptr,
        mainInstruction.ptr,
        content.ptr,
        TDCBF_OK_BUTTON | TDCBF_CANCEL_BUTTON,
        TD_INFORMATION_ICON,
        buttonSelected,
      );
      switch (buttonSelected.value) {
        case IDOK:
          print('User clicked on the OK button.');
        default:
          print('User canceled the task dialog.');
      }
      // ignore: avoid_catching_errors
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
    final button1Text = w(
      'Take the blue pill\nThe story ends, you wake up in your bed and '
      'believe whatever you want to believe.',
    );
    final button2Text = w(
      'Take the red pill\nYou stay in Wonderland, and I show you how deep '
      'the rabbit hole goes.',
    );
    buttons[0]
      ..nButtonID = 100
      ..pszButtonText = button1Text.ptr;
    buttons[1]
      ..nButtonID = 101
      ..pszButtonText = button2Text.ptr;
    final windowTitle = w('TaskDialogIndirect Sample');
    final mainInstruction = w('Which pill will you take?');
    final content = w('This is your last chance. There is no turning back.');
    final expandedInformation = w(
      'In The Matrix, the main character Neo is offered the choice between a '
      'red pill and a blue pill by rebel leader Morpheus. The red pill '
      'represents an uncertain future: it would free him from the enslaving '
      'control of the machine-generated dream world and allow him to escape '
      'into the real world, but living the "truth of reality" is harsher and '
      'more difficult. On the other hand, the blue pill represents a '
      'beautiful prison: it would lead him back to ignorance, living in '
      'confined comfort without want or fear within the simulated reality of '
      'the Matrix.',
    );
    final config = arena<TASKDIALOGCONFIG>();
    config.ref
      ..cbSize = sizeOf<TASKDIALOGCONFIG>()
      ..pszWindowTitle = windowTitle.ptr
      ..pszMainInstruction = mainInstruction.ptr
      ..pszContent = content.ptr
      ..hMainIcon = TD_WARNING_ICON.address
      ..pszExpandedInformation = expandedInformation.ptr
      ..dwFlags = TDF_USE_COMMAND_LINKS | TDF_EXPAND_FOOTER_AREA
      ..cButtons = numberOfButtons
      ..pButtons = buttons;
    TaskDialogIndirect(config, buttonSelected, null, null);
    if (buttonSelected.value == 100) {
      print('Ignorance is bliss.');
    } else {
      print("I've been expecting you, Mr. Anderson.");
    }
  });
}

void main() {
  showSimpleTaskDialog();
  showCustomTaskDialog();
}
