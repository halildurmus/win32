import 'package:winmd/winmd.dart';

import 'parameter.dart';
import 'safenames.dart';
import 'type.dart';
import 'utils.dart';

/// A generic class representing an entry in a COM function vtable.
///
/// This is the base class for a range of COM-based objects, including
/// [ComMethodProjection], [ComGetPropertyProjection],
/// [ComSetPropertyProjection], [WinRTMethodProjection],
/// [WinRTGetPropertyProjection], and [WinRTSetPropertyProjection]. All of these
/// map down to an entry in a COM vtable representing a method.
///
/// Methods have names, a list of parameters, and may return a type.
abstract class MethodProjection {
  /// The retrieved Windows metadata for the method or property.
  final Method method;

  /// Offset into the COM v-table that represents the method or property.
  final int vtableOffset;

  /// The name, incorporating any overloads that may be required.
  final String name;

  /// Projections for the parameters of the method.
  List<ParameterProjection> parameters;

  /// Projection for the return type.
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
    // Is it a WinRT method overloaded with a name provided by the metadata?
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
    return method.name;
  }

  /// The method name without uppercased first letter.
  ///
  /// COM and Windows Runtime methods and properties are typically named in
  /// TitleCase, but the Dart idiom is camelCase. This also has the significant
  /// advantage of making it easier to avoid name conflicts.
  String get camelCasedName {
    for (final acronym in acronyms) {
      if (name.startsWith(acronym)) {
        // e.g. IPInformation -> ipInformation
        return safeIdentifierForString(
            acronym.toLowerCase() + name.substring(acronym.length));
      }
    }

    return safeIdentifierForString(name.toCamelCase());
  }

  /// The parameters exposed by a projected Dart method.
  String get methodParams =>
      parameters.map((param) => param.paramProjection).join(', ');

  /// A shortened version of the method declaration for use in mappers.
  ///   e.g. `void setDateTime(DateTime value)` or `void setToNow()` (method)
  ///   e.g. `int get period` or `int get second` (get property)
  ///   e.g. `set second(int value)` (set property)
  String get shortDeclaration => toString().split('{').first.trim();

  /// A shortened version of the method for use in mappers.
  ///   e.g. `setDateTime(value)` or `setToNow()` (method)
  ///   e.g. `period` or `second` (get property)
  ///   e.g. `second = value` (set property)
  String get shortForm =>
      '$camelCasedName(${parameters.map((param) => param.identifier).join(', ')})';

  /// The native prototype representing the method.
  String get nativePrototype;

  /// The Dart prototype representing the method.
  String get dartPrototype;

  /// The names of the parameters to be passed through to the underlying COM
  /// function.
  String get identifiers;

  String get nativeParams;
  String get dartParams;
}
