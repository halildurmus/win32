// Example of retrieving a sensor using the Sensor API.

// C++ implementation can be found here:
// https://learn.microsoft.com/windows/win32/sensorsapi/retrieving-a-sensor

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  // Replace this with the sensor category you're looking for.
  final sampleDateTimeSensorCategory = GUID(
    '{062a5c3b-44c1-4ad1-8efc-0f65b2e4ad48}',
  );

  using((arena) {
    final sensorManager = arena.com<ISensorManager>(SensorManager);
    final collection = sensorManager.getSensorsByCategory(
      sampleDateTimeSensorCategory.toNative(allocator: arena),
    );
    if (collection != null && collection.getCount() > 1) {
      arena.adopt(collection);
      print('Found items');
    }
  });
}
