import 'codes.dart';
import 'row.dart';
import 'table/custom_attribute.dart';

/// Provides support for querying custom attributes attached to a metadata
/// [Row].
base mixin HasCustomAttributes on Row {
  /// Enumerates all [CustomAttribute]s associated with this row.
  late final attributes = getEqualRange<CustomAttribute>(
    0,
    HasCustomAttribute(this).encode(),
  );

  /// Retrieves the first parameter value of the custom attribute with the given
  /// [attributeName], if it is a string.
  ///
  /// Returns the string value if the attribute exists and has a single string
  /// parameter. Otherwise, returns `null`.
  String? attributeAsString(String attributeName) {
    final attr = findAttribute(attributeName);
    if (attr?.parameters case [final param]) return param.valueAsString;
    return null;
  }

  /// Finds the first [CustomAttribute] with the specified [name], if present.
  ///
  /// Returns `null` if no matching attribute is found.
  CustomAttribute? findAttribute(String name) =>
      attributes.where((attr) => attr.name == name).firstOrNull;

  /// Determines whether an attribute with the specified [name] is attached to
  /// this row.
  bool hasAttribute(String name) => findAttribute(name) != null;
}
