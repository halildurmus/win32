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

const excludedWindowsRuntimeTypes = <String>{
  ...excludedWindowsRuntimeInterfacesInInherits,
  ...excludedWindowsRuntimeStaticInterfaces,

  // These types are generated manually by design
  'Windows.Foundation.Collections.IIterable`1',
  'Windows.Foundation.Collections.IIterator`1',
  'Windows.Foundation.Collections.IKeyValuePair`2',
  'Windows.Foundation.Collections.IMap`2',
  'Windows.Foundation.Collections.IMapView`2',
  'Windows.Foundation.Collections.IObservableMap`2',
  'Windows.Foundation.Collections.IVector`1',
  'Windows.Foundation.Collections.IVectorView`1',

  // TODO: These types are currently being generated manually. The goal is to
  // generate them automatically after making appropriate changes to the
  // generation script:

  // TODO(halildurmus): Remove this from excludes once we have a use for it.
  //   DevicePicker has too many dependencies. Do not generate it for the time
  //   being as it is only used for testing purposes anyway.
  'Windows.Devices.Enumeration.DevicePicker',

  //   Requires WinRT delegate support
  'Windows.Foundation.IAsyncAction',
  'Windows.Foundation.IAsyncOperation`1',
  'Windows.Storage.ApplicationData',

  //   Requires WinRT event support
  'Windows.Networking.Connectivity.INetworkInformationStatics',

  //   Requires XmlDocument support
  'Windows.UI.Notifications.IToastNotificationManagerStatics',
  'Windows.UI.Notifications.ToastNotification',
};

/// WinRT interfaces to exclude when generating interfaces' inherited
/// interfaces.
const excludedWindowsRuntimeInterfacesInInherits = <String>{
  // INumberFormatter2's methods conflict with INumberFormatter's methods
  'Windows.Globalization.NumberFormatting.INumberFormatter2',
  // Contains deprecated APIs
  'Windows.Storage.Pickers.IFileOpenPicker2',
  // IFileOpenPickerWithOperationId's pickSingleFileAsync(String operationId)
  // method conflicts with IFileOpenPicker's pickSingleFileAsync() method
  'Windows.Storage.Pickers.IFileOpenPickerWithOperationId',
};

/// WinRT static interfaces to exclude when generating the static mappers.
const excludedWindowsRuntimeStaticInterfaces = <String>{
  // Contains deprecated APIs
  'Windows.Storage.Pickers.IFileOpenPickerStatics',
};

/// WinRT interfaces to exclude when generating interfaces' implements mappers.
const excludedWindowsRuntimeInterfacesInImplementsMappers = <String>{
  // The WinRT interfaces that inherit IIterable also inherit from IMap,
  // IMapView, IVector, or IVectorView. As we generate implements mappers for
  // IIterable on these interfaces, we need to exclude this one.
  'Windows.Foundation.Collections.IIterable`1',
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
