const excludedWin32Structs = <String>{
  // These are ANSI structs without a suffix. The Unicode variant is
  // EMRCREATECOLORSPACEW, etc.
  'Windows.Win32.UI.ColorSystem.EMRCREATECOLORSPACE',
  'Windows.Win32.System.Mapi.MapiFileDesc',
  'Windows.Win32.System.Mapi.MapiMessage',
  'Windows.Win32.System.Mapi.MapiRecipDesc',
  'Windows.Win32.System.Diagnostics.Debug.IMAGEHLP_CBA_EVENT',
  'Windows.Win32.System.Diagnostics.Debug.SOURCEFILE',
  'Windows.Win32.System.Diagnostics.Debug.SRCCODEINFO',
  'Windows.Win32.System.Diagnostics.Debug.SYMBOL_INFO',
  'Windows.Win32.System.Diagnostics.Debug.SYMBOL_INFO_PACKAGE',
  'Windows.Win32.System.Diagnostics.Debug.SYMSRV_INDEX_INFO',
  'Windows.Win32.System.Diagnostics.ToolHelp.MODULEENTRY32',
  'Windows.Win32.System.Diagnostics.ToolHelp.PROCESSENTRY32',

  // Other ANSI structs where the 'A' is not a suffix.
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V1',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V2',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V3',
  'Windows.Win32.Media.Audio.DirectMusic.DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_A_DATA',
};

const excludedComInterfaces = <String>{
  // COM Interfaces that are weirdly named or internal artifacts.
  // TODO: Revisit these.
  'Windows.Win32.System.Mmc._AppEvents',
  'Windows.Win32.System.Mmc._Application',
  'Windows.Win32.System.Mmc.Document',

  // These are incorrectly declared in the metadata as interfaces.
  'Windows.Win32.System.ComponentServices.ObjectContext',
  'Windows.Win32.System.ComponentServices.ObjectControl',
  'Windows.Win32.System.ComponentServices.SecurityProperty',
  'Windows.Win32.System.Performance.DICounterItem',
  'Windows.Win32.System.Performance.DILogFileItem',
  'Windows.Win32.System.Performance.DISystemMonitor',
  'Windows.Win32.System.Performance.DISystemMonitorEvents',
};

const excludedTypes = <String>[
  ...excludedWin32Structs,
  ...excludedComInterfaces
];

const ignorePackingDirectives = <String>[
  // From metadata.

  // TODO: Use most restrictive packing parent for child. For example,
  // nesting the non-packed or less tightly packed struct 'JET_LOGTIME' in
  // a packed struct 'JET_SIGNATURE' is not supported.
  'Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE',
  'Windows.Win32.Devices.Bluetooth.SOCKADDR_BTH',
  'Windows.Win32.Devices.DeviceAndDriverInstallation.CS_DES',
  'Windows.Win32.Devices.HumanInterfaceDevice.JOYREGHWVALUES',
  'Windows.Win32.Devices.Tapi.LINEAGENTCAPS',
  'Windows.Win32.Devices.Tapi.LINEAGENTINFO',
  'Windows.Win32.Devices.Tapi.LINEAGENTSESSIONENTRY',
  'Windows.Win32.Devices.Tapi.LINEAGENTSESSIONINFO',
  'Windows.Win32.Devices.Tapi.LINECALLSTATUS',
  'Windows.Win32.Devices.Tapi.LINEDEVCAPS',
  'Windows.Win32.Devices.Tapi.PHONECAPS',
  'Windows.Win32.NetworkManagement.Rras.RASCONN',
  'Windows.Win32.NetworkManagement.Rras.RASIKEV2_PROJECTION_INFO',
  'Windows.Win32.Security.Authentication.Identity.MSV1_0_REMOTE_SUPPLEMENTAL_CREDENTIAL',
  'Windows.Win32.Security.Authentication.Identity.USER_ALL_INFORMATION',
  'Windows.Win32.System.Diagnostics.Debug.MINIDUMP_MODULE',
  'Windows.Win32.UI.Shell.FILEDESCRIPTOR',
  'Windows.Win32.UI.Shell.AUTO_SCROLL_DATA',
  'Windows.Win32.UI.Shell.DROPFILES',
  'Windows.Win32.Storage.Jet.JET_SIGNATURE',
];
