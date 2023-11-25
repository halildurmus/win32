// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:win32/win32.dart';
import 'package:winmd/winmd.dart';

void main() async {
  // Load the Win32 metadata
  final scope = await MetadataStore.loadWin32Metadata();

  // Find a namesapce
  final struct = scope
      .findTypeDef('Windows.Win32.NetworkManagement.WiFi.WLAN_RAW_DATA_LIST')!;
  final unionField = struct.fields.last; // union
  final unionFieldType = unionField.typeIdentifier.typeArg?.type;
  print('unionField: $unionFieldType | isNested: ${unionFieldType?.isNested}');
  print('Field: ${unionField.token.toHexString(32)}');

  MetadataStore.close();
}
