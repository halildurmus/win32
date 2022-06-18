// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

/// Identifies the storage location that the file picker presents to the
/// user.
///
/// {@category Enum}
enum PickerLocationId {
  DocumentsLibrary(0),
  ComputerFolder(1),
  Desktop(2),
  Downloads(3),
  HomeGroup(4),
  MusicLibrary(5),
  PicturesLibrary(6),
  VideosLibrary(7),
  Objects3D(8),
  Unspecified(9);

  final int value;

  const PickerLocationId(this.value);

  factory PickerLocationId.from(int value) =>
      PickerLocationId.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Indicates the view mode that the file picker is using to present items.
///
/// {@category Enum}
enum PickerViewMode {
  List(0),
  Thumbnail(1);

  final int value;

  const PickerViewMode(this.value);

  factory PickerViewMode.from(int value) =>
      PickerViewMode.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}
