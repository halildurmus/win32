import 'package:winmd/winmd.dart';

import 'version.dart';

String v2ParentImport(List<TypeDef> parentInterfaces) {
  const v2StandardImports = '''
    import '../callbacks.dart';
    import '../combase.dart';
    import '../constants.dart';
    import '../exceptions.dart';
    import '../guid.dart';
    import '../macros.dart';
    import '../ole32.dart';
    import '../structs.dart';
    import '../structs.g.dart';
    import '../utils.dart';
''';

  if (parentInterfaces.isNotEmpty) {
    final interfaceName = parentInterfaces.first.name.split('.').last;
    if (interfaceName.isNotEmpty) {
      return "$v2StandardImports\nimport '$interfaceName.dart';";
    }
  }
  return v2StandardImports;
}

String versionSpecificImports(String pathToSrc, String importHeader,
        List<TypeDef> parentInterfaces) =>
    win32Version == 2
        ? v2ParentImport(parentInterfaces)
        : '''
    import '${pathToSrc}combase.dart';
    import '${pathToSrc}constants.dart';
    import '${pathToSrc}exceptions.dart';
    import '${pathToSrc}guid.dart';
    import '${pathToSrc}macros.dart';
    import '${pathToSrc}ole32.dart';
    import '${pathToSrc}utils.dart';

    $importHeader''';
