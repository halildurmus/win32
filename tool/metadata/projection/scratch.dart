import 'package:winmd/winmd.dart';

import 'typeprojector.dart';

void main() {
  final scope = MetadataStore.getWin32Scope();

  final consoleAPIs = scope.findTypeDef('Windows.Win32.System.Console.Apis');
  final ctrlHandler = consoleAPIs?.findMethod('SetConsoleCtrlHandler');
  final firstParam = ctrlHandler?.parameters.first;

  if (firstParam != null) {
    final projector = TypeProjector(firstParam.typeIdentifier);
    final nativeType = projector.nativeType;
    print(nativeType);
  }
}
