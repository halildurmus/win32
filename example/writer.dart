import 'package:winmd/winmd.dart';
import 'package:winmd/writer.dart';

void main() {
  // Initialize an in-memory metadata writer.
  final writer = MetadataWriter(name: 'Windows.winmd')
    // Write a WinRT interface: "Windows.Example.IExample"
    ..writeTypeDef(
      namespace: 'Windows.Example',
      name: 'IExample',
      flags:
          TypeAttributes.public |
          TypeAttributes.interface |
          TypeAttributes.abstract |
          TypeAttributes.windowsRuntime,
    )
    // Write a method: Int32 Sum(Int32 a, Int32 b)
    ..writeMethodDef(
      name: 'Sum',
      flags:
          MethodAttributes.public |
          MethodAttributes.hideBySig |
          MethodAttributes.abstract |
          MethodAttributes.newSlot |
          MethodAttributes.virtual,
      signature: const MethodSignature(
        returnType: Int32Type(),
        types: [Int32Type(), Int32Type()],
      ),
    )
    ..writeParam(name: 'a', sequence: 1, flags: ParamAttributes.in$)
    ..writeParam(name: 'b', sequence: 2, flags: ParamAttributes.in$);

  // Serialize the metadata into a Uint8List.
  final bytes = writer.toBytes();

  // Load the serialized metadata for introspection.
  final reader = MetadataReader.read(bytes);
  final index = MetadataIndex.fromReader(reader);

  // Retrieve the "IExample" interface type definition.
  final typeDef = index.findSingleType('Windows.Example', 'IExample');
  print('Interface "${typeDef.name}" defines the following methods:');

  // Display each method with its return type and parameters.
  for (final method in typeDef.methods) {
    final MethodSignature(:returnType, :types) = method.signature();
    final params = method.params.toList();
    final paramList = types.indexed
        .map((entry) {
          final (idx, type) = entry;
          final name = params[idx].name;
          return '$type $name';
        })
        .join(', ');
    print('  $returnType ${method.name}($paramList)');
  }
}
