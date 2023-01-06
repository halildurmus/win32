import 'package:win32/winrt.dart';
import 'package:winmd/winmd.dart';

import '../../type.dart';
import '../../utils.dart';
import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

mixin _ReferenceProjection on WinRTMethodProjection {
  /// The type argument of `IReference`, as represented in the [returnType]'s
  /// [TypeIdentifier] (e.g. `DateTime`, `int`, `String`).
  String get referenceTypeArg => typeArguments(returnType.typeIdentifier.name);

  /// The type argument of `IReference`, as represented in the [TypeIdentifier]
  /// of the method's first parameter.
  String get referenceTypeArgFromParameter =>
      typeArguments(parameters.first.type.typeIdentifier.name);

  /// Method call to `boxValue` function.
  ///
  /// Nullable parameters must be passed to WinRT APIs as `IReference` interfaces
  /// by calling the `boxValue` function with the `convertToIReference` flag set
  /// to `true`.
  String get boxValueMethodCall {
    final typeProjection =
        TypeProjection(parameters.first.type.typeIdentifier.typeArg!);
    final args = <String>['convertToIReference: true'];

    // If the nullable parameter is an enum, a double or an int, its native
    // type (e.g. Double, Float, Int32, Uint32) must be passed in the `nativeType`
    // parameter so that the 'boxValue' function can use the appropriate native
    // type for the parameter
    if (typeProjection.isWinRTEnum ||
        ['double', 'int'].contains(typeProjection.methodParamType)) {
      args.add('nativeType: ${typeProjection.nativeType}');
    }

    return typeProjection.isWinRTEnum
        ? 'boxValue(value?.value, ${args.join(', ')});'
        : 'boxValue(value, ${args.join(', ')});';
  }

  /// The constructor arguments passed to the constructor of `IReference`.
  String get referenceConstructorArgs {
    final typeProjection = TypeProjection(returnType.typeIdentifier.typeArg!);

    // If the type argument is an enum, the constructor of the enum class must
    // be passed in the 'enumCreator' parameter so that the 'IReference'
    // implementation can instantiate the object
    final enumCreator = typeProjection.isWinRTEnum
        ? '${lastComponent(typeProjection.typeIdentifier.name)}.from'
        : null;

    // The IID for IReference<T> must be passed in the 'iterableIid' parameter
    // so that the 'IReference' implementation can use the correct IID when
    // retrieving the value it holds
    // To learn know more about how the IID is calculated, please see https://learn.microsoft.com/en-us/uwp/winrt-cref/winrt-type-system#guid-generation-for-parameterized-types
    final referenceArgSignature =
        parseTypeIdentifierSignature(returnType.typeIdentifier.typeArg!);
    final referenceSignature =
        'pinterface($IID_IReference;$referenceArgSignature)';
    final referenceIid = iidFromSignature(referenceSignature);

    final args = <String>["referenceIid: '$referenceIid'"];
    if (enumCreator != null) {
      args.add('enumCreator: $enumCreator');
    }

    return ', ${args.join(', ')}';
  }
}

class WinRTMethodReturningReferenceProjection extends WinRTMethodProjection
    with _ReferenceProjection {
  WinRTMethodReturningReferenceProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      $referenceTypeArg? $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        ${ffiCall(freeRetValOnFailure: true)}

        if (retValuePtr.ref.lpVtbl == nullptr) {
          free(retValuePtr);
          return null;
        }

        final reference = IReference<$referenceTypeArg>.fromRawPointer
            (retValuePtr$referenceConstructorArgs);
        final value = reference.value;
        reference.release();

        $parametersPostamble

        return value;
      }
  ''';
}

class WinRTGetPropertyReturningReferenceProjection
    extends WinRTGetPropertyProjection with _ReferenceProjection {
  WinRTGetPropertyReturningReferenceProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      $referenceTypeArg? get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

        if (retValuePtr.ref.lpVtbl == nullptr) {
          free(retValuePtr);
          return null;
        }

        final reference = IReference<$referenceTypeArg>.fromRawPointer
            (retValuePtr$referenceConstructorArgs);
        final value = reference.value;
        reference.release();

        return value;
      }
  ''';
}

class WinRTSetPropertyReturningReferenceProjection
    extends WinRTSetPropertyProjection with _ReferenceProjection {
  WinRTSetPropertyReturningReferenceProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName($referenceTypeArgFromParameter? value) {
        final referencePtr = value == null
            ? calloc<COMObject>()
            : $boxValueMethodCall

        ${ffiCall(params: 'referencePtr.ref')}

        if (value == null) free(referencePtr);
      }
  ''';
}
