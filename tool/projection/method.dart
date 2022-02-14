import 'package:winmd/winmd.dart';

import 'parameter.dart';
import 'safenames.dart';
import 'type.dart';

/// A method.
///
/// Methods have names, a list of parameters, and may return a type.
class MethodProjection {
  final Method method;
  final int vtableOffset;
  final String name;
  final List<ParameterProjection> parameters;
  final TypeProjection returnType;

  MethodProjection(this.method, this.vtableOffset)
      : name = uniquelyNameMethod(method),
        returnType = TypeProjection(method.returnType.typeIdentifier),
        parameters = method.parameters
            .map((param) => ParameterProjection(
                param.name, TypeProjection(param.typeIdentifier)))
            .toList();

  /// Uniquely name the method.
  ///
  /// Dart doesn't allow overloaded methods, so we have to rename methods that
  /// are duplicated.
  static String uniquelyNameMethod(Method method) {
    // Is it an overload with a name provided by the metadata?
    final overloadName = method
        .attributeAsString('Windows.Foundation.Metadata.OverloadAttribute');
    if (overloadName.isNotEmpty) return overloadName;

    // If not, we check whether multiple methods exist with the same name. We
    // also need to check up the interface chain, since otherwise overloaded
    // methods may be missed. For example, IDWriteFactory2 contains methods that
    // overload those in IDWriteFactory1.
    final overloads =
        method.parent.methods.where((m) => m.name == method.name).toList();
    var interfaceTypeDef = method.parent;
    // perf optimization to save work on the most common case of IUnknown
    while (interfaceTypeDef.interfaces.isNotEmpty &&
        !(interfaceTypeDef.interfaces.first.name ==
            'Windows.Win32.System.Com.IUnknown')) {
      interfaceTypeDef = interfaceTypeDef.interfaces.first;
      overloads
          .addAll(interfaceTypeDef.methods.where((m) => m.name == method.name));
    }

    // If so, and there is more than one entry with the same name, add a suffix
    // to all but the first.
    if (overloads.length > 1) {
      final reversedOverloads = overloads.reversed.toList();
      final overloadIndex =
          reversedOverloads.indexWhere((m) => m.token == method.token);
      if (overloadIndex > 0) {
        return '${safeIdentifierForString(method.name)}_$overloadIndex';
      }
    }

    // Windows.Win32.Web.MsHtml includes a .toString() method. We replace this
    // to avoid undue complexity.
    if (method.name == 'toString') {
      return 'toUtf16String';
    }

    // Otherwise the original name is fine.

    // TODO: Can we remove safeIdentifierForString here? Do we apply it later
    //  anyway?
    return safeIdentifierForString(method.name);
  }

  String get methodParams =>
      parameters.map((param) => '${param.dartProjection}, ').join();

  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
      ].map((p) => '$p, ').join();

  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
      ].map((p) => '$p, ').join();

  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map((param) => param.identifier)
      ].map((p) => '$p, ').join();

  // TODO: Check whether there's a better way to detect how methods like
  // put_AutoDemodulate are declared (should this be a property?) Detect whether
  // it's a property masquerading as a method.
  //
  // The test should be the use of the get_ prefix, combined with the
  // specialname modifier, but win32metadata incorrectly marks some methods with
  // this combination (https://github.com/microsoft/win32metadata/issues/707).
  // So instead, we also need to check the number of parameters.

  // TODO: Consider using technique to cache the function lookup.
  @override
  String toString() => '''
      ${returnType.dartType} $name($methodParams) => ptr.ref.lpVtbl.value
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()($identifiers);
    ''';
}
