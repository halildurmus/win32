import 'dart:io' as io;

import 'package:winmd/winmd.dart';

void main() {
  // Load WinRT metadata from a local .winmd file.
  const winmdPath = r'C:\WINDOWS\System32\WinMetadata\Windows.Storage.winmd';
  final bytes = io.File(winmdPath).readAsBytesSync();
  final reader = MetadataReader.read(bytes);
  final index = MetadataIndex.fromReader(reader);

  // Optional: Use MetadataLookup for efficient type resolution by name.
  // This is especially helpful when the namespace of the target type is
  // unknown.
  final metadata = MetadataLookup(index);

  // Lookup a WinRT class (e.g., StorageFile) and list its public methods.
  final storageFile = metadata.findSingleTypeByName('StorageFile');
  print('WinRT class "${storageFile.name}" has the following methods:');
  for (final method in storageFile.methods) {
    print('  ${method.name}');
  }
  print('');

  // Lookup a WinRT enum (e.g., FileAttributes) and display its members.
  final enumType = metadata.findSingleTypeByName('FileAttributes');
  print('WinRT enum "${enumType.name}" has the following fields:');

  // The first field represents the underlying integral type (e.g., Int32).
  final underlyingType = enumType.fields.first;
  print('  ${underlyingType.name} = ${underlyingType.signature}');

  // Subsequent fields are named values within the enum.
  for (final field in enumType.fields.skip(1)) {
    print('  ${field.name} = ${field.constant?.value}');
  }
}
