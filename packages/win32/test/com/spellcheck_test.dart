@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../helpers.dart';

void main() {
  setUpAll(LeakTracker.enableInDebug);

  setUp(LeakTracker.reset);

  tearDown(LeakTracker.verifyNoLeaksInDebug);

  group('SpellChecker', () {
    setUpAll(initializeCom);

    test('supportedLanguages returns valid languages', () {
      using((arena) {
        final spellCheckerFactory = arena.com<ISpellCheckerFactory>(
          SpellCheckerFactory,
        );

        final languages = spellCheckerFactory.supportedLanguages;
        check(languages).isNotNull();

        final pElementsFetched = arena<Uint32>();
        final pElements = arena<Pointer<Utf16>>();

        final hr = languages!.next(1, pElements, pElementsFetched);
        check(hr).equals(S_OK);
        check(pElementsFetched.value).equals(1);

        final language = pElements.value.toDartString();
        check(language).isNotEmpty();
        check(language[2]).equals('-'); // e.g., en-US.
        calloc.free(pElements.value);

        check(languages.release()).isZero();
      });
    });

    test('isSupported returns true for valid language tags', () {
      using((arena) {
        final spellCheckerFactory = arena.com<ISpellCheckerFactory>(
          SpellCheckerFactory,
        );
        final languageTag = arena.pcwstr('en-US');
        final isSupported = spellCheckerFactory.isSupported(languageTag);
        check(isSupported).isTrue();
      });
    });

    test('isSupported returns false for invalid language tags', () {
      using((arena) {
        final spellCheckerFactory = arena.com<ISpellCheckerFactory>(
          SpellCheckerFactory,
        );
        final invalidLanguageTag = arena.pcwstr('invalid-tag');
        final isSupported = spellCheckerFactory.isSupported(invalidLanguageTag);
        check(isSupported).isFalse();
      });
    });

    test('comprehensiveCheck identifies spelling errors', () {
      using((arena) {
        final spellCheckerFactory = arena.com<ISpellCheckerFactory>(
          SpellCheckerFactory,
        );
        final languageTag = arena.pcwstr('en-US');
        if (spellCheckerFactory.isSupported(languageTag)) {
          final spellChecker = spellCheckerFactory.createSpellChecker(
            languageTag,
          )!;

          final textToCheck = arena.pcwstr('not not');
          final errors = spellChecker.comprehensiveCheck(textToCheck)!;

          final errorPtr = arena<VTablePointer>();
          if (errors.next(errorPtr) == S_OK) {
            final error = ISpellingError(errorPtr.value);
            check(error.correctiveAction).equals(CORRECTIVE_ACTION_DELETE);
            check(error.startIndex).equals(4);
            check(error.length).equals(3);
            check(error.release()).isZero();
          }

          check(errors.release()).isZero();
          check(spellChecker.release()).isZero();
        }
      });
    });

    test('comprehensiveCheck returns no errors for correct text', () {
      using((arena) {
        final spellCheckerFactory = arena.com<ISpellCheckerFactory>(
          SpellCheckerFactory,
        );
        final languageTag = arena.pcwstr('en-US');
        if (spellCheckerFactory.isSupported(languageTag)) {
          final spellChecker = spellCheckerFactory.createSpellChecker(
            languageTag,
          )!;

          final textToCheck = arena.pcwstr(
            'This is a correctly spelled sentence.',
          );
          final errors = spellChecker.comprehensiveCheck(textToCheck)!;

          final errorPtr = arena<VTablePointer>();
          check(errors.next(errorPtr)).equals(S_FALSE); // No spelling errors.

          check(errors.release()).isZero();
          check(spellChecker.release()).isZero();
        }
      });
    });
  });
}
