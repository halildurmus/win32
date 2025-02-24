// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'dart:typed_data';

import 'guid.dart';
import 'structs.dart';

final CLSID_CorMetaDataDispenser = Guid.fromComponents(
  0xe5cb7a31,
  0x7512,
  0x11d2,
  Uint8List.fromList(const [0x89, 0xce, 0x0, 0x80, 0xc7, 0x92, 0xe5, 0xd8]),
);

const FALSE = 0;

final FOLDERID_LocalAppData = Guid.fromComponents(
  0xf1b32785,
  0x6fba,
  0x4fcf,
  Uint8List.fromList(const [0x9d, 0x55, 0x7b, 0x8e, 0x7f, 0x15, 0x70, 0x91]),
);

const HKEY_LOCAL_MACHINE = -2147483646;

const NULL = 0;

const RO_E_METADATA_NAME_NOT_FOUND = HRESULT(0x8000000F - 0x100000000);

const S_FALSE = HRESULT(0x1);

const S_OK = HRESULT(0x0);

const TRUE = 1;
