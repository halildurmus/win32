import '../../model/exclusions.dart';
import '../utils.dart';
import 'winrt_factory_interface_mapper.dart';
import 'winrt_interface.dart';
import 'winrt_static_interface_mapper.dart';

class WinRTClassProjection extends WinRTInterfaceProjection {
  WinRTClassProjection(super.typeDef, [super.comment]);

  @override
  Set<String> get interfaceImports => {
        ...super.interfaceImports,
        // TODO: should unify format -- FQDN
        ...factoryInterfaces.map(
            (interface) => '${lastComponent(interface).toLowerCase()}.dart'),
        ...staticInterfaces.map(
            (interface) => '${lastComponent(interface).toLowerCase()}.dart'),
      };

  bool get hasDefaultConstructor => typeDef.customAttributes
      .where((element) => element.name.endsWith('ActivatableAttribute'))
      .where((element) => element.parameters.length == 2)
      .isNotEmpty;

  String get defaultConstructor => hasDefaultConstructor
      ? '$shortName() : super(ActivateClass(_className));'
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

  List<WinRTFactoryInterfaceMapperProjection>? _factoryMappers;

  List<WinRTFactoryInterfaceMapperProjection> get factoryMappers =>
      _factoryMappers ??= _cacheFactoryMappers();

  List<WinRTFactoryInterfaceMapperProjection> _cacheFactoryMappers() =>
      factoryInterfaces
          .map((interface) =>
              WinRTFactoryInterfaceMapperProjection(typeDef, interface))
          .toList();

  List<String> get staticInterfaces => typeDef.customAttributes
      .where((element) => element.name.endsWith('StaticAttribute'))
      .where((element) => element.parameters.length == 3)
      .map((element) => element.parameters.first.value as String)
      .toList()
    ..removeWhere(excludedWindowsRuntimeStaticInterfaces.contains)
    ..sort();

  List<WinRTStaticInterfaceMapperProjection>? _staticMappers;

  List<WinRTStaticInterfaceMapperProjection> get staticMappers =>
      _staticMappers ??= _cacheStaticMappers();

  List<WinRTStaticInterfaceMapperProjection> _cacheStaticMappers() =>
      staticInterfaces
          .map((interface) =>
              WinRTStaticInterfaceMapperProjection(typeDef, interface))
          .toList();

  @override
  String get classType => 'Class';

  @override
  String toString() {
    return '''
      $header
      $importHeader

      $classPreamble
      $classDeclaration
        $defaultConstructor
        $shortName.fromRawPointer(super.ptr);

        $classNameDeclaration

        ${factoryMappers.join('\n')}
        ${staticMappers.join('\n')}
        ${implementsMappers.join('\n')}
      }
''';
  }
}
