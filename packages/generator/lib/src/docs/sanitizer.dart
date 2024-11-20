import 'package:winmd/winmd.dart';

import '../extensions/field.dart';
import '../extensions/string.dart';
import '../extensions/type_def.dart';

/// A typedef for string transformation functions.
typedef _StringTransform = String Function(String);

/// Utility class for sanitizing documentation strings.
abstract final class DocsSanitizer {
  /// It applies a base set of transformations to [docs] and then conditionally
  /// applies additional pipelines based on the type of [row].
  static String sanitize(String docs, Row row) {
    // Apply base transforms.
    var result = _applyTransforms(docs, _baseTransforms);

    // Apply additional transforms based on the type of token.
    if (row is Field) {
      final parent = row.parent;
      if (parent.isEnum) {
        result = _applyTransforms(result, _enumFieldTransforms);
      } else if (parent.isStruct) {
        result = _applyTransforms(result, _structFieldTransforms);
        if (row.isCharArray) {
          result = _applyTransforms(result, _charArrayTransforms);
        }
      }
    } else if (row is MethodDef) {
      result = _applyTransforms(result, _methodTransforms);
    } else {
      result = _applyTransforms(result, _additionalTransforms);
    }

    // Normalize whitespace, trim, and ensure the result ends with a period.
    result = _normalize(result);
    return result.capitalize();
  }

  /// Applies a list of [transforms] sequentially to [input].
  static String _applyTransforms(
    String input,
    List<_StringTransform> transforms,
  ) => transforms.fold(input, (s, transform) => transform(s));

  /// Normalizes the string by trimming, reducing multiple whitespace
  /// characters, and ensuring it ends with a period.
  static String _normalize(String s) {
    var normalized = s.trim().replaceAll(RegExp(r'\s+'), ' ');
    if (normalized.isNotEmpty && !normalized.endsWith('.')) {
      normalized = '$normalized.';
    }
    return normalized;
  }

  /// Replaces literal escape sequences.
  static String _replaceLiteralEscapes(String s) =>
      s.replaceAll(r':\_', ': ').replaceAll(r'\_', '_');

  /// Returns only the first sentence of the string.
  static String _keepFirstSentence(String s) {
    final sentences = s.split(RegExp(r'(?<=[.!?])\s'));
    return sentences.isNotEmpty ? sentences.first : s;
  }

  /// Base transforms applied to all documentation strings.
  static final List<_StringTransform> _baseTransforms = [
    _replaceLiteralEscapes,
    (s) => s.replaceAll('B�zier', 'Bézier'),
    (s) => s.replaceAll('�', '—'),
    (s) => s.replaceAllMapped(_ampQuoteRegExp, (m) => '`${m.group(1)}`'),
    (s) => s.replaceAllMapped(
      _spaceDotRegExp,
      (m) => ' ${m.group(1)}. ${m.group(2)}',
    ),
    (s) => s.replaceAll('Note\u{00a0}', '**Note:**'),
    (s) => s.replaceAll('\u{00a0}', ' '),
    (s) => s.replaceFirst(_trailingSpaceDotRegExp, '.'),
    (s) => s.replaceFirst(_dotParenRegExp, '.'),
    (s) => s.replaceFirst(_deprecatedRegExp, ''),
    (s) => s.replaceFirst(_docVariesRegExp, ''),
    (s) => s.replaceFirst(
      _callbackLongRegExp,
      'An application-defined callback function',
    ),
    (s) => s.replaceFirst(
      _callbackPrototypeRegExp,
      'An application-defined callback function',
    ),
    (s) => s.replaceFirst(
      _interfaceCallbackRegExp,
      'An application-defined callback function',
    ),
    (s) => s.replaceFirst(_applicationDefinedRegExp, 'An application-defined'),
    (s) => s.replaceFirst(_isUsedRegExp, 'Used '),
    (s) => s.replaceFirst(_headerFileRegExp, ''),
    (s) => s.replaceFirst(_specifiesTheRegExp, 'Specifies the'),
    (s) => s.replaceFirst(_seeReferenceRegExp, ''),
    (s) => s.replaceFirst(_moreInfoRegExp, ''),
    (s) => s.replaceAllMapped(
      RegExp(r'\[(\*\*)?([\w\s_\-\*\\]+)(\*\*)?\]\(([\w\s_\(\)=\.\-\*\/#]+)\)'),
      (m) => '`${m.group(2)}`',
    ),
    (s) => s.replaceAll(RegExp(r'\s{2,}'), ' '),
    (s) => s.capitalize(),
  ];

