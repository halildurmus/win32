import 'package:winmd/winmd.dart';

import 'method.dart';

class ComMethodProjection extends MethodProjection {
  ComMethodProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  @override
  String get nativeParams => [
        'Pointer',
        ...parameters.map((param) => param.ffiProjection),
      ].map((p) => '$p, ').join();

  @override
  String get nativePrototype =>
      '${returnType.nativeType} Function($nativeParams)';

  @override
  String get dartParams => [
        'Pointer',
        ...parameters.map((param) => param.dartProjection),
      ].map((p) => '$p, ').join();

  @override
  String get dartPrototype => '${returnType.dartType} Function($dartParams)';

  @override
  String get identifiers => [
        'ptr.ref.lpVtbl',
        ...parameters.map((param) => param.identifier)
      ].map((p) => '$p, ').join();

  // TODO: Check whether there's a better way to detect how methods like
  // put_AutoDemodulate are declared (should this be a property?) Detect whether
  // it's a property masquerading as a method.
  //
  // The test should be the use of the get_ prefix, combined with the
  // specialname modifier, but win32metadata incorrectly marks some methods with
  // this combination (https://github.com/microsoft/win32metadata/issues/707).
  // So instead, we also need to check the number of parameters.

  // TODO: Consider using technique to cache the function lookup.
  @override
  String toString() {
    try {
      return '''
      ${returnType.dartType} $name($methodParams) => ptr.ref.lpVtbl.value
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
