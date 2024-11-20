import 'package:generator/generator.dart';
import 'package:winmd/winmd.dart';

void printProjection<T>(
  String type,
  T Function(TypeDef) projectionFactory,
  bool Function(TypeDef) typePredicate,
) {
  final typeDef = WindowsMetadata.findTypeDefByName(type);
  if (typePredicate(typeDef)) {
    final projection = projectionFactory(typeDef);
    print(projection);
  }
}

void printCallback([String type = 'DESKTOPENUMPROCW']) {
  printProjection(
    type,
    CallbackProjection.new,
    (typeDef) => typeDef.isDelegate,
  );
}

void printConstant([String name = 'HKEY_LOCAL_MACHINE']) {
  final constant = WindowsMetadata.findConstantByName(name);
  final projection = ConstantProjection(constant);
  print(projection);
}

void printEnum([String type = 'APTTYPE']) {
  printProjection(type, EnumProjection.new, (typeDef) => typeDef.isEnum);
}

void printFunction([String name = 'BroadcastSystemMessageW']) {
  final function = WindowsMetadata.findFunctionByName(name);
  final projection = FunctionProjection(function);
  print(projection);
  print(projection.originalReturnType);
}

void printGetProperty([
  String interface = 'ISpeechVoice',
  String propertyName = 'get_Volume',
]) {
  final typeDef = WindowsMetadata.findTypeDefByName(interface);
  final method = typeDef.findMethod(propertyName);
  if (method.canBeProjectedAsGetter) {
    final projection = ComGetPropertyProjection(method);
    print(projection);
  }
}

void printInterface([String type = 'IFileOpenDialog']) {
  printProjection(
    type,
    ComInterfaceProjection.new,
    (typeDef) => typeDef.isInterface,
  );
}

void printMethod([
  String interface = 'IUnknown',
  String methodName = 'QueryInterface',
]) {
  final typeDef = WindowsMetadata.findTypeDefByName(interface);
  final method = typeDef.findMethod(methodName);
  final projection = ComMethodProjection(method);
  print(projection);
}

void printSetProperty([
  String interface = 'ISpeechVoice',
  String propertyName = 'put_Volume',
]) {
  final typeDef = WindowsMetadata.findTypeDefByName(interface);
  final method = typeDef.findMethod(propertyName);
  if (method.canBeProjectedAsSetter) {
    final projection = ComSetPropertyProjection(method);
    print(projection);
  }
}

void printStruct([String type = 'DEVMODEW']) {
  printProjection(type, StructProjection.new, (typeDef) => typeDef.isStruct);
}

void main() async {
  await WindowsMetadata.load();
  printCallback();
  printConstant();
  printEnum();
  printFunction();
  printGetProperty();
  printInterface();
  printMethod();
  printSetProperty();
  printStruct();
}
