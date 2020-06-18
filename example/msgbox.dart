// msgbox.dart

// Demonstrates a MessageBox from the console

import 'dart:ffi';

import 'package:win32/win32.dart';

void showTaskDialog() {
  // Requires a reference to comctl32.dll v6 in the manifest to work, so
  // commenting out here.
  final hr = TaskDialog(
      NULL,
      NULL,
      TEXT('Title message goes here'),
      TEXT('Some text that will be displayed in the task dialog goes here.'),
      nullptr,
      TASKDIALOG_COMMON_BUTTON_FLAGS.TDCBF_OK_BUTTON,
      TD_INFORMATION_ICON,
      nullptr);
  print(hr);
}

void showMessageBox() {
  final result = MessageBox(
      NULL,
      TEXT('This is not really an error, but we are pretending for the sake '
          'of this test.\n\nResource error.\nDo you want to try again?'),
      TEXT('Dart MessageBox Test'),
      MB_ICONWARNING | // Warning
          MB_CANCELTRYCONTINUE | // Action button
          MB_DEFBUTTON2 // Second button is the default
      );

  switch (result) {
    case IDCANCEL:
      print('Cancel pressed');
      break;
    case IDTRYAGAIN:
      print('Try Again pressed');
      break;
    case IDCONTINUE:
      print('Continue pressed');
      break;
  }
}

void main() {
  showMessageBox();
  // showTaskDialog();
}
