import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart' as winmd;

import '../attributes.dart';
import '../docs/api_details.dart';
import '../extensions/collection.dart';
import '../extensions/field.dart';
import '../extensions/string.dart';
import '../extensions/type_def.dart';
import '../interop_type.dart';
import '../logger.dart';
import '../projection.dart';
import '../windows_metadata.dart';
import 'function.dart';

/// Represents a Dart projection for a Win32 struct defined by a
/// [winmd.TypeDef].
final class StructProjection extends Projection with ProjectionMixin {
  /// Creates an instance of this class for a [typeDef].
  ///
  /// Throws an [AssertionError] if the provided [typeDef] is not a struct.
  StructProjection(this.typeDef, {super.formatCode})
    : assert(
        typeDef.category == winmd.TypeCategory.struct ||
            (typeDef.category == winmd.TypeCategory.class$ &&
                typeDef.guid != null),
        '${typeDef.name} is not a struct.',
      ),
      name = typeDef.safeTypeName,
      originalName = typeDef.name;

  /// The metadata associated with the struct.
  final winmd.TypeDef typeDef;

  /// The name of the struct converted to safe Dart type name.
  final String name;

  /// The original name of the struct.
  final String originalName;

  /// Determines the base type of the struct (e.g., Union, Struct).
  cb.Reference get baseType => cb.refer(typeDef.isUnion ? 'Union' : 'Struct');

  /// The packing alignment of the struct.
  int get packingAlignment => typeDef.classLayout?.packingSize ?? 0;

  /// The field projections of the struct.
  late final List<StructFieldProjection> fieldProjections = typeDef.fields
      .map(StructFieldProjection.new)
      .toFixedList();

  /// Whether the struct needs property accessors for a nested struct to access
  /// its members from the parent type.
  late final bool needsPropertyAccessors = _computeNeedsPropertyAccessors();

  bool _computeNeedsPropertyAccessors() {
    // Property accessors are only generated for nested structs.
    if (!typeDef.isNested) return false;

    // Try to find the parent field corresponding to the current TypeDef.
    // This ignores Array<T> or Pointer<T> types because property accessors are
    // not generated for them.
    final parentField = typeDef.enclosingClass?.fields.where((f) {
      if (f.signature case winmd.NamedType(
        typeName: winmd.TypeName(:final namespace, :final name),
      )) {
        return namespace == typeDef.namespace && name == typeDef.name;
      }

      return false;
    }).firstOrNull;

    // If the parent field is found, then property accessors are needed.
    return parentField != null;
  }

  /// The nested type projections of the struct.
  late final List<StructProjection> nestedTypeProjections = typeDef.nestedTypes
      .map(StructProjection.new)
      .toFixedList();

  /// The API documentation for the struct, if available.
  ApiDetails? get apiDetails => WindowsMetadata.docs.documentation(typeDef);

  @override
  cb.Library generate() {
    generatorLogger.finest('Generating $debugName...');
    return switch (typeDef) {
      _ when typeDef.fields.isEmpty && typeDef.hasGuid =>
        _generateGuidConstant(),
      _ when typeDef.isWrapperStruct => _generateTypeDef(),
      _ => _generateStructLibrary(),
    };
  }

  cb.Library _generateGuidConstant() => cb.Library((b) {
    final guidParams = typeDef
        .findAttribute(Win32Attribute.guid)
        .fixedArgs
        .map((p) => p.valueAsInt!)
        .toFixedList();
    b.body.add(
      cb.Field(
        (b) => b
          ..docs.addAll(generateApiDocs(apiDetails, row: typeDef))
          ..modifier = cb.FieldModifier.final$
          ..name = name
          ..assignment = cb
              .refer('Guid')
              .property('fromComponents')
              .call(generateGuidParameters(guidParams))
              .code,
      ),
    );
  });

  /// Generates a typedef for wrapper structs.
  cb.Library _generateTypeDef() {
    var ffiType = typeDef.isVoidPtrHandle
        ? 'IntPtr'
        : fieldProjections[0].projectedType.ffiType;
    if (name case 'BSTR' || 'PWSTR') {
      ffiType = 'Pointer<Utf16>';
    } else if (name == 'PSTR') {
      ffiType = 'Pointer<Utf8>';
    }

    return cb.Library(
      (b) => b.body.add(
        cb.TypeDef((b) {
          final additionalDocs = <String>[];
          if (typeDef.isHandle) {
            final freeFunction = typeDef.freeFunction;
            if (freeFunction != null) {
              final freeFunctionName = FunctionProjection(freeFunction).name;
              additionalDocs.add(
                'The handle must be released using the `$freeFunctionName` '
                'function.',
              );
            }
            final invalidHandleValues = typeDef.invalidHandleValues;
            if (invalidHandleValues.isNotEmpty) {
              final values = invalidHandleValues.map((e) => '`$e`').join(', ');
              additionalDocs.add('Invalid handle values are: $values.');
            }
          }
          b
            ..docs.addAll(
              generateApiDocs(
                apiDetails,
                row: typeDef,
                additionalDocs: additionalDocs,
              ),
            )
            ..name = name
            ..definition = cb.refer(ffiType);
        }),
      ),
    );
  }

