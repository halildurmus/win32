// Example demonstrating COM object creation, interface casting, and method
// calls.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  using((arena) {
    // Create the FileOpenDialog COM object.
    final fileDialog = arena.com<IFileDialog>(FileOpenDialog);

    // Query additional interfaces from the same COM object.
    final fileDialog2 = arena.adopt(fileDialog.queryInterface<IFileDialog2>());
    final modalWindow = arena.adopt(fileDialog2.queryInterface<IModalWindow>());
    final fileOpenDialog = arena.adopt(
      modalWindow.queryInterface<IFileOpenDialog>(),
    );

    try {
      // Show the Open File dialog.
      fileOpenDialog
        ..setTitle(arena.pcwstr('Dart Open File Dialog'))
        ..show(null);
      // Get the selected file.
      final item = fileOpenDialog.getResult();
      if (item != null) {
        arena.adopt(item);
        final name = arena.using(item.getDisplayName(SIGDN_FILESYSPATH), free);
        print('Selected file: ${name.toDartString()}');
      }
    } on WindowsException catch (e) {
      if (e.hr == ERROR_CANCELLED.toHRESULT()) {
        print('Dialog cancelled.');
      } else {
        rethrow;
      }
    }
  });
}
