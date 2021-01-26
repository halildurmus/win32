// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Enums and constants used by WinRT

// ignore_for_file: camel_case_types

/// @nodoc
const CLSID_CorMetaDataDispenser = '{E5CB7A31-7512-11D2-89CE-0080C792E5D8}';

/// {@category Enum}
class CorOpenFlags {
  static const ofRead = 0x00000000;
  static const ofWrite = 0x00000001;
  static const ofReadWriteMask = 0x00000001;
  static const ofCopyMemory = 0x00000002;
  static const ofCacheImage = 0x00000004;
  static const ofManifestMetadata = 0x00000008;
  static const ofReadOnly = 0x00000010;
  static const ofTakeOwnership = 0x00000020;
  static const ofNoTypeLib = 0x00000080;
  static const ofNoTransform = 0x00001000;
  static const ofReserved1 = 0x00000100;
  static const ofReserved2 = 0x00000200;
  static const ofReserved = 0xffffff40;
}

/// Windows.Foundation.AsyncStatus
/// {@category Enum}
class AsyncStatus {
  static const Started = 0;
  static const Completed = Started + 1;
  static const Canceled = Completed + 1;
  static const Error = Canceled + 1;
}

/// Windows.Storage.Pickers.PickerViewMode
/// {@category Enum}
class PickerViewMode {
  static const List = 0;
  static const Thumbnail = 1;
}

/// Windows.Storage.Pickers.PickerLocationId
/// {@category Enum}
class PickerLocationId {
  static const DocumentsLibrary = 0;
  static const ComputerFolder = 1;
  static const Desktop = 2;
  static const Downloads = 3;
  static const HomeGroup = 4;
  static const MusicLibrary = 5;
  static const PicturesLibrary = 6;
  static const VideosLibrary = 7;
  static const Objects3D = 8;
  static const Unspecified = 9;
}

/// Windows.Globalization.DayOfWeek
/// {@category Enum}
class DayOfWeek {
  static const Sunday = 0;
  static const Monday = 1;
  static const Tuesday = 2;
  static const Wednesday = 3;
  static const Thursday = 4;
  static const Friday = 5;
  static const Saturday = 6;
}
