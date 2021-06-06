// IModalWindow.dart

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

import 'IUnknown.dart';

/// @nodoc
const IID_IModalWindow = '{B4DB1657-70D7-485E-8E3E-6FCB5A5C1802}';

typedef _Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef _Show_Dart = int Function(Pointer obj, int hwndOwner);

/// {@category Interface}
/// {@category com}
class IModalWindow extends IUnknown {
  // vtable begins at 3, ends at 3

  IModalWindow(Pointer<COMObject> ptr) : super(ptr);

  int Show(int hwndOwner) => Pointer<NativeFunction<_Show_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<_Show_Dart>()(ptr.ref.lpVtbl, hwndOwner);
}
