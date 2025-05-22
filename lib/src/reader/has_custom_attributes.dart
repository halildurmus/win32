import '../attribute_arg.dart';
import '../exception.dart';
import 'codes.dart';
import 'row.dart';
import 'table/custom_attribute.dart';

/// Provides support for querying custom attributes attached to a metadata
/// [Row].
base mixin HasCustomAttributes on Row {
  /// Enumerates all [CustomAttribute]s associated with this row.
  late final List<CustomAttribute> attributes = getEqualRange<CustomAttribute>(
    0,
    HasCustomAttribute(this).encode(),
  ).toList(growable: false);

  /// Retrieves the first argument of the custom attribute with the given
  /// [attributeName], if it is a string.
  ///
  /// Returns the string value if the attribute exists and has a single string
  /// argument. Otherwise, returns `null`.
  String? attributeAsString(String attributeName) {
    final attr = tryFindAttribute(attributeName);
    if (attr?.fixedArgs case [final arg]) return arg.valueAsString;
    if (attr?.namedArgs case [
      final arg,
    ] when attr?.fixedArgs.isEmpty ?? false) {
      return arg.valueAsString;
    }
    return null;
  }

  /// Finds the first [CustomAttribute] with the specified [name].
  ///
  /// Throws a [WinmdException] if no matching attribute is found.
  CustomAttribute findAttribute(String name) =>
      attributes.where((attr) => attr.name == name).firstOrNull ??
      (throw WinmdException('Attribute not found: $name'));

  /// Attempts to find the first [CustomAttribute] with the specified [name].
  ///
  /// Returns `null` if no matching attribute is found.
  CustomAttribute? tryFindAttribute(String name) =>
      attributes.where((attr) => attr.name == name).firstOrNull;

  /// Determines whether an attribute with the specified [name] is attached to
  /// this row.
  bool hasAttribute(String name) => tryFindAttribute(name) != null;
}
