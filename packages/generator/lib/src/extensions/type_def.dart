import 'dart:typed_data';

import 'package:winmd/winmd.dart' as winmd;

import '../attributes.dart';
import '../interop_type.dart';
import '../windows_metadata.dart';
import '_unicode_suffixed_types.g.dart';
import 'collection.dart';
import 'field.dart';
import 'has_custom_attributes.dart';
import 'string.dart';

extension TypeDefExtension on winmd.TypeDef {
  /// The memory alignment of the typeDef.
  int get alignment => switch (category) {
    winmd.TypeCategory.attribute ||
    winmd.TypeCategory.class$ ||
    winmd.TypeCategory.delegate ||
    winmd.TypeCategory.interface => 8,
    winmd.TypeCategory.enum$ => fields.first.type.alignment,
    winmd.TypeCategory.struct =>
      fields
          .map((f) => f.type.alignment)
          .fold(1, (max, size) => size > max ? size : max),
  };

  /// Returns the function associated with resource cleanup, if any.
  ///
  /// This is identified by the [Win32Attribute.raiiFree] attribute.
  winmd.MethodDef? get freeFunction {
    final raiiFree = tryFindAttribute(Win32Attribute.raiiFree);
    if (raiiFree == null) return null;

    if (raiiFree.fixedArgs case [
      winmd.FixedArg(value: winmd.Utf8StringValue(value: final value)),
    ]) {
      return WindowsMetadata.findFunctionByName(value);
    }

    return null;
  }

