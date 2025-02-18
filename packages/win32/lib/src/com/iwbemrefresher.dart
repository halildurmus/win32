// iwbemrefresher.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IWbemRefresher = '{49353c99-516b-11d1-aea6-00c04fb68820}';

/// The IWbemRefresher interface provides an entry point through which
/// refreshable objects such as enumerators or refresher objects, can be
/// refreshed. Implementers of `IWbemHiPerfProvider` must provide an
/// implementation of this interface.
///
/// {@category com}
class IWbemRefresher extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWbemRefresher(super.ptr);

  factory IWbemRefresher.from(IUnknown interface) =>
      IWbemRefresher(interface.toInterface(IID_IWbemRefresher));

  int refresh(int lFlags) => (ptr.ref.vtable + 3)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 lFlags)>>>()
      .value
      .asFunction<int Function(Pointer, int lFlags)>()(ptr.ref.lpVtbl, lFlags);
}

/// @nodoc
const CLSID_WbemRefresher = '{c71566f2-561e-11d1-ad87-00c04fd8fdff}';

/// {@category com}
class WbemRefresher extends IWbemRefresher {
  WbemRefresher(super.ptr);

  factory WbemRefresher.createInstance() => WbemRefresher(
    COMObject.createFromID(CLSID_WbemRefresher, IID_IWbemRefresher),
  );
}
