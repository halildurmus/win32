import 'dart:ffi';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IShellItemArray = '{b63ea76d-1f85-456f-a19c-48159efa858b}';

typedef GetCount_Native = Int32 Function(
    Pointer obj, Pointer<Int32> pdwNumItems);
typedef GetCount_Dart = int Function(Pointer obj, Pointer<Int32> pdwNumItems);

typedef GetItemAt_Native = Int32 Function(
    Pointer obj, Int32 dwIndex, Pointer ppsi);
typedef GetItemAt_Dart = int Function(Pointer obj, int dwIndex, Pointer ppsi);

class IShellItemArray extends IUnknown {
  // vtable begins at 3, ends at 9

  @override
  Pointer<COMObject> ptr;

  IShellItemArray(this.ptr) : super(ptr);

  int GetCount(Pointer<Int32> pdwNumItems) =>
      Pointer<NativeFunction<GetCount_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<GetCount_Dart>()(ptr.ref.lpVtbl, pdwNumItems);

  int GetItemAt(int dwIndex, Pointer ppsi) =>
      Pointer<NativeFunction<GetItemAt_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(8).value)
          .asFunction<GetItemAt_Dart>()(ptr.ref.lpVtbl, dwIndex, ppsi);
}
