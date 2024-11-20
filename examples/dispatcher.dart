// Demonstrates the use of Dispatcher for calling methods on COM objects that
// support late binding.
//
// This example interacts with the "Scripting.FileSystemObject" object to:
// 1. Create a new folder.
// 2. Rename the folder.
// 3. Retrieve the folder's path.
// 4. Delete the folder.
//
// The example also shows how to use VARIANT and DISPPARAMS structures to pass
// parameters to the methods being invoked.

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
  final folder = Dispatcher(dispatch)
    ..set('Name', 'ExampleFolderRenamed'); // Rename folder.
  print('Folder renamed to: "ExampleFolderRenamed"');

  // Get folder path.
  final folderPath = folder.get<String>('Path');
  print('Folder path: $folderPath');

  // Delete folder.
  folder.invoke('Delete');
  print('Folder deleted.');
}
