import 'package:code_builder/code_builder.dart' as cb;
import 'package:winmd/winmd.dart';

import '../extensions/method_def.dart';
import '../extensions/param.dart';
import '../extensions/string.dart';
import '../interop_type.dart';
import '../logger.dart';

/// Represents a Dart projection for a Win32 function parameter defined by a
/// [Param].
final class ParameterProjection {
  /// Creates an instance of this class for a function [parameter].
  ParameterProjection(this.parameter)
    : name = parameter.name.toCamelCase().safeIdentifier,
      originalName = parameter.name,
      type = parameter.type;

  /// The name of the parameter converted to camel case and safe for use as an
  /// identifier in Dart code.
  final String name;

  /// The original name of the parameter.
  final String originalName;

  /// The metadata associated with the parameter.
  final Param parameter;

  /// The type of the parameter.
  final InteropType type;

  /// Whether the parameter is a _nullable_ type.
  bool get isNullable => parameter.isNullable;

  /// The Dart type of the parameter, including the nullability suffix (`?`) for
  /// optional parameters (e.g., `int value`, `Pointer<Int32>? value`).
  cb.Reference get dartType {
    var paramType = type.publicType;
    if (parameter.isComOutPtr) {
      paramType = 'Pointer<VTablePointer>';
    }
    if (isNullable) return cb.refer(paramType.nullable());
    return cb.refer(paramType);
  }

  /// The native projection of the parameter, for use in FFI function signatures
  /// (e.g., `Int32`).
  cb.Reference get nativeProjection => cb.refer(type.ffiType);

  /// The Dart projection of the parameter, for use in FFI function signatures
  /// (e.g., `int`).
  cb.Reference get dartProjection => cb.refer(type.dartType);

  /// The argument for the parameter (e.g., `value`, `value ?? 0`) that will be
  /// passed to the native function.
  cb.Expression get argument {
    // Handle nullable and non-reserved parameters.
    if (parameter.isNullable && !parameter.isReserved) {
      // Handle interface types.
      if (type.isInterface) {
        return cb
            .refer(name)
            .nullSafeProperty('ptr')
            .ifNullThen(cb.refer('nullptr'));
      }

      return cb
          .refer(name)
          .ifNullThen(type.isPointer ? cb.refer('nullptr') : cb.refer('NULL'));
    }

    // Handle reserved parameters.
    if (parameter.isReserved) {
      return type.isPointer ? cb.refer('nullptr') : cb.refer('NULL');
    }

    // Handle boolean types.
    if (type.isBool) {
      final boolTrueValue = switch (type) {
        VARIANT_BOOLType() => 'VARIANT_TRUE',
        _ => 'TRUE',
      };
      return cb
          .refer(name)
          .conditional(cb.refer(boolTrueValue), cb.refer('FALSE'));
    }

    if (type.isGuidPtr) {
      final guid = parameter.parent.isQuery?.guid;
      if (guid != null && parameter.index == guid.index) {
        return cb.refer(name).property('ptr');
      }
    }

    // Handle non-nullable interface types.
    if (type.isInterface) return cb.refer(name).property('ptr');

    // Otherwise, use the parameter name as the argument.
    return cb.refer(name);
  }

  /// Generates the Dart projection for the parameter (e.g., `int value`,
  /// `Pointer<Int32>? value`).
  cb.Parameter generate() {
    generatorLogger.finest('Generating $debugName...');
    return cb.Parameter(
      (b) => b
        ..name = name
        ..type = dartType,
    );
  }

  String get debugName => 'ParameterProjection(name: $name)';
}
