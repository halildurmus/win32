import '../inputs/functions.dart';
import '../inputs/structs.dart';

import '../utils/generate_struct_sizes_cpp.dart';

import 'generate_com_apis.dart';
import 'generate_win32_functions.dart';
import 'generate_win32_structs.dart';
import 'generate_win32_tests.dart';

void main() {
  final functionsToGenerate = loadFunctionsFromJson();

  print('Generating struct_sizes.cpp...');
  generateStructSizeAnalyzer();

  print('Generating structs...');
  generateStructs(structsToGenerate);

  print('Generating struct tests...');
  generateStructSizeTests();

  print('Generating FFI function bindings...');
  generateFunctions(functionsToGenerate);

  print('Generating FFI function tests...');
  generateFunctionTests(functionsToGenerate);

  print('Generating COM interfaces and tests...');
  generateComApis();
}