  /// Additional transforms for non-field, non-method tokens.
  static final List<_StringTransform> _additionalTransforms = [
    (s) => s.replaceFirstMapped(
      _structureActionRegExp,
      (m) => m.group(2)!.capitalize(),
    ),
    (s) => s.replaceFirstMapped(
      _structureBeginsRegExp,
      (m) => m.group(2)!.capitalize(),
    ),
    (s) => s.replaceFirst(_structureFromHeaderRegExp, ''),
    (s) => s.replaceFirst(_macroEnumFunctionRegExp, ''),
  ];

  /// Transforms for character array documentation.
  static final List<_StringTransform> _charArrayTransforms = [
    (s) => s.replaceFirst('An array of characters', 'A string'),
    (s) => s.replaceFirst('A pointer to a Unicode string', 'A string'),
    (s) => s.replaceFirst('null-terminated ', ''),
  ];

  /// Transforms specific to enum field documentation.
  static final List<_StringTransform> _enumFieldTransforms = [
    (s) => s.replaceAllMapped(RegExp(r'(\w)\.\)'), (m) => '${m.group(1)}).'),
    _keepFirstSentence,
    (s) => s.replaceAll(RegExp('<div class=".*">'), ''),
    (s) => s.replaceFirst(RegExp(r'^\*\*Introduced in Windows .*.\*\*\s?'), ''),
    (s) => s.replaceFirst(RegExp('^(Not used|Unused).*'), ''),
    (s) => s.replaceFirst(RegExp(r'^This value is obsolete.$'), 'Obsolete.'),
    (s) => s.replaceFirst(RegExp(r'^This value is reserved.$'), 'Reserved.'),
    (s) => s.replaceFirst(RegExp(r'^\s?(<i>)?p\w+.*'), ''),
    (s) => s.replaceFirst(RegExp(r'^\s?(\(int\))?0x\w+\.'), ''),
    (s) =>
        s.replaceFirst(RegExp(r'^\s?(<b>)?Windows .* and later(</b>)?\.$'), ''),
    (s) => s.replaceFirst(
      RegExp(r'^\s?(<b>)?(Prior to )?Windows .*:\s?(</b>)?.*'),
      '',
    ),
    (s) => s.replaceFirst(RegExp(r', see Remarks for more info\.'), '.'),
    (s) => s.replaceFirst(RegExp(r' \(see Remarks\)\.'), '.'),
    (s) => s.replaceFirst(
      RegExp(
        r'^\s?\[Windows 10 October 2018 Update \(version 1809\) and newer\]\s?',
      ),
      '',
    ),
  ];

  /// Transforms specific to method documentation.
  static final List<_StringTransform> _methodTransforms = [
    ..._additionalTransforms,
    (s) => s.replaceAllMapped(
      RegExp(r'\s(\w+)::(\w+)([.,\s])'),
      (m) => ' `${m.group(1)}.${m.group(2)?.toCamelCase()}`${m.group(3)}',
    ),
  ];

