import 'package:winmd/winmd.dart';
import 'typeprojector.dart';

class Win32FunctionPrinter {
  final String _nameWithoutEncoding;
  final Method _method;
  final String _lib;

  // Sanitize any Dart keywords in parameter names.
  // TODO: Duplicate of safename()
  String sanitize(String input) => input == 'in' ? 'in_' : input;

  String get nativePrototype =>
      '${TypeProjector(_method.returnType.typeIdentifier).nativeType} Function($nativeParams)';

  String get nativeParams => _method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).nativeType} ${sanitize(param.name)}')
      .join(', ');

  String get dartPrototype =>
      '${TypeProjector(_method.returnType.typeIdentifier).dartType} Function($dartParams)';

  String get dartParams => _method.parameters
      .map((param) =>
          '${TypeProjector(param.typeIdentifier).dartType} ${sanitize(param.name)}')
      .join(', ');

  String get dartFfiMapping =>
      '${TypeProjector(_method.returnType.typeIdentifier).dartType} '
      '$_nameWithoutEncoding($dartParams) =>\n'
      '  _$_nameWithoutEncoding'
      '(${_method.parameters.map((param) => (param.name)).map(sanitize).toList().join(', ')})'
      ';\n\n'
      '  late final _$_nameWithoutEncoding = _$_lib.lookupFunction<\n'
      '    $nativePrototype, \n'
      '    $dartPrototype\n'
      "  >('${_method.name}');\n\n";

  const Win32FunctionPrinter(
      this._nameWithoutEncoding, this._method, this._lib);
}
