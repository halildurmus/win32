import 'codes.dart';
import 'row.dart';
import 'table/custom_attribute.dart';

base mixin HasCustomAttributes on Row {
  late final attributes = getEqualRange<CustomAttribute>(
    0,
    HasCustomAttribute(this).encode(),
  );

  /// Retrieve the string associated with the given attribute name.
  ///
  /// Returns `null`, if the attribute's first parameter is not a string.
  String? attributeAsString(String attributeName) {
    final attr = findAttribute(attributeName);
    if (attr?.parameters case [final param]) return param.valueAsString;
    return null;
  }

  CustomAttribute? findAttribute(String name) =>
      attributes.where((attr) => attr.name == name).firstOrNull;

  bool hasAttribute(String name) => findAttribute(name) != null;
}
