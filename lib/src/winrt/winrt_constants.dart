// winrt_constants.dart

// Enums and constants used by WinRT

// RoInitialize enum
class RO_INIT_TYPE {
  static final RO_INIT_SINGLETHREADED = 0;
  static final RO_INIT_MULTITHREADED = 1;
}

// Windows Runtime errors
const RO_E_METADATA_NAME_NOT_FOUND = 0x8000000F;
const RO_E_METADATA_NAME_IS_NAMESPACE = 0x80000010;
const RO_E_METADATA_INVALID_TYPE_FORMAT = 0x80000011;
const RO_E_INVALID_METADATA_FILE = 0x80000012;
const RO_E_CLOSED = 0x80000013;
const RO_E_EXCLUSIVE_WRITE = 0x80000014;
const RO_E_CHANGE_NOTIFICATION_IN_PROGRESS = 0x80000015;
const RO_E_ERROR_STRING_NOT_FOUND = 0x80000016;

// Windows.Foundation.AsyncStatus
class AsyncStatus {
  static final Started = 0;
  static final Completed = (Started + 1);
  static final Canceled = (Completed + 1);
  static final Error = (Canceled + 1);
}

// Windows.Storage.Pickers.PickerViewMode
class PickerViewMode {
  static final List = 0;
  static final Thumbnail = 1;
}

// Windows.Storage.Pickers.PickerLocationId
class PickerLocationId {
  static final DocumentsLibrary = 0;
  static final ComputerFolder = 1;
  static final Desktop = 2;
  static final Downloads = 3;
  static final HomeGroup = 4;
  static final MusicLibrary = 5;
  static final PicturesLibrary = 6;
  static final VideosLibrary = 7;
  static final Objects3D = 8;
  static final Unspecified = 9;
}

// Windows.Globalization.DayOfWeek
class DayOfWeek {
  static final Sunday = 0;
  static final Monday = 1;
  static final Tuesday = 2;
  static final Wednesday = 3;
  static final Thursday = 4;
  static final Friday = 5;
  static final Saturday = 6;
}
