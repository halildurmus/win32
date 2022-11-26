import 'package:winmd/winmd.dart';

import '../../../generator.dart';

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
            final activationFactory =
                CreateActivationFactory(_className, IID_$shortFactoryInterfaceName);

            try {
              return $shortFactoryInterfaceName.fromRawPointer
                  (activationFactory).${method.shortForm};
            } finally {
              free(activationFactory);
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
