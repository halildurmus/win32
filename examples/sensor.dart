// Example of retrieving a sensor using the Sensor API.

// C++ implementation can be found here:
// https://learn.microsoft.com/windows/win32/sensorsapi/retrieving-a-sensor

import 'package:win32/win32.dart';

void main() {
  CoInitializeEx(COINIT_MULTITHREADED);

  final sensorManager = createInstance<ISensorManager>(SensorManager);

  // Replace this with the sensor category you're looking for.
  final sampleDateTimeSensorCategory = Guid(
    '{062a5c3b-44c1-4ad1-8efc-0f65b2e4ad48}',
  );
  final coll = sensorManager.getSensorsByCategory(
    sampleDateTimeSensorCategory.ptr,
  );
  if (coll != null && coll.getCount() > 1) {
    print('Found items');
  }
}
