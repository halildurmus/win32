import 'package:winmd/winmd.dart';

import '../models/functions.dart';
import '../windows_metadata.dart';
import 'collection.dart';
import 'method_def.dart';

extension MetadataIndexExtension on MetadataIndex {
  /// Returns the constant fields defined in this scope.
  Iterable<Field> get constants => typeDef
      .where((typeDef) => typeDef.name.endsWith('Apis'))
      .expand((typeDef) => typeDef.fields);

  /// Returns the functions defined in this scope.
  Iterable<MethodDef> get functions => typeDef
      .where((typeDef) => typeDef.name.endsWith('Apis'))
      .expand((typeDef) => typeDef.methods);

  /// Retrieves methods from the specified dynamic [library] that match the
  /// provided list of [functions].
  List<MethodDef> methodsFromLibrary(
    String library,
    List<Win32Function> functions,
  ) {
    final methods = functions
        .map((function) {
          final matchingMethods = WindowsMetadata.functions
              .where(
                (method) =>
                    method.name == function.originalName &&
                    method.module!.name.toLowerCase() == library,
              )
              .toFixedList();
          return matchingMethods.isNotEmpty ? matchingMethods.first : null;
        })
        .whereType<MethodDef>()
        .toFixedList();

    if (methods.isEmpty) {
      throw StateError('No methods found for the dynamic library "$library".');
    }

    return methods;
  }
}
