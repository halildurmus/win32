const excludedFunctions = <String>[
  // Relies on namespaces not imported yet
  'CreateConsoleScreenBuffer',
  'GetLogicalProcessorInformationEx',
  'UpdateLayeredWindow',

  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  'BSMINFO',
  'CHOOSEFONT',
  'ICONMETRICS',
  'UPDATELAYEREDWINDOWINFO',
  'NONCLIENTMETRICS',
  'OFNOTIFYEX',
  'OFNOTIFY',
];

const excludedCallbacks = <String>[
  'MSGBOXCALLBACK',
];

const excludedImports = <String>[
  'graphics/gdi/structs.g.dart',
  'graphics/gdi/structs.g.dart',
  'system/com/structs.g.dart',
  'system/stationsanddesktops/structs.g.dart',
  'system/systemservices/structs.g.dart',
  'ui/controls/structs.g.dart',
  'ui/controls/structs.g.dart',
  'ui/textservices/structs.g.dart',
];
