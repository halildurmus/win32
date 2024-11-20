import 'dart:typed_data';

import 'package:winmd/winmd.dart';

import '../attributes.dart';
import '../type.dart';
import '../type_name.dart';
import '../windows_metadata.dart';
import '_unicode_suffixed_types.g.dart';
import 'collection.dart';
import 'custom_attributes_mixin.dart';
import 'field.dart';
import 'string.dart';

extension TypeDefHelpers on TypeDef {
  /// The memory alignment of the typeDef.
  int get alignment => switch (kind) {
    TypeKind.class$ || TypeKind.delegate || TypeKind.interface => 8,
    TypeKind.enum$ => fields[0].type.alignment,
    TypeKind.struct => fields
        .map((f) => f.type.alignment)
        .fold(1, (max, size) => size > max ? size : max),
  };

  /// Finds and returns a field by its name.
  Field field(String name) {
    final field = findField(name);
    if (field != null) return field;
    throw StateError('Field "$name" not found in "$this".');
  }

  /// Returns the function associated with resource cleanup, if any.
  ///
  /// This is identified by the [Win32Attribute.raiiFree] attribute.
  Method? get freeFunction {
    final raiiFree = findAttribute(Win32Attribute.raiiFree);
    if (raiiFree == null) return null;

    if (raiiFree.parameters case [
      CustomAttributeParameter(:final String value),
    ]) {
      return WindowsMetadata.function(value);
    }

    return null;
  }

  /// Whether the typeDef has a [Win32Attribute.guid] attribute.
  bool get hasGuid => hasAttribute(Win32Attribute.guid);

  /// Returns a list of invalid handle values associated with the typeDef, if
  /// any.
  ///
  /// These values are determined from the [Win32Attribute.invalidHandleValue]
  /// attribute.
  Int64List get invalidHandleValues {
    final invalidHandleValueAttributes =
        customAttributes
            .where((attr) => attr.name == Win32Attribute.invalidHandleValue)
            .toFixedList();
    final values = Int64List(invalidHandleValueAttributes.length);

    for (var i = 0; i < invalidHandleValueAttributes.length; i++) {
      final attr = invalidHandleValueAttributes[i];
      if (attr.parameters case [
        CustomAttributeParameter(
          type: TypeIdentifier(baseType: BaseType.int64Type),
          :final int value,
        ),
      ]) {
        values[i] = value;
      }
    }

    return values;
  }

  /// Whether the typeDef is a bitwise enum (e.g., `VARENUM`).
  bool get isBitwiseEnum => isEnum && hasAttribute(SystemAttribute.flags);

  /// Whether the typeDef can be directly copied.
  bool get isCopyable => switch (kind) {
    TypeKind.delegate || TypeKind.enum$ => true,
    TypeKind.struct
        when typeName != TypeName.VARIANT && typeName != TypeName.PROPVARIANT =>
      true,
    _ => false,
  };

  /// Whether the typeDef is a handle (e.g., `HKEY`).
  bool get isHandle =>
      hasAttribute(Win32Attribute.nativeTypedef) ||
      hasAttribute(Win32Attribute.metadataTypedef);

  /// Whether the typeDef is marked as obsolete.
  bool get isObsolete => hasAttribute(SystemAttribute.obsolete);

  /// Whether the typeDef is considered primitive.
  bool get isPrimitive => switch (kind) {
    TypeKind.delegate || TypeKind.interface || TypeKind.enum$ => true,
    TypeKind.struct => isWrapperStruct,
    _ => false,
  };

  /// Whether the typeDef is a `void*` handle.
  ///
  /// Used to determine whether the type should be treated as an `int` instead
  /// of a `Pointer`.
  bool get isVoidPtrHandle => isHandle && fields[0].type.isVoidPtr;

  /// Whether the typeDef is a wrapper struct (e.g., `HWND`,
  /// `MEMORY_MAPPED_VIEW_ADDRESS`).
  bool get isWrapperStruct => isStruct && isHandle;

  /// The kind of the type (e.g., class, enum).
  TypeKind get kind => switch (this) {
    _ when isDelegate => TypeKind.delegate,
    _ when isEnum => TypeKind.enum$,
    _ when isInterface => TypeKind.interface,
    _ when isStruct => TypeKind.struct,
    _ => TypeKind.class$,
  };

