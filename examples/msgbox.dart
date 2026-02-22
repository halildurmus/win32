// Demonstrates displaying a MessageBox with a warning icon and three buttons.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  using((arena) {
    final text = arena.pcwstr('''
This is not really an error, but we are pretending for the sake of this demo.

Resource error.
Do you want to try again?
''');
    final caption = arena.pcwstr('Dart MessageBox Demo');
    final Win32Result(:value, :error) = MessageBox(
      null,
      text,
      caption,
      MB_ICONWARNING | // Warning icon
          MB_CANCELTRYCONTINUE | // Action button
          MB_DEFBUTTON2, // Second button is the default
    );

    switch (value) {
      case IDCANCEL:
        print('Cancel pressed');
      case IDTRYAGAIN:
        print('Try Again pressed');
      case IDCONTINUE:
        print('Continue pressed');
      case 0:
        throw WindowsException(error.toHRESULT());
    }
  });
}
