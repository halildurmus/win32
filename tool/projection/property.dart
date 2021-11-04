import 'package:winmd/winmd.dart' as winmd;

import 'method.dart';
import 'utils.dart';

// TODO: Deal with fake properties like IUPnPServices.get_Item([In], [Out]).

class PropertyProjection extends MethodProjection {
  PropertyProjection(winmd.Method method, int vtableOffset)
      : super(method, vtableOffset);

  bool get convertBool => parameters.first.type.dartType == 'bool';
}

class GetPropertyProjection extends PropertyProjection {
  GetPropertyProjection(winmd.Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  String get exposedMethodName => method.name.startsWith('get__')
      ? method.name.substring(5)
      : method.name.substring(4);

  @override
  String toString() {
    final returnValue = dereference(parameters.first.type);
    return '''
      ${returnValue.dartType} get $exposedMethodName {
        final retValuePtr = calloc<${returnValue.nativeType}>();
        
        try {
          final hr = ptr.ref.lpVtbl.value
            .elementAt($vtableOffset)
            .cast<Pointer<NativeFunction<$nativePrototype>>>()
            .value
            .asFunction<$dartPrototype>()(ptr.ref.lpVtbl, retValuePtr);

          if (FAILED(hr)) throw WindowsException(hr);

          final retValue = retValuePtr.value;
          return ${convertBool ? 'retValue == 0' : 'retValue'};
        } finally {
          free(retValuePtr);
        }
      }
''';
  }
}

class SetPropertyProjection extends PropertyProjection {
  SetPropertyProjection(winmd.Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  String get exposedMethodName => method.name.startsWith('put__')
      ? method.name.substring(5)
      : method.name.substring(4);

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
