// Demonstrates displaying a MessageBox with a warning icon and three buttons.

import 'package:win32/win32.dart';

void main() {
  final result = MessageBox(
    null,
    w('''
This is not really an error, but we are pretending for the sake of this demo.

Resource error.
Do you want to try again?
''').ptr,
    w('Dart MessageBox Demo').ptr,
    MB_ICONWARNING | // Warning icon
        MB_CANCELTRYCONTINUE | // Action button
        MB_DEFBUTTON2, // Second button is the default
  );

  switch (result) {
    case IDCANCEL:
      print('Cancel pressed');
    case IDTRYAGAIN:
      print('Try Again pressed');
    case IDCONTINUE:
      print('Continue pressed');
  }
}
