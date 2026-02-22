@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('Dispatcher', () {
    setUpAll(initializeCom);

    test('creating, renaming, and deleting a folder succeeds', () {
      final dispatcher = Dispatcher.fromProgID('Scripting.FileSystemObject');

      // Create the folder.
      final dispatch = dispatcher.invoke<IDispatch>('CreateFolder', [
        r'C:\testfolder123',
      ]);
      final folder = Dispatcher(dispatch.value..addRef());
      // Rename the folder.
      check(() => folder.set('Name', 'testfolder456')).returnsNormally();

      // Validate the folder name change.
      final folderPath = folder.get<String>('Path');
      check(folderPath.value).equals(r'C:\testfolder456');
      folderPath.free();

      // Delete the folder.
      final result = folder.invoke('Delete');
      check(result.isEmpty).isTrue();
      result.free();

      folder.dispose();
      dispatch.free();
      dispatcher.dispose();
    });

    test('invoking a non-existent method throws WindowsException', () {
      final dispatcher = Dispatcher.fromProgID('Scripting.FileSystemObject');
      check(
          () => dispatcher.invoke('NonExistentMethod'),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(DISP_E_UNKNOWNNAME)
        ..has((e) => e.message, 'message').contains('Unknown name');
      dispatcher.dispose();
    });

    test('accessing a non-existent property throws WindowsException', () {
      final dispatcher = Dispatcher.fromProgID('Scripting.FileSystemObject');
      check(
          () => dispatcher.get<String>('NonExistentProperty'),
        ).throws<WindowsException>()
        ..has((e) => e.hr, 'hr').equals(DISP_E_UNKNOWNNAME)
        ..has((e) => e.message, 'message').contains('Unknown name');
      dispatcher.dispose();
    });
  });
}
