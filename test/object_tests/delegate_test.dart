@TestOn('windows')

import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

/// Exhaustively test a delegate object
void main() {
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
    final scope = MetadataStore.getWin32Scope();
    final wndProc =
        scope.findTypeDef('Windows.Win32.UI.WindowsAndMessaging.WNDPROC')!;

    check(wndProc.isDelegate).isTrue();
    check(wndProc.representsAsClass).isTrue();
    check(wndProc.typeVisibility).equals(TypeVisibility.public);
    check(wndProc.typeLayout).equals(TypeLayout.auto);
    check(wndProc.stringFormat).equals(StringFormat.auto);
    check(wndProc.isSealed).isTrue();
    check(wndProc.isBeforeFieldInit).isTrue();
    check(wndProc.name).equals('Windows.Win32.UI.WindowsAndMessaging.WNDPROC');
    check(wndProc.parent?.name).equals('System.MulticastDelegate');

    check(wndProc.customAttributes.length).equals(1);
    // expect(
    //     wndProc.customAttributes.first.name,
    //     equals(
    //         'System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute'));
    // check(wndProc.customAttributes[0].hasAttribute(CorAttributeAttr.aaInstance)).isTrue();
    check(wndProc
            .findAttribute(
                'System.Runtime.InteropServices.UnmanagedFunctionPointerAttribute')!
            .signatureBlob
            .toList())
        .deepEquals([
      0x01, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, //
    ]);

    check(wndProc.methods.length).equals(2);
    check(wndProc.methods[0].memberAccess).equals(MemberAccess.public);
    check(wndProc.methods[0].isHideBySig).isTrue();
    check(wndProc.methods[0].isSpecialName).isTrue();
    check(wndProc.methods[0].isRTSpecialName).isTrue();

    check(wndProc.methods[0].returnType.typeIdentifier.baseType)
        .equals(BaseType.voidType);
    check(wndProc.methods[0].name).equals('.ctor');
    check(wndProc.methods[0].parameters.length).equals(2);

    check(wndProc.methods[0].parameters[0].name).equals('object');
    check(wndProc.methods[0].parameters[0].typeIdentifier.baseType)
        .equals(BaseType.objectType);

    check(wndProc.methods[0].parameters[1].name).equals('method');
    check(wndProc.methods[0].parameters[1].typeIdentifier.baseType)
        .equals(BaseType.intPtrType);
    check(wndProc.methods[0].implFeatures.codeType).equals(CodeType.runtime);
    check(wndProc.methods[0].implFeatures.isManaged).isTrue();

    check(wndProc.methods[1].memberAccess).equals(MemberAccess.public);
    check(wndProc.methods[1].isHideBySig).isTrue();
    check(wndProc.methods[1].vTableLayout).equals(VtableLayout.newSlot);
    check(wndProc.methods[1].isVirtual).isTrue();

    check(wndProc.methods[1].returnType.typeIdentifier.name)
        .equals('Windows.Win32.Foundation.LRESULT');
    check(wndProc.methods[1].name).equals('Invoke');
    check(wndProc.methods[1].parameters.length).equals(4);

    check(wndProc.methods[1].parameters[0].isInParam).isTrue();
    check(wndProc.methods[1].parameters[0].name).equals('param0');
    check(wndProc.methods[1].parameters[0].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(wndProc.methods[1].parameters[0].typeIdentifier.name)
        .equals('Windows.Win32.Foundation.HWND');

    check(wndProc.methods[1].parameters[1].isInParam).isTrue();
    check(wndProc.methods[1].parameters[1].name).equals('param1');
    check(wndProc.methods[1].parameters[1].typeIdentifier.baseType)
        .equals(BaseType.uint32Type);

    check(wndProc.methods[1].parameters[2].isInParam).isTrue();
    check(wndProc.methods[1].parameters[2].name).equals('param2');
    check(wndProc.methods[1].parameters[2].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(wndProc.methods[1].parameters[2].typeIdentifier.name)
        .equals('Windows.Win32.Foundation.WPARAM');

    check(wndProc.methods[1].parameters[3].isInParam).isTrue();
    check(wndProc.methods[1].parameters[3].name).equals('param3');
    check(wndProc.methods[1].parameters[3].typeIdentifier.baseType)
        .equals(BaseType.valueTypeModifier);
    check(wndProc.methods[1].parameters[3].typeIdentifier.name)
        .equals('Windows.Win32.Foundation.LPARAM');
    check(wndProc.methods[1].implFeatures.codeType).equals(CodeType.runtime);
    check(wndProc.methods[1].implFeatures.isManaged).isTrue();
  });
}
