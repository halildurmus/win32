import '../inputs/functions.dart';
import '../inputs/structs.dart';

import '../utils/generate_struct_sizes_cpp.dart';
import 'generate_com_apis.dart';
import 'generate_win32_functions.dart';
import 'generate_win32_structs.dart';
import 'generate_win32_tests.dart';

void main() {
  generateStructSizeAnalyzer();

  generateStructs(structsToGenerate);
  generateStructSizeTests();

  final functionsToGenerate = loadFunctionsFromJson();
  generateFunctions(functionsToGenerate);
  generateFunctionTests(functionsToGenerate);

  generateComApis();
}
