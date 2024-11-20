import 'package:winmd/winmd.dart';

import '../attributes.dart';

extension CustomAttributesMixinHelpers on CustomAttributesMixin {
  /// Whether the object has an [Win32Attribute.ansi] attribute.
  bool get isAnsi => existsAttribute(Win32Attribute.ansi);

  /// Whether the object has a [Win32Attribute.unicode] attribute.
  bool get isUnicode => existsAttribute(Win32Attribute.unicode);
}