  String? get guid {
    final guid = tryFindAttribute(Win32Attribute.guid);
    if (guid == null) return null;

    if (guid.fixedArgs case [
      winmd.FixedArg(value: winmd.Uint32Value(value: final a)),
      winmd.FixedArg(value: winmd.Uint16Value(value: final b)),
      winmd.FixedArg(value: winmd.Uint16Value(value: final c)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final d)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final e)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final f)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final g)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final h)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final i)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final j)),
      winmd.FixedArg(value: winmd.Uint8Value(value: final k)),
    ]) {
      final buffer = StringBuffer()
        ..write(a.toRadixString(16).padLeft(8, '0'))
        ..write('-')
        ..write(b.toRadixString(16).padLeft(4, '0'))
        ..write('-')
        ..write(c.toRadixString(16).padLeft(4, '0'))
        ..write('-')
        ..write(d.toRadixString(16).padLeft(2, '0'))
        ..write(e.toRadixString(16).padLeft(2, '0'))
        ..write('-')
        ..write(f.toRadixString(16).padLeft(2, '0'))
        ..write(g.toRadixString(16).padLeft(2, '0'))
        ..write(h.toRadixString(16).padLeft(2, '0'))
        ..write(i.toRadixString(16).padLeft(2, '0'))
        ..write(j.toRadixString(16).padLeft(2, '0'))
        ..write(k.toRadixString(16).padLeft(2, '0'));
      return buffer.toString();
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
    final invalidHandleValueAttributes = attributes
        .where((attr) => attr.name == Win32Attribute.invalidHandleValue)
        .toFixedList();
    final values = Int64List(invalidHandleValueAttributes.length);

    for (var i = 0; i < invalidHandleValueAttributes.length; i++) {
      final attr = invalidHandleValueAttributes[i];
      if (attr.fixedArgs case [
        winmd.FixedArg(value: winmd.Int64Value(value: final value)),
      ]) {
        values[i] = value;
      }
    }

    return values;
  }

  /// Whether the typeDef is a bitwise enum (e.g., `VARENUM`).
  bool get isBitwiseEnum => isEnum && hasAttribute(SystemAttribute.flags);

  /// Whether the typeDef can be directly copied.
  bool get isCopyable => switch (category) {
    winmd.TypeCategory.delegate || winmd.TypeCategory.enum$ => true,
    winmd.TypeCategory.struct when name != 'VARIANT' && name != 'PROPVARIANT' =>
      true,
    _ => false,
  };

  bool get isDelegate => category == winmd.TypeCategory.delegate;

  bool get isEnum => category == winmd.TypeCategory.enum$;

  /// Whether the typeDef is a handle (e.g., `HKEY`).
  bool get isHandle =>
      hasAttribute(Win32Attribute.nativeTypedef) ||
      hasAttribute(Win32Attribute.metadataTypedef);

  bool get isInterface => category == winmd.TypeCategory.interface;

  /// Whether the typeDef is marked as obsolete.
  bool get isObsolete => hasAttribute(SystemAttribute.obsolete);

  /// Whether the typeDef is considered primitive.
  bool get isPrimitive => switch (category) {
    winmd.TypeCategory.attribute || winmd.TypeCategory.class$ => false,
    winmd.TypeCategory.delegate ||
    winmd.TypeCategory.interface ||
    winmd.TypeCategory.enum$ => true,
    winmd.TypeCategory.struct => isWrapperStruct,
  };

  bool get isStruct => category == winmd.TypeCategory.struct;

  bool get isUnion =>
      isStruct &&
      fields.length > 1 &&
      fields.every((f) => f.layout != null && f.layout!.offset == 0);

  /// Whether the typeDef is a `void*` handle.
  ///
  /// Used to determine whether the type should be treated as an `int` instead
  /// of a `Pointer`.
  bool get isVoidPtrHandle => isHandle && fields[0].type.isVoidPtr;

  /// Whether the typeDef is a wrapper struct (e.g., `HWND`,
  /// `MEMORY_MAPPED_VIEW_ADDRESS`).
  bool get isWrapperStruct => isStruct && isHandle;

  /// The type name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `IShellLink` instead of `IShellLinkW`).
  ///
  /// If the name ends with underscore(s), they are stripped as well (e.g.,
  /// `SP_DEVICE_INTERFACE_DETAIL_DATA_W` -> `SP_DEVICE_INTERFACE_DETAIL_DATA`).
  String get nameWithoutEncoding {
    final originalName = name;

    // Handle nested types to ensure uniqueness.
    if (isNested) {
      if (enclosingClass case winmd.TypeDef(
        :final nestedTypes,
        :final safeTypeName,
      )) {
        // Find the index of the current type definition within the list of
        // nested types.
        final foundIndex = nestedTypes.indexWhere((t) => t.index == index);
        if (foundIndex == -1) return '${safeTypeName}_0';

        // Update the type definition name to include a unique index for
        // differentiation (e.g., `DEVMODE_0`, `DEVMODE_0_1`).
        return '${safeTypeName}_$foundIndex';
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
    if (name.endsWith('W') && unicodeSuffixedTypeDefs.contains(name)) {
      return originalName.stripAnsiUnicodeSuffix().stripTrailingUnderscores();
    }

    // If the typeDef name is neither ANSI, Unicode, nor a known Unicode
    // suffixed typeDef, return the original name unchanged.
    return originalName;
  }

  /// The topmost typeDef in the nested tree.
  winmd.TypeDef get rootType {
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

  /// The memory size of the typeDef.
  int get size => switch (category) {
    winmd.TypeCategory.attribute ||
    winmd.TypeCategory.class$ ||
    winmd.TypeCategory.delegate ||
    winmd.TypeCategory.interface => 8,
    winmd.TypeCategory.enum$ => fields[0].type.size,
    winmd.TypeCategory.struct when typeLayout == winmd.TypeLayout.explicit =>
      fields
          .map((f) => f.type.size)
          .fold(1, (max, size) => size > max ? size : max),
    winmd.TypeCategory.struct => fields.map((f) => f.type).fold(0, (sum, type) {
      final InteropType(:alignment, :size) = type;
      sum = (sum + (alignment - 1)) & ~(alignment - 1);
      return sum + size;
    }),
  };

  /// Get platform architectures on which this type is supported.
  Architecture get supportedArchitectures {
    final arch = tryFindAttribute('SupportedArchitectureAttribute');
    // By default, this attribute is missing and it is assumed that types
    // support all valid platform architectures.
    if (arch == null) return Architecture.all();

    if (arch.fixedArgs case [
      winmd.FixedArg(value: winmd.Int32Value(value: final value)),
    ]) {
      return Architecture(value);
    }

    return Architecture.all();
  }
}

/// The architectures supported by a specific Win32 method or struct.
final class Architecture {
  /// Creates an [Architecture] object.
  const Architecture(this._value);

  /// Returns an [Architecture] object that represents all supported
  /// architectures.
  factory Architecture.all() => const Architecture(_arm64 | _x64 | _x86);

  final int _value;

  static const _x86 = 0x01;
  static const _x64 = 0x02;
  static const _arm64 = 0x04;

  /// Whether the object is supported on Intel 32-bit architectures.
  bool get x86 => _value & _x86 == _x86;

  /// Whether the object is supported on Intel 64-bit architectures.
  bool get x64 => _value & _x64 == _x64;

  /// Whether the object is supported on ARM 64-bit architectures.
  bool get arm64 => _value & _arm64 == _arm64;
}

/// Indicates the preferred architecture for a requested [winmd.TypeDef].
enum PreferredArchitecture {
  /// Prefer Intel 32-bit architecture.
  x86,

  /// Prefer Intel 64-bit architecture.
  x64,

  // Prefer ARM 64-bit architecture.
  arm64,
}

enum TypeKind { class$, delegate, enum$, interface, struct }
