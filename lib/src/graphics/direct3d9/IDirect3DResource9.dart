// IDirect3DResource9.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../structs.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DResource9 = '{05EEC05D-8F7D-4362-B999-D1BAF357C704}';

typedef _GetDevice_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> ppDevice);
typedef _GetDevice_Dart = int Function(
    Pointer obj, Pointer<COMObject> ppDevice);

typedef _SetPrivateData_Native = Int32 Function(Pointer obj,
    Pointer<GUID> refguid, Pointer pData, Uint32 SizeOfData, Uint32 Flags);
typedef _SetPrivateData_Dart = int Function(Pointer obj, Pointer<GUID> refguid,
    Pointer pData, int SizeOfData, int Flags);

typedef _GetPrivateData_Native = Int32 Function(Pointer obj,
    Pointer<GUID> refguid, Pointer pData, Pointer<Uint32> pSizeOfData);
typedef _GetPrivateData_Dart = int Function(Pointer obj, Pointer<GUID> refguid,
    Pointer pData, Pointer<Uint32> pSizeOfData);

typedef _FreePrivateData_Native = Int32 Function(
    Pointer obj, Pointer<GUID> refguid);
typedef _FreePrivateData_Dart = int Function(
    Pointer obj, Pointer<GUID> refguid);

typedef _SetPriority_Native = Uint32 Function(Pointer obj, Uint32 PriorityNew);
typedef _SetPriority_Dart = int Function(Pointer obj, int PriorityNew);

typedef _GetPriority_Native = Uint32 Function(Pointer obj);
typedef _GetPriority_Dart = int Function(Pointer obj);

typedef _PreLoad_Native = Void Function(Pointer obj);
typedef _PreLoad_Dart = void Function(Pointer obj);

typedef _GetType_Native = Uint32 Function(Pointer obj);
typedef _GetType_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IDirect3DResource9 extends IUnknown {
  // vtable begins at 3, ends at 10

  IDirect3DResource9(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(Pointer<COMObject> ppDevice) => ptr.ref.lpVtbl.value
      .elementAt(3)
      .cast<Pointer<NativeFunction<_GetDevice_Native>>>()
      .value
      .asFunction<_GetDevice_Dart>()(ptr.ref.lpVtbl, ppDevice);

  int SetPrivateData(
          Pointer<GUID> refguid, Pointer pData, int SizeOfData, int Flags) =>
      ptr.ref.lpVtbl.value
              .elementAt(4)
              .cast<Pointer<NativeFunction<_SetPrivateData_Native>>>()
              .value
              .asFunction<_SetPrivateData_Dart>()(
          ptr.ref.lpVtbl, refguid, pData, SizeOfData, Flags);

  int GetPrivateData(
          Pointer<GUID> refguid, Pointer pData, Pointer<Uint32> pSizeOfData) =>
      ptr.ref.lpVtbl.value
              .elementAt(5)
              .cast<Pointer<NativeFunction<_GetPrivateData_Native>>>()
              .value
              .asFunction<_GetPrivateData_Dart>()(
          ptr.ref.lpVtbl, refguid, pData, pSizeOfData);

  int FreePrivateData(Pointer<GUID> refguid) => ptr.ref.lpVtbl.value
      .elementAt(6)
      .cast<Pointer<NativeFunction<_FreePrivateData_Native>>>()
      .value
      .asFunction<_FreePrivateData_Dart>()(ptr.ref.lpVtbl, refguid);

  int SetPriority(int PriorityNew) => ptr.ref.lpVtbl.value
      .elementAt(7)
      .cast<Pointer<NativeFunction<_SetPriority_Native>>>()
      .value
      .asFunction<_SetPriority_Dart>()(ptr.ref.lpVtbl, PriorityNew);

  int GetPriority() => ptr.ref.lpVtbl.value
      .elementAt(8)
      .cast<Pointer<NativeFunction<_GetPriority_Native>>>()
      .value
      .asFunction<_GetPriority_Dart>()(ptr.ref.lpVtbl);

  void PreLoad() => ptr.ref.lpVtbl.value
      .elementAt(9)
      .cast<Pointer<NativeFunction<_PreLoad_Native>>>()
      .value
      .asFunction<_PreLoad_Dart>()(ptr.ref.lpVtbl);

  int GetType() => ptr.ref.lpVtbl.value
      .elementAt(10)
      .cast<Pointer<NativeFunction<_GetType_Native>>>()
      .value
      .asFunction<_GetType_Dart>()(ptr.ref.lpVtbl);
}
