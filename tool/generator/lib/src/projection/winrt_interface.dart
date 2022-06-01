import 'package:winmd/winmd.dart';

import 'com_interface.dart';
import 'method.dart';
import 'utils.dart';
import 'winrt_get_property.dart';
import 'winrt_method.dart';
import 'winrt_set_property.dart';

class WinRTInterfaceProjection extends ComInterfaceProjection {
  WinRTInterfaceProjection(super.typeDef);

  @override
  String get inheritsFrom {
    if (typeDef.interfaces.isNotEmpty) {
      return lastComponent(typeDef.interfaces.first.name);
    } else if (!typeDef.name.endsWith('IUnknown')) {
      return 'IInspectable';
    } else {
      return 'IUnknown';
    }
  }

  static const ignoredWinRTTypes = <String>{
    // This is exposed as dart:core's DateTime
    'Windows.Foundation.DateTime',

    // These are exposed as int
    'Windows.Foundation.EventRegistrationToken',
    'Windows.Foundation.HResult',

    // This is exposed as dart:core's Duration
    'Windows.Foundation.TimeSpan',
  };

  @override
  String getImportForTypeDef(TypeDef typeDef) {
    if (typeDef.name.isEmpty ||
        this.typeDef.name == typeDef.name ||
        ignoredWinRTTypes.contains(typeDef.name)) {
      return '';
    }

    if (typeDef.isDelegate) {
      // TODO: Update this once we generate WinRT delegates in their respective
      // folders e.g. Windows.Foundation.AsyncActionCompletedHandler -> foundation/delegates.g.dart
      return '';
    } else if (typeDef.isEnum) {
      // TODO: Update this once we generate WinRT enums in their respective
      // folders e.g. Windows.Foundation.AsyncStatus -> foundation/enums.g.dart
      return '';
    } else if (
        // TODO: Is there a better way to check if the type is WinRT class?
        (typeDef.isClass && typeDef.parent!.name == 'System.Object') ||
            typeDef.isInterface) {
      return '${stripAnsiUnicodeSuffix(stripGenerics(lastComponent(typeDef.name))).toLowerCase()}.dart';
    } else
    // TODO: Is there a better way to check if the type is struct?
    if (typeDef.isClass && typeDef.parent!.name == 'System.ValueType') {
      // TODO: Update this once we generate WinRT structs in their respective
      // folders e.g. Windows.Foundation.Point -> foundation/structs.g.dart
      return 'structs.g.dart';
    } else {
      // TODO: Add support for these as they occur.
      print('Unable to get import for typeDef: $typeDef');
      return '';
    }
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
  String get rootHeader => "import '../com/iinspectable.dart';";

  @override
  String get extraHeaders => """
    import '../api_ms_win_core_winrt_string_l1_1_0.dart';
    import '../combase.dart';
    import '../exceptions.dart';
    import '../macros.dart';
    import '../utils.dart';
    import '../types.dart';
    import '../winrt_callbacks.dart';
    import '../winrt_helpers.dart';

    import '../extensions/hstring_array.dart';
  """;

  @override
  String get shortName => stripGenerics(lastComponent(typeDef.name));

  @override
  String toString() {
    final extendsClause =
        inheritsFrom.isEmpty ? 'extends IInspectable' : 'extends $inheritsFrom';

    return '''
      $header
      $extraHeaders
      $importHeader
      $rootHeader
      $guidConstants

      /// {@category Interface}
      /// {@category $category}
      class $shortName $extendsClause {
        // vtable begins at $vtableStart, is ${methodProjections.length} entries long.
        $shortName(super.ptr);

        ${methodProjections.map((p) => p.toString()).join('\n')}
      }
    ''';
  }
}
