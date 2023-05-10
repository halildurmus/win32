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
