import 'package:checks/checks.dart';
import 'package:test/scaffolding.dart';
import 'package:winmd/winmd.dart';

import '../../shared_setup.dart';

void main() {
  late MetadataIndex index;

  setUpAll(() async {
    index = await fixtures.loadWinrtMetadata();
  });

  group('PropertyMap', () {
    test('IImageFeatureDescriptor', () {
      final propertyMap = index.propertyMap.first;
      check(propertyMap.token).equals(0x15000000);
      check(propertyMap.parent.namespace).equals('Windows.AI.MachineLearning');
      check(propertyMap.parent.name).equals('IImageFeatureDescriptor');
      final properties = propertyMap.properties;
      check(properties.length).equals(4);
      check(properties[0].name).equals('BitmapAlphaMode');
      check(properties[1].name).equals('BitmapPixelFormat');
      check(properties[2].name).equals('Height');
      check(properties[3].name).equals('Width');
    });

    test('IImageFeatureDescriptor', () {
      final propertyMap = index.propertyMap.last;
      check(propertyMap.parent.namespace).equals('Windows.Web.UI.Interop');
      check(propertyMap.parent.name).equals('WebViewControlProcessOptions');
      final properties = propertyMap.properties;
      check(properties.length).equals(2);
      check(properties[0].name).equals('PrivateNetworkClientServerCapability');
      check(properties[1].name).equals('EnterpriseId');
    });
  });
}
