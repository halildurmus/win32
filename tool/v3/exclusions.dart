const excludedNamespaces = <String>{
  // We're focusing on client APIs, rather than server-centric APIs like IIS.
  // We're also excluding APIs that are no longer well supported, like the old
  // Trident MSHTML engine.
  'Windows.Win32.AI.MachineLearning.DirectML',
  'Windows.Win32.AI.MachineLearning.WinML',
  'Windows.Win32.System.Diagnostics.Debug.WebApp',
  'Windows.Win32.Devices.AllJoyn',
  'Windows.Win32.Networking.ActiveDirectory',
  'Windows.Win32.Networking.Clustering',
  'Windows.Win32.Networking.WinHttp',
  'Windows.Win32.NetworkManagement.Dhcp',
  'Windows.Win32.NetworkManagement.InternetConnectionWizard',
  'Windows.Win32.NetworkManagement.Rras',
  'Windows.Win32.Storage.IndexServer',
  'Windows.Win32.System.Iis',
  'Windows.Win32.System.Search',
  'Windows.Win32.System.ServerBackup',
  'Windows.Win32.System.SideShow',
  'Windows.Win32.System.WinRT.AllJoyn',
  'Windows.Win32.System.WinRT.Holographic',
  'Windows.Win32.System.WinRT.ML',
  'Windows.Win32.Web.MsHtml',
};

const excludedFunctions = <String>{
  // Duplicates
  '_TrackMouseEvent',
};

const excludedStructs = <String>{
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
  'Windows.Win32.System.Diagnostics.ToolHelp.MODULEENTRY32',
  'Windows.Win32.System.Diagnostics.ToolHelp.PROCESSENTRY32',

  // Other ANSI structs where the 'A' is not a suffix.
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V1',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V2',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V3',
  'Windows.Win32.Media.Audio.DirectMusic.DSPROPERTY_DIRECTSOUNDDEVICE_ENUMERATE_A_DATA',

  // Duplicated definitions.
  'Windows.Win32.Media.DeviceManager._BITMAPINFOHEADER',
  'Windows.Win32.Media.DeviceManager._VIDEOINFOHEADER',
  'Windows.Win32.Media.DeviceManager._WAVEFORMATEX',
  'Windows.Win32.Devices.Fax.IStiDeviceW',
};

const excludedConstants = <String>{
  'Windows.Win32.Data.Xml.XmlLite.Apis._IID_IXmlReader',
  'Windows.Win32.Data.Xml.XmlLite.Apis._IID_IXmlResolver',
  'Windows.Win32.Data.Xml.XmlLite.Apis._IID_IXmlWriter',
  'Windows.Win32.UI.Shell.ShellLink',
};

const excludedCallbacks = <String>{};

const excludedComInterfaces = <String>{
  // TODO: We may be able to remove this from the list.
  'Windows.Win32.System.Com.IUnknown',

  // COM Interfaces that are weirdly named or internal artifacts.
  // TODO: Revisit these.
  'Windows.Win32.System.Mmc._AppEvents',
  'Windows.Win32.System.Mmc._Application',
  'Windows.Win32.System.Mmc.Document',

  'Windows.Win32.Devices.Fax.IFaxAccountNotify',
  'Windows.Win32.Devices.Fax.IFaxServerNotify2',

  'Windows.Win32.System.ComponentServices.ObjectContext',
  'Windows.Win32.System.ComponentServices.ObjectControl',
  'Windows.Win32.System.ComponentServices.SecurityProperty',
  'Windows.Win32.System.Performance.DICounterItem',
  'Windows.Win32.System.Performance.DILogFileItem',
  'Windows.Win32.System.Performance.DISystemMonitor',
  'Windows.Win32.System.Performance.DISystemMonitorEvents',
};

const excludedComClasses = <String>{
  // Windows.Win32.Devices.Fax._IFaxAccountNotify is the "real" one.
  'Windows.Win32.Devices.Fax.IFaxAccountNotify',

  // Windows.Win32.Devices.Fax._IFaxServerNotify2 is the "real" one.
  'Windows.Win32.Devices.Fax.IFaxServerNotify2',

  'Windows.Win32.Media.DirectShow.DvbParentalRatingDescriptor',
};

const specialTypes = {...excludedStructs, ...excludedComInterfaces};

/// Used to manually add back in imports where needed.
String specialHeaders(String pathToSrc, String interfaceName) {
  // WAVEFORMATEX and VIDEOINFOHEADER are duplicated in Media.DeviceManager, so
  // we remove their generation above, and manually add back the right import in
  // DeviceManager APIs.
  if (interfaceName.startsWith('Windows.Win32.Media.DeviceManager')) {
    return "import '${pathToSrc}media/audio/structs.g.dart';\n"
        "import '${pathToSrc}media/directshow/structs.g.dart';\n";
  }
  return '';
}
