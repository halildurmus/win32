const excludedFunctions = <String>[
  // Relies on namespaces not imported yet
  'BroadcastSystemMessageEx',
  'ChooseFont',
  'CreateConsoleScreenBuffer',
  'GetLogicalProcessorInformationEx',
  'MessageBoxIndirect',
  'UpdateLayeredWindow',
  'UpdateLayeredWindowIndirect',

  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  'Windows.Win32.UI.WindowsAndMessaging.BSMINFO',
  'Windows.Win32.UI.WindowsAndMessaging.CHOOSEFONTW',
  'Windows.Win32.UI.WindowsAndMessaging.ICONMETRICSW',
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXPARAMSW',
  'Windows.Win32.UI.WindowsAndMessaging.NONCLIENTMETRICSW',
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYEXW',
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYW',
  'Windows.Win32.UI.WindowsAndMessaging.UPDATELAYEREDWINDOWINFO',
];

const excludedCallbacks = <String>[
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXCALLBACK',
];

const excludedImports = <String>[
  'graphics/gdi/structs.g.dart',
  'system/com/structs.g.dart',
  'system/stationsanddesktops/structs.g.dart',
  'system/systemservices/structs.g.dart',
  'ui/controls/structs.g.dart',
  'ui/textservices/structs.g.dart',
];
