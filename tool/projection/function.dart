import 'package:winmd/winmd.dart';

import 'parameter.dart';
import 'safenames.dart';
import 'type.dart';
import 'utils.dart';

class FunctionProjection {
  final Method method;
  final String lib;
  final String nameWithoutEncoding;
  final TypeProjection returnType;
  final List<ParameterProjection> parameters;

  FunctionProjection(this.method, this.lib)
      : nameWithoutEncoding = stripAnsiUnicodeSuffix(method.name),
        returnType = TypeProjection(method.returnType.typeIdentifier),
        parameters = method.parameters
            .map((param) => ParameterProjection(
                param.name, TypeProjection(param.typeIdentifier)))
            .toList();

  // TODO: remove when https://github.com/microsoft/win32metadata/issues/229
  //  is fixed.
  String get k32StrippedName => nameWithoutEncoding.startsWith('K32')
      ? nameWithoutEncoding.substring(3)
      : nameWithoutEncoding;

  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  String get nativeParams =>
      parameters.map((param) => param.ffiProjection).join(', ');

  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  String get dartParams =>
      parameters.map((param) => param.dartProjection).join(', ');

  @override
  String toString() => '''
    ${safeTypenameForString(returnType.dartType)} $k32StrippedName($dartParams) =>
      _$nameWithoutEncoding(${parameters.map((param) => param.identifier).join(', ')});

    final _$nameWithoutEncoding = 
      _$lib.lookupFunction<$nativePrototype, $dartPrototype>('${method.name}');
''';
}
