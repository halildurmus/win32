import 'package:winmd/winmd.dart';

import '../../shared/exclusions.dart';
import '../utils.dart';
import 'winrt_interface.dart';

class WinRTClassProjection extends WinRTInterfaceProjection {
  WinRTClassProjection(super.typeDef);

  @override
  Set<String> get coreImports => {
        // TODO: should unify format -- FQDN
        ...interfaceImport,
        ...factoryInterfaces.map(
            (interface) => '${lastComponent(interface).toLowerCase()}.dart'),
        ...staticInterfaces.map(
            (interface) => '${lastComponent(interface).toLowerCase()}.dart'),
        ...importsForClass()
      }..removeWhere(
          (import) => import == 'iinspectable.dart' || import.isEmpty);

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
          static $shortName ${method.camelCasedName}(${method.methodParams}) {
            final activationFactory = CreateActivationFactory(_className, IID_$interfaceName);

            try {
              return $interfaceName.fromRawPointer(activationFactory).${method.shortForm};
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
    ..removeWhere(excludedWindowsRuntimeStaticInterfaces.contains)
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
            '$interfaceName.fromRawPointer(activationFactory).${methodProjection.shortForm};';
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
        $shortName.fromRawPointer(super.ptr);

        $classNameDeclaration

        $factoryMappers
        $staticMappers
        $implementsMappers
      }
    ''';
  }
}
