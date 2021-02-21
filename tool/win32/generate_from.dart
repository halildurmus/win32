const winmdGenerated = [
  'advapi32',
  // 'bthprops',
  'comctl32',
  'comdlg32',
  'dxva2',
  'gdi32',
  'oleaut32',
  'powrprof',
  // 'psapi',
  'rometadata',
  // 'shcore',
  // 'shell32',
  'version',
  'winmm'
];

// bthprops is broken because of BLUETOOTH_DEVICE_INFO_STRUCT incorrect name

// psapi is missing because of
// https://github.com/microsoft/win32metadata/issues/229

// shcore is missing because module is api-ms-win-shcore-scaling-l1-1-1

// shell32 is missing because of SHGetKnownFolderPath (Dart test fails)