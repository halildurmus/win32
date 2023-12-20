@TestOn('windows')

import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:test/test.dart';
import 'package:win32/win32.dart';

import 'helpers.dart';

void main() {
  // ISpellCheckerFactory is only available on Windows 8 or higher, per:
  // https://learn.microsoft.com/windows/win32/api/spellcheck/nn-spellcheck-ispellcheckerfactory
  if (getWindowsBuildNumber() <= 9200) return;

  group('SpellChecker', () {
    setUpAll(initializeCOM);

    test('supportedLanguages', () {
      final spellCheckerFactory = SpellCheckerFactory.createInstance();
      final pEnumString = spellCheckerFactory.supportedLanguages;
      expect(pEnumString.ref.isNull, isFalse);
      final enumString = IEnumString(pEnumString);

      final pElementsFetched = calloc<Uint32>();
      final pElements = calloc<Pointer<Utf16>>();

      final hr = enumString.next(1, pElements, pElementsFetched);
      expect(hr, equals(S_OK));
      expect(pElementsFetched.value, equals(1));
      final language = pElements.value.toDartString();

      expect(language, isNotEmpty);
      // e.g. en-US
      expect(language[2], equals('-'));

      free(pElements);
      free(pElementsFetched);
    });

    test('isSupported', () {
      final spellCheckerFactory = SpellCheckerFactory.createInstance();

      final supportedPtr = calloc<Int32>();

      // Dart reports locale as (for example) en_US; Windows expects en-US
      final languageTagPtr =
          Platform.localeName.replaceAll('_', '-').toNativeUtf16();

      final hr = spellCheckerFactory.isSupported(languageTagPtr, supportedPtr);
      expect(hr, equals(S_OK));
      expect(supportedPtr.value, equals(1));

      free(languageTagPtr);
    });

    test('check', () {
      final spellCheckerFactory = SpellCheckerFactory.createInstance();
      final supportedPtr = calloc<Int32>();

      final languageTagPtr = 'en-US'.toNativeUtf16();
      var hr = spellCheckerFactory.isSupported(languageTagPtr, supportedPtr);
      expect(hr, equals(S_OK));

      if (supportedPtr.value == 1) {
        final spellCheckerPtr = calloc<COMObject>();
        hr = spellCheckerFactory.createSpellChecker(
            languageTagPtr, spellCheckerPtr.cast());
        expect(hr, equals(S_OK));
        expect(spellCheckerPtr.ref.isNull, isFalse);

        final spellChecker = ISpellChecker(spellCheckerPtr);

        final errorsPtr = calloc<COMObject>();
        final textPtr = 'haev'.toNativeUtf16();
        hr = spellChecker.check(textPtr, errorsPtr.cast());
        expect(hr, equals(S_OK));
        expect(errorsPtr.ref.isNull, isFalse);

        final errors = IEnumSpellingError(errorsPtr);
        var errorPtr = calloc<COMObject>();

        while (errors.next(errorPtr.cast()) == S_OK) {
          expect(errorPtr.ref.isNull, isFalse);
          final error = ISpellingError(errorPtr);
          expect(error.correctiveAction, equals(CORRECTIVE_ACTION.REPLACE));
          final replacement = error.replacement;
          expect(replacement.toDartString(), equals('have'));
          WindowsDeleteString(replacement.address);
          errorPtr = calloc<COMObject>();
        }

        free(errorPtr);
        free(textPtr);
      }

      free(supportedPtr);
      free(languageTagPtr);
    });

    tearDown(forceGC);
    tearDownAll(CoUninitialize);
  });
}
