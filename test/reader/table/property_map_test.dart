import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/windows_metadata.dart';

import '../../versions.dart';

void main() async {
  final index = await WindowsMetadataLoader().loadWinrtMetadata(
    version: winrtMetadataVersion,
  );

  group('PropertyMap', () {
    test('IImageFeatureDescriptor', () {
      final propertyMap = index.propertyMap.first;
      check(propertyMap.parent.namespace).equals('Windows.AI.MachineLearning');
      check(propertyMap.parent.name).equals('IImageFeatureDescriptor');
      final properties = propertyMap.properties.toList();
      check(properties.length).equals(4);
      check(properties[0].name).equals('BitmapAlphaMode');
      check(properties[1].name).equals('BitmapPixelFormat');
      check(properties[2].name).equals('Height');
      check(properties[3].name).equals('Width');
    });

    test('IImageFeatureDescriptor', () {
      final propertyMap = index.propertyMap.last;
      check(
        propertyMap.parent.namespace,
      ).equals('Windows.Web.Http.Diagnostics');
      check(propertyMap.parent.name).equals('IHttpDiagnosticSourceLocation');
      final properties = propertyMap.properties.toList();
      check(properties.length).equals(3);
      check(properties[0].name).equals('ColumnNumber');
      check(properties[1].name).equals('LineNumber');
      check(properties[2].name).equals('SourceUri');
    });
  });
}
