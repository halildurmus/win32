import '../app/throw_unimplemented.dart';
import 'flutter_engine.dart';

void registerPlugins(FlutterEngine engine) {
  ThrowUnimplemented.throwIfOn();
}

// class BinaryMessenger {
//   final FlutterDesktopMessengerRef _messengerRef;
//
//   BinaryMessenger(this._messengerRef);
// }


