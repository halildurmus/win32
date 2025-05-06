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
      check(
        eventMap.parent.namespace,
      ).equals('Windows.ApplicationModel.Activation');
      check(eventMap.parent.name).equals('ISplashScreen');
      final events = eventMap.events.toList();
      check(events.length).equals(1);
      check(events[0].name).equals('Dismissed');
    });

    test('IHttpDiagnosticProvider', () {
      final eventMap = index.eventMap.last;
      check(eventMap.parent.namespace).equals('Windows.Web.Http.Diagnostics');
      check(eventMap.parent.name).equals('IHttpDiagnosticProvider');
      final events = eventMap.events.toList();
      check(events.length).equals(3);
      check(events[0].name).equals('RequestResponseCompleted');
      check(events[1].name).equals('RequestSent');
      check(events[2].name).equals('ResponseReceived');
    });
  });
}
