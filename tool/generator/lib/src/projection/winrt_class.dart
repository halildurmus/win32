import 'package:winmd/winmd.dart';

import 'utils.dart';
import 'winrt_interface.dart';

class WinRTClassProjection extends WinRTInterfaceProjection {
  WinRTClassProjection(super.typeDef);

  @override
  String get importHeader {
    // TODO: should unify format -- FQDN
    final imports = {
      ...interfaceImport,
      ...factoryInterfaces.map((i) => '${lastComponent(i).toLowerCase()}.dart'),
      ...staticInterfaces.map((i) => '${lastComponent(i).toLowerCase()}.dart'),
      ...importsForClass()
    }..removeWhere((item) => item == 'iinspectable.dart' || item.isEmpty);
    return imports.map((import) => "import '$import';").join('\n');
  }

  bool get hasDefaultConstructor => typeDef.customAttributes
      .where((element) => element.name.endsWith('ActivatableAttribute'))
      .where((element) => element.parameters.length == 2)
      .isNotEmpty;

  String get defaultConstructor => hasDefaultConstructor
      ? '''
      $shortName({Allocator allocator = calloc})
          : super(ActivateClass(_className, allocator: allocator));'''
      : '';

  String get classNameDeclaration => (hasDefaultConstructor ||
          factoryMappers.isNotEmpty ||
          staticMappers.isNotEmpty)
      ? "static const _className = '${typeDef.name}';"
      : '';

  List<String> get factoryInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('ActivatableAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..sort();

  String get factoryMappers {
    final buffer = StringBuffer();

    for (final factoryInterface in factoryInterfaces) {
      final interfaceName = lastComponent(factoryInterface);
      buffer.writeln('  // $interfaceName methods');
      final factoryTypeDef = MetadataStore.getMetadataForType(factoryInterface);
      if (factoryTypeDef == null) {
        throw Exception('Factory typedef $factoryInterface missing.');
      }

      final interfaceProjection = WinRTInterfaceProjection(factoryTypeDef);
      for (final method in interfaceProjection.methodProjections) {
        buffer.writeln('''
          static $shortName ${method.name}(${method.methodParams}) {
            final activationFactory = CreateActivationFactory(_className, IID_$interfaceName);

            try {
              final result = $interfaceName.from(activationFactory).${method.shortForm};
              return $shortName.from(result);
            } finally {
              free(activationFactory);
            }
          }
        ''');
      }
    }
    return buffer.toString();
  }

  List<String> get staticInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('StaticAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..sort();

  String get staticMappers {
    final buffer = StringBuffer();

    for (final staticInterface in staticInterfaces) {
      final interfaceName = lastComponent(staticInterface);
      buffer.writeln('  // $interfaceName methods');
      final staticTypeDef = MetadataStore.getMetadataForType(staticInterface);
      if (staticTypeDef == null) {
        throw Exception('Static typedef $staticInterface missing.');
      }

      final interfaceProjection = WinRTInterfaceProjection(staticTypeDef);
      for (final methodProjection in interfaceProjection.methodProjections) {
        final declaration = methodProjection.shortDeclaration;
        final statement =
            '$interfaceName.from(activationFactory).${methodProjection.shortForm};';
        final returnStatement = methodProjection.method.isSetProperty
            ? statement
            : 'return $statement';
        buffer.writeln('''
          static $declaration {
            final activationFactory = CreateActivationFactory(_className, IID_$interfaceName);

            try {
              $returnStatement
            } finally {
              free(activationFactory);
            }
          }
        ''');
      }
    }
    return buffer.toString();
  }

  // Clone the list, otherwise isStringable will give unpredictable results.
  @override
  List<TypeDef> get implementsInterfaces => [...typeDef.interfaces]
    ..removeWhere(
        (interface) => interface.name == 'Windows.Foundation.IStringable')
    // Generic collections' typeDef returns an empty name and that breaks lots
    // of things. We need to ignore them for now
    ..removeWhere((interface) => interface.name.isEmpty);

  bool get isStringable => typeDef.interfaces
      .map((i) => i.name)
      .contains('Windows.Foundation.IStringable');

  String get stringableMappers => isStringable
      ? '''
    // IStringable methods
    late final _iStringable = IStringable.from(toInterface(IID_IStringable));

    @override
    String toString() => _iStringable.ToString();
  '''
      : '';

  @override
  String toString() {
    return '''
      $header
      $extraHeaders
      $importHeader
      $rootHeader

      /// {@category Class}
      /// {@category $category}
      $classDeclaration
        $defaultConstructor
        $shortName.from(super.ptr);

        $classNameDeclaration

        $factoryMappers
        $staticMappers
        $implementsMappers
        $stringableMappers
      }
    ''';
  }
}
