import 'type.dart';
import 'utils.dart';

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
      '${safeTypename(type.nativeType)} ${safeName(name)}';

  String get dartProjection =>
      '${safeTypename(type.dartType)} ${safeName(name)}';

  String get identifier => safeName(name);
}
