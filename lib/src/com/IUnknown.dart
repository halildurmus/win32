import 'dart:ffi';

import 'combase.dart';
import '../structs.dart';

const IID_IUnknown = '{00000000-0000-0000-C000-000000000046}';

typedef IUnknown_QueryInterface_Native = Int32 Function(
    Pointer obj, Pointer<GUID> riid, Pointer<IntPtr> ppvObject);
typedef IUnknown_QueryInterface_Dart = int Function(
    Pointer obj, Pointer<GUID> riid, Pointer<IntPtr> ppvObject);

typedef IUnknown_AddRef_Native = Int32 Function(Pointer obj);
typedef IUnknown_AddRef_Dart = int Function(Pointer obj);

typedef IUnknown_Release_Native = Int32 Function(Pointer obj);
typedef IUnknown_Release_Dart = int Function(Pointer obj);

class IUnknown {
  Pointer<COMObject> ptr;

  IUnknown(this.ptr);

  int QueryInterface(Pointer<GUID> riid, Pointer<IntPtr> ppvObject) =>
      Pointer<NativeFunction<IUnknown_QueryInterface_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(0).value)
              .asFunction<IUnknown_QueryInterface_Dart>()(
          ptr.ref.lpVtbl, riid, ppvObject);

  int AddRef() => Pointer<NativeFunction<IUnknown_AddRef_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(1).value)
      .asFunction<IUnknown_AddRef_Dart>()(ptr.ref.lpVtbl);

  int Release() => Pointer<NativeFunction<IUnknown_Release_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(2).value)
      .asFunction<IUnknown_Release_Dart>()(ptr.ref.lpVtbl);
}
