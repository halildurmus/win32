// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:typed_data';

import 'constants.g.dart';
import 'enums.g.dart';
import 'guid.dart';

/// Indicates that the dialog box should use the system font. The typeface
/// member of the extended dialog box template must be set to MS Shell Dlg.
/// Otherwise, this style has no effect.
///
/// {@category constant}
const int DS_SHELLFONT = DS_SETFONT | DS_FIXEDSYS;

/// {@category constant}
final GUID_CLASS_MONITOR = Guid.fromComponents(
  0x4d36e96e,
  0xe325,
  0x11ce,
  Uint8List.fromList(const [0xbf, 0xc1, 0x08, 0x00, 0x2b, 0xe1, 0x03, 0x18]),
);

/// {@category constant}
final GUID_DEVINTERFACE_BRIGHTNESS = Guid.fromComponents(
  0xfde5bba4,
  0xb3f9,
  0x46fb,
  Uint8List.fromList(const [0xbd, 0xaa, 0x07, 0x28, 0xce, 0x31, 0x00, 0xb4]),
);

/// {@category constant}
final GUID_DEVINTERFACE_I2C = Guid.fromComponents(
  0x2564aa4f,
  0xdddb,
  0x4495,
  Uint8List.fromList(const [0xb4, 0x97, 0x6a, 0xd4, 0xa8, 0x41, 0x63, 0xd7]),
);

/// {@category constant}
final GUID_DEVINTERFACE_MODEM = Guid.fromComponents(
  0x2c7089aa,
  0x2e0e,
  0x11d1,
  Uint8List.fromList(const [0xb1, 0x14, 0x00, 0xc0, 0x4f, 0xc2, 0xaa, 0xe4]),
);

/// {@category constant}
final GUID_DEVINTERFACE_OPM = Guid.fromComponents(
  0xbf4672de,
  0x6b4e,
  0x4be4,
  Uint8List.fromList(const [0xa3, 0x25, 0x68, 0xa9, 0x1e, 0xa4, 0x9c, 0x09]),
);

/// {@category constant}
final GUID_DEVINTERFACE_PARALLEL = Guid.fromComponents(
  0x97f76ef0,
  0xf883,
  0x11d0,
  Uint8List.fromList(const [0xaf, 0x1f, 0x00, 0x00, 0xf8, 0x00, 0x84, 0x5c]),
);

/// {@category constant}
final GUID_DEVINTERFACE_PARCLASS = Guid.fromComponents(
  0x811fc6a5,
  0xf728,
  0x11d0,
  Uint8List.fromList(const [0xa5, 0x37, 0x00, 0x00, 0xf8, 0x75, 0x3e, 0xd1]),
);

/// {@category constant}
final IID_NULL = Guid.zero();

/// A hint to the operating system to map the memory using 64K pages, if
/// possible.
///
/// {@category constant}
const int MEM_64K_PAGES = MEM_PHYSICAL | MEM_LARGE_PAGES;

/// {@category constant}
const MIDI_MAPPER = -1;

/// If a user selects a notify icon with the keyboard and activates it with
/// the SPACEBAR or ENTER key, the version 5.0 Shell sends the associated
/// application an NIN_KEYSELECT notification. Earlier versions send
/// WM_RBUTTONDOWN and WM_RBUTTONUP messages.
///
/// {@category constant}
const int NIN_KEYSELECT = NIN_SELECT | NINF_KEY;

/// A zero value; used to represent an empty bitmask.
///
/// {@category constant}
const NULL = 0;

/// Bitwise OR combination of both of the two International Standards
/// Organization (IS0) transmission protocols [SCARD_PROTOCOL_T0] and
/// [SCARD_PROTOCOL_T1].
///
/// {@category constant}
const int SCARD_PROTOCOL_Tx = SCARD_PROTOCOL_T0 | SCARD_PROTOCOL_T1;

/// Successful.
///
/// {@category constant}
const SCARD_S_SUCCESS = 0;
