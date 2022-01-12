import 'safenames.dart';
import 'type.dart';

/// A parameter.
///
/// Parameters are a tuple of a type and a name.
class ParameterProjection {
  final String name;
  final TypeProjection type;

  const ParameterProjection(this.name, this.type);

  @override
  String toString() => '$name (${type.nativeType})';

  String get ffiProjection =>
      '${safeTypenameForString(type.nativeType)} ${safeIdentifierForString(name)}';

  String get dartProjection =>
      '${safeTypenameForString(type.dartType)} ${safeIdentifierForString(name)}';

  String get identifier => safeIdentifierForString(name);
}
