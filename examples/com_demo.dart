// Example demonstrating COM object creation, interface casting, and method calls.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  // Create an instance of the FileOpenDialog class with IFileDialog interface.
  final fileDialog = createInstance<IFileDialog>(FileOpenDialog);

  // Cast the IFileDialog interface to an IFileDialog2 interface.
  final fileDialog2 = fileDialog.cast<IFileDialog2>();

  // Change the title of the dialog.
  final title = w('Dart Open File Dialog');
  fileDialog2.setTitle(title.ptr);

  // Cast the IFileDialog2 interface to an IModalWindow interface.
  final modalWindow = fileDialog2.cast<IModalWindow>();

  // Cast the IModalWindow interface to an IFileOpenDialog interface.
  final fileOpenDialog = modalWindow.cast<IFileOpenDialog>();

  try {
    // Launch the dialog.
    fileOpenDialog.show(null);
    // Get the selected file.
    final result = fileOpenDialog.getResult();
    if (result != null) {
      final displayName = result.getDisplayName(SIGDN_FILESYSPATH);
      print('Selected file: ${displayName.toDartString()}');
      free(displayName);
    }
  } on WindowsException catch (e) {
    if (e.hr == ERROR_CANCELLED.toHRESULT()) {
      print('Dialog cancelled.');
    } else {
      rethrow;
    }
  }
}
