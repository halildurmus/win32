import '../../../../generator.dart';

mixin _VectorProjection on WinRTMethodProjection {
  /// The type argument of `IVector` and `IVectorView`, as represented in the
  /// [returnType]'s [TypeIdentifier] (e.g. `int`, `String`, `StorageFile`).
  String get vectorTypeArg {
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

  /// The constructor arguments passed to the constructors of `IVector` and
  /// `IVectorView`.
  String get vectorConstructorArgs {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);

    // If the type argument is a WinRT Class or Interface (e.g. StorageFile),
    // the constructor of that class must be passed in the 'creator' parameter
    // so that the 'IVector' and 'IVectorView' implementations can instantiate
    // the object
    final creator = typeProjection.isWinRT &&
            (typeProjection.isClass || typeProjection.isInterface)
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.fromRawPointer'
        : null;

    // Similar to the 'creator' parameter above, the constructor of the enum
    // class must be passed in the 'enumCreator' parameter
    final enumCreator = typeProjection.isWinRTEnum
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.from'
        : null;

    // If the type argument is an enum or int, it's native type (e.g. Int32,
    // Uint32) must be passed in the 'intType' parameter so that the 'IVector'
    // and 'IVectorView' implementations can use the appropriate native type
    final intType = typeProjection.isWinRTEnum || vectorTypeArg == 'int'
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
    with _VectorProjection {
  WinRTMethodReturningVectorProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IVector<$vectorTypeArg> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall(freeRetValOnFailure: true)}
        $parametersPostamble
        return IVector.fromRawPointer(retValuePtr$vectorConstructorArgs);
      }
  ''';
}

class WinRTGetPropertyReturningVectorProjection
    extends WinRTGetPropertyProjection with _VectorProjection {
  WinRTGetPropertyReturningVectorProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IVector<$vectorTypeArg> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

        return IVector.fromRawPointer(retValuePtr$vectorConstructorArgs);
      }
  ''';
}

class WinRTMethodReturningVectorViewProjection extends WinRTMethodProjection
    with _VectorProjection {
  WinRTMethodReturningVectorViewProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      List<$vectorTypeArg> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        try {
          ${ffiCall()}
          return IVectorView<$vectorTypeArg>.fromRawPointer
            (retValuePtr$vectorConstructorArgs).toList();
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
  ''';
}

class WinRTGetPropertyReturningVectorViewProjection
    extends WinRTGetPropertyProjection with _VectorProjection {
  WinRTGetPropertyReturningVectorViewProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      List<$vectorTypeArg> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        try {
          ${ffiCall()}
          return IVectorView<$vectorTypeArg>.fromRawPointer
            (retValuePtr$vectorConstructorArgs).toList();
        } finally {
          free(retValuePtr);
        }
      }
  ''';
}
