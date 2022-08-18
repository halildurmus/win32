import 'package:winmd/winmd.dart';

import '../../../../generator.dart';

mixin ReferenceProjection on WinRTMethodProjection {
  String get referenceType =>
      referenceTypeFromTypeIdentifier(returnType.typeIdentifier.typeArg!);

  String get referenceTypeFromParameter => referenceTypeFromTypeIdentifier(
      parameters.first.type.typeIdentifier.typeArg!);

  String referenceTypeFromTypeIdentifier(TypeIdentifier typeIdentifier) {
    final typeProjection = TypeProjection(typeIdentifier);
    if (typeProjection.isString) return 'String';
    if (typeProjection.isWinRTEnum) {
      return lastComponent(typeProjection.typeIdentifier.name);
    }

    return typeProjection.methodParamType;
  }

  String get boxValue {
    final typeProjection =
        TypeProjection(parameters.first.type.typeIdentifier.typeArg!);
    final args = <String>['convertToIReference: true'];
    if (['double', 'int'].contains(typeProjection.methodParamType)) {
      args.add('nativeType: ${typeProjection.nativeType}');
    }

    return 'boxValue(value, ${args.join(', ')});';
  }

  String get referenceArgs {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);
    final enumCreator = typeProjection.isWinRTEnum
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.from'
        : null;
    final args = <String>[];
    if (enumCreator != null) {
      args.add('enumCreator: $enumCreator');
    }

    return args.isEmpty ? '' : ', ${args.join(', ')}';
  }
}

class WinRTMethodReturningReferenceProjection extends WinRTMethodProjection
    with ReferenceProjection {
  WinRTMethodReturningReferenceProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      $referenceType? $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble
        ${ffiCall()}

        try {
          return IReference<$referenceType>.fromRawPointer(retValuePtr$referenceArgs).value;
        } finally {
          $parametersPostamble
          free(retValuePtr);
        }
      }
  ''';
}

class WinRTGetPropertyReturningReferenceProjection
    extends WinRTGetPropertyProjection with ReferenceProjection {
  WinRTGetPropertyReturningReferenceProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      $referenceType? get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall()}

        try {
          return IReference<$referenceType>.fromRawPointer(retValuePtr$referenceArgs).value;
        } finally {
          free(retValuePtr);
        }
      }
  ''';
}

class WinRTSetPropertyReturningReferenceProjection
    extends WinRTSetPropertyProjection with ReferenceProjection {
  WinRTSetPropertyReturningReferenceProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName($referenceTypeFromParameter? value) {
        final referencePtr = $boxValue

        ${ffiCall('referencePtr.ref')}

        free(referencePtr);
      }
  ''';
}
