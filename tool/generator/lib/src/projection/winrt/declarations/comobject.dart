import '../../utils.dart';
import '../winrt_get_property.dart';
import '../winrt_method.dart';
import '../winrt_set_property.dart';

mixin _ComObjectProjection on WinRTMethodProjection {
  String get retType {
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
    // TODO: Remove this once asynchronous methods are supported
    if (typeIdentifierName.startsWith('IAsync')) return 'Pointer<COMObject>';

    return typeIdentifierName;
  }

  String get returnStatement => retType == 'Pointer<COMObject>'
      ? 'return retValuePtr;'
      : 'return $retType.fromRawPointer(retValuePtr);';
}

class WinRTMethodReturningComObjectProjection extends WinRTMethodProjection
    with _ComObjectProjection {
  WinRTMethodReturningComObjectProjection(super.method, super.vtableOffset);

  @override
  String toString() => '''
      $retType $camelCasedName($methodParams) {
        final retValuePtr = calloc<COMObject>();
        $parametersPreamble

        ${ffiCall(freeRetValOnFailure: true)}

        $parametersPostamble

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
      $retType get $exposedMethodName {
        final retValuePtr = calloc<COMObject>();

        ${ffiCall(freeRetValOnFailure: true)}

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
      set $exposedMethodName(${parameters.first.type.methodParamType} value) {
        ${ffiCall(params: 'value.ptr.cast<Pointer<COMObject>>().value')}
      }
  ''';
}
