@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('COM tests', () {
    setUpAll(initializeCom);

    test('creating COM object with nullptr throws AssertionError', () {
      check(() => IUnknown(nullptr)).throws<AssertionError>();
    });

    test('creating a COM object with CoCreateInstance succeeds', () {
      final dialog = CoCreateInstance<IFileOpenDialog>(
        FileOpenDialog.ptr,
        null,
        CLSCTX_ALL,
      );
      check(refCount(dialog)).equals(1);
    });

    test('creating a COM object with CoGetClassObject succeeds', () {
      final classFactory = CoGetClassObject<IClassFactory>(
        FileSaveDialog.ptr,
        CLSCTX_ALL,
      );
      check(refCount(classFactory)).equals(1);
      final fileSaveDialog = classFactory.createInstance<IFileSaveDialog>(null);
      check(refCount(fileSaveDialog)).equals(1);
    });

    test('query interface mechanism works correctly', () {
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);

      final fileDialog = dialog.queryInterface<IFileDialog>();
      check(refCount(fileDialog)).equals(2);

      check(
          () => dialog.queryInterface<IDesktopWallpaper>(),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'HRESULT').equals(E_NOINTERFACE)
        ..has(
          (e) => e.message,
          'message',
        ).contains('No such interface supported');
    });

    test('can cast to supported interfaces', () {
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);
      check(() => dialog.cast<IModalWindow>()).returnsNormally();
      check(() => dialog.cast<IFileOpenDialog>()).returnsNormally();
      check(() => dialog.cast<IFileDialog>()).returnsNormally();
      check(() => dialog.cast<IFileDialog2>()).returnsNormally();
    });

    test('casting to the same interface retains object identity', () {
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);
      check(refCount(dialog)).equals(1);
      final dialog2 = dialog.cast<IFileOpenDialog>();
      check(dialog.ptr.address).equals(dialog2.ptr.address);
      check(refCount(dialog2)).equals(2);
    });

    test('cast to unsupported interface fails with proper error', () {
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);
      check(() => dialog.cast<IDesktopWallpaper>()).throws<WindowsException>()
        ..has((e) => e.hr, 'HRESULT').equals(E_NOINTERFACE)
        ..has(
          (e) => e.message,
          'message',
        ).contains('No such interface supported');
    });

    test('addRef / release modify reference count correctly', () {
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);

      var refs = dialog.addRef();
      check(refs).equals(2);

      refs = dialog.addRef();
      check(refs).equals(3);

      refs = dialog.release();
      check(refs).equals(2);

      refs = dialog.release();
      check(refs).equals(1);

      check(dialog.release()).isZero();
    });
  });
}
