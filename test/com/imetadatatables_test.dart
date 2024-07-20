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

  final metadatatables = IMetaDataTables(ptr);
  test('Can instantiate IMetaDataTables.getStringHeapSize', () {
    expect(metadatatables.getStringHeapSize, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getBlobHeapSize', () {
    expect(metadatatables.getBlobHeapSize, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getGuidHeapSize', () {
    expect(metadatatables.getGuidHeapSize, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getUserStringHeapSize', () {
    expect(metadatatables.getUserStringHeapSize, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getNumTables', () {
    expect(metadatatables.getNumTables, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getTableIndex', () {
    expect(metadatatables.getTableIndex, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getTableInfo', () {
    expect(metadatatables.getTableInfo, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getColumnInfo', () {
    expect(metadatatables.getColumnInfo, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getCodedTokenInfo', () {
    expect(metadatatables.getCodedTokenInfo, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getRow', () {
    expect(metadatatables.getRow, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getColumn', () {
    expect(metadatatables.getColumn, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getString', () {
    expect(metadatatables.getString, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getBlob', () {
    expect(metadatatables.getBlob, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getGuid', () {
    expect(metadatatables.getGuid, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getUserString', () {
    expect(metadatatables.getUserString, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getNextString', () {
    expect(metadatatables.getNextString, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getNextBlob', () {
    expect(metadatatables.getNextBlob, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getNextGuid', () {
    expect(metadatatables.getNextGuid, isA<Function>());
  });
  test('Can instantiate IMetaDataTables.getNextUserString', () {
    expect(metadatatables.getNextUserString, isA<Function>());
  });

  free(ptr);
}
