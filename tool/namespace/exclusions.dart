const excludedFunctions = <String>[
  // Relies on namespaces not imported yet
  'BroadcastSystemMessageEx',
  'ChangeDisplaySettings',
  'ChangeDisplaySettingsEx',
  'ChooseFont',
  'CreateConsoleScreenBuffer',
  'CreateDC',
  'CreateFontIndirectEx',
  'CreateIC',
  'EnumDisplaySettings',
  'EnumDisplaySettingsEx',
  'ExtCreateRegion',
  'GetLogicalProcessorInformationEx',
  'GetOutlineTextMetrics',
  'GetRegionData',
  'MessageBoxIndirect',
  'ResetDC',
  'SetWinMetaFileBits',
  'UpdateLayeredWindow',
  'UpdateLayeredWindowIndirect',

  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  // ANSI
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACE',

  // To fix
  'Windows.Win32.Graphics.Gdi.AXESLISTW',
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACEW',
  'Windows.Win32.Graphics.Gdi.EMREXTCREATEFONTINDIRECTW',
  'Windows.Win32.Graphics.Gdi.ENUMLOGFONTEXDVW',
  'Windows.Win32.Graphics.Gdi.ENUMTEXTMETRICW',
  'Windows.Win32.Graphics.Gdi.NEWTEXTMETRICEXW',

  // Temporary
  'Windows.Win32.Graphics.Gdi.BITMAPV4HEADER',
  'Windows.Win32.Graphics.Gdi.BITMAPV5HEADER',
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO',
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SDR_WHITE_LEVEL',
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE',
  'Windows.Win32.Graphics.Gdi.EMRPIXELFORMAT',
  'Windows.Win32.Graphics.Gdi.OUTLINETEXTMETRICW',
  'Windows.Win32.UI.WindowsAndMessaging.BSMINFO',
  'Windows.Win32.UI.WindowsAndMessaging.CHOOSEFONTW',
  'Windows.Win32.UI.WindowsAndMessaging.ICONMETRICSW',
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXPARAMSW',
  'Windows.Win32.UI.WindowsAndMessaging.NONCLIENTMETRICSW',
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYEXW',
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYW',
  'Windows.Win32.UI.WindowsAndMessaging.UPDATELAYEREDWINDOWINFO',
  ''
];

const excludedCallbacks = <String>[
  'Windows.Win32.Graphics.Gdi.LPFNDEVCAPS',
  'Windows.Win32.Graphics.Gdi.LPFNDEVMODE',
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXCALLBACK',
];

const excludedImports = <String>[
  'globalization/structs.g.dart',
  'graphics/opengl/structs.g.dart',
  'storage/structuredstorage/structs.g.dart',
  'system/com/structs.g.dart',
  'system/dataexchange/structs.g.dart',
  'system/stationsanddesktops/structs.g.dart',
  'system/systemservices/structs.g.dart',
  'ui/colorsystem/structs.g.dart',
  'ui/controls/callbacks.g.dart',
  'ui/controls/structs.g.dart',
  'ui/displaydevices/structs.g.dart',
  'ui/textservices/structs.g.dart',
];
