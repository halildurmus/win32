@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  group('SpellChecker', () {
    setUpAll(initializeCom);

    test('supportedLanguages returns valid languages', () {
      final spellCheckerFactory = createInstance<ISpellCheckerFactory>(
        SpellCheckerFactory,
      );

      final languages = spellCheckerFactory.supportedLanguages;
      check(languages).isNotNull();

      final pElementsFetched = loggingCalloc<Uint32>();
      final pElements = loggingCalloc<PWSTR>();

      try {
        final hr = languages!.next(1, pElements, pElementsFetched);
        check(hr).equals(S_OK);
        check(pElementsFetched.value).equals(1);

        final language = pElements.value.toDartString();
        check(language).isNotEmpty();
        check(language[2]).equals('-'); // e.g., en-US.
      } finally {
        free(pElements);
        free(pElementsFetched);
      }
    });

    test('isSupported returns true for valid language tags', () {
      final spellCheckerFactory = createInstance<ISpellCheckerFactory>(
        SpellCheckerFactory,
      );

      final languageTag = w('en-US');
      final isSupported = spellCheckerFactory.isSupported(languageTag.ptr);
      check(isSupported).isTrue();
    });

    test('isSupported returns false for invalid language tags', () {
      final spellCheckerFactory = createInstance<ISpellCheckerFactory>(
        SpellCheckerFactory,
      );

      final invalidLanguageTag = w('invalid-tag');
      final isSupported = spellCheckerFactory.isSupported(
        invalidLanguageTag.ptr,
      );
      check(isSupported).isFalse();
    });

    test('comprehensiveCheck identifies spelling errors', () {
      final spellCheckerFactory = createInstance<ISpellCheckerFactory>(
        SpellCheckerFactory,
      );

      final languageTag = w('en-US');
      if (spellCheckerFactory.isSupported(languageTag.ptr)) {
        final spellChecker = spellCheckerFactory.createSpellChecker(
          languageTag.ptr,
        )!;

        final textToCheck = w('not not');
        final errors = spellChecker.comprehensiveCheck(textToCheck.ptr)!;

        final errorPtr = loggingCalloc<VTablePointer>();
        try {
          if (errors.next(errorPtr) == S_OK) {
            final error = ISpellingError(errorPtr.value);
            check(error.correctiveAction).equals(CORRECTIVE_ACTION_DELETE);
            check(error.startIndex).equals(4);
            check(error.length).equals(3);
          }
        } finally {
          free(errorPtr);
        }
      }
    });

    test('comprehensiveCheck returns no errors for correct text', () {
      final spellCheckerFactory = createInstance<ISpellCheckerFactory>(
        SpellCheckerFactory,
      );

      final languageTag = w('en-US');
      if (spellCheckerFactory.isSupported(languageTag.ptr)) {
        final spellChecker = spellCheckerFactory.createSpellChecker(
          languageTag.ptr,
        )!;

        final textToCheck = w('This is a correctly spelled sentence.');
        final errors = spellChecker.comprehensiveCheck(textToCheck.ptr)!;

        final errorPtr = loggingCalloc<VTablePointer>();
        try {
          check(errors.next(errorPtr)).equals(S_FALSE); // No spelling errors.
        } finally {
          free(errorPtr);
        }
      }
    });
  });
}
