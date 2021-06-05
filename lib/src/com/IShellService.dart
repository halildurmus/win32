// IShellService.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

/// @nodoc
const IID_IShellService = '{5836FB00-8187-11CF-A12B-00AA004AE837}';

typedef _SetOwner_Native = Int32 Function(Pointer obj, Pointer punkOwner);
typedef _SetOwner_Dart = int Function(Pointer obj, Pointer punkOwner);

/// {@category Interface}
/// {@category com}
class IShellService extends IUnknown {
  // vtable begins at 3, ends at 3

  IShellService(Pointer<COMObject> ptr) : super(ptr);

  int SetOwner(Pointer punkOwner) =>
      Pointer<NativeFunction<_SetOwner_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_SetOwner_Dart>()(ptr.ref.lpVtbl, punkOwner);
}
