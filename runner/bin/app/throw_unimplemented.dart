// ignore: avoid_classes_with_only_static_members
class ThrowUnimplemented {
  static bool _throwReturn = true;
  static void throwIfOn() {
    if (_throwReturn) {
      throw UnimplementedError();
    }
  }

  static void off() {
    _throwReturn = false;
  }

  static void on() {
    _throwReturn = true;
  }
}
