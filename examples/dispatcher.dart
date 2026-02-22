// Demonstrates the use of Dispatcher for calling methods on COM objects that
// support late binding.

import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  // Create a Dispatcher instance for the "Scripting.FileSystemObject" object.
  // https://learn.microsoft.com/office/vba/language/reference/user-interface-help/filesystemobject-object
  final fileSystemObject = Dispatcher.fromProgID('Scripting.FileSystemObject');

  // Create a new folder.
  final dispatch = fileSystemObject.invoke<IDispatch>('CreateFolder', const [
    r'C:\ExampleFolder',
  ]);
  print(r'Folder created at: "C:\ExampleFolder"');

  // Create a Dispatcher instance for the "Folder" object.
  // https://learn.microsoft.com/office/vba/language/reference/user-interface-help/folder-object
  final folder = Dispatcher(dispatch.value)
    ..set('Name', 'ExampleFolderRenamed'); // Rename folder.
  print('Folder renamed to: "ExampleFolderRenamed"');

  // Get folder path.
  final folderPath = folder.get<String>('Path');
  print('Folder path: ${folderPath.value}');
  folderPath.free();

  // Delete folder.
  folder.invoke('Delete').free();
  print('Folder deleted.');

  folder.dispose();
  dispatch.free();
  fileSystemObject.dispose();
}
