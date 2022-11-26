import 'package:winmd/winmd.dart';

import 'com_interface.dart';
import 'utils.dart';

class ComClassProjection extends ComInterfaceProjection {
  final ComInterfaceProjection interface;

  ComClassProjection(super.typeDef, this.interface, [super.comment]);

  factory ComClassProjection.fromInterface(TypeDef interface) {
    final className = generateClassName(interface);
    final classTypeDef = interface.scope.findTypeDef(className);

    if (classTypeDef == null) {
      throw Exception('Missing a matching class for ${interface.name}.');
    }

    return ComClassProjection(classTypeDef, ComInterfaceProjection(interface));
  }

  /// Take a fully-qualified interface name (e.g.
  /// `Windows.Win32.UI.Shell.IShellLinkW`) and return the corresponding class
  /// name (e.g. `Windows.Win32.UI.Shell.ShellLink`).
  static String generateClassName(TypeDef interface) {
    final interfaceNameAsList = interface.name.split('.');

    // Strip off the 'I' from the last component
    final fullyQualifiedClassName =
        (interfaceNameAsList.sublist(0, interfaceNameAsList.length - 1)
              ..add(interfaceNameAsList.last.substring(1)))
            .join('.');

    // If class has a 'W' or 'A' suffix, erase it.
    return stripAnsiUnicodeSuffix(fullyQualifiedClassName);
  }

  @override
  String get classType => 'Class';

  @override
  String get guidConstants => '''
  /// @nodoc
  const CLSID_$shortName = '${typeDef.guid}';
  ''';

  @override
  String toString() => '''
    ${interface.toString()}
    $guidConstants

    $classPreamble
    class $shortName extends ${interface.shortName} {
      $shortName(super.ptr);

      factory $shortName.createInstance() => $shortName(
          COMObject.createFromID(CLSID_$shortName, IID_${interface.shortName}));
    }
''';
}
