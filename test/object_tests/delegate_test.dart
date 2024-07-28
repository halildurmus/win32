@TestOn('windows')
library;

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

// Exhaustively test a delegate object

void main() {
  late Scope scope;

  setUpAll(() async {
    scope = await MetadataStore.loadWin32Metadata();
  });

  // .class public auto auto sealed beforefieldinit Windows.Win32.UI.WindowsAndMessaging.WNDPROC
  //   extends [netstandard]System.MulticastDelegate
  // {
  //   .custom instance void [netstandard]System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute::.ctor(valuetype [netstandard]System.Runtime.InteropServices.CallingConvention) = (
  //     01 00 01 00 00 00 00 00
  //   )
  //   // Methods
  //   .method public hidebysig specialname rtspecialname
  //     instance void .ctor (
  //       object 'object',
  //       native int 'method'
  //     ) runtime managed
  //   {
  //   } // end of method WNDPROC::.ctor

  //   .method public hidebysig newslot virtual
  //     instance valuetype [Windows.Win32.winmd]Windows.Win32.System.SystemServices.LRESULT Invoke (
  //       [in] valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.HWND param0,
  //       [in] uint32 param1,
  //       [in] valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.WPARAM param2,
  //       [in] valuetype [Windows.Win32.winmd]Windows.Win32.UI.WindowsAndMessaging.LPARAM param3
  //     ) runtime managed
  //   {
  //   } // end of method WNDPROC::Invoke

  // } // end of class Windows.Win32.UI.WindowsAndMessaging.WNDPROC

  test('Windows.Win32.UI.WindowsAndMessaging.WNDPROC', () {
    final typeDef =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.WNDPROC')!;
    check(typeDef.customAttributes.length).equals(1);
    check(typeDef.isBeforeFieldInit).isTrue();
    check(typeDef.isDelegate).isTrue();
    check(typeDef.isSealed).isTrue();
    check(typeDef.name).equals('Windows.Win32.UI.WindowsAndMessaging.WNDPROC');
    check(typeDef.parent?.name).equals('System.MulticastDelegate');
    check(typeDef.representsAsClass).isTrue();
    check(typeDef.typeLayout).equals(TypeLayout.auto);
    check(typeDef.typeVisibility).equals(TypeVisibility.public);
    check(typeDef.stringFormat).equals(StringFormat.auto);

    final unmanagedFunctionPointerAttr = typeDef.findAttribute(
        'System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute');
    check(unmanagedFunctionPointerAttr).isNotNull();
    check(unmanagedFunctionPointerAttr!.signatureBlob.toList()).deepEquals([
      0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, //
    ]);

    check(typeDef.methods.length).equals(2);
    final [firstMethod, secondMethod] = typeDef.methods;

    check(firstMethod.implFeatures.codeType).equals(CodeType.runtime);
    check(firstMethod.implFeatures.isManaged).isTrue();
    check(firstMethod.isHideBySig).isTrue();
    check(firstMethod.isRTSpecialName).isTrue();
    check(firstMethod.isSpecialName).isTrue();
    check(firstMethod.memberAccess).equals(MemberAccess.public);
    check(firstMethod.name).equals('.ctor');
    check(firstMethod.returnType.typeIdentifier.baseType)
        .equals(BaseType.voidType);

    check(firstMethod.parameters.length).equals(2);
    final [firstMethodFirstParam, firstMethodSecondParam] =
        firstMethod.parameters;

    check(firstMethodFirstParam.name).equals('object');
    check(firstMethodFirstParam.typeIdentifier.baseType)
        .equals(BaseType.objectType);

    check(firstMethodSecondParam.name).equals('method');
    check(firstMethodSecondParam.typeIdentifier.baseType)
        .equals(BaseType.intPtrType);

    check(secondMethod.implFeatures.codeType).equals(CodeType.runtime);
    check(secondMethod.implFeatures.isManaged).isTrue();
    check(secondMethod.isHideBySig).isTrue();
    check(secondMethod.isVirtual).isTrue();
    check(secondMethod.memberAccess).equals(MemberAccess.public);
    check(secondMethod.name).equals('Invoke');
    check(secondMethod.returnType.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.LRESULT');
    check(secondMethod.vTableLayout).equals(VtableLayout.newSlot);

    check(secondMethod.parameters.length).equals(4);
    final [
      secondMethodFirstParam,
      secondMethodSecondParam,
      secondMethodThirdParam,
      secondMethodFourthParam
    ] = secondMethod.parameters;

    check(secondMethodFirstParam.isInParam).isTrue();
    check(secondMethodFirstParam.name).equals('param0');
    check(secondMethodFirstParam.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(secondMethodFirstParam.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.HWND');

    check(secondMethodSecondParam.isInParam).isTrue();
    check(secondMethodSecondParam.name).equals('param1');
    check(secondMethodSecondParam.typeIdentifier.baseType)
        .equals(BaseType.uint32Type);

    check(secondMethodThirdParam.isInParam).isTrue();
    check(secondMethodThirdParam.name).equals('param2');
    check(secondMethodThirdParam.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(secondMethodThirdParam.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.WPARAM');

    check(secondMethodFourthParam.isInParam).isTrue();
    check(secondMethodFourthParam.name).equals('param3');
    check(secondMethodFourthParam.typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(secondMethodFourthParam.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.LPARAM');
  });

  tearDownAll(MetadataStore.close);
}
