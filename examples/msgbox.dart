// Demonstrates displaying a MessageBox with a warning icon and three buttons.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  final lpCaption = 'Dart MessageBox Demo'.toNativeUtf16();
  final lpText = '''
This is not really an error, but we are pretending for the sake of this demo.

Resource error.
Do you want to try again?
'''
      .toNativeUtf16();

  final result = MessageBox(
    NULL,
    lpText,
    lpCaption,
    MESSAGEBOX_STYLE.MB_ICONWARNING | // Warning icon
        MESSAGEBOX_STYLE.MB_CANCELTRYCONTINUE | // Action button
        MESSAGEBOX_STYLE.MB_DEFBUTTON2, // Second button is the default
  );

  free(lpText);
  free(lpCaption);

  switch (result) {
    case MESSAGEBOX_RESULT.IDCANCEL:
      print('Cancel pressed');
    case MESSAGEBOX_RESULT.IDTRYAGAIN:
      print('Try Again pressed');
    case MESSAGEBOX_RESULT.IDCONTINUE:
      print('Continue pressed');
  }
}
