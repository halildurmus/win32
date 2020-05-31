import 'dart:ffi';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IModalWindow = '{b4db1657-70d7-485e-8e3e-6fcb5a5c1802}';

typedef IModalWindow_Show_Native = Int32 Function(
    Pointer obj, IntPtr hwndOwner);
typedef IModalWindow_Show_Dart = int Function(Pointer obj, int hwndOwner);

class IModalWindow extends IUnknown {
  @override
  Pointer<COMObject> ptr;

  IModalWindow(this.ptr) : super(ptr);

  int Show(int hwndOwner) =>
      Pointer<NativeFunction<IModalWindow_Show_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<IModalWindow_Show_Dart>()(ptr.ref.lpVtbl, hwndOwner);
}
