import 'dart:ffi';

import 'package:winmd/winmd.dart' as winmd;

import '../attributes.dart';
import '../interop_type.dart';
import '../windows_metadata.dart';
import '_unicode_suffixed_types.g.dart';
import 'collection.dart';
import 'has_custom_attributes.dart';
import 'param.dart';
import 'string.dart';
import 'type_def.dart';

extension MethodDefExtension on winmd.MethodDef {
  /// Returns the camel-cased unique name of the method.
  ///
  /// Depending on the method name and how it is projected, the following rules
  /// are applied:
  ///
  /// - **Projected as Getter/Setter:**
  ///   If the method can be projected as a Dart getter or setter, any leading
  ///   `get_` or `put_` prefix is removed.
  ///
  /// - **Getter Methods:**
  ///   If the method name starts with `get_`, that prefix is removed.
  ///
  /// - **Setter Methods:**
  ///   If the method name starts with `put_` or `putref_`, the respective
  ///   prefix is removed, then `set` is prepended and the first letter of the
  ///   remaining part is capitalized (e.g., `put_value` or `putref_value`
  ///   becomes `setValue`).
  ///
  /// - **Other Methods:**
  ///   For method names with other prefixes (e.g., `add_`, `remove_`), the name
  ///   is split by underscores, and every part after the first is capitalized
  ///   (e.g., `add_value` becomes `addValue`).
  ///
  /// Finally, the resulting name is converted to camel case and sanitized to
  /// ensure it is a safe identifier.
  String get camelCasedUniqueName {
    var name = uniqueName;

    if (canBeProjectedAsGetter || canBeProjectedAsSetter) {
      // When the method is projected as a getter or setter, remove either the
      // "get_" or "put_" prefix.
      name = name.replaceFirst(RegExp('^(?:get_|put_)(?:_)?'), '');
    } else if (name.startsWith('get_')) {
      // For getters, simply remove the "get_" prefix.
      name = name.replaceFirst(RegExp('^get_(?:_)?'), '');
    } else if (name.startsWith('put_')) {
      // For setters, remove the "put_" prefix, prepend "set", and capitalize
      // the first letter of the remaining part.
      name = name.replaceFirst(RegExp('^put_(?:_)?'), '');
      name = 'set${name.capitalize()}';
    } else if (name.startsWith('putref_')) {
      // For setters, remove the "putref_" prefix, prepend "set", and capitalize
      // the first letter of the remaining part.
      name = name.replaceFirst(RegExp('^putref_(?:_)?'), '');
      name = 'set${name.capitalize()}';
    } else {
      // For other methods (e.g., "add_", "remove_"), split the name by
      // underscores and capitalize the first letter of every part after the
      // first.
      name = name.split('_').mapIndexed((i, part) {
        if (i == 0) return part;
        return part.capitalize();
      }).join();
    }

    return name.toCamelCase().safeIdentifier;
  }

  /// Whether the method can be projected as a Dart getter.
  bool get canBeProjectedAsGetter {
    // Check if the method is a get property and has exactly one parameter.
    if (isGetProperty && parameters.length == 1) {
      // Find the corresponding set property, if available.
      final setProperty = parent.methods
          .where((m) => m.name == name.replaceFirst('get_', 'put_'))
          .firstOrNull;

      // If no corresponding set property is found, there is no need to do any
      // further checks. The method can be projected as a Dart getter.
      if (setProperty == null) return true;

      // If a set property is found, make sure the getter and setter have the
      // same type. This is necessary to project the method as a Dart getter.
      final getterProjection = parameters[0].type;
      final setterProjection = setProperty.parameters[0].type;

      if (getterProjection.deref() case InteropType(
        isStruct: true,
        isWrapperStruct: false,
      )) {
        return getterProjection == setterProjection;
      }

      // If the dereferenced getter and setter have the same type, the method
      // can be projected as a Dart getter.
      return getterProjection.deref() == setterProjection;
    }

    // If the method does not meet the conditions above, it cannot be projected
    // as a Dart getter.
    return false;
  }

  /// Whether the method can be projected as a Dart setter.
  bool get canBeProjectedAsSetter {
    // Check if the method is a set property and has exactly one parameter.
    if (isSetProperty && parameters.length == 1) {
      // Find the corresponding get property, if available.
      final getProperty = parent.methods
          .where((m) => m.name == name.replaceFirst('put_', 'get_'))
          .firstOrNull;

      // If no corresponding get property is found, there is no need to do any
      // further checks. The method can be projected as a Dart setter.
      if (getProperty == null) return true;

      // If a get property is found, check if it can be projected as a Dart
      // getter.
      return getProperty.canBeProjectedAsGetter;
    }

    // If the method does not meet the conditions above, it cannot be projected
    // as a Dart setter.
    return false;
  }