  /// Finds and returns a method by its name.
  Method method(String name) {
    final method = findMethod(name);
    if (method != null) return method;
    throw StateError('Method "$name" not found in "$this".');
  }

  /// The namespace of the typeDef.
  String get namespace =>
      name.contains('.') ? name.substring(0, name.lastIndexOf('.')) : '';

  /// The type name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `IShellLink` instead of `IShellLinkW`).
  ///
  /// If the name ends with underscore(s), they are stripped as well (e.g.,
  /// `SP_DEVICE_INTERFACE_DETAIL_DATA_W` -> `SP_DEVICE_INTERFACE_DETAIL_DATA`).
  String get nameWithoutEncoding {
    final originalName = name;

    // Handle nested types to ensure uniqueness.
    if (isNested) {
      if (enclosingClass case TypeDef(
        :final fields,
        :final nestedTypes,
        :final safeTypeName,
      )) {
        // Find the index of the current type definition within the list of
        // nested types.
        final index = nestedTypes.indexWhere((t) => t.token == token);
        if (index == -1) {
          throw StateError('Could not find the index of $this in $fields');
        }

        // Update the type definition name to include a unique index for
        // differentiation (e.g., `DEVMODE_0`, `DEVMODE_0_1`).
        return '${safeTypeName}_$index';
      }

      throw StateError('Nested types must have an enclosing class.');
    }

    // If the typeDef is attributed with `AnsiAttribute` or `UnicodeAttribute`,
    // return the name with suffix stripped.
    if (isAnsi || isUnicode) {
      return originalName.stripAnsiUnicodeSuffix().stripTrailingUnderscores();
    }

    // Some type names have a Unicode suffix (`W`) without corresponding ANSI
    // variants. As a result, these do not possess the `UnicodeAttribute` (e.g.,
    // `IStillImageW`).
    if (simpleName.endsWith('W') && unicodeSuffixedTypeDefs.contains(name)) {
      return originalName.stripAnsiUnicodeSuffix().stripTrailingUnderscores();
    }

    // If the typeDef name is neither ANSI, Unicode, nor a known Unicode
    // suffixed typeDef, return the original name unchanged.
    return originalName;
  }

  /// The nested types within the struct.
  List<TypeDef> get nestedTypes {
    if (fields.isEmpty) return const [];
    return fields
        .where((f) => f.isNested || f.isNestedArray || f.isNestedPointer)
        .map((f) {
          final typeIdentifier = f.typeIdentifier;
          return f.isNested
              ? typeIdentifier.type!
              : typeIdentifier.typeArg!.type!;
        })
        .toFixedList();
  }

  /// The topmost typeDef in the nested tree.
  TypeDef get rootType {
    var rootType = this;

    // Traverse up the hierarchy until the root type is reached.
    while (rootType.enclosingClass != null) {
      rootType = rootType.enclosingClass!;
    }

    return rootType;
  }

  /// A safe Dart identifier based on the last component of the
  /// [nameWithoutEncoding] (e.g., `_SomeIdentifier` -> `SomeIdentifier`).
  String get safeIdentifier => nameWithoutEncoding.lastComponent.safeIdentifier;

  /// A safe Dart type name based on the last component of the
  /// [nameWithoutEncoding] (e.g., `_SomeType` -> `SomeType`).
  String get safeTypeName => nameWithoutEncoding.lastComponent.safeTypeName;

  /// Returns the simple name of the type (without its namespace).
  String get simpleName =>
      name.contains('.') ? name.substring(name.lastIndexOf('.') + 1) : name;

  /// The memory size of the typeDef.
  int get size => switch (kind) {
    TypeKind.class$ || TypeKind.delegate || TypeKind.interface => 8,
    TypeKind.enum$ => fields[0].type.size,
    TypeKind.struct when typeLayout == TypeLayout.explicit => fields
        .map((f) => f.type.size)
        .fold(1, (max, size) => size > max ? size : max),
    TypeKind.struct => fields.map((f) => f.type).fold(0, (sum, type) {
      final Type(:alignment, :size) = type;
      sum = (sum + (alignment - 1)) & ~(alignment - 1);
      return sum + size;
    }),
  };

  /// Returns the [TypeName] representation of the typeDef.
  TypeName get typeName => TypeName((namespace, simpleName));
}

enum TypeKind { class$, delegate, enum$, interface, struct }
