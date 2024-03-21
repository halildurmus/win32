@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  test('CLSIDFromString', () {
    final guid = calloc<GUID>();
    final pCLSID = CLSID_FileSaveDialog.toNativeUtf16();

    final hr = CLSIDFromString(pCLSID, guid);
    expect(hr, equals(S_OK));

    expect(guid.ref.toString(), equalsIgnoringCase(CLSID_FileSaveDialog));

    free(pCLSID);
    free(guid);
  });

  test('IIDFromString', () {
    final guid = calloc<GUID>();
    final pIID = IID_IShellItem2.toNativeUtf16();

    final hr = IIDFromString(pIID, guid);
    expect(hr, equals(S_OK));

    expect(guid.ref.toString(), equalsIgnoringCase(IID_IShellItem2));

    free(pIID);
    free(guid);
  });

  test('Create COM object without calling CoInitialize should fail', () {
    expect(
        FileOpenDialog.createInstance,
        throwsA(isA<WindowsException>()
            .having((e) => e.hr, 'hr', equals(CO_E_NOTINITIALIZED))
            .having((e) => e.toString(), 'message',
                contains('CoInitialize has not been called.'))));
  });

  group('COM testing', () {
    setUpAll(initializeCOM);

    test('create COM object with CoCreateInstance', () {
      final ptr = calloc<Pointer>();
      final clsid = GUIDFromString(CLSID_FileSaveDialog);
      final iid = GUIDFromString(IID_IFileSaveDialog);

      final hr = CoCreateInstance(clsid, nullptr, CLSCTX.CLSCTX_ALL, iid, ptr);
      expect(hr, equals(S_OK));
      expect(ptr.address, isNonZero);

      free(iid);
      free(clsid);
      free(ptr);
    });

    test('create COM object with CoGetClassObject', () {
      final ptrFactory = calloc<COMObject>();
      final ptrSaveDialog = calloc<COMObject>();
      final clsid = GUIDFromString(CLSID_FileSaveDialog);
      final iidClassFactory = GUIDFromString(IID_IClassFactory);
      final iidFileSaveDialog = GUIDFromString(IID_IFileSaveDialog);

      var hr = CoGetClassObject(clsid, CLSCTX.CLSCTX_ALL, nullptr,
          iidClassFactory, ptrFactory.cast());
      expect(hr, equals(S_OK));
      expect(ptrFactory.address, isNonZero);

      final classFactory = IClassFactory(ptrFactory);
      hr = classFactory.createInstance(
          nullptr, iidFileSaveDialog, ptrSaveDialog.cast());
      expect(hr, equals(S_OK));
      expect(ptrSaveDialog.address, isNonZero);

      free(iidFileSaveDialog);
      free(iidClassFactory);
      free(clsid);
      free(ptrSaveDialog);
    });

    test('create COM object through class method', () {
      expect(FileOpenDialog.createInstance, returnsNormally);
    });

    test('dialog object exists', () {
      final dialog = FileOpenDialog.createInstance();
      expect(dialog.ptr.address, isNonZero);
      expect(dialog.ptr.ref.lpVtbl.address, isNonZero);
    });

    test('can cast to IUnknown', () {
      final dialog = FileOpenDialog.createInstance();
      final unk = IUnknown.from(dialog);
      expect(unk.ptr.address, isNonZero);
      expect(unk.ptr.ref.lpVtbl.address, isNonZero);
    });

    test('cast to random interface fails', () {
      final dialog = FileOpenDialog.createInstance();
      expect(
          () => dialog.toInterface(IID_IDesktopWallpaper),
          throwsA(isA<WindowsException>()
              .having((e) => e.hr, 'hr', equals(E_NOINTERFACE))
              .having((e) => e.toString(), 'message',
                  contains('No such interface supported'))));
    });

    test('addRef / release', () {
      final dialog = FileOpenDialog.createInstance();

      var refs = dialog.addRef();
      expect(refs, equals(2));

      refs = dialog.addRef();
      expect(refs, equals(3));

      refs = dialog.release();
      expect(refs, equals(2));

      refs = dialog.release();
      expect(refs, equals(1));
    });

    test('can cast to various supported interfaces', () {
      final dialog = FileOpenDialog.createInstance();

      expect(() => IUnknown.from(dialog), returnsNormally);
      expect(() => IModalWindow.from(dialog), returnsNormally);
      expect(() => IFileOpenDialog.from(dialog), returnsNormally);
      expect(() => IFileDialog.from(dialog), returnsNormally);
      expect(() => IFileDialog2.from(dialog), returnsNormally);
    });

    test('cannot cast to various unsupported interfaces', () {
      final dialog = FileOpenDialog.createInstance();

      expect(
          () => IShellItem.from(dialog),
          throwsA(isA<WindowsException>()
              .having((e) => e.hr, 'hr', equals(E_NOINTERFACE))));
      expect(
          () => ISpeechObjectToken.from(dialog),
          throwsA(isA<WindowsException>()
              .having((e) => e.hr, 'hr', equals(E_NOINTERFACE))));
    });

    tearDown(forceGC);
    tearDownAll(CoUninitialize);
  });
}
