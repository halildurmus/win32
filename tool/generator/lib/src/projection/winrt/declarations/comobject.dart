import '../../utils.dart';
import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

mixin _ComObjectProjection on WinRTMethodProjection {
  String get methodReturnType {
    // The return types of methods in the IPropertyValueStatics are specified
    // as 'object' in WinMD. However, these methods actually return the
    // IPropertyValue interface (except for the CreateEmpty() and
    // CreateInspectable() methods, which return Pointer<COMObject>).
    final isMethodFromPropertyValueStatics =
        method.parent.name == 'Windows.Foundation.IPropertyValueStatics';
    if (isMethodFromPropertyValueStatics) {
      return ['CreateEmpty', 'CreateInspectable'].contains(method.name)
          ? 'Pointer<COMObject>'
          : 'IPropertyValue';
    }

    final typeIdentifierName = lastComponent(returnType.typeIdentifier.name);
    // TODO: Remove this once methods that return IAsyncActionWithProgress and
    // IAsyncOperationWithProgress delegates are supported.
    if (typeIdentifierName.startsWith('IAsync')) return 'Pointer<COMObject>';

    // Factory interface methods (constructors) cannot return null.
    final factoryInterfacePattern = RegExp(r'^(I[A-Z]\w+)Factory\d{0,1}$');
    if (factoryInterfacePattern.hasMatch(lastComponent(method.parent.name))) {
      return typeIdentifierName;
    }

    // IIterable.First() cannot return null.
    if (method.name == 'First' &&
        (method.parent.interfaces.any((element) =>
            element.typeSpec?.name.endsWith('IIterable`1') ?? false))) {
      return typeIdentifierName;
    }

    // IVector(View).GetAt() cannot return null.
    if (method.name == 'GetAt' &&
        (method.parent.interfaces.any((element) =>
            (element.typeSpec?.name.endsWith('IVector`1') ?? false) ||
            (element.typeSpec?.name.endsWith('IVectorView`1') ?? false)))) {
      return typeIdentifierName;
    }

    return '$typeIdentifierName?';
  }

  String get nullCheck {
    if (!methodReturnType.endsWith('?')) return '';
    return '''
    if (retValuePtr.ref.lpVtbl == nullptr) {
      free(retValuePtr);
      return null;
    }
''';
  }

  String get returnStatement {
    if (methodReturnType == 'Pointer<COMObject>') return 'return retValuePtr;';

    if (methodReturnType.endsWith('?')) {
      final returnTypeWithoutSuffix =
          // Remove the '?' suffix.
          methodReturnType.substring(0, methodReturnType.length - 1);
      return 'return $returnTypeWithoutSuffix.fromRawPointer(retValuePtr);';
    }

    return 'return $methodReturnType.fromRawPointer(retValuePtr);';
  }
}

class WinRTMethodReturningComObjectProjection extends WinRTMethodProjection
    with _ComObjectProjection {
  WinRTMethodReturningComObjectProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      $methodReturnType $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        ${ffiCall(freeRetValOnFailure: true)}

        $parametersPostamble

        $nullCheck

        $returnStatement
      }
''';
}

class WinRTGetPropertyReturningComObjectProjection
    extends WinRTGetPropertyProjection with _ComObjectProjection {
  WinRTGetPropertyReturningComObjectProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      $methodReturnType get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

        $nullCheck

        $returnStatement
      }
''';
}

class WinRTSetPropertyReturningComObjectProjection
    extends WinRTSetPropertyProjection with _ComObjectProjection {
  WinRTSetPropertyReturningComObjectProjection(
      super.method, super.vtableOffset);

  @override
  String toString() => '''
      set $exposedMethodName(${parameters.first.type.methodParamType}? value) {
        ${ffiCall(params: 'value == null ? nullptr : value.ptr.cast<Pointer<COMObject>>().value')}
      }
  ''';
}