  /// Transforms specific to struct field documentation.
  static final List<_StringTransform> _structFieldTransforms = [
    (s) => s.replaceAllMapped(RegExp(r'(\w)\.\)'), (m) => '${m.group(1)}).'),
    _keepFirstSentence,
    (s) => s.replaceFirst('Can be one or more of the following:', ''),
    (s) => s.replaceAll(RegExp(r'\s+'), ' '),
    (s) => s.replaceAll(RegExp('<div class=".*">'), ''),
    (s) => s.replaceAll(r'\[1\]', ''),
    (s) => s.replaceAll('<b><b>', '<b>'),
    (s) => s.replaceAll('</b>*</b>', '*</b>'),
    (s) => s.replaceAll(RegExp(r'\\_'), '_'),
    (s) => s.replaceFirst(RegExp('^(Not used|The following|Unused).*'), ''),
    (s) => s.replaceFirst('[out]', ''),
    (s) => s.replaceFirst(
      RegExp(
        r'^Type: (<b>|\*\*)(`)?(const )?(<a href=".*">)?([\w\s_\*\[\d+\]]+)(<\/a>)?(\*|\[\d+\]|(\[\w+\+\d+\]))?(`)?(<\/b>|\*\*)',
      ),
      '',
    ),
    (s) =>
        s.replaceFirst(RegExp(r'^\s?(<b>)?Windows .* and later(</b>)?\.$'), ''),
    (s) => s.replaceFirst(
      RegExp(
        '^The <b>bmiColors</b> member contains one of the following: <ul> <li>',
      ),
      '',
    ),
    (s) => s.replaceFirstMapped(
      RegExp(
        r'^\s?A (pointer to an? )?<a href=".*">(.*)<\/a> (hook procedure|structure)([\.]| that (.*))',
      ),
      (m) => 'A ${m.group(1) ?? ''}`${m.group(2)}` ${m.group(3)}${m.group(4)}',
    ),
    (s) => s.replaceAllMapped(
      RegExp(r'(\*\*|<b>)(GUID|TRUE|FALSE)(\*\*|<\/b>)'),
      (m) => '[${m.group(2)}]',
    ),
    (s) => s.replaceFirstMapped(
      RegExp(r'`sizeof\((.*)\)`'),
      (m) => '`sizeOf<${m.group(1)}>()`',
    ),
    (s) => s.replaceAll(RegExp(r'(`\*\*|\*\*`)'), '`'),
  ];

  static final _ampQuoteRegExp = RegExp(r'&quot;(\w+)&quot;');
  static final _spaceDotRegExp = RegExp(r'\s(?!\()([a-z]+)\.([A-Z]\w+)(?!\))');
  static final _trailingSpaceDotRegExp = RegExp(r'\s\.$');
  static final _dotParenRegExp = RegExp(r'\.\s\([\w:\._\s]+\)$');
  static final _deprecatedRegExp = RegExp(r'^Deprecated. (I[A-Z][a-z]\w+\s)?');
  static final _docVariesRegExp = RegExp('^Documentation varies per use.*');
  static final _callbackLongRegExp = RegExp(
    '^A callback function, which you define in your application,',
  );
  static final _callbackPrototypeRegExp = RegExp(
    '^A callback (function prototype|prototype)',
  );
  static final _interfaceCallbackRegExp = RegExp(
    r'^\w+\sfunction\sis\sa\scallback\sfunction\sprototype',
  );
  static final _applicationDefinedRegExp = RegExp('^Application-defined');
  static final _isUsedRegExp = RegExp(r'^Is\sused\s');
  static final _headerFileRegExp = RegExp(r'^\w+\s\(\w+(\.h)?\)\sis\s');
  static final _structureActionRegExp = RegExp(
    r'^[\w\_\s]+\s(enumeration|function|interface|structure|union)\s(creates|defines|indicates|specifies)',
  );
  static final _specifiesTheRegExp = RegExp(r'^The\s[\w\s\_]+\sspecifies\sthe');
  static final _seeReferenceRegExp = RegExp(
    r'^See\sreference\sinformation\sabout\sthe\s[\w\s\_]+\s(function|structure),\swhich\s',
  );
  static final _moreInfoRegExp = RegExp(
    r'\sFor more information,\ssee\s[\w\s\_]+\.',
  );
  static final _structureBeginsRegExp = RegExp(
    r'^(The\s)?[\w\s]+\sstructure\s(begins|contains|describes|identifies|stores)',
  );
  static final _structureFromHeaderRegExp = RegExp(
    r'^The\s[\w\s\_]+\s[\w\s\_]+\s\(\w+\.h\)\sstructure\sis\s',
  );
  static final _macroEnumFunctionRegExp = RegExp(
    r'^(A|An|The)\s[\w:]+\s(\(\w+(\.h)?\)\s)?(macro\s)?(enumeration|function|interface|method|property|structure|union)\s(\(\w+(\.h)?\)\s)?(is\s)?(optionally\s)?(type\s)?(values\s)?',
  );
}
