import 'package:win32/win32.dart';

void main() {
  final result = MessageBox(
      NULL,
      TEXT('Resource not available\nDo you want to try again?'),
      TEXT('Account Details'),
      MB_ICONWARNING | MB_CANCELTRYCONTINUE | MB_DEFBUTTON2);

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
