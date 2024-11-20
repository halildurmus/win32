import 'package:winmd/winmd.dart';

import '../attributes.dart';

extension HasCustomAttributesExtension on HasCustomAttributes {
  /// Whether the object has an [Win32Attribute.ansi] attribute.
  bool get isAnsi => hasAttribute(Win32Attribute.ansi);

  /// Whether the object has a [Win32Attribute.unicode] attribute.
  bool get isUnicode => hasAttribute(Win32Attribute.unicode);
}
