@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('Win32 macros tests', () {
    test('CTL_CODE generates correct control code', () {
      // FSCTL_DELETE_OBJECT_ID
      final controlCode = CTL_CODE(
        FILE_DEVICE_FILE_SYSTEM,
        40,
        METHOD_BUFFERED,
        FILE_SPECIAL_ACCESS,
      );
      check(controlCode).equals(0x900A0);
    });

    test('FAILED correctly identifies HRESULT failure', () {
      check(FAILED(E_FAIL)).isTrue();
      check(FAILED(S_OK)).isFalse();
      check(FAILED(S_FALSE)).isFalse();
      check(FAILED(STATUS_SUCCESS.toHRESULT())).isFalse();
    });

    test('SUCCEEDED correctly identifies HRESULT success', () {
      check(SUCCEEDED(S_OK)).isTrue();
      check(SUCCEEDED(S_FALSE)).isTrue();
      check(SUCCEEDED(E_FAIL)).isFalse();
      check(SUCCEEDED(STATUS_SUCCESS.toHRESULT())).isTrue();
    });

    test('GetRValue extracts red component', () {
      final color = RGB(128, 64, 32);
      check(GetRValue(color)).equals(128);
    });

    test('GetGValue extracts green component', () {
      final color = RGB(128, 64, 32);
      check(GetGValue(color)).equals(64);
    });

    test('GetBValue extracts blue component', () {
      final color = RGB(128, 64, 32);
      check(GetBValue(color)).equals(32);
    });

    test('HIBYTE extracts high-order byte', () {
      check(HIBYTE(0x1234)).equals(0x12);
    });

    test('HIWORD extracts high-order word', () {
      check(HIWORD(0x12345678)).equals(0x1234);
    });

    test('LOBYTE extracts low-order byte', () {
      check(LOBYTE(0x1234)).equals(0x34);
    });

    test('LOWORD extracts low-order word', () {
      check(LOWORD(0x12345678)).equals(0x5678);
    });

    test('RGB combines red, green, and blue', () {
      final color = RGB(128, 64, 32);
      check(color).equals(const COLORREF(0x204080));
    });

    test('HRESULT_FROM_NT maps NTSTATUS to HRESULT', () {
      final hresult = HRESULT_FROM_NT(STATUS_NOT_FOUND);
      check(hresult.code).equals(0xD0000225.toSigned(32));
    });

    test('HRESULT_FROM_WIN32 maps WIN32_ERROR to HRESULT', () {
      final hresult = HRESULT_FROM_WIN32(ERROR_ACCESS_DENIED);
      check(hresult.code).equals(0x80070005.toSigned(32));
    });

    test('MAKEWORD combines two bytes', () {
      final word = MAKEWORD(0x12, 0x34);
      check(word).equals(0x3412);
    });

    test('MAKELONG combines two words', () {
      final longValue = MAKELONG(0x1234, 0x5678);
      check(longValue).equals(0x56781234);
    });

    test('MAKEINTRESOURCE creates a resource pointer', () {
      final resource = MAKEINTRESOURCE(123);
      check(resource.address).equals(123);
    });

    test('ZeroMemory fills memory with zeros', () {
      const length = 10;
      final buffer = adaptiveCalloc<Uint8>(length);
      ZeroMemory(buffer, length);
      check(buffer.asTypedList(length)).deepEquals(List.filled(length, 0));
      free(buffer);
    });

    test('FillMemory fills memory with specific value', () {
      const length = 10;
      final buffer = adaptiveCalloc<Uint8>(length);
      FillMemory(buffer, length, 0xAA);
      check(buffer.asTypedList(length)).deepEquals(List.filled(length, 0xAA));
      free(buffer);
    });

    test('PropVariantInit initializes PROPVARIANT structure', () {
      final pvar = adaptiveCalloc<PROPVARIANT>()..ref.vt = VT_ERROR;
      PropVariantInit(pvar);
      check(
        pvar.cast<Uint8>().asTypedList(sizeOf<PROPVARIANT>()),
      ).deepEquals(List.filled(sizeOf<PROPVARIANT>(), 0));
      free(pvar);
    });

    test('GET_SC_WPARAM extracts system command WPARAM', () {
      check(GET_SC_WPARAM(SC_CLOSE)).equals(SC_CLOSE);
    });
  });
}
