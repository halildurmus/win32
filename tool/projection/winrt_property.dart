import 'package:winmd/winmd.dart';

import 'property.dart';
import 'safenames.dart';

class WinRTGetPropertyProjection extends GetPropertyProjection {
  WinRTGetPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  @override
  String get exposedMethodName => method.name.startsWith('get__')
      ? safeIdentifierForString(method.name.substring(5))
      : safeIdentifierForString(method.name.substring(4));

  @override
  bool get convertBool => returnType.dartType == 'bool';

  // WinRT properties always return an HRESULT
  @override
  String get nativePrototype => 'HRESULT Function($nativeParams)';

  @override
  String get nativeParams => 'Pointer, Pointer<${returnType.nativeType}>,';

  // WinRT properties always return an HRESULT
  @override
  String get dartPrototype => 'int Function($nativeParams)';

  @override
  String get dartParams => nativeParams;

  @override
  String toString() {
    try {
      final valRef = returnType.dartType == 'double' ||
              returnType.dartType == 'int' ||
              returnType.dartType.startsWith('Pointer')
          ? 'value'
          : 'ref';
      return '''
      ${returnType.dartType} get $exposedMethodName {
        final retValuePtr = calloc<${returnType.nativeType}>();
        
        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.$valRef;
          return ${convertBool ? 'retValue == 0' : 'retValue'};
        } finally {
          free(retValuePtr);
        }
      }
''';
    } on Exception {
      return '';
    }
  }
}

class WinRTSetPropertyProjection extends SetPropertyProjection {
  WinRTSetPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  @override
  String get exposedMethodName => method.name.startsWith('put__')
      ? safeIdentifierForString(method.name.substring(5))
      : safeIdentifierForString(method.name.substring(4));

  @override
  String toString() => '''
    set $exposedMethodName(${parameters.first.type.dartType} value) {
      final hr = ptr.ref.lpVtbl.value
        .elementAt($vtableOffset)
        .cast<Pointer<NativeFunction<$nativePrototype>>>()
        .value
        .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
''';
}
