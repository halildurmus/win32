import 'package:winmd/windows_metadata.dart';
import 'package:winmd/winmd.dart';

void main() async {
  // Load Win32 metadata from the "Microsoft.Windows.SDK.Win32Metadata" NuGet
  // package. If the package is not already downloaded, it will be automatically
  // downloaded and cached in the local storage directory. To customize the
  // cache directory, provide a "LocalStorageManager" to the constructor.
  final metadataLoader = WindowsMetadataLoader();
  // By default, the latest available version is loaded. To specify a particular
  // version, pass it as an argument (e.g., version: '63.0.31-preview').
  final index = await metadataLoader.loadWin32Metadata();

  // Optional: Use MetadataLookup for efficient type resolution by name.
  // This is especially helpful when the namespace of the target type is
  // unknown.
  final metadata = MetadataLookup(index);

  // Lookup a Win32 constant (e.g., E_FAIL) and print its type and value.
  final constant = metadata.findConstantByName('E_FAIL');
  print('Win32 constant "${constant.name}":');
  print('  Type: ${constant.signature.type}');
  print('  Value: ${constant.constant?.value}');
  print('');

  // Lookup a Win32 function (e.g., MessageBoxW) and display its signature.
  final function = metadata.findFunctionByName('MessageBoxW');
  print('Win32 function "${function.name}":');
  final MethodSignature(:returnType, :types) = function.signature();
  print('  Return type: $returnType');

  final parameters = function.params.toList();
  for (final (i, type) in types.indexed) {
    final parameter = parameters[i + 1]; // skip return value
    print('  Parameter #${i + 1}:');
    print('    Type: $type');
    print('    Name: ${parameter.name}');
  }
  print('');

  // Lookup a COM interface (e.g., INetwork) and list its method names.
  final type = metadata.findSingleTypeByName('INetwork');
  print('COM interface "${type.name}" exposes the following methods:');
  for (final method in type.methods) {
    print('  ${method.name}');
  }
}