  /// Provides a hint about how the return value of the method should be
  /// interpreted.
  ReturnHint get hint {
    if (hasAttribute(Win32Attribute.canReturnMultipleSuccessValues)) {
      return ReturnHint.none;
    }

    final outParameters = params.where((p) => p.isOutParam).toFixedList();

    return switch (returnType) {
      BOOLType() || BOOLEANType() => ReturnHint.returnBoolean,
      GUIDType() => ReturnHint.returnStruct,
      HRESULTType() when isQuery != null =>
        isQuery!.object.isOptional
            ? ReturnHint.queryOptional
            : ReturnHint.query,
      HRESULTType() =>
        (outParameters.length == 1 &&
                        params.last.index == outParameters[0].index
                    ? outParameters[0]
                    : params.first)
                .isRetVal
            ? ReturnHint.resultValue
            : ReturnHint.resultVoid,
      TypeDefType(
        typeDef: winmd.TypeDef(
          category: winmd.TypeCategory.struct,
          isWrapperStruct: false,
        ),
      ) =>
        ReturnHint.returnStruct,
      TypeDefType(isInterface: true) => ReturnHint.returnValue,
      VoidType() => ReturnHint.returnVoid,
      _ => ReturnHint.none,
    };
  }

  bool get isGetProperty => isSpecialName && name.startsWith('get_');

  /// Whether the method is a leaf function.
  ///
  /// See also: [Native.isLeaf].
  bool get isLeaf => false;
  // !parameters.any(
  //   (p) => p.type.isDelegate || (p.type.tryDeref()?.isDelegate ?? false),
  // );

  /// Whether the method is marked as obsolete.
  bool get isObsolete => hasAttribute(SystemAttribute.obsolete);

  /// Checks if the method has a query-like pattern.
  ///
  /// Returns the GUID parameter, its index, the object parameter, and its
  /// index if the method matches the pattern; otherwise, returns `null`.
  ({winmd.Param guid, int guidIdx, winmd.Param object, int objectIdx})?
  get isQuery {
    if (parameters.length < 2) return null;

    final guidIdx = parameters.lastIndexWhere(
      (p) =>
          p.type == const InteropType.constPointer(GUIDType(), 1) &&
          !p.isOutParam,
    );
    if (guidIdx == -1) return null;
    final guid = parameters[guidIdx];

    final object = parameters
        .where(
          (p) =>
              p.type == const InteropType.mutablePointer(VoidType(), 2) &&
              p.hasAttribute(Win32Attribute.comOutPtr),
        )
        .singleOrNull;
    if (object == null) return null;
    final objectIdx = parameters.indexWhere((p) => p.index == object.index);

    return (guid: guid, guidIdx: guidIdx, object: object, objectIdx: objectIdx);
  }

  /// Whether the method has a `retval` parameter.
  bool get isRetVal {
    final lastParam = params.lastOrNull;
    // First we check whether there's an explicit retval parameter.
    if (lastParam?.hasAttribute(Win32Attribute.retVal) ?? false) {
      return true;
    }

    // Otherwise we check for heuristically for additional retval candidates.
    final previousParams = params.take(params.length - 1);
    return (lastParam?.isRetVal ?? false) &&
        previousParams.every((p) => !p.isOutParam);
  }

  bool get isSetProperty => isSpecialName && name.startsWith('put_');

  bool get isSpecialName => flags.has(winmd.MethodAttributes.specialName);

  /// The external module that contains the method, if this method is a
  /// Win32 function.
  winmd.ModuleRef? get module => implMap?.importScope;

  /// The method name without ANSI (`A`) or Unicode (`W`) suffix (e.g.,
  /// `GetClassName` instead of `GetClassNameW`).
  String get nameWithoutEncoding {
    // If the method is attributed with `AnsiAttribute` or `UnicodeAttribute`,
    // return the name with suffix stripped.
    if (isAnsi || isUnicode) return name.stripAnsiUnicodeSuffix();

    // Some methods have a Unicode suffix (`W`) without corresponding ANSI
    // variants. As a result, these methods do not possess the
    // `UnicodeAttribute` (e.g., `CommandLineToArgvW`).
    if (name.endsWith('W') && unicodeSuffixedFunctions.contains(name)) {
      return name.stripAnsiUnicodeSuffix();
    }

    // If the method name is neither ANSI, Unicode, nor a known Unicode suffixed
    // method, return the original name unchanged.
    return name;
  }

