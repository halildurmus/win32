import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/src/_internal/win32.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() async {
  group('win32.h', () {
    test('releaseIUnknown decrements ref count', () {
      initializeCom();
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog)..addRef();
      check(refCount(dialog)).equals(2);
      releaseIUnknown(dialog.ptr);
      check(refCount(dialog)).equals(1);
      check(dialog.release()).isZero();
    });
  });
}
