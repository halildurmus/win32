import 'version.dart';

const v3ExcludedStructs = <String>{
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

const excludedStructs = win32Version == 2 ? <String>[] : v3ExcludedStructs;

const v3ExcludedComInterfaces = <String>{
  // TODO: We may be able to remove this from the list.
  'Windows.Win32.System.Com.IUnknown',

  // COM Interfaces that are weirdly named or internal artifacts.
  // TODO: Revisit these.
  'Windows.Win32.System.Mmc._AppEvents',
  'Windows.Win32.System.Mmc._Application',
  'Windows.Win32.System.Mmc.Document',

  // The "real" versions of these are prefixed with _.
  'Windows.Win32.Devices.Fax.IFaxAccountNotify',
  'Windows.Win32.Devices.Fax.IFaxServerNotify2',

  // These are incorrectly declared in the metadata as interfaces.
  'Windows.Win32.System.ComponentServices.ObjectContext',
  'Windows.Win32.System.ComponentServices.ObjectControl',
  'Windows.Win32.System.ComponentServices.SecurityProperty',
  'Windows.Win32.System.Performance.DICounterItem',
  'Windows.Win32.System.Performance.DILogFileItem',
  'Windows.Win32.System.Performance.DISystemMonitor',
  'Windows.Win32.System.Performance.DISystemMonitorEvents',
};

const specialTypes = win32Version == 2
    ? <String>[]
    : <String>[...v3ExcludedStructs, ...v3ExcludedComInterfaces];

/// Used to manually add back in imports where needed.
String specialHeaders(String pathToSrc, String interfaceName) {
  if (win32Version == 3) {
    // WAVEFORMATEX and VIDEOINFOHEADER are duplicated in Media.DeviceManager, so
    // we remove their generation above, and manually add back the right import in
    // DeviceManager APIs.
    if (interfaceName.startsWith('Windows.Win32.Media.DeviceManager')) {
      return "import '${pathToSrc}media/audio/structs.g.dart';\n"
          "import '${pathToSrc}media/directshow/structs.g.dart';\n";
    }
  }
  return '';
}

// Working around https://github.com/dart-lang/sdk/issues/46644
const ignorePackingDirectives = win32Version == 3
    ? <String>[
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
      ]
    : <String>[];
