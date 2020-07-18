// IPersist.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IPersist = '{0000010c-0000-0000-C000-000000000046}';

typedef _GetClassID_Native = Int32 Function(
    Pointer obj, Pointer<CLSID> pClassID);
typedef _GetClassID_Dart = int Function(Pointer obj, Pointer<CLSID> pClassID);

/// {@category Interface}
/// {@category com}
class IPersist extends IUnknown {
  // vtable begins at 3, ends at 3

  @override
  Pointer<COMObject> ptr;

  IPersist(this.ptr) : super(ptr);

  int GetClassID(Pointer<CLSID> pClassID) =>
      Pointer<NativeFunction<_GetClassID_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetClassID_Dart>()(ptr.ref.lpVtbl, pClassID);
}
