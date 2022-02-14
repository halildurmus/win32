import '../manual_gen/win32api.dart';
import '../manual_gen/win32struct.dart';

import 'generate_win32_functions.dart';
import 'generate_win32_structs.dart';
import 'generate_win32_tests.dart';

void main() {
  final structsToGenerate = loadStructsFromJson();
  generateStructs(structsToGenerate);
  generateStructSizeTests();

  final functionsToGenerate = loadFunctionsFromJson();
  generateFunctions(functionsToGenerate);
  generateFunctionTests(functionsToGenerate);
}
