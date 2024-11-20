import 'package:checks/checks.dart';
import 'package:generator/generator.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('String', () {
    test('capitalize', () {
      check('value'.capitalize()).equals('Value');
      check('camelCase'.capitalize()).equals('CamelCase');
      check('X'.capitalize()).equals('X');
      check(''.capitalize()).isEmpty();
    });

    group('escapeSpecialChars', () {
      test('escapes common special characters', () {
        check('\b'.escapeSpecialChars()).equals(r'\b');
        check('\f'.escapeSpecialChars()).equals(r'\f');
        check('\n'.escapeSpecialChars()).equals(r'\n');
        check('\r'.escapeSpecialChars()).equals(r'\r');
        check('\t'.escapeSpecialChars()).equals(r'\t');
        check('\v'.escapeSpecialChars()).equals(r'\v');
        check(r'Hello$World'.escapeSpecialChars()).equals(r'Hello\$World');
        check(r'Backslash: \'.escapeSpecialChars()).equals(r'Backslash: \\');
      });

      test(r'encodes Unicode characters in \uXXXX format', () {
        check('é'.escapeSpecialChars()).equals(r'\xe9');
        check('€'.escapeSpecialChars()).equals(r'\u20ac');
        check('𐍈'.escapeSpecialChars()).equals(r'\ud800\xdf48');
      });

      test(r'encodes non-printable ASCII characters in \xXX format', () {
        check('\x00'.escapeSpecialChars()).equals(r'\x00');
        check('\x1F'.escapeSpecialChars()).equals(r'\x1f');
        check('\x7F'.escapeSpecialChars()).equals(r'\x7f');
      });

      test('handles mixed content correctly', () {
        check('Hello\nWorld!'.escapeSpecialChars()).equals(r'Hello\nWorld!');
        check('Tab:	End'.escapeSpecialChars()).equals(r'Tab:\tEnd');
        check(
          'Non-ASCII: €\n'.escapeSpecialChars(),
        ).equals(r'Non-ASCII: \u20ac\n');
      });
    });

    test('lastComponent', () {
      check(
        'Windows.Win32.System.Com.IUnknown'.lastComponent,
      ).equals('IUnknown');
      check(
        'Windows.Win32.System.Mmc._AppEvents'.lastComponent,
      ).equals('_AppEvents');
      check('IUri'.lastComponent).equals('IUri');
    });

    test('nullable', () {
      check('foo'.nullable()).equals('foo?');
      check('foo?'.nullable()).equals('foo?');
    });

    test('privatize', () {
      check('foo'.privatize()).equals('_foo');
      check('_foo'.privatize()).equals('__foo');
      check(''.privatize()).isEmpty();
    });

    test('quote', () {
      check('foo'.quote()).equals("'foo'");
      check("'bar'".quote()).equals("''bar''");
    });

    test('safeFilename', () {
      check(
        'Windows.Win32.UI.Accessibility.IUIAutomation'.safeFilename,
      ).equals('iuiautomation.g.dart');
      check(
        'Windows.Win32.System.Mmc._AppEvents'.safeFilename,
      ).equals('appevents.g.dart');
    });

    test('safeIdentifier', () {
      check('break'.safeIdentifier).equals(r'break$');
      check('int'.safeIdentifier).equals(r'int$');
      check('Double'.safeIdentifier).equals(r'Double$');
      check('GUID'.safeIdentifier).equals(r'GUID$');
      check('ptr'.safeIdentifier).equals(r'ptr$');
      check('_AppEvents'.safeIdentifier).equals('AppEvents');
      check('uri'.safeIdentifier).equals('uri');
    });

    test('safeTypeName', () {
      check('Array<__Handle>'.safeTypeName).equals('Array<Handle>');
      check(
        'Pointer<_alljoyn_abouticon_handle>'.safeTypeName,
      ).equals('Pointer<alljoyn_abouticon_handle>');
      check('_AppEvents'.safeTypeName).equals('AppEvents');
      check('IUnknown'.safeTypeName).equals('IUnknown');
    });

    test('stripAnsiUnicodeSuffix', () {
      check('ENUMLOGFONTEXA'.stripAnsiUnicodeSuffix()).equals('ENUMLOGFONTEX');
      check('ENUMLOGFONTEXW'.stripAnsiUnicodeSuffix()).equals('ENUMLOGFONTEX');
      check('ADDJOB_INFO_1A'.stripAnsiUnicodeSuffix()).equals('ADDJOB_INFO_1');
      check('ADDJOB_INFO_1W'.stripAnsiUnicodeSuffix()).equals('ADDJOB_INFO_1');
    });

    test('stripArray', () {
      check('Array<Int32>'.stripArray()).equals('Int32');
      check('noArray'.stripArray()).equals('noArray');
    });

    test('stripLeadingUnderscores', () {
      check('_leading'.stripLeadingUnderscores()).equals('leading');
      check('__leading'.stripLeadingUnderscores()).equals('leading');
      check('_2'.stripLeadingUnderscores()).equals('x2');
      check('noUnderscore'.stripLeadingUnderscores()).equals('noUnderscore');
    });

    test('stripPointer', () {
      check('Pointer<Int32>'.stripPointer()).equals('Int32');
      check('Pointer<Pointer<Int32>>'.stripPointer()).equals('Pointer<Int32>');
      check('noPointer'.stripPointer()).equals('noPointer');
    });

    test('stripTrailingUnderscores', () {
      check('trailing_'.stripTrailingUnderscores()).equals('trailing');
      check('trailing__'.stripTrailingUnderscores()).equals('trailing');
      check('noUnderscore'.stripTrailingUnderscores()).equals('noUnderscore');
    });

    test('toCamelCase', () {
      check('TitleCase'.toCamelCase()).equals('titleCase');
      check('camelCase'.toCamelCase()).equals('camelCase');
      check('X'.toCamelCase()).equals('x');
      check(''.toCamelCase()).isEmpty();
    });

    test('toFolderPath', () {
      check('Windows.Win32.System.Console'.toFolderPath()).equals('system');
      check('Windows.Win32.UI.Shell.Common'.toFolderPath()).equals('ui/shell');
    });
  });
}
