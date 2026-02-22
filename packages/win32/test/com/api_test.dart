@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('COM tests', () {
    setUpAll(initializeCom);

    test('creating COM object with nullptr throws AssertionError', () {
      check(() => IUnknown(nullptr)).throws<AssertionError>();
    });

    test('creating a COM object with CoCreateInstance succeeds', () {
      using((arena) {
        final dialog = CoCreateInstance<IFileOpenDialog>(
          FileOpenDialog.toNative(allocator: arena),
          null,
          CLSCTX_ALL,
        );
        check(refCount(dialog)).equals(1);
        check(dialog.release()).isZero();
      });
    });

    test('creating a COM object with CoGetClassObject succeeds', () {
      using((arena) {
        final classFactory = CoGetClassObject<IClassFactory>(
          FileSaveDialog.toNative(allocator: arena),
          CLSCTX_ALL,
        );
        check(refCount(classFactory)).equals(1);
        final fileSaveDialog = classFactory.createInstance<IFileSaveDialog>(
          null,
        );
        check(refCount(fileSaveDialog)).equals(1);
        check(fileSaveDialog.release()).isZero();
        check(classFactory.release()).isZero();
      });
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
      check(fileDialog.release()).equals(1);
      check(dialog.release()).isZero();
    });

    test('can cast to supported interfaces', () {
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);
      check(refCount(dialog)).equals(1);

      final modal = dialog.queryInterface<IModalWindow>();
      check(modal.ptr.address).not((it) => it.equals(dialog.ptr.address));
      check(refCount(modal)).equals(2);

      final dialog2 = modal.queryInterface<IFileOpenDialog>();
      check(dialog2.ptr.address).not((it) => it.equals(modal.ptr.address));
      check(refCount(dialog2)).equals(3);

      final dialog3 = dialog2.queryInterface<IFileDialog>();
      check(dialog3.ptr.address).not((it) => it.equals(dialog2.ptr.address));
      check(refCount(dialog3)).equals(4);

      final dialog4 = dialog3.queryInterface<IFileDialog2>();
      check(dialog4.ptr.address).not((it) => it.equals(dialog3.ptr.address));
      check(refCount(dialog4)).equals(5);

      check(dialog4.release()).equals(4);
      check(dialog3.release()).equals(3);
      check(dialog2.release()).equals(2);
      check(modal.release()).equals(1);
      check(dialog.release()).isZero();
    });

    test('casting to the same interface retains object identity', () {
      final dialog = createInstance<IFileDialog>(FileOpenDialog);
      check(refCount(dialog)).equals(1);

      final dialog2 = dialog.queryInterface<IFileDialog>();
      check(dialog2.ptr.address).equals(dialog.ptr.address);
      check(refCount(dialog)).equals(2);
      check(refCount(dialog2)).equals(2);

      check(dialog2.release()).equals(1);
      check(dialog.release()).isZero();
    });

    test('cast to unsupported interface fails with proper error', () {
      final dialog = createInstance<IFileOpenDialog>(FileOpenDialog);
      check(
          () => dialog.queryInterface<IDesktopWallpaper>(),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'HRESULT').equals(E_NOINTERFACE)
        ..has(
          (e) => e.message,
          'message',
        ).contains('No such interface supported');
      check(dialog.release()).isZero();
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