  /// Generates the class and extensions for the struct.
  cb.Library _generateStructLibrary() => cb.Library(
    (b) => b.body.addAll([
      _generateStructClass(),
      if (needsPropertyAccessors) _generateExtension(),
      ...nestedTypeProjections.map((p) => p.generate()),
    ]),
  );

  /// Generates the class for the struct.
  cb.Class _generateStructClass() => cb.Class((b) {
    b
      ..docs.addAll(
        generateApiDocs(
          apiDetails,
          row: typeDef,
          category: baseType.symbol!.toLowerCase(),
        ),
      )
      ..annotations.addAll([
        if (packingAlignment > 0)
          cb.refer('Packed').call([cb.literalNum(packingAlignment)]),
      ])
      ..sealed = typeDef.isNested || typeDef.isUnion
      ..modifier = !typeDef.isNested && !typeDef.isUnion
          ? cb.ClassModifier.base
          : null
      ..name = name
      ..extend = baseType;

    // Generate fields (and their accessors, if needed).
    for (final field in fieldProjections) {
      final c = field.generate();
      b.fields.addAll(c.fields);
      b.methods.addAll(c.methods);
    }
  });

  /// Generates extension methods for accessing nested struct fields.
  cb.Extension _generateExtension() => cb.Extension(
    (b) => b
      ..name = '${name}_Extension'
      ..on = cb.refer(typeDef.rootType.safeTypeName)
      ..methods.addAll(_generateFieldAccessors()),
  );

  /// Creates getter/setter methods for each nested struct field.
  List<cb.Method> _generateFieldAccessors() => typeDef.fields
      // Filter out reserved and obsolete fields as they are not exposed.
      .where(
        (field) =>
            !field.name.contains('Reserved') &&
            !field.name.startsWith('__OBSOLETE'),
      )
      .expand((field) {
        final projection = StructFieldProjection(field);
        final instanceName = field.instanceName;
        return [
          ..._generateGetterSetters(
            projection.type,
            projection.name,
            instanceName,
          ),
          if (projection.isBitField)
            for (final bitField in field.bitFields)
              ..._generateGetterSetters(
                'int',
                bitField.name,
                [
                  ...instanceName.split('.')..removeLast(),
                  bitField.name,
                ].join('.'),
              ),
        ];
      })
      .toFixedList();

  List<cb.Method> _generateGetterSetters(
    String type,
    String name,
    String instanceName,
  ) => [
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..returns = cb.refer(type)
        ..type = cb.MethodType.getter
        ..name = name
        ..lambda = true
        ..body = cb.refer('this').property(instanceName).statement,
    ),
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..type = cb.MethodType.setter
        ..name = name
        ..requiredParameters.add(
          cb.Parameter(
            (b) => b
              ..type = cb.refer(type)
              ..name = 'value',
          ),
        )
        ..lambda = true
        ..body = cb
            .refer('this')
            .property(instanceName)
            .assign(cb.refer('value'))
            .statement,
    ),
  ];

  @override
  String get debugName => 'StructProjection(name: $name)';
}

/// Represents a Dart projection for a Win32 struct field defined by a
/// [winmd.Field].
final class StructFieldProjection extends Projection with ProjectionMixin {
  /// Creates an instance of this class for a [field].
  StructFieldProjection(this.field, {super.formatCode})
    : originalName = field.name,
      projectedType = field.type;

  /// The metadata associated with the field.
  final winmd.Field field;

  /// The original name of the field.
  final String originalName;

  /// The type projection for the field.
  final InteropType projectedType;

