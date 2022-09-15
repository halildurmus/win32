import '../../../../generator.dart';

mixin _VectorProjection on WinRTMethodProjection {
  /// The type argument of `IVector` and `IVectorView`, as represented in the
  /// [returnType]'s [TypeIdentifier] (e.g. `int`, `String`, `StorageFile`).
  String get vectorTypeArg => typeArguments(returnType.typeIdentifier.name);

  /// The constructor arguments passed to the constructors of `IVector` and
  /// `IVectorView`.
  String get vectorConstructorArgs {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);

    // If the type argument is an enum or a WinRT Object (e.g. StorageFile), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enums, 'creator' parameter for WinRT Objects so that the 'IVector'
    // and 'IVectorView' implementations can instantiate the object
    final creator =
        parseArgumentForCreatorParameter(returnType.typeIdentifier.typeArg!);

    // If the type argument is an enum or int, it's native type (e.g. Int32,
    // Uint32) must be passed in the 'intType' parameter so that the 'IVector'
    // and 'IVectorView' implementations can use the appropriate native type
    final intType = typeProjection.isWinRTEnum || vectorTypeArg == 'int'
        ? typeProjection.nativeType
        : null;

    final args = <String>[];
    if (typeProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
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
        ${ffiCall()}
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

        ${ffiCall()}

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
        ${ffiCall()}

        try {
          return IVectorView<$vectorTypeArg>.fromRawPointer(retValuePtr$vectorConstructorArgs).toList();
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

        ${ffiCall()}

        try {
          return IVectorView<$vectorTypeArg>.fromRawPointer(retValuePtr$vectorConstructorArgs).toList();
        } finally {
          free(retValuePtr);
        }
      }
  ''';
}
