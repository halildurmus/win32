import 'package:winmd/winmd.dart' as winmd;

import 'parameter.dart';
import 'type.dart';

/// A method.
///
/// Methods have names, a list of parameters, and may return a type.
class MethodProjection {
  final winmd.Method method;
  final int vtableOffset;
  late String name;
  late List<ParameterProjection> parameters;
  late TypeProjection returnType;

  MethodProjection(this.method, this.vtableOffset) {
    // Generate a Dart-compatible name
    name = uniquelyNameMethod(method);

    returnType = TypeProjection(method.returnType.typeIdentifier);
    parameters = method.parameters
        .map((param) => ParameterProjection(
            param.name, TypeProjection(param.typeIdentifier)))
        .toList();
  }

  /// Uniquely name the method.
  ///
  /// Dart doesn't allow overloaded methods, so we have to rename methods that
  /// are duplicated.
  String uniquelyNameMethod(winmd.Method method) {
    // Is it an overload with a name provided by the metadata?
    final overloadName = method
        .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');
    if (overloadName.isNotEmpty) return overloadName;

    // If not, we check whether multiple methods exist with the same name.
    final overloads = method.parent.methods.where((m) => m.name == method.name);

    // If so, and there is more than one entry with the same name, add a suffix
    // to all but the first.
    if (overloads.length > 1) {
      final overloadIndex = overloads.toList().indexOf(method);
      if (overloadIndex > 0) {
        return '${method.name}_$overloadIndex';
      }
    }

    // Otherwise the original name is fine.
    return method.name;
  }

  String get methodParams =>
      parameters.map((param) => param.dartProjection).join(', ');

  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
      ].join(', ');

  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
      ].join(', ');

  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  String get identifiers =>
      ['ptr.ref.lpVtbl', ...parameters.map((param) => param.name)].join(', ');

  // TODO: Check whether there's a better way to detect how methods like
  // put_AutoDemodulate are declared (should this be a property?) Detect whether
  // it's a property masquerading as a method.
  //
  // The test should be the use of the get_ prefix, combined with the
  // specialname modifier, but win32metadata incorrectly marks some methods with
  // this combination (https://github.com/microsoft/win32metadata/issues/707).
  // So instead, we also need to check the number of parameters.

  // TODO: Consider using `late final` technique to cache the function lookup.
  @override
  String toString() => '''
      ${returnType.dartType} $name($methodParams) => ptr.ref.lpVtbl.value
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()($identifiers);
    ''';
}
