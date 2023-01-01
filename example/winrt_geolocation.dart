// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// File Open Picker from Dart

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/src/winrt/devices/geolocation/geolocator.dart';
import 'package:win32/winrt.dart';

void main() async {
  winrtInitialize();

  final status = Geolocator.requestAccessAsync();

  winrtUninitialize();
}
