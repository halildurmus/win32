import 'package:winmd/winmd.dart';

import '../models/functions.dart';

extension ScopeHelpers on Scope {
  /// Returns the constant fields defined in this scope.
  Iterable<Field> get constants => typeDefs
      .where((typeDef) => typeDef.name.endsWith('Apis'))
      .expand((typeDef) => typeDef.fields);

  /// Returns the functions defined in this scope.
  Iterable<Method> get functions => typeDefs
      .where((typeDef) => typeDef.name.endsWith('Apis'))
      .expand((typeDef) => typeDef.methods);

  /// Retrieves methods from the specified dynamic [library] that match the
  /// provided list of [functions].
  List<Method> methodsFromLibrary(
    String library,
    List<Win32Function> functions,
  ) {
    final apis =
        typeDefs.where((typeDef) => typeDef.name.endsWith('Apis')).toList();
    final methods =
        functions
            .map((function) {
              final matchingMethods =
                  apis
                      .expand(
                        (api) => api.methods.where(
                          (m) =>
                              m.name == function.originalName &&
                              m.module.name.toLowerCase() == library,
                        ),
                      )
                      .toList();
              return matchingMethods.isNotEmpty ? matchingMethods.first : null;
            })
            .whereType<Method>()
            .toList();

    if (methods.isEmpty) {
      throw StateError('No methods found for the dynamic library "$library".');
    }

    return methods;
  }
}