  List<winmd.Param> get parameters =>
      params.where((p) => p.sequence != 0).toFixedList();

  InteropType get returnType {
    var type = InteropType.fromMetadataType(signature.returnType);

    // Apply `const` transformations.
    if (params.isNotEmpty) {
      final firstParam = params[0];
      if (firstParam.sequence == 0 &&
          firstParam.hasAttribute(Win32Attribute.const$)) {
        type = type.toConstType();
      }
    }

    return type;
  }

  /// Whether the method supports the `SetLastError` mechanism.
  bool get supportsLastError =>
      implMap?.flags.has(winmd.PInvokeAttributes.supportsLastError) ?? false;

  /// A unique name for the method to handle Dart's lack of support for
  /// overloaded methods.
  String get uniqueName {
    // Check whether multiple methods exist with the same name.
    final overloads = parent.methods.where((m) => m.name == name).toList();
    var interfaceTypeDef = parent;

    // We also need to check up the interface chain, since otherwise overloaded
    // methods may be missed. For example, "IDWriteFactory2" contains methods
    // that overload those in "IDWriteFactory1".

    // Perf optimization to save work on the most common case of IUnknown.
    while (interfaceTypeDef.interfaceImpls.isNotEmpty &&
        interfaceTypeDef.interfaceImpls[0].interface.name != 'IUnknown') {
      interfaceTypeDef = switch (interfaceTypeDef.interfaceImpls[0].interface) {
        winmd.NamedType(:final typeName) => WindowsMetadata.findTypeDef(
          typeName.namespace,
          typeName.name,
        ),
      };
      overloads.addAll(interfaceTypeDef.methods.where((m) => m.name == name));
    }

    // If there is more than one entry with the same name, add a suffix to all
    // but the first.
    if (overloads.length > 1) {
      final reversedOverloads = overloads.reversed.toFixedList();
      final overloadIndex = reversedOverloads.indexWhere(
        (m) => m.index == index,
      );
      if (overloadIndex > 0) return '${name.safeIdentifier}$overloadIndex';
    }

    // Handle special cases:

    // Special case for the "get_RuntimeType" method in the "IPMTaskInfo"
    // interface. To avoid name conflicts with "Object.runtimeType",
    // dollar sign ($) suffix is added.
    if (name == 'get_RuntimeType') return r'get_RuntimeType$';

    // Special case for the "ToString" method in the "IInkStrokes" interface.
    // To avoid name conflicts with "Object.toString", the method name is
    // replaced with "ToUtf16String".
    if (name == 'ToString') return 'ToUtf16String';

    // Special case for methods named "toString" in interfaces within the
    // "Windows.Win32.Web.MsHtml" namespace. To avoid name conflicts with
    // "Object.toString", the method name is replaced with "toUtf16String".
    if (name == 'toString') return 'toUtf16String';

    // Otherwise, the original name is fine.
    return name;
  }
}

/// Describes the different hints for interpreting the return type of a
/// [winmd.MethodDef].
enum ReturnHint {
  /// Indicates no specific return type hint.
  none,

  /// Indicates that the function performs a query and returns a required
  /// result.
  query,

  /// Indicates that the function performs a query and returns an optional
  /// result.
  queryOptional,

  /// Indicates that the function returns a result value.
  resultValue,

  /// Indicates that the function returns a result but does not have a
  /// meaningful value.
  resultVoid,

  /// Indicates that the function returns a boolean value.
  returnBoolean,

  /// Indicates that the function returns a struct.
  returnStruct,

  /// Indicates that the function returns a value.
  returnValue,

  /// Indicates that the function does not return a value.
  returnVoid;

  /// Whether the hint is [none].
  bool get isNone => this == none;

  /// Whether the hint is [query].
  bool get isQuery => this == query;

  /// Whether the hint is [queryOptional].
  bool get isQueryOptional => this == queryOptional;

  /// Whether the hint is [resultValue].
  bool get isResultValue => this == resultValue;

  /// Whether the hint is [resultVoid].
  bool get isResultVoid => this == resultVoid;

  /// Whether the hint is [returnBoolean].
  bool get isReturnBoolean => this == returnBoolean;

  /// Whether the hint is [returnStruct].
  bool get isReturnStruct => this == returnStruct;

  /// Whether the hint is [returnValue].
  bool get isReturnValue => this == returnValue;

  /// Whether the hint is [returnVoid].
  bool get isReturnVoid => this == returnVoid;
}
