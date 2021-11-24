import 'package:winmd/winmd.dart';

import 'interface.dart';
import 'utils.dart';

class ClassProjection extends InterfaceProjection {
  final InterfaceProjection interface;

  ClassProjection(TypeDef typeDef, this.interface) : super(typeDef);

  factory ClassProjection.fromInterface(TypeDef interface) {
    final className = generateClassName(interface);
    final classTypeDef = interface.scope.findTypeDef(className);

    if (classTypeDef == null) {
      throw Exception('Missing a matching class for ${interface.name}.');
    }

    return ClassProjection(classTypeDef, InterfaceProjection(interface));
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
  String get guidConstants => '''
  /// @nodoc
  const CLSID_$shortName = '${typeDef.guid}';
  ''';

  @override
  String toString() => '''
    ${interface.toString()}
    $guidConstants

    /// {@category com}
    class $shortName extends ${interface.shortName} {
      $shortName(Pointer<COMObject> ptr) : super(ptr);

      factory $shortName.createInstance() {
        final ptr = calloc<COMObject>();
        final clsid = calloc<GUID>()..ref.setGUID(CLSID_$shortName);
        final iid = calloc<GUID>()..ref.setGUID(IID_${interface.shortName});

        try {
          final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

          if (FAILED(hr)) throw WindowsException(hr);

          return $shortName(ptr);
        } finally {
          free(clsid);
          free(iid);
        }
      }
    }
''';
}
