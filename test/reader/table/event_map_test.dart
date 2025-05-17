import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('EventMap', () {
    test('ISplashScreen', () {
      final eventMap = index.eventMap.first;
      check(eventMap.token).equals(0x12000000);
      check(eventMap.parent.namespace).equals('Windows.ApplicationModel');
      check(eventMap.parent.name).equals('IPackageCatalog');
      final events = eventMap.events;
      check(events.length).equals(5);
      check(events[0].name).equals('PackageInstalling');
      check(events[1].name).equals('PackageStaging');
      check(events[2].name).equals('PackageStatusChanged');
      check(events[3].name).equals('PackageUninstalling');
      check(events[4].name).equals('PackageUpdating');
    });

    test('IHttpDiagnosticProvider', () {
      final eventMap = index.eventMap.last;
      check(eventMap.parent.namespace).equals('Windows.Web.UI.Interop');
      check(eventMap.parent.name).equals('WebViewControlProcess');
      final events = eventMap.events;
      check(events.length).equals(1);
      check(events[0].name).equals('ProcessExited');
    });
  });
}