  /// Determines the attribute associated with the field, if any.
  cb.Expression? get attribute => switch (projectedType) {
    // If the field is an array, return the "@Array" attribute with the
    // upper bound (e.g., "@Array(10)").
    ArrayType(:final length) =>
      isFlexibleArray
          ? cb.refer('Array').property('variableWithVariableDimension').call([
              cb.literalNum(length),
            ])
          : cb.refer('Array').call([cb.literalNum(length)]),

    BOOLType() => cb.refer('Int32').call(const []),

    BOOLEANType() => cb.refer('Uint8').call(const []),

    VARIANT_BOOLType() => cb.refer('Int16').call(const []),

    // If the field is an intrinsic type, return the FFI type as the attribute
    // (e.g., "@Int32()").
    InteropType(isIntrinsic: true, :final ffiType) =>
      cb.refer(ffiType).call(const []),

    // If the field is a primitive or enum type, return the FFI type as the
    // attribute (e.g., "@Int32()").
    PrimitiveOrEnumType(:final ffiType) => cb.refer(ffiType).call(const []),

    // If the field is an enum, return the FFI type as the attribute (e.g.,
    // "@Int32()").
    TypeDefType(
      isEnum: true,
      typeDef: winmd.TypeDef(
        fields: [winmd.Field(type: InteropType(:final ffiType)), ...],
      ),
    ) =>
      cb.refer(ffiType).call(const []),

    // If the field is a wrapper struct with non-pointer field, return the FFI
    // type as the attribute (e.g., "@Int32()").
    HRESULTType() || NTSTATUSType() => cb.refer('Int32').call(const []),
    TypeDefType(
      typeDef: winmd.TypeDef(
        :final isVoidPtrHandle,
        isWrapperStruct: true,
        fields: [
          winmd.Field(type: InteropType(:final ffiType, :final isPointer)),
        ],
      ),
    ) =>
      isVoidPtrHandle
          ? cb.refer('IntPtr').call(const [])
          : !isPointer
          ? cb.refer(ffiType).call(const [])
          : null,

    // Otherwise, return null.
    _ => null,
  };

  /// The name of the field converted to safe Dart identifier.
  String get name {
    // Don't strip off leading underscores if the field is obsolete.
    if (originalName.startsWith('__OBSOLETE')) return originalName;

    // Mark the field private if it is reserved.
    if (originalName.contains('Reserved')) return originalName.privatize();

    // Otherwise, convert the string into a safe Dart identifier.
    return field.name.safeIdentifier;
  }

  /// Whether the field is a bit field.
  bool get isBitField => field.isBitField;

  /// Whether the field is a bool.
  bool get isBool => field.type.isBool;

  /// Whether the field is a char array.
  bool get isCharArray => field.isCharArray;

  /// Whether the field is an enum.
  bool get isEnum => field.type.isEnum;

  /// Whether the field is a flexible array.
  bool get isFlexibleArray => field.isFlexibleArray;

  /// Whether the field is an interface.
  bool get isInterface => field.type.isInterface;

  /// The user-facing Dart type for the field.
  String get type {
    if (isBool) return 'bool';
    if (isCharArray) return 'String';
    if (isEnum) return field.type.publicType;
    if (isInterface) return field.type.publicType.nullable();
    return originalType;
  }

  /// The original Dart type of the field.
  String get originalType => projectedType.dartType;

  /// Generates the field (and its accessors in the class, if needed).
  @override
  cb.Class generate() {
    final structDocs = WindowsMetadata.docs.documentation(field.parent);
    final docs = generateApiDocs(structDocs, row: field);

    final c = cb.ClassBuilder()..name = 'C';
    c.fields.add(_generateField(docs));
    if (field.isObsoleteOrReserved) return c.build();

    if (isBitField) {
      c.methods.addAll(_generateBitFieldAccessors());
    } else if (isBool) {
      c.methods.addAll(_generateBoolAccessors(docs));
    } else if (isCharArray) {
      c.methods.addAll(_generateCharArrayAccessors(docs));
    } else if (isEnum) {
      c.methods.addAll(_generateEnumAccessors(docs));
    } else if (isInterface) {
      c.methods.addAll(_generateInterfaceAccessors(docs));
    }

    return c.build();
  }

  /// Creates a field for the struct.
  cb.Field _generateField(List<String> docs) => cb.Field(
    (b) => b
      ..docs.addAll([
        if (field.isStructSize)
          'The size of the struct in bytes.'
        else if (!field.isObsoleteOrReserved &&
            !isBool &&
            !isCharArray &&
            !isEnum &&
            !isInterface &&
            docs.isNotEmpty)
          ...docs,
      ])
      ..annotations.addAll([?attribute])
      ..external = true
      ..type = cb.refer(originalType)
      ..name =
          !field.isObsoleteOrReserved &&
              (isBool || isCharArray || isEnum || isInterface)
          ? name.privatize()
          : name,
  );

