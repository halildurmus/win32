import '../app/throw_unimplemented.dart';
import 'flutter_api.dart';

class FlutterEngine {
  final FlutterApi _flutterApi;
  late final EngineRef _engineRef;
  //late final BinaryMessenger _binaryMessenger;

  FlutterEngine(this._engineRef, this._flutterApi) {
    // todo: add support flutter messages
    // _binaryMessenger = BinaryMessenger(
    //     FlutterDesktopEngineGetMessenger(_engineRef)
    // );
  }

  void reloadSystemFonts() {
    ThrowUnimplemented.throwIfOn();
  }
}
