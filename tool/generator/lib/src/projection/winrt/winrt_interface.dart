import 'package:winmd/winmd.dart';

import '../../shared/exclusions.dart';
import '../com_interface.dart';
import '../method.dart';
import '../utils.dart';
import 'winrt_get_property.dart';
import 'winrt_implements_mapper.dart';
import 'winrt_method.dart';
import 'winrt_set_property.dart';

class WinRTInterfaceProjection extends ComInterfaceProjection {
  WinRTInterfaceProjection(super.typeDef);

  @override
  String get inheritsFrom => implementsInterfaces
      .map((interface) =>
          interface.typeSpec?.baseType == BaseType.genericTypeModifier
              ? parseGenericTypeIdentifierName(interface.typeSpec!)
              : lastComponent(interface.name))
      .toList()
      .join(', ');

  /// Returns the path to the folder where the current interface is located
  /// (e.g. `winrt/storage/pickers` for `Windows.Storage.Pickers.IFileOpenPicker`).
  String get currentFolderPath => 'winrt/${folderFromWinRTType(typeDef.name)}';

  /// Converts [path] to an equivalent relative path from the [currentFolderPath].
  String relativePathTo(String path) =>
      relativePath(path, start: currentFolderPath);

  /// The WinRT types to ignore when generating the imports.
  static const ignoredWindowsRuntimeTypes = <String>{
    // This is exposed as dart:core's DateTime
    'Windows.Foundation.DateTime',

    // These are exposed as int
    'Windows.Foundation.EventRegistrationToken',
    'Windows.Foundation.HResult',

    // This is exposed as dart:core's Duration
    'Windows.Foundation.TimeSpan',

    ...excludedWindowsRuntimeInterfacesInInherits,
  };

  @override
  String getImportForTypeDef(TypeDef typeDef) {
    final typeDefName =
        typeDef.typeSpec?.baseType == BaseType.genericTypeModifier
            ? typeDef.typeSpec!.type!.name
            : typeDef.name;

    if (this.typeDef.name == typeDefName ||
        ignoredWindowsRuntimeTypes.contains(typeDefName)) {
      return '';
    }

    if (typeDef.isDelegate) {
      // TODO: Update this once we generate WinRT delegates in their respective
      // folders e.g. Windows.Foundation.AsyncActionCompletedHandler -> foundation/delegates.g.dart
      return '';
    } else if (typeDef.isEnum) {
      return relativePathTo(
          'winrt/${folderFromWinRTType(typeDefName)}/enums.g.dart');
    } else if (typeDef.isClass || typeDef.isInterface) {
      return relativePathTo('winrt/${filePathFromWinRTType(typeDefName)}');
    } else if (typeDef.isStruct) {
      return relativePathTo(
          'winrt/${folderFromWinRTType(typeDefName)}/structs.g.dart');
    } else {
      // TODO: Add support for these as they occur.
      print('Unable to get import for typeDef: $typeDef');
      return '';
    }
  }

  @override
  String? getImportForTypeIdentifier(TypeIdentifier typeIdentifier) {
    if (typeIdentifier.name == 'System.Guid') {
      return relativePathTo('guid.dart');
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
      final importList = <String>[];

      for (final interface in typeDef.interfaces) {
        importList.add(getImportForTypeDef(interface));
        // Keep unwrapping until there are no types left.
        var refType = interface.typeSpec;
        while (refType?.typeArg != null) {
          refType = refType?.typeArg;
          if (refType != null) {
            final import = getImportForTypeIdentifier(refType);
            if (import != null) importList.add(import);
          }
        }
      }

      return importList;
    }
  }

  Set<String> get coreImports => {...interfaceImport, ...importsForClass()}
    ..removeWhere((import) => import == 'iinspectable.dart' || import.isEmpty);

