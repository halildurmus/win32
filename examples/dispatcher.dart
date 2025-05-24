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

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  // Initialize COM.
  CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);

  // Create a Dispatcher instance for the "Scripting.FileSystemObject" object.
  // https://learn.microsoft.com/office/vba/language/reference/user-interface-help/filesystemobject-object
  final fileSystemObject = Dispatcher.fromProgID('Scripting.FileSystemObject');

  try {
    using((arena) {
      // Create a new folder.
      final folderPath = BSTR.fromString(r'C:\ExampleFolder');
      final folderPathParam = arena<VARIANT>();
      VariantInit(folderPathParam);
      folderPathParam.ref
        ..vt = VT_BSTR
        ..bstrVal = folderPath.ptr;
      final folderParams = arena<DISPPARAMS>();
      folderParams.ref
        ..rgvarg = folderPathParam
        ..cArgs = 1;
      final resultParam = arena<VARIANT>();
      VariantInit(resultParam);
      fileSystemObject.invoke('CreateFolder', folderParams, resultParam);
      VariantClear(folderPathParam);
      print(r'Folder created at: "C:\ExampleFolder"');

      // Create a Dispatcher instance for the "Folder" object.
      // https://learn.microsoft.com/office/vba/language/reference/user-interface-help/folder-object
      final folder = Dispatcher(resultParam.ref.pdispVal);

      try {
        // Rename folder.
        final newFolderName = BSTR.fromString('ExampleFolderRenamed');
        final newFolderNameParam = arena<VARIANT>();
        VariantInit(newFolderNameParam);
        newFolderNameParam.ref
          ..vt = VT_BSTR
          ..bstrVal = newFolderName.ptr;
        folder.set('Name', newFolderNameParam);
        VariantClear(newFolderNameParam);
        print('Folder renamed to: "ExampleFolderRenamed"');

        // Get folder path.
        final folderPathResult = folder.get('Path');
        print('Folder path: ${folderPathResult.ref.bstrVal.toDartString()}');
        VariantClear(folderPathResult);

        // Delete folder.
        folder.invoke('Delete');
        print('Folder deleted.');
      } finally {
        folder.dispose();
        VariantClear(resultParam);
      }
    });
  } finally {
    fileSystemObject.dispose();
  }
}
