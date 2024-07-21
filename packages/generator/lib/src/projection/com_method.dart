import 'method.dart';
import 'safenames.dart';

class ComMethodProjection extends MethodProjection {
  ComMethodProjection(super.method, super.vtableOffset);

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => switch (param.type.dartType) {
              'Pointer<Pointer<COMObject>>' when method.isGetProperty =>
                'Pointer<COMObject> ${safeIdentifierForString(param.name)}',
              _ => param.ffiProjection
            }),
      ].join(', ');

  @override
  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => switch (param.type.dartType) {
              'Pointer<Pointer<COMObject>>' when method.isGetProperty =>
                'Pointer<COMObject> ${safeIdentifierForString(param.name)}',
              _ => param.dartProjection
            }),
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
      ${returnType.dartType} $camelCasedName($methodParams) =>
        (ptr.ref.vtable + $vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()($identifiers);
    ''';
    } on Exception {
      // Print an error if we're unable to project a method, but don't
      // completely bail out. The rest may be useful.

      // TODO: Fix these errors as they occur.
      print('Unable to project COM method: ${method.name}');
      return '';
    }
  }
}
