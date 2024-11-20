import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'package:winmd/winmd.dart';

import 'docs/api_details.dart';
import 'docs/sanitizer.dart';
import 'emitter.dart';
import 'extensions/collection.dart';
import 'extensions/type_def.dart';
import 'logger.dart';

/// This class defines the common interface and behavior for all projection
/// types, which can convert specific data structures or functionality into
/// Dart code.
///
/// Each subclass should implement the [generate] method, which defines the
/// specific Dart code representation for that projection and [debugName] getter
/// to provide a human-readable name for the projection.
///
/// This class also provides options for formatting the generated Dart code and
/// determining whether to include a trailing newline.
abstract class Projection {
  /// Creates a new instance of [Projection].
  ///
  /// [formatCode] indicates whether the generated Dart code should be
  /// automatically formatted using [DartFormatter]. This helps to ensure
  /// consistent formatting in the generated output. By default, this is set to
  /// `true` to enforce proper code formatting.
  ///
  /// [trailingNewline] specifies whether a trailing newline should be added at
  /// the end of the generated Dart code. This is helpful to ensure that
  /// generated files end with a newline, which is often recommended for source
  /// files. The default value is `true`.
  const Projection({this.formatCode = true, this.trailingNewline = true});

  /// A Dart emitter used to convert the abstract code structure (i.e.,
  /// [cb.Spec]) into Dart code.
  ///
  /// This is a shared, static instance used across all subclasses to handle the
  /// transformation of the code structure into Dart code.
  static final _emitter = DartEmitter();

  /// Whether the generated code should be formatted.
  ///
  /// When set to `true`, the [DartFormatter] will be applied to the generated
  /// Dart code to ensure consistent formatting. This can be disabled for
  /// performance reasons or if the generated code should not be formatted, such
  /// as in cases where formatting needs to be deferred until later.
  final bool formatCode;

  /// Whether a newline should be appended at the end of the generated Dart
  /// code.
  ///
  /// Adding a trailing newline ensures that the generated Dart files follow
  /// best practices, which recommend ending source files with a newline.
  final bool trailingNewline;

  /// Generates a code specification ([cb.Spec]) that represents the Dart code
  /// for this projection.
  ///
  /// Subclasses must implement this method to define how their specific
  /// projection is transformed into Dart code.
  ///
  /// The returned [cb.Spec] will be processed by the [DartEmitter] to generate
  /// the final Dart code.
  cb.Spec generate();

  /// A human-readable name for this projection, useful for debugging and
  /// logging purposes.
  ///
  /// Subclasses must implement this getter to provide a meaningful and
  /// context-specific name for the projection. This name is typically used in
  /// log messages or debug output to identify what type of projection is being
  /// processed.
  ///
  /// For example, it may return the name of a function or type being projected
  /// into Dart.
  String get debugName;

  /// Generates the Dart code for this projection and returns it as a string.
  ///
  /// This method first calls [generate] to obtain a [cb.Spec] representation
  /// of the Dart code, and then uses the [DartEmitter] to transform this
  /// specification into actual Dart code.
  ///
  /// If [formatCode] is set to `true`, the generated code will be passed
  /// through the [DartFormatter] to ensure it is properly formatted.
  ///
  /// If [trailingNewline] is `true`, a newline is added to the end of the
  /// generated code. This is often important for ensuring the generated file
  /// adheres to common coding standards.
  ///
  /// The result is a complete, formatted (if enabled) Dart source code string
  /// that can be written to a file or used in other contexts.
  @override
  String toString() {
    generatorLogger.finest('Calling generate() for $debugName...');
    final sink = generate().accept(_emitter);
    if (trailingNewline) sink.writeln();
    final rawCode = sink.toString();

    if (formatCode) {
      generatorLogger.finest('Formatting code for $debugName...');
      try {
        return DartFormatter(
          languageVersion: DartFormatter.latestLanguageVersion,
        ).format(rawCode);
      } catch (e) {
        generatorLogger.severe('Failed to format code for $debugName.\n$e');
        return rawCode;
      }
    }

    return rawCode;
  }
}

mixin ProjectionMixin on Projection {
  /// Generates API documentation for this projection based on [ApiDetails].
  ///
  /// If [apiDetails] contains a description or help link, they are included in
  /// the documentation. A [category] can also be specified to further classify
  /// the projection.
  ///
  /// Returns a list of strings representing the documentation, which can be
  /// used to generate dartdoc comments.
  List<String> generateApiDocs(
    ApiDetails? apiDetails, {
    required Row row,
    List<String> additionalDocs = const [],
    String? category,
  }) {
    generatorLogger.finest('Writing documentation for $debugName...');
    if (apiDetails == null) {
      generatorLogger.finest('No documentation found for $debugName.');
    }

    final isEnumOrStructField =
        row is Field && (row.parent.isEnum || row.parent.isStruct);
    var description = isEnumOrStructField
        ? apiDetails?.fields[row.name]
        : apiDetails?.description;

    if (description != null) {
      // If the description is already a complete dartdoc comment, return it
      // directly.
      if (description.startsWith('///')) return [description];
      // Otherwise, sanitize the description.
      description = DocsSanitizer.sanitize(description, row);
    }

    final blocks = <String>[];

    final hasDescription = description != null && description.isNotEmpty;
    if (hasDescription) blocks.add(description.trim());

    final hasAdditionalDocs = additionalDocs.isNotEmpty;
    if (hasAdditionalDocs) {
      blocks.addAll(additionalDocs.map((line) => line.trim()));
    }

    final helpLink = apiDetails?.helpLink;
    final hasHelpLink = helpLink != null && helpLink.isNotEmpty;
    // Add a help link if provided and if this isn't an enum or struct field.
    if (hasHelpLink && !isEnumOrStructField) {
      blocks.add('To learn more, see <$helpLink>.');
    }

    // Add the category tag if provided.
    if (category != null && category.trim().isNotEmpty) {
      blocks.add('{@category ${category.trim()}}');
    }

    // Combine blocks into a final list with blank lines separating them.
    return _joinBlocksWithBlankLines(blocks);
  }

  /// Joins non-empty documentation [blocks] with a blank line between each
  /// block.
  List<String> _joinBlocksWithBlankLines(List<String> blocks) {
    final docs = <String>[];
    for (var i = 0; i < blocks.length; i++) {
      if (i > 0) docs.add(''); // Insert a blank line between blocks.
      docs.add(blocks[i]);
    }
    return docs;
  }

  List<cb.Expression> generateGuidParameters(List<int> guidParams) {
    if (guidParams.length != 11) {
      throw ArgumentError.value(
        guidParams,
        'guidParams',
        'Invalid GUID parameters',
      );
    }

    cb.Expression generateHexExpression(int value) =>
        cb.CodeExpression(cb.Code('0x${value.toRadixString(16)}'));

    return [
      ...guidParams.take(3).map(generateHexExpression),
      cb.refer('Uint8List').property('fromList').call([
        cb.literalConstList(
          guidParams.skip(3).map(generateHexExpression).toFixedList(),
        ),
      ]),
    ];
  }
}

cb.Expression generatePreferInlineAnnotation() =>
    cb.refer('pragma').call([cb.literalString('vm:prefer-inline')]);
