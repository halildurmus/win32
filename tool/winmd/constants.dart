// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

final CLDB_E_RECORD_NOTFOUND = 0x80131130.toSigned(32);

final systemTokens = <int, String>{
  0x01000000: 'IInspectable',
  0x01000001: 'System.Object',
  0x01000008: 'System.Enum',
  0x0100001d: 'System.ValueType',
  0x0100000e: 'System.Enum',
  0x010000af: 'System.Guid'
};
