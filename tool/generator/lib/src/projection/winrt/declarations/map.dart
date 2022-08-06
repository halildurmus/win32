import 'package:winmd/winmd.dart';

import '../../../../generator.dart';

mixin MapProjection on WinRTMethodProjection {
  String _mapTypeFromTypeIdentifier(TypeIdentifier typeIdentifier) {
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

  String get mapTypes {
    final keyType =
        _mapTypeFromTypeIdentifier(returnType.typeIdentifier.typeArg!);
    final valueType =
        _mapTypeFromTypeIdentifier(returnType.typeIdentifier.typeArg!.typeArg!);
    return '$keyType, $valueType?';
  }

  String get mapArgs {
    final typeProjection =
        TypeProjection(returnType.typeIdentifier.typeArg!.typeArg!);
    final creator = typeProjection.isWinRT &&
            (typeProjection.isClass || typeProjection.isInterface)
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.fromRawPointer'
        : null;
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
    with MapProjection {
  WinRTMethodReturningMapProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IMap<$mapTypes> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}
        $parametersPostamble
        return IMap.fromRawPointer(retValuePtr$mapArgs);
      }
  ''';
}

class WinRTGetPropertyReturningMapProjection extends WinRTGetPropertyProjection
    with MapProjection {
  WinRTGetPropertyReturningMapProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      IMap<$mapTypes> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        return IMap.fromRawPointer(retValuePtr$mapArgs);
      }
  ''';
}

class WinRTMethodReturningMapViewProjection extends WinRTMethodProjection
    with MapProjection {
  WinRTMethodReturningMapViewProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Map<$mapTypes> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}

        try {
          return IMapView<$mapTypes>.fromRawPointer(retValuePtr$mapArgs).toMap();
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
  ''';
}

class WinRTGetPropertyReturningMapViewProjection
    extends WinRTGetPropertyProjection with MapProjection {
  WinRTGetPropertyReturningMapViewProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Map<$mapTypes> get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        try {
          return IMapView<$mapTypes>.fromRawPointer(retValuePtr$mapArgs).toMap();
        } finally {
          free(retValuePtr);
        }
      }
  ''';
}
