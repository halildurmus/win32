// IModalWindow.dart

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

import '../system/com/IUnknown.dart';

/// @nodoc
const IID_IModalWindow = '{B4DB1657-70D7-485E-8E3E-6FCB5A5C1802}';

/// {@category Interface}
/// {@category com}
class IModalWindow extends IUnknown {
  // vtable begins at 3, ends at 3
  IModalWindow(Pointer<COMObject> ptr) : super(ptr);

  int Show(int hwndOwner) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<
          Pointer<NativeFunction<Int32 Function(Pointer, IntPtr hwndOwner)>>>()
      .value
      .asFunction<
          int Function(Pointer, int hwndOwner)>()(ptr.ref.lpVtbl, hwndOwner);
}
