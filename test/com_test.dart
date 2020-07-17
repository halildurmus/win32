@TestOn('windows')

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('GUID creation', () {
    final guid = GUID.allocate();
    final hr = CoCreateGuid(guid.addressOf);
    expect(hr, equals(S_OK));

    final guid2 = GUID.fromString(guid.toString());
    expect(guid.toString(), equals(guid2.toString()));

    free(guid.addressOf);
    free(guid2.addressOf);
  });

  test('GUID creation failure', () {
    // Note the rogue 'X' here
    expect(() => GUID.fromString('{X161CA9B-9409-4A77-7327-8B8D3363C6B9}'),
        throwsFormatException);
  });

  test('CLSIDFromString', () {
    final guid = GUID.allocate();
    final hr = CLSIDFromString(TEXT(CLSID_FileSaveDialog), guid.addressOf);
    expect(hr, equals(S_OK));

    expect(guid.toString(), equalsIgnoringCase(CLSID_FileSaveDialog));

    free(guid.addressOf);
  });

  test('IIDFromString', () {
    final guid = GUID.allocate();
    final hr = IIDFromString(TEXT(IID_IShellItem2), guid.addressOf);
    expect(hr, equals(S_OK));

    expect(guid.toString(), equalsIgnoringCase(IID_IShellItem2));

    free(guid.addressOf);
  });

  test('Create COM object without calling CoInitialize()', () {
    expect(
        () => FileOpenDialog.createInstance(),
        throwsA(isA<WindowsException>()
            .having((e) => e.hr, 'hr', equals(CO_E_NOTINITIALIZED))
            .having((e) => e.toString(), 'message',
                contains('CoInitialize has not been called.'))));
  });

  test('Create COM object successfully', () {
    var hr = CoInitializeEx(
        nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
    expect(hr, equals(S_OK));

    expect(() => FileOpenDialog.createInstance(), returnsNormally);

    CoUninitialize();
  });

  group('COM object tests', () {
    FileOpenDialog dialog;
    setUp(() {
      final hr = CoInitializeEx(
          nullptr, COINIT_APARTMENTTHREADED | COINIT_DISABLE_OLE1DDE);
      if (SUCCEEDED(hr)) {
        dialog = FileOpenDialog.createInstance();
      }
    });
    test('Dialog object exists', () {
      expect(dialog.ptr.address, isNonZero);
    });
    test('Can cast to IUnknown', () {
      final riid = convertToIID(IID_IUnknown);

      final classPtr = allocate<IntPtr>();
      final hr = dialog.QueryInterface(riid.cast(), classPtr);
      expect(hr, equals(S_OK));

      final unk = IUnknown(classPtr.cast());
      expect(unk.ptr.address, isNonZero);

      free(classPtr);
      free(riid);
    });
    test('Cast to random interface fails', () {
      final riid = convertToIID(IID_IDesktopWallpaper);

      final classPtr = allocate<IntPtr>();
      final hr = dialog.QueryInterface(riid.cast(), classPtr);
      expect(hr, equals(E_NOINTERFACE));

      free(classPtr);
      free(riid);
    });
    test('AddRef / Release', () {
      var refs = dialog.AddRef();
      expect(refs, equals(2));

      refs = dialog.AddRef();
      expect(refs, equals(3));

      refs = dialog.Release();
      expect(refs, equals(2));

      refs = dialog.Release();
      expect(refs, equals(1));
    });
    tearDown(() {
      free(dialog.ptr);
      CoUninitialize();
    });
  });
}
