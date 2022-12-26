import '../../utils.dart';
import '../winrt_method.dart';

class WinRTMethodReturningAsyncActionProjection extends WinRTMethodProjection {
  WinRTMethodReturningAsyncActionProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      Future<void> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        final completer = Completer<void>();
        $parametersPreamble

        ${ffiCall(freeRetValOnFailure: true)}

        $parametersPostamble

        final asyncAction = IAsyncAction.fromRawPointer(retValuePtr);
        completeAsyncAction(asyncAction, completer);

        return completer.future;
      }
''';
}

mixin _AsyncOperationProjection on WinRTMethodProjection {
  /// The type argument of `IAsyncOperation`, as represented in the
  /// [returnType]'s [TypeIdentifier] (e.g. `bool`, `String`, `StorageFile`).
  String get asyncOperationTypeArg =>
      typeArguments(returnType.typeIdentifier.name);

  String get futureTypeArg {
    if (asyncOperationTypeArg.startsWith('IMapView')) {
      return asyncOperationTypeArg.replaceFirst('IMapView', 'Map');
    } else if (asyncOperationTypeArg.startsWith('IVectorView')) {
      return asyncOperationTypeArg.replaceFirst('IVectorView', 'List');
    } else if (asyncOperationTypeArg.startsWith('IReference')) {
      // e.g. return Duration? instead of IReference<Duration>?
      return '${typeArguments(asyncOperationTypeArg)}?';
    }

    return asyncOperationTypeArg;
  }

  /// The constructor arguments passed to the constructor of `IAsyncOperation`.
  String get asyncOperationConstructorArgs {
    // If the type argument is an enum or a WinRT Object (e.g. StorageFile), the
    // constructor of that class must be passed in the 'enumCreator' parameter
    // for enums, 'creator' parameter for WinRT Objects so that the
    // IAsyncOperation implementation can instantiate the object.
    final creator =
        parseArgumentForCreatorParameter(returnType.typeIdentifier.typeArg!);
    return creator == null ? '' : ', creator: $creator';
  }

  /// The function to call after the async operation is completed successfully.
  String get onCompleteCallback {
    if (asyncOperationTypeArg.startsWith('IMapView')) {
      return 'asyncOperation.getResults().toMap';
    } else if (asyncOperationTypeArg.startsWith('IVectorView')) {
      return 'asyncOperation.getResults().toList';
    } else if (asyncOperationTypeArg.startsWith('IReference')) {
      return '() => asyncOperation.getResults()?.value';
    }

    return 'asyncOperation.getResults';
  }
}

class WinRTMethodReturningAsyncOperationProjection extends WinRTMethodProjection
    with _AsyncOperationProjection {
  WinRTMethodReturningAsyncOperationProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      Future<$futureTypeArg> $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        final completer = Completer<$futureTypeArg>();
        $parametersPreamble

        ${ffiCall(freeRetValOnFailure: true)}

        $parametersPostamble

        final asyncOperation = IAsyncOperation<$asyncOperationTypeArg>
            .fromRawPointer(retValuePtr$asyncOperationConstructorArgs);
        completeAsyncOperation(asyncOperation, completer, $onCompleteCallback);

        return completer.future;
      }
''';
}
