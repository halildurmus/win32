import 'dart:io';

import 'package:winmd/winmd.dart';

import '../../shared/exclusions.dart';
import '../com_interface.dart';
import '../method.dart';
import '../utils.dart';
import 'winrt_get_property.dart';
import 'winrt_method.dart';
import 'winrt_set_property.dart';

class WinRTInterfaceProjection extends ComInterfaceProjection {
  WinRTInterfaceProjection(super.typeDef);

  @override
  String get inheritsFrom => implementsInterfaces
      .map((i) => lastComponent(i.name))
      .toList()
      .join(', ');

  String get relativePathToSrcDir => relativePathToSrcDirectory(File(
      '../../lib/src/winrt/${folderFromWinRTType(typeDef.name)}/$shortName.dart'));

  /// The WinRT types to ignore when generating the imports.
  static const ignoredWindowsRuntimeTypes = <String>{
    // This is exposed as dart:core's DateTime
    'Windows.Foundation.DateTime',

    // These are exposed as int
    'Windows.Foundation.EventRegistrationToken',
    'Windows.Foundation.HResult',

    // This is exposed as dart:core's Duration
    'Windows.Foundation.TimeSpan',

    ...excludedWindowsRuntimeInterfaces,
  };

  @override
  String getImportForTypeDef(TypeDef typeDef) {
    if (typeDef.name.isEmpty ||
        this.typeDef.name == typeDef.name ||
        ignoredWindowsRuntimeTypes.contains(typeDef.name)) {
      return '';
    }

    if (typeDef.isDelegate) {
      // TODO: Update this once we generate WinRT delegates in their respective
      // folders e.g. Windows.Foundation.AsyncActionCompletedHandler -> foundation/delegates.g.dart
      return '';
    } else if (typeDef.isEnum) {
      return '${relativePathToSrcDir}winrt/${folderFromWinRTType(typeDef.name)}/enums.g.dart';
    } else if (typeDef.isClass || typeDef.isInterface) {
      return '${relativePathToSrcDir}winrt/${filePathFromWinRTType(typeDef.name)}';
    } else if (typeDef.isStruct) {
      return '${relativePathToSrcDir}winrt/${folderFromWinRTType(typeDef.name)}/structs.g.dart';
    } else {
      // TODO: Add support for these as they occur.
      print('Unable to get import for typeDef: $typeDef');
      return '';
    }
  }

  @override
  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) {
    if (typeIdentifier.name == 'System.Guid') {
      return '${relativePathToSrcDir}guid.dart';
    }

    if (typeIdentifier.name.startsWith('Windows')) {
      return getImportForTypeDef(typeIdentifier.type!);
    }

    return null;
  }

  @override
  List<String> get interfaceImport {
    if (typeDef.interfaces.isEmpty) {
      // Inherits from IInspectable, which is a traditional COM type.
      return ['iinspectable.dart'];
    } else {
      return typeDef.interfaces.map(getImportForTypeDef).toList();
    }
  }

  @override
  String get importHeader {
    final imports = {...interfaceImport, ...importsForClass()}
      ..removeWhere((item) => item == 'iinspectable.dart' || item.isEmpty);

    final containsIReferenceImport =
        imports.where((i) => i.endsWith('ireference.dart')).isNotEmpty;
    if (containsIReferenceImport) {
      imports.add(
          '${relativePathToSrcDir}winrt/internal/ipropertyvalue_helpers.dart');
    }

    return imports.map((import) => "import '$import';").join('\n');
  }

  List<MethodProjection>? _methodProjections;

  @override
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

  @override
  String get category => 'winrt';

  List<MethodProjection> _cacheMethodProjections() {
    final projection = <MethodProjection>[];
    var vtableOffset = vtableStart;
    for (final method in typeDef.methods) {
      if (method.isGetProperty) {
        final getPropertyProjection =
            WinRTGetPropertyProjection(method, vtableOffset++);
        projection.add(getPropertyProjection);
      } else if (method.isSetProperty) {
        final setPropertyProjection =
            WinRTSetPropertyProjection(method, vtableOffset++);
        projection.add(setPropertyProjection);
      } else {
        final methodProjection = WinRTMethodProjection(method, vtableOffset++);
        projection.add(methodProjection);
      }
    }
    return projection;
  }

  // WinRT interfaces don't inherit in metadata (e.g. IAsyncInfo has no
  // parent), but all WinRT interfaces have a base type of IInspectable as far
  // as the COM vtable is concerned. They contain the functions of
  // IInspectable (as well as IUnknown, from which IInspectable itself
  // inherits).
  //
  // For more information, see the Interfaces section of the documentation here:
  // https://docs.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system
  @override
  int cacheVtableStart(TypeDef? type) => 6;

  @override
  String get rootHeader =>
      "import '${relativePathToSrcDir}com/iinspectable.dart';";

  @override
  String get extraHeaders => """
    import '${relativePathToSrcDir}api_ms_win_core_winrt_string_l1_1_0.dart';
    import '${relativePathToSrcDir}combase.dart';
    import '${relativePathToSrcDir}exceptions.dart';
    import '${relativePathToSrcDir}macros.dart';
    import '${relativePathToSrcDir}utils.dart';
    import '${relativePathToSrcDir}types.dart';
    import '${relativePathToSrcDir}winrt_callbacks.dart';
    import '${relativePathToSrcDir}winrt_helpers.dart';

    import '${relativePathToSrcDir}winrt/internal/hstring_array.dart';
  """;

  @override
  String get shortName => stripGenerics(lastComponent(typeDef.name));

  String get classDeclaration => 'class $shortName extends IInspectable'
      '${inheritsFrom.isNotEmpty ? ' implements $inheritsFrom {' : ' {'}';

  @override
  String get fromCOMObjectHelper => '''
  factory $shortName.from(IInspectable interface) =>
      $shortName.fromRawPointer(interface.toInterface(IID_$shortName));
  ''';

  List<TypeDef> get implementsInterfaces => typeDef.interfaces
    ..removeWhere((interface) =>
        excludedWindowsRuntimeInterfaces.contains(interface.name))
    // Generic collections' typeDef returns an empty name and that breaks lots
    // of things. We need to ignore them for now
    ..removeWhere((interface) => interface.name.isEmpty);

  String get implementsMappers {
    final buffer = StringBuffer();
    for (final interface in implementsInterfaces) {
      final interfaceName = lastComponent(interface.name);
      buffer.writeln('  // $interfaceName methods');

      // Write out the private field identifier for the interface
      final fieldIdentifier = '_i${interfaceName.substring(1)}';
      buffer
          .writeln('late final $fieldIdentifier = $interfaceName.from(this);');

      final projection = WinRTInterfaceProjection(interface);
      for (final method in projection.methodProjections) {
        // e.g. `int get Second` or `void AddHours(int hours)`
        final declaration = method.shortDeclaration;
        final overrideAnnotation =
            declaration.contains('@override') ? '\n' : '\n@override';
        buffer
          ..writeln(overrideAnnotation)
          ..writeln('$declaration => $fieldIdentifier.${method.shortForm};');
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
      $guidConstants

      /// {@category Interface}
      /// {@category $category}
      $classDeclaration
        // vtable begins at $vtableStart, is ${methodProjections.length} entries long.
        $shortName.fromRawPointer(super.ptr);

        $fromCOMObjectHelper

        ${methodProjections.map((p) => p.toString()).join('\n')}

        $implementsMappers
      }
    ''';
  }
}
