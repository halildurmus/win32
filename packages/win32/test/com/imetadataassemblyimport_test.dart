// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_local_variable

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  final ptr = calloc<COMObject>();

  final metadataassemblyimport = IMetaDataAssemblyImport(ptr);
  test('Can instantiate IMetaDataAssemblyImport.getAssemblyProps', () {
    expect(metadataassemblyimport.getAssemblyProps, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.getAssemblyRefProps', () {
    expect(metadataassemblyimport.getAssemblyRefProps, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.getFileProps', () {
    expect(metadataassemblyimport.getFileProps, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.getExportedTypeProps', () {
    expect(metadataassemblyimport.getExportedTypeProps, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.getManifestResourceProps', () {
    expect(metadataassemblyimport.getManifestResourceProps, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.enumAssemblyRefs', () {
    expect(metadataassemblyimport.enumAssemblyRefs, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.enumFiles', () {
    expect(metadataassemblyimport.enumFiles, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.enumExportedTypes', () {
    expect(metadataassemblyimport.enumExportedTypes, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.enumManifestResources', () {
    expect(metadataassemblyimport.enumManifestResources, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.getAssemblyFromScope', () {
    expect(metadataassemblyimport.getAssemblyFromScope, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.findExportedTypeByName', () {
    expect(metadataassemblyimport.findExportedTypeByName, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.findManifestResourceByName',
      () {
    expect(metadataassemblyimport.findManifestResourceByName, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.closeEnum', () {
    expect(metadataassemblyimport.closeEnum, isA<Function>());
  });
  test('Can instantiate IMetaDataAssemblyImport.findAssembliesByName', () {
    expect(metadataassemblyimport.findAssembliesByName, isA<Function>());
  });

  free(ptr);
}
