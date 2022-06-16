import 'package:winmd/winmd.dart';

import '../projection/utils.dart';
import 'version.dart';

String v2ParentImport(List<TypeDef> parentInterfaces) {
  final imports = <String>{
    '../callbacks.dart',
    '../combase.dart',
    '../constants.dart',
    '../exceptions.dart',
    '../guid.dart',
    '../macros.dart',
    '../ole32.dart',
    '../structs.g.dart',
    '../utils.dart',
    '../variant.dart'
  };

  if (parentInterfaces.isNotEmpty) {
    final interfaceName =
        lastComponent(parentInterfaces.first.name).toLowerCase();
    if (interfaceName.isNotEmpty) {
      imports
        ..add('$interfaceName.dart')
        ..add('iunknown.dart');
    }
  }
  return imports.map((import) => "import '$import';").join('\n');
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
