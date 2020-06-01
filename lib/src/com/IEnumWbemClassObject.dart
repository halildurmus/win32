import 'dart:ffi';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IEnumWbemClassObject = '{027947e1-d731-11ce-a357-000000000001}';

typedef Next_Native = Int32 Function(Pointer obj, Int32 lTimeout, Uint32 uCount,
    Pointer apObjects, Pointer<Uint32> puReturned);
typedef Next_Dart = int Function(Pointer obj, int lTimeout, int uCount,
    Pointer apObjects, Pointer<Uint32> puReturned);

class IEnumWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 7

  @override
  Pointer<COMObject> ptr;

  IEnumWbemClassObject(this.ptr) : super(ptr);

  int Next(int lTimeout, int uCount, Pointer apObjects,
          Pointer<Uint32> puReturned) =>
      Pointer<NativeFunction<Next_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<Next_Dart>()(
          ptr.ref.lpVtbl, lTimeout, uCount, apObjects, puReturned);
}
