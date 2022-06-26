// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common enumerations used in the Windows Runtime APIs.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: constant_identifier_names

import '../../winrt/internal/flags_enum.dart';

/// Describes the attributes of a file or folder.
///
/// {@category Enum}
class FileAttributes extends FlagsEnum {
  const FileAttributes(super.value, {super.name});

  factory FileAttributes.from(int value) =>
      FileAttributes.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));

  static const Normal = FileAttributes(0, name: 'Normal');
  static const ReadOnly = FileAttributes(1, name: 'ReadOnly');
  static const Directory = FileAttributes(16, name: 'Directory');
  static const Archive = FileAttributes(32, name: 'Archive');
  static const Temporary = FileAttributes(256, name: 'Temporary');
  static const LocallyIncomplete =
      FileAttributes(512, name: 'LocallyIncomplete');

  static const List<FileAttributes> values = [
    Normal,
    ReadOnly,
    Directory,
    Archive,
    Temporary,
    LocallyIncomplete
  ];

  FileAttributes operator &(FileAttributes other) =>
      FileAttributes(value & other.value);

  FileAttributes operator |(FileAttributes other) =>
      FileAttributes(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.ReadOnly | FileAttributes.Archive;
  /// print(fileAttributes.hasFlag(FileAttributes.ReadOnly)); // prints `true`
  /// print(fileAttributes.hasFlag(FileAttributes.Temporary)); // prints `false`
  /// print(fileAttributes.hasFlag(
  ///     FileAttributes.ReadOnly | FileAttributes.Archive)); // prints `true`
  /// ```
  bool hasFlag(FileAttributes flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
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
class StorageItemTypes extends FlagsEnum {
  const StorageItemTypes(super.value, {super.name});

  factory StorageItemTypes.from(int value) =>
      StorageItemTypes.values.firstWhere((e) => e.value == value,
          orElse: () => throw ArgumentError.value(
              value, 'value', 'No enum value with that value'));

  static const None = StorageItemTypes(0, name: 'None');
  static const File = StorageItemTypes(1, name: 'File');
  static const Folder = StorageItemTypes(2, name: 'Folder');

  static const List<StorageItemTypes> values = [None, File, Folder];

  StorageItemTypes operator &(StorageItemTypes other) =>
      StorageItemTypes(value & other.value);

  StorageItemTypes operator |(StorageItemTypes other) =>
      StorageItemTypes(value | other.value);

  /// Determines whether one or more bit fields are set in the current enum
  /// value.
  ///
  /// ```dart
  /// final fileAttributes = FileAttributes.ReadOnly | FileAttributes.Archive;
  /// print(fileAttributes.hasFlag(FileAttributes.ReadOnly)); // prints `true`
  /// print(fileAttributes.hasFlag(FileAttributes.Temporary)); // prints `false`
  /// print(fileAttributes.hasFlag(
  ///     FileAttributes.ReadOnly | FileAttributes.Archive)); // prints `true`
  /// ```
  bool hasFlag(StorageItemTypes flag) {
    if (value != 0 && flag.value == 0) return false;
    return value & flag.value == flag.value;
  }
}
