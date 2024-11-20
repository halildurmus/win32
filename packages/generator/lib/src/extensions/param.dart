import 'package:winmd/winmd.dart' as winmd;

import '../attributes.dart';
import '../interop_type.dart';
import '../windows_metadata.dart';

extension ParamExtension on winmd.Param {
  /// Determines the appropriate [ParamHint] for the parameter based on its
  /// attributes and properties.
  ParamHint get hint {
    if (tryFindAttribute(Win32Attribute.memorySize) case winmd.CustomAttribute(
      namedArgs: [
        winmd.NamedArg(
          name: 'BytesParamIndex',
          value: winmd.Int16Value(:final value),
        ),
      ],
    )) {
      final param = parent.params[value];
      if (param.index != index) {
        // Length parameters must be input-only.
        if (type.isByteSize && !param.isOutParam && !param.type.isPointer) {
          return ParamHint.relativeByteLengthArray(value);
        }

        return ParamHint.relativePointerArray(value);
      }
    }

    if (tryFindAttribute(Win32Attribute.nativeArrayInfo)
        case winmd.CustomAttribute(
          namedArgs: [winmd.NamedArg(:final name, :final value)],
        )) {
      if (value case winmd.Int16Value(
        :final value,
      ) when name == 'CountParamIndex') {
        final param = parent.params[value];
        if (param.index != index) {
          // Length parameters must be input-only.
          if (!param.isOutParam && !param.type.isPointer) {
            return ParamHint.relativeLengthArray(value);
          }

          return ParamHint.relativePointerArray(value);
        }
      }

      if (value case winmd.Int32Value(:final value) when name == 'CountConst') {
        return ParamHint.fixedArray(value);
      }
    }

    if (isConvertible) return const ParamHintIntoParameter();
    if (type.isCopyable && (isOptional || isReserved)) {
      return const ParamHintOptional();
    }

    if (type.isPrimitive &&
        (!type.isPointer || (type.tryDeref()?.isCopyable ?? false))) {
      return const ParamHintValueType();
    }

    if (type.isCopyable) return const ParamHintBlittable();

    return ParamHint.none;
  }

  /// Whether the parameter is a COM output pointer.
  bool get isComOutPtr => hasAttribute(Win32Attribute.comOutPtr);

  /// Whether the parameter is convertible into another type.
  bool get isConvertible => !isOutParam && type.isConvertible;

  bool get isInParam => flags.has(winmd.ParamAttributes.in$);

  /// Whether the parameter is a _nullable_ type.
  bool get isNullable => isOptional || type.isInterface;

  bool get isOptional => flags.has(winmd.ParamAttributes.optional);

  bool get isOutParam => flags.has(winmd.ParamAttributes.out);

  /// Whether the parameter is reserved.
  bool get isReserved =>
      hasAttribute(Win32Attribute.reserved) || name.contains('Reserved');

  /// Whether the parameter is the return value of the method.
  bool get isRetVal {
    // Check for `RetValAttribute`.
    if (hasAttribute(Win32Attribute.retVal)) return true;

    // Check for other return value candidates.
    final type = this.type;
    if (!type.isPointer) return false;
    if (type.isVoid) return false;
    if (isInParam || !isOutParam || isOptional) return false;
    if (hint.isArray) return false;

    return true;
  }

  /// The type of the parameter.
  InteropType get type {
    final winmd.MethodSignature(:returnType, :types) = parent.signature;
    final isConst = hasAttribute(Win32Attribute.const$);
    final isReturn = sequence == 0;
    final metadataType = isReturn ? returnType : types[sequence - 1];

    var result = InteropType.fromMetadataType(metadataType);

    // Handle return parameter.
    if (isReturn) return isConst ? result.toConstType() : result;

    // Handle normal parameter.
    if (isConst || !isOutParam) {
      result = result.toConstType();
    }

    if (!isOutParam) {
      result = result.toConstPointer();

      final enumName = attributeAsString(Win32Attribute.associatedEnum);
      if (enumName case final name?) {
        final namespace = parent.parent.namespace;
        final typeDef = WindowsMetadata.findTypeDef(namespace, name);
        result = InteropType.primitiveOrEnum(result, TypeDefType(typeDef));
      }
    }

    return result;
  }
}

/// Represents a hint about how a parameter should be handled.
sealed class ParamHint {
  /// Base constructor for all parameter hints.
  const ParamHint();

  /// Represents a fixed-length array parameter.
  const factory ParamHint.fixedArray(int parameterIndex) = ParamHintFixedArray;

  /// Represents an array whose length is relative to another parameter.
  const factory ParamHint.relativeLengthArray(int parameterIndex) =
      ParamHintRelativeLengthArray;

  /// Represents an array whose length in bytes is relative to another
  /// parameter.
  const factory ParamHint.relativeByteLengthArray(int parameterIndex) =
      ParamHintRelativeByteLengthArray;

  /// Represents an array whose pointer is relative to another parameter.
  const factory ParamHint.relativePointerArray(int parameterIndex) =
      ParamHintRelativePointerArray;

  /// Indicates that the parameter is blittable (can be directly marshaled).
  static const blittable = ParamHintBlittable();

  /// Indicates that the parameter is converted into another type during
  /// marshaling.
  static const intoParameter = ParamHintIntoParameter();

  /// Represents the absence of any specific hint for the parameter.
  static const none = ParamHintNone();

  /// Indicates that the parameter is optional.
  static const optional = ParamHintOptional();

  /// Indicates that the parameter is a value type.
  static const valueType = ParamHintValueType();

  /// Checks whether the hint represents an array type.
  bool get isArray => switch (this) {
    ParamHintFixedArray() ||
    ParamHintRelativeLengthArray() ||
    ParamHintRelativeByteLengthArray() ||
    ParamHintRelativePointerArray() => true,
    _ => false,
  };
}

/// Represents a fixed-length array parameter.
final class ParamHintFixedArray extends ParamHint {
  /// The index of the parameter that specifies the array length.
  const ParamHintFixedArray(this.parameterIndex);

  final int parameterIndex;
}

/// Represents an array whose length is relative to another parameter.
final class ParamHintRelativeLengthArray extends ParamHint {
  /// The index of the parameter that specifies the relative length.
  const ParamHintRelativeLengthArray(this.parameterIndex);

  final int parameterIndex;
}

/// Represents an array whose byte length is relative to another parameter.
final class ParamHintRelativeByteLengthArray extends ParamHint {
  /// The index of the parameter that specifies the relative byte length.
  const ParamHintRelativeByteLengthArray(this.parameterIndex);

  final int parameterIndex;
}

/// Represents an array whose pointer is relative to another parameter.
final class ParamHintRelativePointerArray extends ParamHint {
  /// The index of the parameter that specifies the relative pointer.
  const ParamHintRelativePointerArray(this.parameterIndex);

  final int parameterIndex;
}

/// Indicates that the parameter is converted into another type during
/// marshaling.
final class ParamHintIntoParameter extends ParamHint {
  const ParamHintIntoParameter();
}

/// Indicates that the parameter is optional.
final class ParamHintOptional extends ParamHint {
  const ParamHintOptional();
}

/// Indicates that the parameter is a value type.
final class ParamHintValueType extends ParamHint {
  const ParamHintValueType();
}

/// Indicates that the parameter is blittable (can be directly marshaled).
final class ParamHintBlittable extends ParamHint {
  const ParamHintBlittable();
}

/// Represents the absence of any specific hint for the parameter.
final class ParamHintNone extends ParamHint {
  const ParamHintNone();
}
