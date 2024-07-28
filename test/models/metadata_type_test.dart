import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

void main() {
  group('MetadataType', () {
    test('can find enum value from package name', () {
      final wdk =
          MetadataType.fromPackageName('Microsoft.Windows.WDK.Win32Metadata');
      check(wdk).equals(MetadataType.wdk);
      final win32 =
          MetadataType.fromPackageName('Microsoft.Windows.SDK.Win32Metadata');
      check(win32).equals(MetadataType.win32);
      final winrt =
          MetadataType.fromPackageName('Microsoft.Windows.SDK.Contracts');
      check(winrt).equals(MetadataType.winrt);
    });

    test('throws an ArgumentError when enum value is not found', () {
      check(() => MetadataType.fromPackageName('Foo.Bar'))
          .throws<ArgumentError>()
          .has((e) => e.message, 'message')
          .equals('Invalid package name.');
    });
  });
}