  @override
  String get importHeader {
    final imports = {...coreImports};

    // IPropertySet and IWwwFormUrlDecoderRuntimeClass interfaces are unusual in
    // that they don't define any members for IIterable despite inheriting from
    // them. The IIterator import is manually added here as it is necessary as
    // implements mappers are generated for them.
    if (['IPropertySet', 'IWwwFormUrlDecoderRuntimeClass']
        .contains(shortName)) {
      imports
          .add(relativePathTo('winrt/foundation/collections/iiterator.dart'));
    }

    // The return types of methods in the IPropertyValueStatics are specified
    // as 'object' in WinMD. However, these methods actually return the
    // IPropertyValue interface (except for the CreateEmpty() and
    // CreateInspectable() methods, which return Pointer<COMObject>). Therefore,
    // the IProperyValue import is manually added here.
    if (['IPropertyValueStatics', 'PropertyValue'].contains(shortName)) {
      imports.add('ipropertyvalue.dart');
    }

    final hasIReferenceImport =
        imports.any((import) => import.endsWith('ireference.dart'));
    if (hasIReferenceImport) {
      imports.add(relativePathTo('winrt/internal/ipropertyvalue_helpers.dart'));
    }

    final useImportAliasForWinRTUri =
        !['IUriRuntimeClass', 'IUriRuntimeClassFactory'].contains(shortName);

    return imports.map((import) {
      if (useImportAliasForWinRTUri && import.endsWith('/uri.dart')) {
        // Use import alias to avoid conflict with the dart:core's Uri.
        return "import '$import' as winrt_uri;";
      }

      return "import '$import';";
    }).join('\n');
  }

  List<MethodProjection>? _methodProjections;

  @override
  List<MethodProjection> get methodProjections =>
      _methodProjections ??= _cacheMethodProjections();

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

  @override
  String get category => 'winrt';

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
      "import '${relativePathTo('com/iinspectable.dart')}';";

  @override
  String get extraHeaders => """
    import '${relativePathTo('combase.dart')}';
    import '${relativePathTo('exceptions.dart')}';
    import '${relativePathTo('macros.dart')}';
    import '${relativePathTo('utils.dart')}';
    import '${relativePathTo('types.dart')}';
    import '${relativePathTo('win32/api_ms_win_core_winrt_string_l1_1_0.g.dart')}';
    import '${relativePathTo('winrt_callbacks.dart')}';
    import '${relativePathTo('winrt_helpers.dart')}';

    import '${relativePathTo('winrt/internal/hstring_array.dart')}';
""";

  @override
  String get shortName => stripGenerics(lastComponent(typeDef.name));

  String get classDeclaration => 'class $shortName extends IInspectable'
      '${inheritsFrom.isNotEmpty ? ' implements $inheritsFrom {' : ' {'}';

  @override
  String get fromCOMObjectHelper => '''
  factory $shortName.from(IInspectable interface) =>
      $shortName.fromRawPointer(interface.toInterface(IID_$shortName));''';

  List<TypeDef> get implementsInterfaces => typeDef.interfaces
    ..removeWhere((interface) {
      final interfaceName =
          interface.typeSpec?.baseType == BaseType.genericTypeModifier
              ? interface.typeSpec!.type!.name
              : interface.name;
      return excludedWindowsRuntimeInterfacesInInherits.contains(interfaceName);
    });

  List<WinRTImplementsMapperProjection>? _implementsMappers;

  List<WinRTImplementsMapperProjection> get implementsMappers =>
      _implementsMappers ??= _cacheImplementsMappers();

  List<WinRTImplementsMapperProjection> _cacheImplementsMappers() =>
      implementsInterfaces
          .where((interface) {
            final interfaceName =
                interface.typeSpec?.baseType == BaseType.genericTypeModifier
                    ? interface.typeSpec!.type!.name
                    : interface.name;
            return !excludedWindowsRuntimeInterfacesInImplementsMappers
                .contains(interfaceName);
          })
          .map((interface) =>
              WinRTImplementsMapperProjection(typeDef, interface))
          .toList();

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

        ${implementsMappers.join('\n')}
      }
''';
  }
}
