import 'dart:ffi';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('PROPERTYKEY.DeviceClass_ClassName()', () {
    final pkey = PROPERTYKEY.DeviceClass_ClassName();
    expect(pkey.ref.fmtid.toString(),
        equals('{259abffc-50a7-47ce-af08-68c9a7d73366}'));
    expect(pkey.ref.pid, equals(3));
    free(pkey);
  });

  test('PROPERTYKEY.DeviceDisplay_FriendlyName()', () {
    final pkey = PROPERTYKEY.DeviceDisplay_FriendlyName();
    expect(pkey.ref.fmtid.toString(),
        equals('{656a3bb3-ecc0-43fd-8477-4ae0404a96cd}'));
    expect(pkey.ref.pid, equals(12288));
    free(pkey);
  });

  test('PROPERTYKEY.DeviceInterface_FriendlyName()', () {
    final pkey = PROPERTYKEY.DeviceInterface_FriendlyName();
    expect(pkey.ref.fmtid.toString(),
        equals('{026e516e-b814-414b-83cd-856d6fef4822}'));
    expect(pkey.ref.pid, equals(2));
    free(pkey);
  });

  test('PROPERTYKEY.Device_InstanceId()', () {
    final pkey = PROPERTYKEY.Device_InstanceId();
    expect(pkey.ref.fmtid.toString(),
        equals('{78c34fc8-104a-4aca-9ea4-524d52996e57}'));
    expect(pkey.ref.pid, equals(256));
    free(pkey);
  });

  test('PROPERTYKEY.Hardware_SerialNumber()', () {
    final pkey = PROPERTYKEY.Hardware_SerialNumber();
    expect(pkey.ref.fmtid.toString(),
        equals('{5eaf3ef2-e0ca-4598-bf06-71ed1d9dd953}'));
    expect(pkey.ref.pid, equals(8));
    free(pkey);
  });

  test('PROPERTYKEY.PNPX_IpAddress()', () {
    final pkey = PROPERTYKEY.PNPX_IpAddress();
    expect(pkey.ref.fmtid.toString(),
        equals('{656a3bb3-ecc0-43fd-8477-4ae0404a96cd}'));
    expect(pkey.ref.pid, equals(12297));
    free(pkey);
  });
}
