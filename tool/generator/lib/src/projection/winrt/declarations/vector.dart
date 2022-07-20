import '../../../../generator.dart';

mixin VectorProjection on WinRTMethodProjection {
  String get vectorType {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);
    if (typeProjection.isString) return 'String';
    if (typeProjection.isWinRT &&
        (typeProjection.isClass ||
            typeProjection.isInterface ||
            typeProjection.isWinRTEnum)) {
      return lastComponent(typeProjection.typeIdentifier.name);
    }

    return typeProjection.dartType;
  }

  String get vectorArgs {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);
    final creator = typeProjection.isWinRT &&
            (typeProjection.isClass || typeProjection.isInterface)
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.fromRawPointer'
        : null;
    final enumCreator = typeProjection.isWinRTEnum
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.from'
        : null;
    final intType = typeProjection.isWinRTEnum || vectorType == 'int'
        ? typeProjection.nativeType
        : null;

    final args = <String>[];
    if (creator != null) {
      args.add('creator: $creator');
    } else if (enumCreator != null) {
      args.add('enumCreator: $enumCreator');
    }
    if (intType != null) {
      args.add('intType: $intType');
    }

    return args.isEmpty ? '' : ', ${args.join(', ')}';
  }
}

class WinRTMethodReturningVectorProjection extends WinRTMethodProjection
    with VectorProjection {
  WinRTMethodReturningVectorProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IVector<$vectorType> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
        return IVector.fromRawPointer(retValuePtr$vectorArgs);
      }
  ''';
}

class WinRTGetPropertyReturningVectorProjection
    extends WinRTGetPropertyProjection with VectorProjection {
  WinRTGetPropertyReturningVectorProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IVector<$vectorType> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        return IVector.fromRawPointer(retValuePtr$vectorArgs);
      }
  ''';
}

class WinRTMethodReturningVectorViewProjection extends WinRTMethodProjection
    with VectorProjection {
  WinRTMethodReturningVectorViewProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      List<$vectorType> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}

        try {
          return IVectorView<$vectorType>.fromRawPointer(retValuePtr$vectorArgs).toList();
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
  ''';
}

class WinRTGetPropertyReturningVectorViewProjection
    extends WinRTGetPropertyProjection with VectorProjection {
  WinRTGetPropertyReturningVectorViewProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      List<$vectorType> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        try {
          return IVectorView<$vectorType>.fromRawPointer(retValuePtr$vectorArgs).toList();
        } finally {
          free(retValuePtr);
        }
      }
  ''';
}
