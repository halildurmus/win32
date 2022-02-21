import 'package:winmd/winmd.dart';

import 'method.dart';
import 'safenames.dart';
import 'utils.dart';

// TODO: Deal with fake properties like IUPnPServices.get_Item([In], [Out]).

abstract class PropertyProjection extends MethodProjection {
  PropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  String get exposedMethodName;

  bool get convertBool => parameters.first.type.dartType == 'bool';
}

class GetPropertyProjection extends PropertyProjection {
  GetPropertyProjection(Method method, int vtableOffset)
      : super(method, vtableOffset);

  /// Strip off all underscores, even if double underscores
  @override
  String get exposedMethodName => method.name.startsWith('get__')
      ? safeIdentifierForString(method.name.substring(5))
      : safeIdentifierForString(method.name.substring(4));

  @override
  String toString() {
    final returnValue = dereference(parameters.first.type);
    final valRef = returnValue.dartType == 'double' ||
            returnValue.dartType == 'int' ||
            returnValue.dartType.startsWith('Pointer')
        ? 'value'
        : 'ref';
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

          final retValue = retValuePtr.$valRef;
          return ${convertBool ? 'retValue == 0' : 'retValue'};
        } finally {
          free(retValuePtr);
        }
      }
''';
  }
}

class SetPropertyProjection extends PropertyProjection {
  SetPropertyProjection(Method method, int vtableOffset)
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
