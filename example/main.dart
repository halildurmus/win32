import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  // Load Win32 metadata from NuGet unless a local copy is available in the
  // cache. You can specify a custom cache directory by passing a
  // [LocalStorageManager] instance to the constructor.
  final metadataLoader = WindowsMetadataLoader();
  // By default, the latest version is loaded. You can specify a specific
  // version by passing it as an argument.
  final index = await metadataLoader.loadWin32Metadata();

  // Optional: Create a new instance of MetadataLookup with the loaded index to
  // enable efficient lookup of constants, functions, and types within the
  // metadata.
  final metadata = MetadataLookup(index);

  // -----------------------------------------------
  // Lookup a Win32 constant by name (e.g., E_FAIL)
  // -----------------------------------------------
  final constant = metadata.findConstantByName('E_FAIL');
  print('Win32 constant "${constant.name}":');
  print('  Type: ${constant.signature.type}');
  print('  Value: ${constant.constant?.value}');
  print('');

  // -------------------------------------------------------
  // Lookup a Win32 function by name (e.g., MessageBoxW)
  // and display its return type and parameters.
  // -------------------------------------------------------
  final function = metadata.findFunctionByName('MessageBoxW');
  print('Win32 function "${function.name}":');
  final MethodSignature(:returnType, :types) = function.signature();
  print('  Return type: $returnType');
  final parameters = function.params.toList();
  for (final (idx, type) in types.indexed) {
    final parameter = parameters[idx + 1];
    print('  Parameter #${idx + 1}:');
    print('    Type: $type');
    print('    Name: ${parameter.name}');
  }
  print('');

  // -------------------------------------------------------
  // Lookup a COM interface by name (e.g., INetwork)
  // and list its method names.
  // -------------------------------------------------------
  final type = metadata.findSingleTypeByName('INetwork');
  print('COM interface "${type.name}" has the following methods:');
  for (final method in type.methods) {
    print('  ${method.name}');
  }
}
