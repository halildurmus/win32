import 'method.dart';

class ComMethodProjection extends MethodProjection {
  ComMethodProjection(super.method, super.vtableOffset);

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
      ].join(', ');

  @override
  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
      ].join(', ');

  @override
  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  @override
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map((param) => param.identifier)
      ].join(', ');

  @override
  String toString() {
    try {
      return '''
      ${returnType.dartType} $name($methodParams) => ptr.ref.vtable
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()($identifiers);
    ''';
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project method: ${method.name}');
      return '';
    }
  }
}
