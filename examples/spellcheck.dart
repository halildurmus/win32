// Demonstrates using the Windows built-in spell checker (ISpellChecker).
//
// Example:
//   dart examples\spellcheck.dart "The rain inx Spain is is very rar"
//
// Expected output includes suggested corrections for:
//   - inx
//   - duplicated "is"
//   - rar

import 'dart:ffi';

import 'package:args/args.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

sealed class SpellLanguage {
  factory SpellLanguage(String tag) = _FixedLanguage;

  const SpellLanguage._();

  static const auto = _AutoLanguage();

  String? get tag;
}

final class _AutoLanguage extends SpellLanguage {
  const _AutoLanguage() : super._();

  @override
  String? get tag => null;
}

final class _FixedLanguage extends SpellLanguage {
  const _FixedLanguage(this._tag) : super._();

  final String _tag;

  @override
  String get tag => _tag;
}

enum SpellIssueAction { delete, replace, suggestions }

final class SpellIssue {
  const SpellIssue({
    required this.word,
    required this.start,
    required this.action,
    this.replacement,
    this.suggestions = const [],
  });

  final String word;
  final int start;
  final SpellIssueAction action;
  final String? replacement;
  final List<String> suggestions;

  @override
  String toString() => switch (action) {
    SpellIssueAction.delete => "Delete '$word' (starting at index $start)",
    SpellIssueAction.replace =>
      "Replace '$word' (starting at index $start) → '$replacement'",
    SpellIssueAction.suggestions =>
      "Suggestions for '$word' (starting at index $start): ${suggestions.join(', ')}",
  };
}

final class SpellCheckResult {
  const SpellCheckResult({required this.language, required this.issues});

  final String language;
  final List<SpellIssue> issues;

  bool get isClean => issues.isEmpty;
}

final class WindowsSpellChecker {
  WindowsSpellChecker({SpellLanguage language = SpellLanguage.auto})
    : _language = language;

  final SpellLanguage _language;

  SpellCheckResult check(String text) {
    final hr = CoInitializeEx(COINIT_MULTITHREADED);
    if (hr.isError) throw WindowsException(hr);
    return _checkInternal(text);
  }

  SpellCheckResult _checkInternal(String text) => using((arena) {
    final factory = arena.com<ISpellCheckerFactory>(SpellCheckerFactory);
    final languageTag = _resolveLanguage(factory, arena);
    final checker = arena.adopt(
      factory.createSpellChecker(arena.pcwstr(languageTag))!,
    );
    final checker2 = arena.adopt(checker.queryInterface<ISpellChecker2>());
    final issues = <SpellIssue>[];
    final errors = checker2.comprehensiveCheck(arena.pcwstr(text))!;

    final errorPtr = arena<VTablePointer>();
    while (errors.next(errorPtr) == S_OK) {
      final error = arena.adopt(ISpellingError(errorPtr.value));
      final start = error.startIndex;
      final length = error.length;
      final word = text.substring(start, start + length);
      switch (error.correctiveAction) {
        case CORRECTIVE_ACTION_DELETE:
          issues.add(
            SpellIssue(
              word: word,
              start: start,
              action: SpellIssueAction.delete,
            ),
          );

        case CORRECTIVE_ACTION_REPLACE:
          issues.add(
            SpellIssue(
              word: word,
              start: start,
              action: SpellIssueAction.replace,
              replacement: error.replacement.toDartString(),
            ),
          );

        case CORRECTIVE_ACTION_GET_SUGGESTIONS:
          issues.add(
            SpellIssue(
              word: word,
              start: start,
              action: SpellIssueAction.suggestions,
              suggestions: _collectSuggestions(checker2, word, arena),
            ),
          );
      }
    }

    return SpellCheckResult(language: languageTag, issues: issues);
  });

  String _resolveLanguage(ISpellCheckerFactory factory, Arena arena) {
    // Explicit language
    final tag = _language.tag;
    if (tag != null) {
      if (!factory.isSupported(arena.pcwstr(tag))) {
        throw StateError('Spell checker does not support $tag');
      }
      return tag;
    }

    // Auto-detect (Windows does NOT provide real detection)
    // Best practice: use system UI language
    final lpLocaleName = arena.pwstrBuffer(LOCALE_NAME_MAX_LENGTH);
    final Win32Result(:value, :error) = GetUserDefaultLocaleName(
      lpLocaleName,
      LOCALE_NAME_MAX_LENGTH,
    );

    return value > 0 ? lpLocaleName.toDartString() : 'en-US';
  }

  List<String> _collectSuggestions(
    ISpellChecker2 checker,
    String word,
    Arena arena,
  ) {
    final suggestions = <String>[];
    final enumSuggestions = arena.adopt(checker.suggest(arena.pcwstr(word))!);
    final fetched = arena<ULONG>();
    final ptr = arena<Pointer<Utf16>>();
    while (enumSuggestions.next(1, ptr, fetched) == S_OK &&
        fetched.value == 1) {
      final p = ptr[0];
      if (p.isNull) break;
      suggestions.add(p.toDartString());
      free(p);
    }
    return suggestions;
  }
}

void _printUsage(ArgParser parser, {String? error}) {
  if (error != null) {
    print('Error: $error\n');
  }

  print('Windows spell checker\n');
  print('Usage:');
  print('  dart spellcheck.dart [options] "<text to check>"\n');
  print('Options:');
  print(parser.usage);
}

void main(List<String> args) {
  final parser = ArgParser(usageLineLength: 80)
    ..addOption(
      'lang',
      abbr: 'l',
      help:
          'Language tag (e.g., en-US, tr-TR). '
          'If omitted, the system language is used.',
    );

  final ArgResults results;

  try {
    results = parser.parse(args);
  } on FormatException catch (e) {
    _printUsage(parser, error: e.message);
    return;
  }

  if (results.rest.isEmpty) {
    _printUsage(parser);
    return;
  }

  final text = results.rest.join(' ');
  final langOption = results.option('lang');
  final checker = WindowsSpellChecker(
    language: langOption != null
        ? SpellLanguage(langOption)
        : SpellLanguage.auto,
  );

  final result = checker.check(text);
  print('Input text:');
  print('  $text\n');
  print('Language: ${result.language}\n');

  if (result.isClean) {
    print('No spelling issues detected.');
    return;
  }

  print('${result.issues.length} spelling issue(s) found:\n');
  for (final issue in result.issues) {
    print('• $issue');
  }
}
