import 'package:winmd/winmd.dart';

import '../../../../generator.dart';

mixin _MapProjection on WinRTMethodProjection {
  /// Returns the type argument, as represented in the [typeIdentifier].
  String mapTypeArgFromTypeIdentifier(TypeIdentifier typeIdentifier) {
    final typeProjection = TypeProjection(typeIdentifier);
    if (typeProjection.isObject) return 'Object';
    if (typeProjection.isString) return 'String';
    if (typeProjection.isWinRT &&
        (typeProjection.isClass ||
            typeProjection.isInterface ||
            typeProjection.isWinRTEnum)) {
      return lastComponent(typeProjection.typeIdentifier.name);
    }

    return typeProjection.dartType;
  }

  /// The type arguments of `IMap` and `IMapView`, as represented in the
  /// [returnType]'s [TypeIdentifier] (e.g. `String, Object?`, `String, String?`).
  String get mapTypeArgs {
    final keyTypeArg =
        mapTypeArgFromTypeIdentifier(returnType.typeIdentifier.typeArg!);
    final valueTypeArg = mapTypeArgFromTypeIdentifier(
        returnType.typeIdentifier.typeArg!.typeArg!);
    return '$keyTypeArg, $valueTypeArg?';
  }

  /// The constructor arguments passed to the constructors of `IMap` and
  /// `IMapView`.
  String get mapConstructorArgs {
    final typeProjection =
        TypeProjection(returnType.typeIdentifier.typeArg!.typeArg!);

    // If the type argument is a WinRT Class or Interface (e.g. IJsonValue),
    // the constructor of that class must be passed in the 'creator' parameter
    // so that the 'IMap' and 'IMapView' implementations can instantiate the
    // object
    final creator = typeProjection.isWinRT &&
            (typeProjection.isClass || typeProjection.isInterface)
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.fromRawPointer'
        : null;

    // Similar to the 'creator' parameter above, the constructor of the enum
    // class must be passed in the 'enumCreator' parameter
    final enumCreator = typeProjection.isWinRTEnum
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.from'
        : null;

    final args = <String>[];
    if (creator != null) {
      args.add('creator: $creator');
    } else if (enumCreator != null) {
      args.add('enumCreator: $enumCreator');
    }

    return args.isEmpty ? '' : ', ${args.join(', ')}';
  }
}

class WinRTMethodReturningMapProjection extends WinRTMethodProjection
    with _MapProjection {
  WinRTMethodReturningMapProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IMap<$mapTypeArgs> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall(freeRetValOnFailure: true)}
        $parametersPostamble
        return IMap.fromRawPointer(retValuePtr$mapConstructorArgs);
      }
  ''';
}

class WinRTGetPropertyReturningMapProjection extends WinRTGetPropertyProjection
    with _MapProjection {
  WinRTGetPropertyReturningMapProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IMap<$mapTypeArgs> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

        return IMap.fromRawPointer(retValuePtr$mapConstructorArgs);
      }
  ''';
}

class WinRTMethodReturningMapViewProjection extends WinRTMethodProjection
    with _MapProjection {
  WinRTMethodReturningMapViewProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Map<$mapTypeArgs> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        try {
          ${ffiCall()}
          return IMapView<$mapTypeArgs>.fromRawPointer
            (retValuePtr$mapConstructorArgs).toMap();
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
  ''';
}

class WinRTGetPropertyReturningMapViewProjection
    extends WinRTGetPropertyProjection with _MapProjection {
  WinRTGetPropertyReturningMapViewProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Map<$mapTypeArgs> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        try {
          ${ffiCall()}
          return IMapView<$mapTypeArgs>.fromRawPointer
            (retValuePtr$mapConstructorArgs).toMap();
        } finally {
          free(retValuePtr);
        }
      }
  ''';
}