  /// Generates getter and setter methods for bit fields.
  List<cb.Method> _generateBitFieldAccessors() {
    final methods = <cb.Method>[];

    for (final NativeBitFieldAttribute(name: bitFieldName, :offset, :length)
        in field.bitFields) {
      methods.addAll([
        cb.Method(
          (b) => b
            ..annotations.add(generatePreferInlineAnnotation())
            ..returns = cb.refer(type)
            ..type = cb.MethodType.getter
            ..name = bitFieldName
            ..lambda = true
            ..body = cb.refer(name).property('getBits').call([
              cb.literalNum(offset),
              cb.literalNum(length),
            ]).code,
        ),
        cb.Method(
          (b) => b
            ..annotations.add(generatePreferInlineAnnotation())
            ..type = cb.MethodType.setter
            ..name = bitFieldName
            ..requiredParameters.add(
              cb.Parameter(
                (b) => b
                  ..type = cb.refer(type)
                  ..name = 'value',
              ),
            )
            ..lambda = true
            ..body = cb
                .refer(name)
                .assign(
                  cb.refer(name).property('setBits').call([
                    cb.literalNum(offset),
                    cb.literalNum(length),
                    cb.refer('value'),
                  ]),
                )
                .code,
        ),
      ]);
    }

    return methods;
  }

  /// Generates getter and setter methods for boolean fields.
  List<cb.Method> _generateBoolAccessors(List<String> docs) {
    final isVariantBool = switch (field.type) {
      VARIANT_BOOLType() => true,
      _ => false,
    };
    return [
      cb.Method(
        (b) => b
          ..annotations.add(generatePreferInlineAnnotation())
          ..docs.addAll(docs)
          ..returns = cb.refer(type)
          ..type = cb.MethodType.getter
          ..name = name
          ..lambda = true
          ..body = cb
              .refer(name.privatize())
              .notEqualTo(cb.refer('FALSE'))
              .code,
      ),
      cb.Method(
        (b) => b
          ..annotations.add(generatePreferInlineAnnotation())
          ..type = cb.MethodType.setter
          ..name = name
          ..requiredParameters.add(
            cb.Parameter(
              (b) => b
                ..type = cb.refer(type)
                ..name = 'value',
            ),
          )
          ..lambda = true
          ..body = cb
              .refer(name.privatize())
              .assign(
                cb
                    .refer('value')
                    .conditional(
                      cb.refer(isVariantBool ? 'VARIANT_TRUE' : 'TRUE'),
                      cb.refer('FALSE'),
                    ),
              )
              .code,
      ),
    ];
  }

  /// Generates getter and setter methods for char array fields.
  List<cb.Method> _generateCharArrayAccessors(List<String> docs) => [
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..docs.addAll(docs)
        ..returns = cb.refer(type)
        ..type = cb.MethodType.getter
        ..name = name
        ..lambda = true
        ..body = cb
            .refer(name.privatize())
            .property('toDartString')
            .call(const [])
            .code,
    ),
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..type = cb.MethodType.setter
        ..name = name
        ..requiredParameters.add(
          cb.Parameter(
            (b) => b
              ..type = cb.refer('String')
              ..name = 'value',
          ),
        )
        ..lambda = true
        ..body = cb.refer(name.privatize()).property('setString').call([
          cb.refer('value'),
        ]).code,
    ),
  ];

  /// Generates getter and setter methods for enum fields.
  List<cb.Method> _generateEnumAccessors(List<String> docs) => [
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..docs.addAll(docs)
        ..returns = cb.refer(type)
        ..type = cb.MethodType.getter
        ..name = name
        ..lambda = true
        ..body = cb.refer(type).newInstance([cb.refer(name.privatize())]).code,
    ),
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..type = cb.MethodType.setter
        ..name = name
        ..requiredParameters.add(
          cb.Parameter(
            (b) => b
              ..type = cb.refer(type)
              ..name = 'value',
          ),
        )
        ..lambda = true
        ..body = cb.refer(name.privatize()).assign(cb.refer('value')).code,
    ),
  ];

  /// Generates getter and setter methods for interface fields.
  List<cb.Method> _generateInterfaceAccessors(List<String> docs) => [
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..docs.addAll(docs)
        ..returns = cb.refer(type)
        ..type = cb.MethodType.getter
        ..name = name
        ..lambda = true
        ..body = cb
            .refer(name.privatize())
            .property('isNull')
            .conditional(
              cb.literalNull,
              cb
                  .refer(field.type.publicType)
                  .newInstance([cb.refer(name.privatize())])
                  .cascade('addRef')
                  .call(const [])
                  .parenthesized,
            )
            .code,
    ),
    cb.Method(
      (b) => b
        ..annotations.add(generatePreferInlineAnnotation())
        ..type = cb.MethodType.setter
        ..name = name
        ..requiredParameters.add(
          cb.Parameter(
            (b) => b
              ..type = cb.refer(type)
              ..name = 'value',
          ),
        )
        ..lambda = true
        ..body = cb
            .refer(name.privatize())
            .assign(
              cb
                  .refer('value')
                  .nullSafeProperty('ptr')
                  .ifNullThen(cb.refer('nullptr')),
            )
            .code,
    ),
  ];

  @override
  String get debugName => 'StructFieldProjection(name: $name)';
}
