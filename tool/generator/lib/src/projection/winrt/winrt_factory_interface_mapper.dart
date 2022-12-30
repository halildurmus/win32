import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'winrt_class.dart';
import 'winrt_interface.dart';

class WinRTFactoryInterfaceMapperProjection extends WinRTClassProjection {
  WinRTFactoryInterfaceMapperProjection(super.typeDef, this.interface);

  /// The fully qualified type name of the factory interface (e.g.
  /// `Windows.Globalization.ICalendarFactory`).
  final String interface;

  /// The shortened factory [interface] name (e.g. `ICalendarFactory`).
  String get shortFactoryInterfaceName => lastComponent(interface);

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final factoryTypeDef = MetadataStore.getMetadataForType(interface);
    if (factoryTypeDef == null) {
      throw Exception('Factory typedef $interface missing.');
    }

    final methods = <String>[];
    final interfaceProjection = WinRTInterfaceProjection(factoryTypeDef);

    for (final method in interfaceProjection.methodProjections) {
      methods.add('''
          static $shortName ${method.camelCasedName}(${method.methodParams}) {
            final activationFactoryPtr = CreateActivationFactory(
                _className, IID_$shortFactoryInterfaceName);
            final object =
                $shortFactoryInterfaceName.fromRawPointer(activationFactoryPtr);

            try {
              return object.${method.shortForm};
            } finally {
              object.release();
            }
          }''');
    }

    return methods;
  }

  @override
  String toString() => '''
  // $shortFactoryInterfaceName methods
  ${methods.join('\n')}
''';
}
