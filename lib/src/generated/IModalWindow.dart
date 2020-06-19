// IModalWindow.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../ole32.dart';
import '../com/combase.dart';

import 'IUnknown.dart';

const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

typedef _Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef _Show_Dart = int Function(Pointer obj, int hwndOwner);

class IModalWindow extends IUnknown {
  // vtable begins at 3, ends at 3

  @override
  Pointer<COMObject> ptr;

  IModalWindow(this.ptr) : super(ptr);

  int Show(int hwndOwner) => Pointer<NativeFunction<_Show_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<_Show_Dart>()(ptr.ref.lpVtbl, hwndOwner);
}
