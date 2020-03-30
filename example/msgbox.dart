// msgbox.dart

// Demonstrates a MessageBox from the console

import 'package:win32/win32.dart';

void main() {
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
