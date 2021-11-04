import 'package:winmd/winmd.dart' as winmd;

import 'parameter.dart';
import 'type.dart';
import 'utils.dart';

class FunctionProjection {
  final winmd.Method method;
  final String lib;
  late final String nameWithoutEncoding;
  late TypeProjection returnType;
  late List<ParameterProjection> parameters;

  FunctionProjection(this.method, this.lib) {
    nameWithoutEncoding = stripAnsiUnicodeSuffix(method.name);
    returnType = TypeProjection(method.returnType.typeIdentifier);
    parameters = method.parameters
        .map((param) => ParameterProjection(
            param.name, TypeProjection(param.typeIdentifier)))
        .toList();
  }

  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  String get nativeParams =>
      parameters.map((param) => param.ffiProjection).join(', ');

  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  String get dartParams =>
      parameters.map((param) => param.dartProjection).join(', ');

  @override
  String toString() => '''
    ${safeTypename(returnType.dartType)} $nameWithoutEncoding($dartParams) =>
      _$nameWithoutEncoding(${parameters.map((param) => param.identifier).join(', ')});

    late final _$nameWithoutEncoding = 
      _$lib.lookupFunction<$nativePrototype, $dartPrototype>('${method.name}');
''';
}
