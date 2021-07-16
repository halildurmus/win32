const excludedFunctions = <String>[
  // Relies on namespaces not imported yet
  'BroadcastSystemMessageEx', // system.systemservices
  'ChangeDisplaySettings', // ui.displaydevices
  'ChangeDisplaySettingsEx', // ui.displaydevices
  'CreateConsoleScreenBuffer', // security
  'CreateDC',
  'CreateIC',
  'EnumDisplaySettings',
  'EnumDisplaySettingsEx',
  'ExtCreateRegion', // system.systemservices
  'GetLogicalProcessorInformationEx', // system.systemservices
  'GetRegionData',
  'MessageBoxIndirect',
  'ResetDC', // ui.displaydevices
  'SetWinMetaFileBits',
  'UpdateLayeredWindow',
  'UpdateLayeredWindowIndirect',

  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  // ANSI
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACE',

  // Temporary
  'Windows.Win32.Graphics.Gdi.BITMAPV4HEADER', // ui.colorsystem
  'Windows.Win32.Graphics.Gdi.BITMAPV5HEADER', // ui.colorsystem
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO', // ui.displaydevices
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SDR_WHITE_LEVEL', // ui.displaydevices
  'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE', // ui.displaydevices
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACEW', // ui.colorsystem
  'Windows.Win32.Graphics.Gdi.EMRPIXELFORMAT', // opengl
  'Windows.Win32.Graphics.Gdi.ENUMTEXTMETRICW', // globalization
  'Windows.Win32.Graphics.Gdi.NEWTEXTMETRICEXW', // globalization
  'Windows.Win32.UI.WindowsAndMessaging.BSMINFO', // system.systemservices
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXPARAMSW', // ui.shell
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYEXW', // ui.controls
  'Windows.Win32.UI.WindowsAndMessaging.OFNOTIFYW', // ui.controls
  'Windows.Win32.Media.Multimedia.TIMEREVENT', // system.systemservices
  'Windows.Win32.Media.Multimedia.joyreghwconfig_tag', // devices.humaninterfacedevice
  'Windows.Win32.Graphics.DirectDraw.DDHAL_GETHEAPALIGNMENTDATA', // devices.display
  ''
];

const excludedCallbacks = <String>[
  'Windows.Win32.Graphics.Gdi.LPFNDEVCAPS',
  'Windows.Win32.Graphics.Gdi.LPFNDEVMODE',
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXCALLBACK', // ui.shell
  'Windows.Win32.Graphics.DirectDraw.LPDDHAL_GETHEAPALIGNMENT', // devices.display
  'Windows.Win32.Graphics.DirectDraw.PDD_DESTROYDRIVER', // devices.display
  'Windows.Win32.Graphics.DirectDraw.PDD_SETMODE', // devices.display
  'Windows.Win32.Graphics.DirectDraw.PDD_VPORTCB_GETAUTOFLIPSURF', // devices.display
  'Windows.Win32.System.SystemServices.FREEOBJPROC', // ui.displaydevices
  'Windows.Win32.System.SystemServices.LPD3DENUMPIXELFORMATSCALLBACK', // ui.displaydevices
  'Windows.Win32.System.SystemServices.LPD3DENUMTEXTUREFORMATSCALLBACK', // graphics.directdraw
  'Windows.Win32.System.SystemServices.PEXCEPTION_FILTER', // diagnostics.debug
  'Windows.Win32.System.SystemServices.PFN_DrvAccumulateD3DDirtyRect', // ui.displaydevices
  'Windows.Win32.System.SystemServices.PFN_DrvAlphaBlend', // ui.displaydevices
  'Windows.Win32.System.SystemServices.PFN_DrvAssociateSharedSurface', // ui.displaydevices
  'Windows.Win32.System.SystemServices.PFN_DrvBitBlt', // ui.displaydevices
  'Windows.Win32.System.SystemServices.PFN_DrvCopyBits', // ui.displaydevices
  'Windows.Win32.System.SystemServices.PFN_DrvDeriveSurface', // graphics.directdraw
  'Windows.Win32.System.SystemServices.PFN_DrvDescribePixelFormat', // graphics.opengl
];

const excludedImports = <String>[
  'devices/display/structs.g.dart',
  'devices/humaninterfacedevice/structs.g.dart',
  'globalization/structs.g.dart',
  'graphics/opengl/structs.g.dart',
  'media/audio/coreaudio/structs.g.dart',
  'storage/filesystem/callbacks.g.dart',
  'storage/structuredstorage/structs.g.dart',
  'system/com/structs.g.dart',
  'system/dataexchange/structs.g.dart',
  'system/diagnostics/debug/structs.g.dart',
  'system/kernel/structs.g.dart',
  'system/power/structs.g.dart',
  'system/rpc/structs.g.dart',
  'system/stationsanddesktops/structs.g.dart',
  'system/systemservices/structs.g.dart',
  'ui/colorsystem/structs.g.dart',
  'ui/controls/callbacks.g.dart',
  'ui/controls/structs.g.dart',
  'ui/textservices/structs.g.dart',
];

const excludedComInterfaces = <String>[
  'Windows.Win32.System.Com.IUnknown', // generated manually w/ extra APIs

  'Windows.Win32.Media.Multimedia.IAVIPersistFile', // system.com
  'Windows.Win32.UI.WindowsAndMessaging.IPrintDialogServices', // ui.displaydevices
];

// Working around https://github.com/dart-lang/sdk/issues/46644
const ignorePackingDirectives = <String>[
  'Windows.Win32.Media.Multimedia.AUXCAPS2W',
  'Windows.Win32.Media.Multimedia.EXBMINFOHEADER',
  'Windows.Win32.Media.Multimedia.JOYCAPS2W',
  'Windows.Win32.Media.Multimedia.MCI_DGV_CAPTURE_PARMSW',
  'Windows.Win32.Media.Multimedia.MCI_DGV_COPY_PARMS',
  'Windows.Win32.Media.Multimedia.MCI_DGV_CUT_PARMS',
  'Windows.Win32.Media.Multimedia.MCI_DGV_DELETE_PARMS',
  'Windows.Win32.Media.Multimedia.MCI_DGV_PASTE_PARMS',
  'Windows.Win32.Media.Multimedia.MCI_DGV_RECORD_PARMS',
  'Windows.Win32.Media.Multimedia.MCI_DGV_RECT_PARMS',
  'Windows.Win32.Media.Multimedia.MCI_DGV_RESTORE_PARMSW',
  'Windows.Win32.Media.Multimedia.MCI_DGV_SAVE_PARMSW',
  'Windows.Win32.Media.Multimedia.MCI_DGV_UPDATE_PARMS',
  'Windows.Win32.Media.Multimedia.MIDIINCAPS2W',
  'Windows.Win32.Media.Multimedia.MIDIOUTCAPS2W',
  'Windows.Win32.Media.Multimedia.MIXERCAPS2W',
  'Windows.Win32.Media.Multimedia.WAVEFORMATEXTENSIBLE',
  'Windows.Win32.Media.Multimedia.WAVEINCAPS2W',
  'Windows.Win32.Media.Multimedia.WAVEOUTCAPS2W',
  'Windows.Win32.Media.Multimedia.joyreguservalues_tag',
];
