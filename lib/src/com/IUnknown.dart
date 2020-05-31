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

class COMObject extends Struct {
  Pointer<IntPtr> lpVtbl;

  Pointer<IntPtr> get vtable => Pointer.fromAddress(lpVtbl.value);

  factory COMObject.allocate() =>
      allocate<COMObject>().ref..lpVtbl = allocate<IntPtr>();
}

class IUnknown {
  Pointer<COMObject> ptr;

  IUnknown_QueryInterface_Dart QueryInterface;
  IUnknown_AddRef_Dart AddRef;
  IUnknown_Release_Dart Release;

  IUnknown(this.ptr) {
    QueryInterface = ptr.ref.vtable
        .elementAt(0)
        .cast<NativeFunction<IUnknown_QueryInterface_Native>>()
        .asFunction<IUnknown_QueryInterface_Dart>();

    AddRef = ptr.ref.vtable
        .elementAt(1)
        .cast<NativeFunction<IUnknown_AddRef_Native>>()
        .asFunction<IUnknown_AddRef_Dart>();

    Release = ptr.ref.vtable
        .elementAt(2)
        .cast<NativeFunction<IUnknown_Release_Native>>()
        .asFunction<IUnknown_Release_Dart>();
  }
}
