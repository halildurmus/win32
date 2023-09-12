// Copyright (c) 2023, Dart | Windows. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: non_constant_identifier_names

/// COM error returned when a Find* method returns no results.
final CLDB_E_RECORD_NOTFOUND = 0x80131130.toSigned(32);

/// COM error returned when a token cannot be found.
final CLDB_E_INDEX_NOTFOUND = 0x80131124.toSigned(32);
