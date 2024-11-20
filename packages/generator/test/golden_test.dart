import 'dart:collection';
import 'dart:io';

import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:generator/src/golden_type.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart' as winmd;

/// Compares the contents of a [projection] with a golden file specified by the
/// [fileName].
///
/// If the golden file does not exist, then it is created with the contents of
/// the [projection].
void compareGolden(String identifier, String fileName, Projection projection) {
  final projectionString = projection.toString();
  File(p.join('test', 'golden', '$fileName.comparison'))
    ..createSync(recursive: true)
    ..writeAsStringSync(projectionString);
  final goldenFile = File(p.join('test', 'golden', '$fileName.golden'));
  if (!goldenFile.existsSync()) {
    // If the golden file does not exist, then create it with the contents of
    // the projection.
    goldenFile
      ..createSync()
      ..writeAsStringSync('$identifier|\n$projectionString');
  }

  var golden = goldenFile.readAsStringSync();
  if (golden.contains('|')) {
    // Skip the first line containing the identifier (e.g., `NtQueryObject|`).
    golden = golden.substring(golden.indexOf('|') + '\n'.length + 1);
  } else {
    throw StateError(
      'The first line of the golden file does not match the expected format.\n'
      'Expected format: Identifier followed by a `|` character.\n'
      'Example: NtQueryObject|',
    );
  }

  check(
    projectionString,
    because: '\nTo regenerate the goldens, run: dart tools/update_goldens.dart',
  ).equals(golden);
}

@isTest
void testCallbackGolden(String callbackName) {
  test(callbackName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(callbackName);
    final fileName = typeDef.nameWithoutEncoding.safeFilename;
    final projection = CallbackProjection(typeDef);
    compareGolden(callbackName, '${GoldenType.callback}/$fileName', projection);
  });
}

@isTest
void testConstantGolden(String constantName) {
  test(constantName, () {
    final constant = WindowsMetadata.findConstantByName(constantName);
    final fileName = constant.name.safeIdentifier.safeFilename;
    final projection = ConstantProjection(constant);
    compareGolden(constantName, '${GoldenType.constant}/$fileName', projection);
  });
}

@isTest
void testDynamicLibraryGolden(String libraryName, {bool isWdk = false}) {
  test(libraryName, () {
    final fileName = libraryName.split('.').first.safeFilename;
    final methods = WindowsMetadata.index.methodsFromLibrary(
      libraryName,
      functionsToGenerate.values.toFixedList(),
    );
    final projection = DynamicLibraryProjection(methods[0].module!, methods);
    compareGolden(
      libraryName,
      '${GoldenType.dynamicLibrary}/$fileName',
      projection,
    );
  });
}

@isTest
void testDynamicLibraryTestGolden(String libraryName, {bool isWdk = false}) {
  test(libraryName, () {
    final fileName = libraryName.split('.').first;
    final methods = WindowsMetadata.index.methodsFromLibrary(
      libraryName,
      functionsToGenerate.values.toFixedList(),
    );
    final projection = DynamicLibraryTestProjection(
      methods[0].module!,
      methods,
      functionsToGenerate.values.toFixedList(),
    );
    compareGolden(
      libraryName,
      '${GoldenType.dynamicLibraryTest}/$fileName.g_test.dart',
      projection,
    );
  });
}

@isTest
void testEnumGolden(String enumName) {
  test(enumName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(enumName);
    final fileName = typeDef.nameWithoutEncoding.safeFilename;
    final projection = EnumProjection(typeDef);
    compareGolden(enumName, '${GoldenType.enum_}/$fileName', projection);
  });
}

@isTest
void testFunctionGolden(String functionName) {
  test(functionName, () {
    final function = WindowsMetadata.findFunctionByName(functionName);
    final fileName = function.nameWithoutEncoding.safeFilename;
    final projection = FunctionProjection(function);
    compareGolden(functionName, '${GoldenType.function}/$fileName', projection);
  });
}

@isTest
void testInterfaceGolden(String interfaceName) {
  test(interfaceName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(interfaceName);
    final fileName = typeDef.nameWithoutEncoding.safeFilename;
    final projection = ComInterfaceProjection(typeDef);
    compareGolden(
      interfaceName,
      '${GoldenType.interface}/$fileName',
      projection,
    );
  });
}

@isTest
void testMethodGolden(String parent, String methodName) {
  test('$parent.$methodName', () {
    final typeDef = WindowsMetadata.findTypeDefByName(parent);
    final method = typeDef.findMethod(methodName);
    assert(
      !method.isGetProperty && !method.isSetProperty,
      'Method "$methodName" must not be a property.',
    );
    final fileName = method.nameWithoutEncoding.safeFilename;
    final projection = ComMethodProjection(method);
    compareGolden(
      '$parent.$methodName',
      '${GoldenType.method}/$fileName',
      projection,
    );
  });
}

