// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// File Open Picker from Dart

import 'package:win32/winrt.dart';

void main() async {
  winrtInitialize();

  final status = await Geolocator.requestAccessAsync();
  if (status == GeolocationAccessStatus.denied) {
    print('Error: Location access denied.\n\n'
        'Grant access from Windows by going to Settings / Privacy & security / '
        'location,\nand turning on the following settings:\n'
        ' - Location services\n'
        ' - Let apps access your location\n'
        ' - Let desktop apps access your location\n\n'
        'Then try this example again.');
  } else {
    final locator = Geolocator()..allowFallbackToConsentlessPositions();
    final location = await locator.getGeopositionAsync();

    if (location != null) {
      print('Current location: (${location.coordinate.latitude}, '
          '${location.coordinate.longitude})');
      print('Location accuracy: ±${location.coordinate.accuracy} meters');
      print('Current heading: ${location.coordinate.heading ?? 'N/A'}');
      final positionSource = location.coordinate.positionSource;
      print('Position source: ${positionSource.name}');
    } else {
      print('No location received.');
    }
  }

  winrtUninitialize();
}
