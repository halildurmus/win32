import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../structs.dart';

typedef IUnknown_QueryInterface_Native = Int32 Function(
    Pointer<GUID> riid, Pointer<IntPtr> ppvObject);
typedef IUnknown_QueryInterface_Dart = int Function(
    Pointer<GUID> riid, Pointer<IntPtr> ppvObject);

typedef IUnknown_AddRef_Native = Int32 Function(Pointer obj);
typedef IUnknown_AddRef_Dart = int Function(Pointer obj);

typedef IUnknown_Release_Native = Int32 Function(Pointer obj);
typedef IUnknown_Release_Dart = int Function(Pointer obj);

class IUnknown extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  Pointer<IntPtr> get queryInterfacePtr => vtable.elementAt(0);
  Pointer<IntPtr> get addRefPtr => vtable.elementAt(1);
  Pointer<IntPtr> get releasePtr => vtable.elementAt(2);

  factory IUnknown.allocate() =>
      allocate<IUnknown>().ref..lpVtbl = allocate<IntPtr>();
}

class COMObject {
  Pointer<IUnknown> pUnk;

  IUnknown_QueryInterface_Dart QueryInterface;
  IUnknown_AddRef_Dart AddRef;
  IUnknown_Release_Dart Release;

  COMObject(this.pUnk) {
    QueryInterface =
        Pointer<IntPtr>.fromAddress(pUnk.ref.queryInterfacePtr.value)
            .cast<NativeFunction<IUnknown_QueryInterface_Native>>()
            .asFunction<IUnknown_QueryInterface_Dart>();

    AddRef = Pointer<IntPtr>.fromAddress(pUnk.ref.addRefPtr.value)
        .cast<NativeFunction<IUnknown_AddRef_Native>>()
        .asFunction<IUnknown_AddRef_Dart>();

    Release = Pointer<IntPtr>.fromAddress(pUnk.ref.releasePtr.value)
        .cast<NativeFunction<IUnknown_Release_Native>>()
        .asFunction<IUnknown_Release_Dart>();
  }
}
