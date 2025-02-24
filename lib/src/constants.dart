// ignore_for_file: non_constant_identifier_names

import 'win32/win32.dart';

/// COM error returned when a Find* method returns no results.
final CLDB_E_RECORD_NOTFOUND = HRESULT(0x80131130.toSigned(32));

/// COM error returned when a token cannot be found.
final CLDB_E_INDEX_NOTFOUND = HRESULT(0x80131124.toSigned(32));
