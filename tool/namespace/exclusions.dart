const excludedNamespaces = <String>[];

const excludedFunctions = <String>[
  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  'Windows.Win32.System.Ole.Automation.VARIANT',
  'Windows.Win32.System.Com.StructuredStorage.PROPVARIANT',
  'Windows.Win32.System.Com.StructuredStorage.PROPSPEC',
  'Windows.Win32.System.IO.OVERLAPPED',
];

const excludedCallbacks = <String>[];

const excludedImports = <String>[];

const excludedComInterfaces = <String>[
  'Windows.Win32.System.Com.IUnknown', // generated manually w/ extra APIs
];

const specialTypes = [...excludedStructs, ...excludedComInterfaces];

// Working around https://github.com/dart-lang/sdk/issues/46644
const ignorePackingDirectives = <String>[
  'Windows.Win32.System.SystemServices.DEVICEDUMP_SECTION_HEADER',
  'Windows.Win32.System.SystemServices.DEVICEDUMP_STORAGEDEVICE_DATA',
  'Windows.Win32.System.SystemServices.SENDCMDINPARAMS',
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

  // From metadata.

  // TODO: Use most restrictive packing parent for child. For example,
  //   Nesting the non-packed or less tightly packed struct 'JET_LOGTIME' in a
  //   packed struct 'JET_SIGNATURE' is not supported.
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
  'Windows.Win32.Security.Authentication.Identity.Core.MSV_1_0_REMOTE_SUPPLEMENTAL_CREDENTIAL',
  'Windows.Win32.Security.Authentication.Identity.Core.USER_ALL_INFORMATION',
  'Windows.Win32.System.Diagnostics.Debug.MINIDUMP_MODULE',
  'Windows.Win32.Ui.Shell.FILEDESCRIPTOR',
  'Windows.Win32.Ui.Shell.AUTO_SCROLL_DATA',
  'Windows.Win32.Ui.Shell.DROPFILES',
  'Windows.Win32.Storage.StructuredStorage.JET_SIGNATURE',
];
