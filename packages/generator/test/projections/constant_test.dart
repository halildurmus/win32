import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:meta/meta.dart';
import 'package:test/scaffolding.dart';

void main() {
  setUpAll(WindowsMetadata.load);

  group('ConstantProjection', () {
    testConstant('CO_E_NOTINITIALIZED', (projection) {
      check(projection.name).equals('CO_E_NOTINITIALIZED');
      check(projection.originalName).equals('CO_E_NOTINITIALIZED');
      check(projection.type).equals(.signedInt);
    });

    testConstant('E_NOINTERFACE', (projection) {
      check(projection.name).equals('E_NOINTERFACE');
      check(projection.originalName).equals('E_NOINTERFACE');
      check(projection.type).equals(.signedInt);
    });

    testConstant('FALSE', (projection) {
      check(projection.name).equals('FALSE');
      check(projection.originalName).equals('FALSE');
      check(projection.type).equals(.int$);
    });

    testConstant('S_FALSE', (projection) {
      check(projection.name).equals('S_FALSE');
      check(projection.originalName).equals('S_FALSE');
      check(projection.type).equals(.signedInt);
    });

    testConstant('S_OK', (projection) {
      check(projection.name).equals('S_OK');
      check(projection.originalName).equals('S_OK');
      check(projection.type).equals(.signedInt);
    });

    testConstant('STATUS_NOT_IMPLEMENTED', (projection) {
      check(projection.name).equals('STATUS_NOT_IMPLEMENTED');
      check(projection.originalName).equals('STATUS_NOT_IMPLEMENTED');
      check(projection.type).equals(.signedInt);
    });

    testConstant('TRUE', (projection) {
      check(projection.name).equals('TRUE');
      check(projection.originalName).equals('TRUE');
      check(projection.type).equals(.int$);
    });

    testConstant('VARIANT_FALSE', (projection) {
      check(projection.name).equals('VARIANT_FALSE');
      check(projection.originalName).equals('VARIANT_FALSE');
      check(projection.type).equals(.int$);
    });

    testConstant('VARIANT_TRUE', (projection) {
      check(projection.name).equals('VARIANT_TRUE');
      check(projection.originalName).equals('VARIANT_TRUE');
      check(projection.type).equals(.int$);
    });

    testConstant('U8_LEAD3_T1_BITS', (projection) {
      check(projection.name).equals('U8_LEAD3_T1_BITS');
      check(projection.originalName).equals('U8_LEAD3_T1_BITS');
      check(projection.type).equals(.string);
    });

    testConstant('U8_LEAD4_T1_BITS', (projection) {
      check(projection.name).equals('U8_LEAD4_T1_BITS');
      check(projection.originalName).equals('U8_LEAD4_T1_BITS');
      check(projection.type).equals(.string);
    });

    testConstant('Speech_Default_Weight', (projection) {
      check(projection.name).equals('Speech_Default_Weight');
      check(projection.originalName).equals('Speech_Default_Weight');
      check(projection.type).equals(.double$);
    });

    testConstant('SPREG_USER_ROOT', (projection) {
      check(projection.name).equals('SPREG_USER_ROOT');
      check(projection.originalName).equals('SPREG_USER_ROOT');
      check(projection.type).equals(.string);
    });

    testConstant('ALL_TRANSPORTS', (projection) {
      check(projection.name).equals('ALL_TRANSPORTS');
      check(projection.originalName).equals('ALL_TRANSPORTS');
      check(projection.type).equals(.string);
    });

    testConstant('ALERTER_MAILSLOT', (projection) {
      check(projection.name).equals('ALERTER_MAILSLOT');
      check(projection.originalName).equals('ALERTER_MAILSLOT');
      check(projection.type).equals(.string);
    });

    testConstant('SECURITY_NT_AUTHORITY', (projection) {
      check(projection.name).equals('SECURITY_NT_AUTHORITY');
      check(projection.originalName).equals('SECURITY_NT_AUTHORITY');
      check(projection.type).equals(.sidIdentifierAuthority);
    });

    testConstant('OCSP_BASIC_RESPONSE', (projection) {
      check(projection.name).equals('OCSP_BASIC_RESPONSE');
      check(projection.originalName).equals('OCSP_BASIC_RESPONSE');
      check(projection.type).equals(.pcstr);
    });

    testConstant('PKEY_FileName', (projection) {
      check(projection.name).equals('PKEY_FileName');
      check(projection.originalName).equals('PKEY_FileName');
      check(projection.type).equals(.propertyKey);
    });

    testConstant('HKEY_LOCAL_MACHINE', (projection) {
      check(projection.name).equals('HKEY_LOCAL_MACHINE');
      check(projection.originalName).equals('HKEY_LOCAL_MACHINE');
      check(projection.type).equals(.handle);
    });

    testConstant('SRWLOCK_INIT', (projection) {
      check(projection.name).equals('SRWLOCK_INIT');
      check(projection.originalName).equals('SRWLOCK_INIT');
      check(projection.type).equals(.srwLock);
    });

    testConstant('UIA_ScrollPatternNoScroll', (projection) {
      check(projection.name).equals('UIA_ScrollPatternNoScroll');
      check(projection.originalName).equals('UIA_ScrollPatternNoScroll');
      check(projection.type).equals(.double$);
    });

    testConstant('DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2', (projection) {
      check(
        projection.name,
      ).equals('DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2');
      check(
        projection.originalName,
      ).equals('DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2');
      check(projection.type).equals(.handle);
    });

    testConstant('wszHOOK_ABOVE', (projection) {
      check(projection.name).equals('wszHOOK_ABOVE');
      check(projection.originalName).equals('wszHOOK_ABOVE');
      check(projection.type).equals(.string);
    });

    testConstant('FOLDERID_System', (projection) {
      check(projection.name).equals('FOLDERID_System');
      check(projection.originalName).equals('FOLDERID_System');
      check(projection.type).equals(.guid);
    });

    testConstant('HWND_TOP', (projection) {
      check(projection.name).equals('HWND_TOP');
      check(projection.originalName).equals('HWND_TOP');
      check(projection.type).equals(.handle);
    });

    testConstant('IDC_ARROW', (projection) {
      check(projection.name).equals('IDC_ARROW');
      check(projection.originalName).equals('IDC_ARROW');
      check(projection.type).equals(.pcwstr);
    });

    testConstant('WM_CREATE', (projection) {
      check(projection.name).equals('WM_CREATE');
      check(projection.originalName).equals('WM_CREATE');
      check(projection.type).equals(.int$);
    });
  });
}

@isTest
void testConstant(
  String constantName,
  void Function(ConstantProjection) projection,
) {
  test(constantName, () {
    final constant = WindowsMetadata.findConstantByName(constantName);
    projection(.new(constant));
  });
}
