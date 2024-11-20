// Example of using Windows built-in spellchecker.
//
// Try it with something like this:
// dart examples\spellcheck.dart "The rain inx Spain is is very rar"
//
// You should see that the words 'inx' 'is', and 'rar' generate errors (and
// suggested corrections).

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Please provide a text to spellcheck.');
    ExitProcess(1);
  }

  final input = args.join(' ');

  CoInitializeEx(COINIT_MULTITHREADED);

  final spellCheckerFactory = createInstance<ISpellCheckerFactory>(
    SpellCheckerFactory,
  );

  final languageTag = w('en-US');
  if (!spellCheckerFactory.isSupported(languageTag.ptr)) {
    print("Spell checking is not supported for the language tag 'en-US'.");
    return;
  }

  final spellChecker = spellCheckerFactory.createSpellChecker(languageTag.ptr)!;

  // While ISpellChecker works fine for the needs of this example,
  // ISpellChecker2 extends it with the ability to remove words from the
  // custom dictionary. We cast to that purely as an example.
  final spellChecker2 = spellChecker.cast<ISpellChecker2>();

  print("Spell checking the text: '$input'");

  final text = w(input);
  final errors = spellChecker2.comprehensiveCheck(text.ptr)!;
  final errorPtr = loggingCalloc<VTablePointer>();

  while (errors.next(errorPtr) == S_OK) {
    final error = ISpellingError(errorPtr.value);

    // Get the start index and length of the error.
    final startIndex = error.startIndex;
    final length = error.length;

    final word = input.substring(startIndex, startIndex + length);

    switch (error.correctiveAction) {
      case CORRECTIVE_ACTION_NONE:
        print('No errors found!');

      case CORRECTIVE_ACTION_DELETE:
        print("Delete '$word'");

      case CORRECTIVE_ACTION_REPLACE:
        final replacement = error.replacement.toDartString();
        print("Replace: '$word' with '$replacement'");

      case CORRECTIVE_ACTION_GET_SUGGESTIONS:
        // Get an enumerator for all the suggestions for a substring.
        final lpWord = w(word);
        final suggestions = spellChecker2.suggest(lpWord.ptr)!;

        final suggestionArray = loggingCalloc<PWSTR>();
        final elements = loggingCalloc<ULONG>();

        while (suggestions.next(1, suggestionArray, elements) == S_OK) {
          if (suggestionArray[0].isNull) break;
          final element = suggestionArray[0];
          final suggestion = element.toDartString();
          free(element);
          print("Maybe replace: '$word' with '$suggestion'");
        }

        free(elements);
        free(suggestionArray);
    }
  }

  free(errorPtr);
}
