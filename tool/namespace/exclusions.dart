const excludedNamespaces = <String>[];

const excludedFunctions = <String>[
  // Duplicates
  '_TrackMouseEvent',
];

const excludedStructs = <String>[
  // ANSI
  'Windows.Win32.Graphics.Gdi.EMRCREATECOLORSPACE',
];

const excludedCallbacks = <String>[
  'Windows.Win32.Graphics.Gdi.LPFNDEVCAPS',
  'Windows.Win32.Graphics.Gdi.LPFNDEVMODE',
  'Windows.Win32.UI.WindowsAndMessaging.MSGBOXCALLBACK', // ui.shell
  'Windows.Win32.System.SystemServices.PEXCEPTION_FILTER', // diagnostics.debug
];

const excludedImports = <String>[];

const excludedComInterfaces = <String>[
  'Windows.Win32.System.Com.IUnknown', // generated manually w/ extra APIs
];

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
];
