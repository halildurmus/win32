import 'package:winmd/winmd.dart';

import '../attributes.dart';
import '../type.dart';
import '../windows_metadata.dart';

extension ParameterHelpers on Parameter {
  /// Determines the appropriate [ParamHint] for the parameter based on its
  /// attributes and properties.
  ParamHint get hint {
    if (findAttribute(Win32Attribute.memorySize) case CustomAttribute(
      parameters: [
        CustomAttributeParameter(
          type: TypeIdentifier(
            baseType: BaseType.int16Type,
            name: 'BytesParamIndex',
          ),
          :final int value,
        ),
      ],
    )) {
      final param = parent.parameters[value];
      if (param.token != token) {
        // Length parameters must be input-only.
        if (type.isByteSize && !param.isOutParam && !param.type.isPointer) {
          return ParamHint.relativeByteLengthArray(value);
        }

        return ParamHint.relativePointerArray(value);
      }
    }

    if (findAttribute(Win32Attribute.nativeArrayInfo) case CustomAttribute(
      parameters: [
        CustomAttributeParameter(
          type: TypeIdentifier(:final baseType, :final name),
          :final int value,
        ),
      ],
    )) {
      if (baseType == BaseType.int16Type && name == 'CountParamIndex') {
        final param = parent.parameters[value];
        if (param.token != token) {
          // Length parameters must be input-only.
          if (!param.isOutParam && !param.type.isPointer) {
            return ParamHint.relativeLengthArray(value);
          }

          return ParamHint.relativePointerArray(value);
        }
      }

      if (baseType == BaseType.int32Type && name == 'CountConst') {
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
  bool get isComOutPtr => existsAttribute(Win32Attribute.comOutPtr);

  /// Whether the parameter is convertible into another type.
  bool get isConvertible => !isOutParam && type.isConvertible;

  /// Whether the parameter is a _nullable_ type.
  bool get isNullable => isOptional || type.isInterface;

  /// Whether the parameter is reserved.
  bool get isReserved =>
      existsAttribute(Win32Attribute.reserved) || name.contains('Reserved');

  /// Whether the parameter is the return value of the method.
  bool get isRetVal {
    // Check for `RetValAttribute`.
    if (existsAttribute(Win32Attribute.retVal)) return true;

    // Check for other return value candidates.
    final type = this.type;
    if (!type.isPointer) return false;
    if (type.isVoid) return false;
    if (isInParam || !isOutParam || isOptional) return false;
    if (hint.isArray) return false;

    return true;
  }

  /// The type of the field.
  Type get type {
    var type = Type.fromTypeIdentifier(typeIdentifier);

    // Handle associated enums for input parameters.
    if (!isOutParam) {
      if (attributeAsString(Win32Attribute.associatedEnum) case final name
          when name.isNotEmpty) {
        final typeDef = WindowsMetadata.typeDef(name);
        type = Type.primitiveOrEnum(type, TypeDefType(typeDef));
      }
    }

    // Apply `const` transformations.
    final isConst = existsAttribute(Win32Attribute.const$);
    if (isConst || !isOutParam) {
      type = type.toConstType();
    }
    if (!isOutParam) {
      type = type.toConstPtr();
    }

    return type;
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
