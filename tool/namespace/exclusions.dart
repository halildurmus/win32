const excludedFunctions = <String>[
  // Relies on namespaces not imported yet
  'BroadcastSystemMessageEx', // system.systemservices
  // 'ChangeDisplaySettings', // ui.displaydevices
  // 'ChangeDisplaySettingsEx', // ui.displaydevices
  // 'CreateConsoleScreenBuffer', // security
  // 'CreateDC', // ui.displaydevices
  // 'CreateIC', // ui.displaydevices
  // 'EnumDisplaySettings', // ui.displaydevices
  // 'EnumDisplaySettingsEx', // ui.displaydevices
  'ExtCreateRegion', // system.systemservices
  'GetLogicalProcessorInformationEx', // system.systemservices
  'MessageBoxIndirect', // ui.shell
  'ResetDC', // ui.displaydevices
  'SetWinMetaFileBits', // system.dataexchange

  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  // ANSI
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACE',

  // Temporary
  'Windows.Win32.Graphics.Gdi.BITMAPV4HEADER', // ui.colorsystem
  'Windows.Win32.Graphics.Gdi.BITMAPV5HEADER', // ui.colorsystem
  // 'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_GET_ADVANCED_COLOR_INFO', // ui.displaydevices
  // 'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SDR_WHITE_LEVEL', // ui.displaydevices
  // 'Windows.Win32.Graphics.Gdi.DISPLAYCONFIG_SET_ADVANCED_COLOR_STATE', // ui.displaydevices
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
  'Windows.Win32.Graphics.DirectDraw.DDHAL_DDMISCELLANEOUSCALLBACKS', // devices.display
  'Windows.Win32.System.SystemServices.CACHE_RELATIONSHIP', // system.kernel
  'Windows.Win32.System.SystemServices.CSV_QUERY_FILE_REVISION_FILE_ID_128', // storage.filesystem
  'Windows.Win32.System.SystemServices.D3DLIGHTDATA', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DNTHAL_CALLBACKS', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DNTHAL_CALLBACKS2', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DNTHAL_CALLBACKS3', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DLIGHTDATA', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DLIGHT', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DLIGHT2', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DLIGHT7', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DLIGHTINGELEMENT', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DNTHAL_CLEAR2DATA', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DNTHAL_DP2SETTRANSFORM', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DSTATUS', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.D3DTRANSFORMDATA', // graphics.direct3d9
  'Windows.Win32.System.SystemServices.DISPATCHER_CONTEXT', // system.kernel
  'Windows.Win32.System.SystemServices.EXCEPTION_REGISTRATION_RECORD', // system.kernel
  'Windows.Win32.System.SystemServices.IMAGE_COR20_HEADER', // diagnostics.debug
  'Windows.Win32.System.SystemServices.IMAGE_ROM_HEADERS', // diagnostics.debug
  'Windows.Win32.System.SystemServices.JOBOBJECT_SECURITY_LIMIT_INFORMATION', // system.security
  'Windows.Win32.System.SystemServices.NUMA_NODE_RELATIONSHIP', // system.kernel
  'Windows.Win32.System.SystemServices.PROCESSOR_RELATIONSHIP', // system.kernel
  'Windows.Win32.System.SystemServices.RPC_IMPORT_CONTEXT_P', // system.rpc
  'Windows.Win32.System.SystemServices.RTL_CRITICAL_SECTION_DEBUG', // system.kernel
  'Windows.Win32.System.SystemServices.SE_ACCESS_REPLY', // security
  'Windows.Win32.System.SystemServices.SE_ACCESS_REQUEST', // security
  'Windows.Win32.System.SystemServices.SE_SECURITY_DESCRIPTOR', // security
  'Windows.Win32.System.SystemServices.SE_SID', // security
  'Windows.Win32.System.SystemServices.STORAGE_QUERY_DEPENDENT_VOLUME_LEV1_ENTRY', // storage.vhd
  'Windows.Win32.System.SystemServices.STORAGE_QUERY_DEPENDENT_VOLUME_LEV2_ENTRY', // storage.vhd
  'Windows.Win32.System.SystemServices.SYSTEM_ACCESS_FILTER_ACE', //
  'Windows.Win32.System.SystemServices.SYSTEM_PROCESS_TRUST_LABEL_ACE', //
  'Windows.Win32.System.SystemServices.USN_RECORD_UNION', //
  'Windows.Win32.System.SystemServices.XSTATE_CONTEXT', //
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
  // 'Windows.Win32.System.SystemServices.LPD3DENUMTEXTUREFORMATSCALLBACK', // graphics.directdraw
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
  // 'devices/display/structs.g.dart',
  'devices/humaninterfacedevice/structs.g.dart',
  'globalization/structs.g.dart',
  // 'graphics/direct3d9/structs.g.dart',
  'graphics/opengl/structs.g.dart',
  'media/audio/coreaudio/structs.g.dart',
  'security/structs.g.dart',
  'storage/filesystem/callbacks.g.dart',
  'storage/filesystem/structs.g.dart',
  'storage/structuredstorage/structs.g.dart',
  'storage/vhd/structs.g.dart',
  'system/com/structs.g.dart',
  'system/dataexchange/structs.g.dart',
  'system/diagnostics/debug/structs.g.dart',
  'system/eventlog/structs.g.dart',
  'system/jobobjects/structs.g.dart',
  'system/kernel/callbacks.g.dart',
  'system/kernel/structs.g.dart',
  'system/power/structs.g.dart',
  'system/rpc/structs.g.dart',
  'system/stationsanddesktops/structs.g.dart',
  'system/threading/structs.g.dart',
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
  'Windows.Win32.System.SystemServices.DEVICEDUMP_SECTION_HEADER',
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
