import 'package:winmd/winmd.dart';

import 'utils.dart';
import 'winrt_interface.dart';

class WinRTClassProjection extends WinRTInterfaceProjection {
  WinRTClassProjection(super.typeDef);

  @override
  String get inheritsFrom =>
      typeDef.interfaces.map((i) => i.name.split('.').last).join(', ');

  String get interfaceMappers {
    final buffer = StringBuffer();
    for (final interface in typeDef.interfaces) {
      final interfaceName = lastComponent(interface.name);
      buffer.writeln('  // $interfaceName methods');

      // Write out the private field identifier for the interface
      final fieldIdentifier = '_i${interfaceName.substring(1)}';
      final iid = 'IID_$interfaceName';
      buffer.writeln(
          'late final $fieldIdentifier = $interfaceName(toInterface($iid));');

      final projection = WinRTInterfaceProjection(interface);
      for (final method in projection.methodProjections) {
        buffer.writeln('\n@override');

        // e.g. `int get Second` or `void AddHours(int hours)`
        final declaration = method.toString().split('{').first;
        buffer.writeln('$declaration => $fieldIdentifier.${method.shortForm};');
      }
    }
    return buffer.toString();
  }

  @override
  String get importHeader {
    // TODO: should unify format -- FQDN
    final imports = {
      ...interfaceImport,
      ...factoryInterfaces.map((i) => '${lastComponent(i).toLowerCase()}.dart'),
      ...importsForClass()
    }..removeWhere((item) => item == 'iinspectable.dart');
    return imports.map((import) => "import '$import';").join('\n');
  }

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
        // TODO: move this into the parameters class
        final paramIdentifiers =
            method.parameters.map((e) => e.name).join(', ');
        buffer.writeln('''
          static $shortName ${method.name}(${method.methodParams}) {
            final factory = $interfaceName(
              CreateActivationFactory(_className, IID_$interfaceName));
            final result = factory.${method.name}($paramIdentifiers);
            return $shortName.fromPointer(result);
          }
        ''');
      }
    }
    return buffer.toString();
  }

  // TODO: Needs to vary depending on static vs. factory vs. interface
  @override
  String toString() {
    return '''
      $header
      $extraHeaders
      $importHeader
      $rootHeader
      $guidConstants

      /// {@category Interface}
      /// {@category $category}
      class $shortName extends IInspectable implements $inheritsFrom {
        Calendar({Allocator allocator = calloc})
            : super(ActivateClass(_className, allocator: allocator));
        Calendar.fromPointer(super.ptr);

        static const _className = 'Windows.Globalization.Calendar';

        $factoryMappers
        $interfaceMappers
      }
    ''';
  }
}
