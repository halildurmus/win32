// IPersist.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IPersist = '{0000010C-0000-0000-C000-000000000046}';

typedef _GetClassID_Native = Int32 Function(
    Pointer obj, Pointer<GUID> pClassID);
typedef _GetClassID_Dart = int Function(Pointer obj, Pointer<GUID> pClassID);

/// {@category Interface}
/// {@category com}
class IPersist extends IUnknown {
  // vtable begins at 3, ends at 3

  IPersist(Pointer<COMObject> ptr) : super(ptr);

  int GetClassID(Pointer<GUID> pClassID) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetClassID_Native>>>()
      .value
      .asFunction<_GetClassID_Dart>()(ptr.ref.lpVtbl, pClassID);
}
