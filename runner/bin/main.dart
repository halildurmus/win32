import 'native_app.dart';
import 'window.dart';

void main() {
  final wnd = Window()
    ..title = 'New Window'
    ..show();

  NativeApp.run();
}
