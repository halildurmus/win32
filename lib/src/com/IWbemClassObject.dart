import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'IUnknown.dart';
import 'combase.dart';

const IID_IWbemClassObject = '{dc12a681-737f-11cf-884d-00aa004b2e24}';

typedef Get_Native = Int32 Function(Pointer obj, Pointer<Utf16> wszName,
    Int32 lFlags, Pointer pVal, Pointer pType, Pointer<Int32> plFlavor);
typedef Get_Dart = int Function(Pointer obj, Pointer<Utf16> wszName, int lFlags,
    Pointer pVal, Pointer pType, Pointer<Int32> plFlavor);

typedef GetObjectText_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Utf16> pstrObjectText);
typedef GetObjectText_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Utf16> pstrObjectText);

class IWbemClassObject extends IUnknown {
  // vtable begins at 3, ends at 26

  @override
  Pointer<COMObject> ptr;

  IWbemClassObject(this.ptr) : super(ptr);

  int Get(Pointer<Utf16> wszName, int lFlags, Pointer pVal, Pointer pType,
          Pointer<Int32> plFlavor) =>
      Pointer<NativeFunction<Get_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<Get_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pVal, pType, plFlavor);

  int GetObjectText(int lFlags, Pointer<Utf16> pstrObjectText) =>
      Pointer<NativeFunction<GetObjectText_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<GetObjectText_Dart>()(
          ptr.ref.lpVtbl, lFlags, pstrObjectText);
}
