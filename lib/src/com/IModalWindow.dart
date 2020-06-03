// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';
import 'comerrors.dart';

import '../constants.dart';
import '../macros.dart';
import '../structs.dart';
import '../win32.dart';

const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

typedef Show_Native = Int32 Function(Pointer obj, IntPtr hwndOwner);
typedef Show_Dart = int Function(Pointer obj, int hwndOwner);

class IModalWindow extends IUnknown {
  // vtable begins at 3, ends at 3

  @override
  Pointer<COMObject> ptr;

  IModalWindow(this.ptr) : super(ptr);

  int Show(int hwndOwner) => Pointer<NativeFunction<Show_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<Show_Dart>()(ptr.ref.lpVtbl, hwndOwner);
}
