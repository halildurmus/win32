@TestOn('windows')

import 'dart:ffi';
import 'package:ffi/ffi.dart';

import 'package:test/test.dart';
import 'package:win32/win32.dart';

void main() {
  test('Volume management API', () {
    final volumeNamePtr =
        allocate<Uint16>(count: MAX_PATH).cast<Utf16>().cast<Utf16>();

    final hFindVolume = FindFirstVolume(volumeNamePtr, MAX_PATH);
    expect(hFindVolume, isNot(INVALID_HANDLE_VALUE));

    final volume = volumeNamePtr.unpackString(MAX_PATH);

    expect(volume, startsWith('\\\\?\\'));

    free(volumeNamePtr);
  });

  test('Power management API', () {
    final powerStatus = SYSTEM_POWER_STATUS.allocate();

    final result = GetSystemPowerStatus(powerStatus.addressOf);

    // Sanity check results against some API provided ranges
    final validBatteryPercentages = [for (var i = 0; i <= 100; i += 1) i]
      ..add(255); // [0..100, 255]

    expect(result, isNonZero);
    expect(powerStatus.ACLineStatus, isIn([0, 1, 255]));
    expect(powerStatus.SystemStatusFlag, isIn([0, 1]));
    expect(powerStatus.BatteryLifePercent, isIn(validBatteryPercentages));

    free(powerStatus.addressOf);
  });
}
