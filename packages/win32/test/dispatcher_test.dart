@TestOn('windows')
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  group('Dispatcher (FileSystemObject)', () {
    late Dispatcher dispatcher;

    setUpAll(() {
      initializeCOM();
      dispatcher = Dispatcher.fromProgID('Scripting.FileSystemObject');
    });

    test('creating, renaming, and deleting a folder succeeds', () {
      using((arena) {
        final folderName = BSTR.fromString(r'C:\testfolder123');
        final folderNameParam = arena<VARIANT>();
        VariantInit(folderNameParam);
        folderNameParam.ref
          ..vt = VT_BSTR
          ..bstrVal = folderName.ptr;
        final params = arena<DISPPARAMS>();
        params.ref
          ..cArgs = 1
          ..rgvarg = folderNameParam;
        final result = arena<VARIANT>();
        VariantInit(result);

        expect(
          () => dispatcher.invoke('CreateFolder', params, result),
          returnsNormally,
        );
        VariantClear(folderNameParam);
        expect(result.ref.vt, equals(VT_DISPATCH));
        final folder = arena.using(
          Dispatcher(result.ref.pdispVal),
          (d) => d.dispose(),
        );

        final newFolderName = BSTR.fromString('testfolder456');
        final newFolderNameParam = arena<VARIANT>();
        VariantInit(newFolderNameParam);
        newFolderNameParam.ref
          ..vt = VT_BSTR
          ..bstrVal = newFolderName.ptr;
        expect(() => folder.set('Name', newFolderNameParam), returnsNormally);
        VariantClear(newFolderNameParam);

        final folderPathResult = folder.get('Path');
        expect(folderPathResult.ref.vt, equals(VT_BSTR));
        expect(
          folderPathResult.ref.bstrVal.toDartString(),
          equals(r'C:\testfolder456'),
        );
        VariantClear(folderPathResult);

        expect(() => folder.invoke('Delete'), returnsNormally);
        VariantClear(result);
      });
    });

    test('invoking a non-existeng method throws WindowsException', () {
      expect(
        () => dispatcher.invoke('NonExistentMethod'),
        throwsA(isA<WindowsException>()),
      );
    });

    tearDownAll(() => dispatcher.dispose());
  });
}
