const winmdGenerated = [
  'advapi32',
  // 'bthprops',
  'comctl32',
  'comdlg32',
  'dxva2',
  'gdi32',
  'powrprof',
  'rometadata',
  // 'shcore',
  'version',
  'winmm'
];

// psapi is missing because of
// https://github.com/microsoft/win32metadata/issues/229

// shcore is missing because module is api-ms-win-shcore-scaling-l1-1-1