@isTest
void testPropertyGolden(String parent, String propertyName) {
  test('$parent.$propertyName', () {
    final typeDef = WindowsMetadata.findTypeDefByName(parent);
    final method = typeDef.findMethod(propertyName);
    final projection = switch (method) {
      _ when method.canBeProjectedAsGetter => ComGetPropertyProjection(method),
      _ when method.canBeProjectedAsSetter => ComSetPropertyProjection(method),
      _ => throw ArgumentError(
        'Method "$propertyName" cannot be projected as a property.',
      ),
    };
    final fileName = projection.name.safeFilename;
    compareGolden(
      '$parent.$propertyName',
      '${GoldenType.property}/$fileName',
      projection,
    );
  });
}

@isTest
void testStructGolden(String structName) {
  test(structName, () {
    final typeDef = WindowsMetadata.findTypeDefByName(structName);
    final fileName = typeDef.nameWithoutEncoding.safeFilename;
    final projection = StructProjection(typeDef);
    compareGolden(structName, '${GoldenType.struct}/$fileName', projection);
  });
}

final SplayTreeMap<String, Win32Function> functionsToGenerate =
    loadFunctionsFromJson(r'data\win32_functions.json');

void main() {
  setUpAll(() async {
    await WindowsMetadata.load();
    saveFunctionsToJson(functionsToGenerate, r'data\win32_functions.json');
  });

  group('Golden testing', () {
    group('callback', () {
      testCallbackGolden('FONTENUMPROCW');

      testCallbackGolden('INIT_SECURITY_INTERFACE_W');

      testCallbackGolden('MONITORENUMPROC');

      testCallbackGolden('PROC');

      testCallbackGolden('WNDPROC');
    });

    group('constant', () {
      testConstantGolden('ALERTER_MAILSLOT');

      testConstantGolden('ALL_TRANSPORTS');

      testConstantGolden('CO_E_NOTINITIALIZED');

      testConstantGolden('DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2');

      testConstantGolden('E_NOINTERFACE');

      testConstantGolden('FALSE');

      testConstantGolden('FOLDERID_System');

      testConstantGolden('HKEY_LOCAL_MACHINE');

      testConstantGolden('HWND_TOP');

      testConstantGolden('IDC_ARROW');

      testConstantGolden('OCSP_BASIC_RESPONSE');

      testConstantGolden('PKEY_FileName');

      testConstantGolden('S_FALSE');

      testConstantGolden('S_OK');

      testConstantGolden('SECURITY_NT_AUTHORITY');

      testConstantGolden('Speech_Default_Weight');

      testConstantGolden('SPREG_USER_ROOT');

      testConstantGolden('SRWLOCK_INIT');

      testConstantGolden('STATUS_NOT_IMPLEMENTED');

      testConstantGolden('TRUE');

      testConstantGolden('UIA_ScrollPatternNoScroll');

      testConstantGolden('U8_LEAD3_T1_BITS');

      testConstantGolden('U8_LEAD4_T1_BITS');

      testConstantGolden('VARIANT_FALSE');

      testConstantGolden('VARIANT_TRUE');

      testConstantGolden('WM_CREATE');

      testConstantGolden('wszHOOK_ABOVE');
    });

    group('dynamic_library', () {
      testDynamicLibraryGolden('ole32.dll');
    });

    group('dynamic_library_test', () {
      testDynamicLibraryTestGolden('ole32.dll');
    });

    group('enum', () {
      testEnumGolden('APTTYPE');

      testEnumGolden('RO_INIT_TYPE');

      testEnumGolden('XINPUT_CAPABILITIES_FLAGS');

      testEnumGolden('WIN32_ERROR');
    });

    group('function', () {
      testFunctionGolden('CoCreateInstance');

      testFunctionGolden('CoCreateInstanceEx');

      testFunctionGolden('CoInitializeEx');

      testFunctionGolden('DMLCreateDevice');

      testFunctionGolden('EnumDisplayMonitors');

      testFunctionGolden('midiConnect');

      testFunctionGolden('NtQueryObject');

      testFunctionGolden('WindowsConcatString');
    });

    group('interface', () {
      testInterfaceGolden('IEnumNetworkConnections');

      testInterfaceGolden('IFileOpenDialog');

      testInterfaceGolden('IInspectable');

      testInterfaceGolden('INetwork');

      testInterfaceGolden('IUnknown');

      testInterfaceGolden('IWinHttpRequest');
    });

    group('method', () {
      testMethodGolden('IInspectable', 'GetRuntimeClassName');

      testMethodGolden('ISpellCheckerFactory', 'IsSupported');

      testMethodGolden('IUnknown', 'QueryInterface');
    });

    group('property', () {
      testPropertyGolden('INetwork', 'get_IsConnectedToInternet');

      testPropertyGolden('IWinHttpRequest', 'get_ResponseBody');

      testPropertyGolden('IWinHttpRequest', 'get_ResponseText');
    });

    group('struct', () {
      testStructGolden('BITMAPFILEHEADER');

      testStructGolden('DEVMODEW');

      testStructGolden('DHCP_ALL_OPTIONS');

      testStructGolden('DRIVER_EXTENSION');

      testStructGolden('HWND');

      testStructGolden('VARIANT');

      testStructGolden('WLAN_RAW_DATA_LIST');
    });
  });
}
