// Demonstrates COM object creation, casting, and calling methods.

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  // Create an instance of the FileOpenDialog class w/ IFileDialog interface.
  final fileDialog = createInstance<IFileDialog>(FileOpenDialog);
  print(
    'Created IFileDialog interface (fileDialog.ptr address is: '
    '${fileDialog.ptr.address.toHexString(64)}).',
  );

  // Cast the IFileDialog interface to an IFileDialog2 interface.
  final fileDialog2 = fileDialog.cast<IFileDialog2>();
  print(
    'Casted to IFileDialog2 interface (fileDialog2.ptr address is: '
    '${fileDialog2.ptr.address.toHexString(64)}).',
  );

  // Change the title of the dialog.
  final title = w('Dart Open File Dialog');
  fileDialog2.setTitle(title.ptr);

  // Cast the IFileDialog2 interface to an IModalWindow interface.
  final modalWindow = fileDialog2.cast<IModalWindow>();
  print(
    'Casted to IModalWindow interface (modalWindow.ptr address is: '
    '${modalWindow.ptr.address.toHexString(64)}).',
  );

  // Cast the IModalWindow interface to an IFileOpenDialog interface.
  final fileOpenDialog = modalWindow.cast<IFileOpenDialog>();
  print(
    'Casted to IFileOpenDialog interface (fileOpenDialog.ptr address is: '
    '${fileOpenDialog.ptr.address.toHexString(64)}).',
  );

  try {
    fileOpenDialog.show(null); // Launch the dialog.
    // Get the selected file.
    final result = fileOpenDialog.getResult();
    if (result != null) {
      print(
        'Returned IShellItem (result.ptr address is: '
        '${result.ptr.address.toHexString(64)}).',
      );
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

  print('All done!');
}
