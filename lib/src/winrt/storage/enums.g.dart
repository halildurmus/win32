// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

/// Describes the attributes of a file or folder.
///
/// {@category Enum}
enum FileAttributes {
  Normal(0),
  ReadOnly(1),
  Directory(16),
  Archive(32),
  Temporary(256),
  LocallyIncomplete(512);

  final int value;

  const FileAttributes(this.value);

  factory FileAttributes.from(int value) =>
      FileAttributes.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));

  static Set<FileAttributes> createSetFrom(int value) {
    final values =
        FileAttributes.values.skip(1).where((e) => value & e.value == e.value);
    return Set.unmodifiable(
        values.isEmpty ? [FileAttributes.values.first] : values);
  }
}

/// Specifies what to do if a file or folder with the specified name already
/// exists in the current folder when you copy, move, or rename a file or
/// folder.
///
/// {@category Enum}
enum NameCollisionOption {
  GenerateUniqueName(0),
  ReplaceExisting(1),
  FailIfExists(2);

  final int value;

  const NameCollisionOption(this.value);

  factory NameCollisionOption.from(int value) =>
      NameCollisionOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Specifies whether a deleted item is moved to the Recycle Bin or
/// permanently deleted.
///
/// {@category Enum}
enum StorageDeleteOption {
  Default(0),
  PermanentDelete(1);

  final int value;

  const StorageDeleteOption(this.value);

  factory StorageDeleteOption.from(int value) =>
      StorageDeleteOption.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));
}

/// Describes whether an item that implements the IStorageItem interface is
/// a file or a folder.
///
/// {@category Enum}
enum StorageItemTypes {
  None(0),
  File(1),
  Folder(2);

  final int value;

  const StorageItemTypes(this.value);

  factory StorageItemTypes.from(int value) =>
      StorageItemTypes.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));

  static Set<StorageItemTypes> createSetFrom(int value) {
    final values = StorageItemTypes.values
        .skip(1)
        .where((e) => value & e.value == e.value);
    return Set.unmodifiable(
        values.isEmpty ? [StorageItemTypes.values.first] : values);
  }
}
