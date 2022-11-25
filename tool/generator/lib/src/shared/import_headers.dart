import 'package:winmd/winmd.dart';

import '../projection/utils.dart';

String versionSpecificImports(List<TypeDef> parentInterfaces) {
  final imports = <String>{
    '../callbacks.dart',
    '../combase.dart',
    '../constants.dart',
    '../exceptions.dart',
    '../guid.dart',
    '../macros.dart',
    '../structs.g.dart',
    '../utils.dart',
    '../variant.dart',
    '../win32/ole32.g.dart'
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
