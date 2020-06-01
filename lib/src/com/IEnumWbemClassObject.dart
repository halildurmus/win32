import 'dart:ffi';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IEnumWbemClassObject = '{027947e1-d731-11ce-a357-000000000001}';

typedef Reset_Native = Int32 Function(Pointer obj);
typedef Reset_Dart = int Function(Pointer obj);

typedef Skip_Native = Int32 Function(
    Pointer obj, Int32 lTimeout, Uint32 uCount);
typedef Skip_Dart = int Function(Pointer obj, int lTimeout, int uCount);

typedef Next_Native = Int32 Function(Pointer obj, Int32 lTimeout, Uint32 uCount,
    Pointer apObjects, Pointer<Uint32> puReturned);
typedef Next_Dart = int Function(Pointer obj, int lTimeout, int uCount,
    Pointer apObjects, Pointer<Uint32> puReturned);

class IEnumWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 7

  @override
  Pointer<COMObject> ptr;

  IEnumWbemClassObject(this.ptr) : super(ptr);

  int Reset() => Pointer<NativeFunction<Reset_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(3).value)
      .asFunction<Reset_Dart>()(ptr.ref.lpVtbl);

  int Next(int lTimeout, int uCount, Pointer apObjects,
          Pointer<Uint32> puReturned) =>
      Pointer<NativeFunction<Next_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<Next_Dart>()(
          ptr.ref.lpVtbl, lTimeout, uCount, apObjects, puReturned);

  int Skip(int lTimeout, int uCount) =>
      Pointer<NativeFunction<Skip_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<Skip_Dart>()(ptr.ref.lpVtbl, lTimeout, uCount);
}
