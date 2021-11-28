const excludedNamespaces = <String>[
  // 'Data.Xml',
  // 'Devices.DeviceAndDriverInstallation',
  // 'Devices.Enumeration',
  // 'Devices.Fax',
  // 'Devices.Geolocation',
  // 'Devices.HumanInterfaceDevice',
  // 'Devices.Tapi',
  // 'Devices.Usb',
  // 'Globalization',
  // 'Graphics.Direct2D',
  // 'Graphics.DirectComposition',
  // 'Graphics.DirectShow',
  // 'Graphics.DirectWrite',
  // 'Graphics.Dwm',
  // 'Graphics.'
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

  // This is an ANSI struct without a suffix. The Unicode variant is
  // EMRCREATECOLORSPACEW.
  'Windows.Win32.UI.ColorSystem.EMRCREATECOLORSPACE',

  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V1',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V2',
  'Windows.Win32.UI.Controls.PROPSHEETPAGEA_V3',
];

const excludedCallbacks = <String>[];

const excludedImports = <String>[];

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

// // Working around https://github.com/dart-lang/sdk/issues/46644
// const ignorePackingDirectives = <String>[
//   'Windows.Win32.System.SystemServices.DEVICEDUMP_SECTION_HEADER',
//   'Windows.Win32.System.SystemServices.DEVICEDUMP_STORAGEDEVICE_DATA',
//   'Windows.Win32.System.SystemServices.SENDCMDINPARAMS',
//   // 'Windows.Win32.Media.Multimedia.AUXCAPS2W',
//   // 'Windows.Win32.Media.Multimedia.EXBMINFOHEADER',
//   // 'Windows.Win32.Media.Multimedia.JOYCAPS2W',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_CAPTURE_PARMSW',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_COPY_PARMS',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_CUT_PARMS',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_DELETE_PARMS',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_PASTE_PARMS',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_RECORD_PARMS',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_RECT_PARMS',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_RESTORE_PARMSW',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_SAVE_PARMSW',
//   // 'Windows.Win32.Media.Multimedia.MCI_DGV_UPDATE_PARMS',
//   // 'Windows.Win32.Media.Multimedia.MIDIINCAPS2W',
//   // 'Windows.Win32.Media.Multimedia.MIDIOUTCAPS2W',
//   // 'Windows.Win32.Media.Multimedia.MIXERCAPS2W',
//   // 'Windows.Win32.Media.Multimedia.WAVEFORMATEXTENSIBLE',
//   // 'Windows.Win32.Media.Multimedia.WAVEINCAPS2W',
//   // 'Windows.Win32.Media.Multimedia.WAVEOUTCAPS2W',
//   // 'Windows.Win32.Media.Multimedia.joyreguservalues_tag',

//   // From metadata.

//   // TODO: Use most restrictive packing parent for child. For example,
//   //   Nesting the non-packed or less tightly packed struct 'JET_LOGTIME' in a
//   //   packed struct 'JET_SIGNATURE' is not supported.
//   'Windows.Win32.Devices.Bluetooth.BTH_QUERY_SERVICE',
//   'Windows.Win32.Devices.Bluetooth.SOCKADDR_BTH',
//   'Windows.Win32.Devices.Bluetooth.RFCOMM_COMMAND',
//   'Windows.Win32.Devices.DeviceAndDriverInstallation.CS_DES',
//   'Windows.Win32.Devices.HumanInterfaceDevice.JOYREGHWVALUES',
//   'Windows.Win32.Devices.Tapi.LINEAGENTCAPS',
//   'Windows.Win32.Devices.Tapi.LINEAGENTINFO',
//   'Windows.Win32.Devices.Tapi.LINEAGENTSESSIONENTRY',
//   'Windows.Win32.Devices.Tapi.LINEAGENTSESSIONINFO',
//   'Windows.Win32.Devices.Tapi.LINECALLSTATUS',
//   'Windows.Win32.Devices.Tapi.LINEDEVCAPS',
//   'Windows.Win32.Devices.Tapi.PHONECAPS',
//   'Windows.Win32.NetworkManagement.Rras.RASCONN',
//   'Windows.Win32.NetworkManagement.Rras.RASIKEV2_PROJECTION_INFO',
//   'Windows.Win32.Security.Authentication.Identity.Core.MSV_1_0_REMOTE_SUPPLEMENTAL_CREDENTIAL',
//   'Windows.Win32.Security.Authentication.Identity.Core.USER_ALL_INFORMATION',
//   'Windows.Win32.System.Diagnostics.Debug.MINIDUMP_MODULE',
//   'Windows.Win32.Ui.Shell.FILEDESCRIPTOR',
//   'Windows.Win32.Ui.Shell.AUTO_SCROLL_DATA',
//   'Windows.Win32.Ui.Shell.DROPFILES',
//   'Windows.Win32.Storage.StructuredStorage.JET_SIGNATURE',
// ];
