const excludedNamespaces = <String>[
  // We're focusing on client APIs, rather than server-centric APIs like IIS.
  // We're also excluding APIs that are no longer well supported, like the old
  // Trident MSHTML engine.
  'Windows.Win32.AI.MachineLearning.DirectML',
  'Windows.Win32.AI.MachineLearning.WinML',
  'Windows.Win32.Devices.AllJoyn',
  'Windows.Win32.Networking.ActiveDirectory',
  'Windows.Win32.Networking.Clustering',
  'Windows.Win32.NetworkManagement.Dhcp',
  'Windows.Win32.NetworkManagement.InternetConnectionWizard',
  'Windows.Win32.NetworkManagement.Rras',
  'Windows.Win32.Storage.IndexServer',
  'Windows.Win32.System.Iis',
  'Windows.Win32.System.ServerBackup',
  'Windows.Win32.System.SideShow',
  'Windows.Win32.System.WinRT.AllJoyn',
  'Windows.Win32.System.WinRT.Holographic',
  'Windows.Win32.System.WinRT.ML',
  'Windows.Win32.Web.MsHtml',
];

const excludedFunctions = <String>[
  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  'Windows.Win32.System.Com.VARIANT',
  'Windows.Win32.System.Com.StructuredStorage.PROPVARIANT',
  'Windows.Win32.System.IO.OVERLAPPED',
  'Windows.Win32.Foundation.DECIMAL',

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

  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V1',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V2',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V3',
];

const excludedCallbacks = <String>[];

const excludedComInterfaces = <String>[
  // TODO: We may be able to remove this from the list.
  'Windows.Win32.System.Com.IUnknown',

  // COM Interfaces that are weirdly named or internal artifacts.
  // TODO: Revisit these.
  'Windows.Win32.System.Mmc._AppEvents',
  'Windows.Win32.System.Mmc._Application',
  'Windows.Win32.System.Mmc.Document',

  // Windows.Win32.Devices.Fax._IFaxAccountNotify is the "real" one.
  'Windows.Win32.Devices.Fax.IFaxAccountNotify',

  // Windows.Win32.Devices.Fax._IFaxServerNotify2 is the "real" one.
  'Windows.Win32.Devices.Fax.IFaxServerNotify2',
];

const specialTypes = [...excludedStructs, ...excludedComInterfaces];
