import 'package:winmd/winmd.dart';

import '../utils.dart';
import 'winrt_class.dart';
import 'winrt_interface.dart';

class WinRTStaticInterfaceMapperProjection extends WinRTClassProjection {
  WinRTStaticInterfaceMapperProjection(super.typeDef, this.interface);

  /// The fully qualified type name of the static interface (e.g.
  /// `Windows.Foundation.IPropertyValueStatics`).
  final String interface;

  /// The shortened static [interface] name (e.g. `IPropertyValueStatics`).
  String get shortStaticInterfaceName => lastComponent(interface);

  List<String>? _methods;

  List<String> get methods => _methods ??= _cacheMethods();

  List<String> _cacheMethods() {
    final staticTypeDef = MetadataStore.getMetadataForType(interface);
    if (staticTypeDef == null) {
      throw Exception('Static typedef $interface missing.');
    }

    final methods = <String>[];
    final interfaceProjection = WinRTInterfaceProjection(staticTypeDef);

    for (final methodProjection in interfaceProjection.methodProjections) {
      final statement = '''
        $shortStaticInterfaceName.fromRawPointer
            (activationFactory).${methodProjection.shortForm};''';
      final returnStatement = methodProjection.method.isSetProperty
          ? statement
          : 'return $statement';
      methods.add('''
          static ${methodProjection.shortDeclaration} {
            final activationFactory =
                CreateActivationFactory(_className, IID_$shortStaticInterfaceName);

            try {
              $returnStatement
            } finally {
              free(activationFactory);
            }
          }''');
    }

    return methods;
  }

  @override
  String toString() => '''
  // $shortStaticInterfaceName methods
  ${methods.join('\n')}
''';
}
