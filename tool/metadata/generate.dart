import '../manual_gen/win32api.dart';
import '../manual_gen/win32struct.dart';
import 'generate_win32_functions.dart';
import 'generate_win32_structs.dart';

// Not used yet.
void main() {
  final structsToGenerate = loadStructsFromJson();
  generateStructs(structsToGenerate);

  final functionsToGenerate = loadFunctionsFromJson();
  generateFunctions(functionsToGenerate);
}
