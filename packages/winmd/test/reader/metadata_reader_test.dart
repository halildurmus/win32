import 'dart:typed_data';

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

import '../versions.dart';

void main() async {
  final win32Index = await WindowsMetadataLoader().loadWin32Metadata(
    version: win32MetadataVersion,
  );
  final win32Reader = win32Index.readers.first;

  group('MetadataReader', () {
    test('moduleName', () {
      check(win32Reader.moduleName).equals('Windows.Win32.winmd');
    });

    test('moduleMvid', () {
      check(
        win32Reader.moduleMvid.toString(),
      ).equals('4a520299-e458-4675-befb-318972b60e6a');
    });

    test('blobHeap', () {
      final blobHeap = win32Reader.blobHeap;
      check(blobHeap.count).equals(159271);
      check(blobHeap.blobs)
        ..length.equals(159271)
        ..first.isEmpty()
        ..last.deepEquals([0x06, 0x11, 0xC0, 0x00, 0xFC, 0x99]);
    });

    test('guidHeap', () {
      final guidHeap = win32Reader.guidHeap;
      check(guidHeap.count).equals(1);
      check(guidHeap.guids)
        ..length.equals(1)
        ..first.equals(.fromString('4a520299-e458-4675-befb-318972b60e6a'));
    });

    test('stringHeap', () {
      final stringHeap = win32Reader.stringHeap;
      check(stringHeap.count).equals(282690);
      check(stringHeap.strings)
        ..length.equals(282690)
        ..first.isEmpty()
        ..last.equals('maxz');
    });

    test('userStringHeap', () {
      final userStringHeap = win32Reader.userStringHeap;
      check(userStringHeap.count).equals(1);
      check(userStringHeap.userStrings)
        ..length.equals(1)
        ..first.isEmpty();
    });

    group('readBlob', () {
      test('returns list with correct data', () {
        final blob = win32Reader.readBlob(0, .assemblyRef, 2);
        check(blob)
          ..isNotEmpty()
          ..deepEquals(
            Uint8List.fromList([
              0xCC, 0x7B, 0x13, 0xFF, 0xCD, 0x2D, 0xDD, 0x51, //
            ]),
          );
      });

      test('returns empty list', () {
        final blob = win32Reader.readBlob(0, .assemblyRef, 5);
        check(blob).isEmpty();
      });
    });

    test('readGuid', () {
      final guid = win32Reader.readGuid(0, .module, 2);
      check(guid.toString()).equals('4a520299-e458-4675-befb-318972b60e6a');
    });

    group('readString', () {
      test('returns correct string', () {
        final str = win32Reader.readString(0, .module, 1);
        check(str).equals('Windows.Win32.winmd');
      });

      test('returns empty string', () {
        final str = win32Reader.readString(0, .assemblyRef, 4);
        check(str).equals('');
      });
    });

    group('readUint', () {
      test('2-byte', () {
        final value = win32Reader.readUint(0, .classLayout, 0);
        check(value).equals(4);
      });

      test('4-byte', () {
        final value = win32Reader.readUint(0, .assemblyRef, 1);
        check(value).equals(0);
      });

      test('8-byte', () {
        final value = win32Reader.readUint(0, .assemblyRef, 0);
        check(value).equals(65538);
      });
    });

    test('readUint16', () {
      final value = win32Reader.readUint16(0, .classLayout, 0);
      check(value).equals(4);
    });

    test('readUint32', () {
      final value = win32Reader.readUint32(0, .assemblyRef, 1);
      check(value).equals(0);
    });

    test('readUint64', () {
      final value = win32Reader.readUint64(0, .assemblyRef, 0);
      check(value).equals(65538);
    });

    test('getEqualRange', () {
      final range = win32Reader
          .getEqualRange(.implMap, 1, ((0 /* index */ + 1) << 1) | 1)
          .toList();
      check(range.length).equals(1);
      check(range[0]).equals(0);
    });

    test('getList', () {
      final paramList = win32Reader.getList(2, .methodDef, 5, .param).toList();
      check(paramList.length).equals(2);
      check(paramList[0]).equals(1);
      check(paramList[1]).equals(2);
    });

    test('getParentRow', () {
      check(win32Reader.getParentRow(0, .methodDef, 5)).equals(0);
      check(win32Reader.getParentRow(1, .methodDef, 5)).equals(2);
    });
  });
}
