import 'package:winmd/winmd.dart';

import '../../type.dart';
import '../../utils.dart';
import '../winrt_get_property.dart';
import '../winrt_method.dart';

mixin _MapProjection on WinRTMethodProjection {
  /// The type arguments of `IMap` and `IMapView`, as represented in the
  /// [returnType]'s [TypeIdentifier] (e.g. `String, Object?`, `String, String?`).
  String get mapTypeArgs => typeArguments(returnType.typeIdentifier.name);

  /// The constructor arguments passed to the constructors of `IMap` and
  /// `IMapView`.
  String get mapConstructorArgs {
    final keyArgTypeProjection =
        TypeProjection(returnType.typeIdentifier.typeArg!);
    final valueArgTypeProjection =
        TypeProjection(returnType.typeIdentifier.typeArg!.typeArg!);

    // If the type argument is an enum, the constructor of that class must be
    // passed in the 'enumKeyCreator' parameter for enum, so that the 'IMap' and
    // 'IMapView' implementations can instantiate the enum.
    final enumKeyCreator =
        parseArgumentForCreatorParameter(returnType.typeIdentifier.typeArg!);

    // If the type argument is an enum, a WinRT Object (e.g. IJsonValue), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enum, 'creator' parameter for WinRT Object so that the 'IMap' and
    // 'IMapView' implementations can instantiate the object
    final creator = parseArgumentForCreatorParameter(
        returnType.typeIdentifier.typeArg!.typeArg!);

    // The IID for IIterable<IKeyValuePair<K, V>> must be passed in the
    // 'iterableIid' parameter so that the 'IMap' and 'IMapView' implementations
    // can use the correct IID when instantiating the IIterable object
    final iterableIid =
        iterableIidFromMapTypeIdentifier(returnType.typeIdentifier);

    final args = <String>["iterableIid: '$iterableIid'"];
    if (keyArgTypeProjection.isWinRTEnum) {
      args.add('enumKeyCreator: $enumKeyCreator');
    }
    if (valueArgTypeProjection.isWinRTEnum) {
      args.add('enumCreator: $creator');
    } else if (creator != null) {
      args.add('creator: $creator');
    }

    return ', ${args.join(', ')}';
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

        final mapView = IMapView<$mapTypeArgs>.fromRawPointer
            (retValuePtr$mapConstructorArgs);
        final map = mapView.toMap();
        mapView.release();

        $parametersPostamble

        return map;
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

        ${ffiCall(freeRetValOnFailure: true)}

        final mapView = IMapView<$mapTypeArgs>.fromRawPointer
            (retValuePtr$mapConstructorArgs);
        final map = mapView.toMap();
        mapView.release();

        return map;
      }
  ''';
}
