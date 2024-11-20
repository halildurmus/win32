import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart';

import '../docs/api_details.dart';
import '../extensions/collection.dart';
import '../extensions/string.dart';
import '../extensions/type_def.dart';
import '../projection.dart';
import '../windows_metadata.dart';

/// Represents a Dart projection for a Win32 enum defined by a [TypeDef].
///
/// This class generates a Dart `extension type` that mirrors the Win32 enum,
/// providing a type-safe and intuitive way to work with enum values in Dart
/// applications. The generated code retains the structure and values of the
/// original Win32 enum while ensuring compatibility with Dart's type system.
final class EnumProjection extends Projection with ProjectionMixin {
  /// Creates an instance of this class for the given Win32 enum [typeDef].
  ///
  /// Throws an [AssertionError] if the provided [typeDef] is not an enum.
  EnumProjection(this.typeDef, {super.formatCode})
    : assert(
        typeDef.category == TypeCategory.enum$,
        '${typeDef.name} is not an enum.',
      ),
      isBitwiseEnum = typeDef.isBitwiseEnum,
      name = typeDef.safeTypeName,
      originalName = typeDef.name;

  /// Whether the enum is a bitwise enum.
  final bool isBitwiseEnum;

  /// The name of the enum converted to safe Dart type name.
  final String name;

  /// The original name of the enum.
  final String originalName;

  /// The metadata associated with the enum.
  final TypeDef typeDef;

  /// The API documentation for the enum, if available.
  ApiDetails? get apiDetails => WindowsMetadata.docs.documentation(typeDef);

  List<cb.Field> get fields => typeDef.fields
      // Skipping the first field as it is always the special field
      // `_value`, describing the underlying type of the enum (e.g.,
      // `Int32`, `Uint16`).
      .skip(1)
      .map(
        (field) => cb.Field(
          (b) => b
            ..docs.addAll(generateApiDocs(apiDetails, row: field))
            ..modifier = cb.FieldModifier.constant
            ..name = field.name.safeIdentifier
            ..assignment = cb.refer(name).newInstance([
              cb.literalNum(field.constant!.valueAsInt!),
            ]).code,
        ),
      )
      .toFixedList();

  List<cb.Method> get methods => [
    if (isBitwiseEnum) ...[
      _generateHasMethod(),
      _generateBitwiseOperator('&'),
      _generateBitwiseOperator('|'),
    ],
  ];

  @override
  cb.Library generate() => cb.Library(
    (b) => b.body.addAll([
      cb.ExtensionType(
        (b) => b
          ..docs.addAll(
            generateApiDocs(apiDetails, row: typeDef, category: 'enum'),
          )
          ..constant = true
          ..name = name
          ..representationDeclaration = cb.RepresentationDeclaration(
            (b) => b
              ..name = '_'
              ..declaredRepresentationType = cb.refer('int'),
          )
          ..implements.add(cb.refer('int'))
          ..methods.addAll(methods),
      ),
      ...fields,
    ]),
  );

  cb.Method _generateHasMethod() => cb.Method(
    (b) => b
      ..docs.addAll([
        'Whether this instance has all the bit fields specified in [other].',
      ])
      ..returns = cb.refer('bool')
      ..name = 'has'
      ..requiredParameters.add(
        cb.Parameter(
          (b) => b
            ..type = cb.refer(name)
            ..name = 'other',
        ),
      )
      ..lambda = true
      ..body = const cb.Code('_ & other._ == other._;'),
  );

  /// Generates a method for the given bitwise [operator] (e.g., `&`, `|`).
  cb.Method _generateBitwiseOperator(String operator) => cb.Method(
    (b) => b
      ..returns = cb.refer(name)
      ..name = 'operator $operator'
      ..requiredParameters.add(
        cb.Parameter(
          (b) => b
            ..type = cb.refer('int')
            ..name = 'other',
        ),
      )
      ..lambda = true
      ..body = cb.Code('$name(_ $operator other);'),
  );

  @override
  String get debugName => 'EnumProjection(name: $name)';
}
